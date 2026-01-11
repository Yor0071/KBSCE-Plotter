#pragma once
#include <stdint.h>
#include "Geometry.h"

// One step in the drawing route:
// - polyIndex: index of the polyline
// - reverse: draw polyline in reverse order
struct RouteStep {
    uint16_t polyIndex;
    bool     reverse;
};

class RoutePlanner
{
public:
    // Build a drawing plan:
    // 1) sort polylines by length (long to short)
    // 2) if lengths are exactly equal, choose the closest polyline
    // 3) choose start direction that minimizes pen-up distance
    //
    // polys: input polylines
    // n: number of polylines
    // startX/startY: initial pen position
    // outSteps: output route (size >= n)
    //
    // returns: number of steps (n) or 0 on error
    uint16_t buildPlan_LongToShort_EntryNN(
        const PolylineView* polys,
        uint16_t n,
        int32_t startX,
        int32_t startY,
        RouteStep* outSteps);

private:
    // Squared polyline length (used for sorting)
    static uint64_t polyLen2Sum(const Vec2* p, uint16_t n);

    // Squared distance between two points
    static uint32_t dist2(int32_t x0, int32_t y0, int32_t x1, int32_t y1);
};
