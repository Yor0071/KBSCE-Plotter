#include "RoutePlanner.h"
#include <cmath>   // <-- nodig voor sqrt

// ---------------------------------------------------------
// Euclidische afstand^2 (zonder sqrt) - pen-up afstand
// ---------------------------------------------------------
uint32_t RoutePlanner::dist2(int32_t x0, int32_t y0, int32_t x1, int32_t y1)
{
    int32_t dx = x1 - x0;
    int32_t dy = y1 - y0;
    return (uint32_t)((int64_t)dx * dx + (int64_t)dy * dy);
}

// ---------------------------------------------------------
// ECHTE polyline-lengte:
// som van sqrt(dx^2 + dy^2) per segment
// ---------------------------------------------------------
uint64_t RoutePlanner::polyLen2Sum(const Vec2* p, uint16_t n)
{
    if (!p || n < 2) return 0;

    uint64_t sum = 0;
    for (uint16_t i = 1; i < n; ++i) {
        int64_t dx = (int64_t)p[i].x - p[i - 1].x;
        int64_t dy = (int64_t)p[i].y - p[i - 1].y;

        // echte geometrische lengte van dit segment
        double segLen = std::sqrt((double)(dx * dx + dy * dy));
        sum += (uint64_t)segLen;
    }
    return sum;
}

// ---------------------------------------------------------
// Build a plan:
// 1) sort polylines by TRUE line length desc (STRICT)
// 2) ONLY if length is EXACTLY equal: closest-to-start tie-break
// 3) fixed order; NN only for direction (start vs end)
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

    static uint16_t order[512];
    static uint64_t len[512];

    // -------- FASE 1: compute true lengths ----------
    for (uint16_t i = 0; i < n; ++i) {
        order[i] = i;
        len[i]   = polyLen2Sum(polys[i].pts, polys[i].count);
    }

    // -------- FASE 1b: strict sort ----------
    for (uint16_t i = 0; i < n; ++i) {
        for (uint16_t j = i + 1; j < n; ++j) {

            uint16_t ai = order[i];
            uint16_t aj = order[j];
            bool swap = false;

            // primary: longer line first
            if (len[aj] > len[ai]) {
                swap = true;
            }
            // secondary: EXACT equal length -> closer to start first
            else if (len[aj] == len[ai]) {

                const PolylineView& pa = polys[ai];
                const PolylineView& pb = polys[aj];

                if (pa.pts && pb.pts && pa.count && pb.count) {

                    const Vec2& sa = pa.pts[0];
                    const Vec2& ea = pa.pts[pa.count - 1];
                    const Vec2& sb = pb.pts[0];
                    const Vec2& eb = pb.pts[pb.count - 1];

                    uint32_t da = dist2(startX, startY, sa.x, sa.y);
                    uint32_t dea = dist2(startX, startY, ea.x, ea.y);
                    uint32_t db = dist2(startX, startY, sb.x, sb.y);
                    uint32_t deb = dist2(startX, startY, eb.x, eb.y);

                    uint32_t dA = (da < dea) ? da : dea;
                    uint32_t dB = (db < deb) ? db : deb;

                    if (dB < dA)
                        swap = true;
                }
            }

            if (swap) {
                uint16_t tmp = order[i];
                order[i] = order[j];
                order[j] = tmp;
            }
        }
    }

    // -------- FASE 2: NN only for drawing direction ----------
    int32_t curX = startX;
    int32_t curY = startY;

    for (uint16_t k = 0; k < n; ++k) {

        uint16_t pi = order[k];
        const PolylineView& pl = polys[pi];
        bool reverse = false;

        if (pl.pts && pl.count > 0) {
            const Vec2& s = pl.pts[0];
            const Vec2& e = pl.pts[pl.count - 1];

            uint32_t dStart = dist2(curX, curY, s.x, s.y);
            uint32_t dEnd   = dist2(curX, curY, e.x, e.y);
            reverse = (dEnd < dStart);

            if (!reverse) {
                curX = e.x; curY = e.y;
            } else {
                curX = s.x; curY = s.y;
            }
        }

        outSteps[k].polyIndex = pi;
        outSteps[k].reverse   = reverse;
    }

    return n;
}