#pragma once
#include <stdint.h>
#include "Geometry.h"

// One step in the final drawing route:
// - polyIndex: which polyline in the input array
// - reverse: whether to draw that polyline in reverse point order
struct RouteStep {
    uint16_t polyIndex;
    bool     reverse;
};

class RoutePlanner
{
public:
    // Build a plan:
    // 1) sort polylines by length (long -> short), STRICT (no epsilon)
    // 2) only if lengths are EXACTLY equal, choose the closest polyline
    //    (pen-up distance) as a tie-break
    // 3) for each chosen polyline, choose entry direction (start vs end)
    //    that minimizes pen-up distance
    //
    // polys: input polyline views
    // n: number of polylines
    // startX/startY: starting pen position (encoder coords)
    // outSteps: output array (must have at least n elements)
    //
    // returns: number of steps written (=n) or 0 on error
    uint16_t buildPlan_LongToShort_EntryNN(
        const PolylineView* polys,
        uint16_t n,
        int32_t startX,
        int32_t startY,
        RouteStep* outSteps);

private:
    // Length metric used ONLY for global sorting (padlengte^2 som)
    static uint64_t polyLen2Sum(const Vec2* p, uint16_t n);

    // Euclidean distance^2 (pen-up, no sqrt)
    static uint32_t dist2(int32_t x0, int32_t y0, int32_t x1, int32_t y1);
};