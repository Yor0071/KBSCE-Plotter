#pragma once
#include <stdint.h>

struct Vec2 {
    int32_t x;
    int32_t y;
};

struct PolylineView {
    const Vec2* pts;
    uint16_t    count;
};

// Vierkant 1 (5 punten: 4 hoeken + terug naar start)
static const Vec2 sq0[] = {
    {1000,1000},
    {2000,1000},
    {2000,2000},
    {1000,2000}
};

// Vierkant 2 (zelfde grootte, andere positie)
static const Vec2 sq1[] = {
    {2500,1000},
    {3500,1000},
    {3500,2000},
    {2500,2000}
};

// Vierkant 3 (groter, weer andere positie)
static const Vec2 sq2[] = {
    {1000,2500},
    {1000,4100},
    {2600,4100},
    {2600,2500},
};

// Line array: meerdere polylines (elk polyline = 1 vierkant)
static const PolylineView squares[] = {
    { sq0, (uint16_t)(sizeof(sq0) / sizeof(sq0[0])) },
    { sq1, (uint16_t)(sizeof(sq1) / sizeof(sq1[0])) },
    { sq2, (uint16_t)(sizeof(sq2) / sizeof(sq2[0])) },
};

static const uint16_t squares_count = (uint16_t)(sizeof(squares) / sizeof(squares[0]));