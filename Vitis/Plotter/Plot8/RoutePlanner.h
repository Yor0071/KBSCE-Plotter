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
    // 1) sort polylines by length (long -> short)
    // 2) for each polyline in that order, choose the entry direction (start vs end)
    //    that minimizes pen-up distance from the current position.
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
    static uint64_t polyLen2Sum(const Vec2* p, uint16_t n);
    static uint32_t dist2(int32_t x0, int32_t y0, int32_t x1, int32_t y1);
};
