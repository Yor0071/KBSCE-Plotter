#include "RoutePlanner.h"

// ---------------------------------------------------------
// Kleine helper: absolute verschil voor uint64_t
// (embedded-safe, geen stdlib nodig)
// ---------------------------------------------------------
static inline uint64_t absdiff_u64(uint64_t a, uint64_t b)
{
    return (a > b) ? (a - b) : (b - a);
}

// ---------------------------------------------------------
// Euclidische afstand^2 (zonder sqrt)
// ---------------------------------------------------------
uint32_t RoutePlanner::dist2(int32_t x0, int32_t y0, int32_t x1, int32_t y1)
{
    int32_t dx = x1 - x0;
    int32_t dy = y1 - y0;
    return (uint32_t)((int64_t)dx * dx + (int64_t)dy * dy);
}

// ---------------------------------------------------------
// Totale polyline-lengte (som van segmentlengtes^2)
// ---------------------------------------------------------
uint64_t RoutePlanner::polyLen2Sum(const Vec2* p, uint16_t n)
{
    if (!p || n < 2) return 0;

    uint64_t sum = 0;
    for (uint16_t i = 1; i < n; ++i) {
        int32_t dx = p[i].x - p[i - 1].x;
        int32_t dy = p[i].y - p[i - 1].y;
        sum += (uint64_t)((int64_t)dx * dx + (int64_t)dy * dy);
    }
    return sum;
}

// ---------------------------------------------------------
// Route planning:
// - Primair: langste polyline eerst
// - Secundair (alleen bij gelijke lengte): kortste pen-up afstand
// - Daarna: kies tekenrichting (reverse) per polyline
// ---------------------------------------------------------
uint16_t RoutePlanner::buildPlan_LongToShort_EntryNN(
    const PolylineView* polys,
    uint16_t n,
    int32_t startX,
    int32_t startY,
    RouteStep* outSteps)
{
    if (!polys || !outSteps || n == 0) return 0;
    if (n > 512) return 0;

    static uint64_t len2[512];
    static bool used[512];

    // 1) Voorbereiden
    for (uint16_t i = 0; i < n; ++i) {
        len2[i] = polyLen2Sum(polys[i].pts, polys[i].count);
        used[i] = false;
    }

    int32_t curX = startX;
    int32_t curY = startY;

    // Tolerantie: wanneer beschouwen we lijnen als "even groot"
    const uint64_t LEN_EPS = 1000;   // pas aan aan jouw schaal

    // 2) Bouw route stap voor stap
    for (uint16_t k = 0; k < n; ++k) {

        int bestIdx = -1;
        uint64_t bestLen = 0;
        uint32_t bestDist = 0;

        // 2a) Kies volgende polyline
        for (uint16_t i = 0; i < n; ++i) {
            if (used[i]) continue;

            const PolylineView& pl = polys[i];
            if (!pl.pts || pl.count == 0) continue;

            uint64_t L = len2[i];

            const Vec2& s = pl.pts[0];
            const Vec2& e = pl.pts[pl.count - 1];

            uint32_t dS = dist2(curX, curY, s.x, s.y);
            uint32_t dE = dist2(curX, curY, e.x, e.y);
            uint32_t dMin = (dS < dE) ? dS : dE;

            if (bestIdx < 0) {
                bestIdx  = i;
                bestLen  = L;
                bestDist = dMin;
                continue;
            }

            // Primair criterium: langere polyline wint
            if (L > bestLen + LEN_EPS) {
                bestIdx  = i;
                bestLen  = L;
                bestDist = dMin;
            }
            // Secundair criterium: lengte ~ gelijk → afstand beslist
            else if (absdiff_u64(L, bestLen) <= LEN_EPS) {
                if (dMin < bestDist) {
                    bestIdx  = i;
                    bestLen  = L;
                    bestDist = dMin;
                }
            }
        }

        if (bestIdx < 0)
            return k; // zou niet moeten gebeuren

        // 2b) Bepaal tekenrichting
        const PolylineView& pl = polys[bestIdx];
        const Vec2& s = pl.pts[0];
        const Vec2& e = pl.pts[pl.count - 1];

        uint32_t dStart = dist2(curX, curY, s.x, s.y);
        uint32_t dEnd   = dist2(curX, curY, e.x, e.y);

        bool reverse = (dEnd < dStart);

        outSteps[k].polyIndex = (uint16_t)bestIdx;
        outSteps[k].reverse   = reverse;

        // 2c) Update huidige positie
        if (!reverse) {
            curX = e.x;
            curY = e.y;
        } else {
            curX = s.x;
            curY = s.y;
        }

        used[bestIdx] = true;
    }

    return n;
}
