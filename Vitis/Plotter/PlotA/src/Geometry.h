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

//
// ===== HOOFD (ruwe cirkel, open polyline) =====
//
static const Vec2 head[] = {
    {3500,5800}, // top
    {3950,5650},
    {4250,5300},
    {4400,5000},
    {4250,4700},
    {3950,4350},
    {3500,4200}, // bottom
    {3050,4350},
    {2750,4700},
    {2600,5000},
    {2750,5300},
    {3050,5650},
};

//
// ===== OGEN =====
//
static const Vec2 eye_left[] = {
    {3300,5200},
    {3350,5250},
    {3400,5200},
};

static const Vec2 eye_right[] = {
    {3600,5200},
    {3650,5250},
    {3700,5200},
};

//
// ===== MOND (smile) =====
//
static const Vec2 mouth[] = {
    {3200,4700},
    {3350,4600},
    {3500,4550},
    {3650,4600},
    {3800,4700},
};

//
// ===== LICHAAM =====
//
static const Vec2 body[] = {
    {3500,4200},
    {3500,3000},
};

//
// ===== ARMEN =====
//
static const Vec2 arm_left[] = {
    {3500,3600},
    {3000,3200},
};

static const Vec2 arm_right[] = {
    {3500,3600},
    {4000,3200},
};

//
// ===== BENEN =====
//
static const Vec2 leg_left[] = {
    {3500,3000},
    {3200,1500},
};

static const Vec2 leg_right[] = {
    {3500,3000},
    {3800,1500},
};

static const Vec2 square[] =
{
    {0,0},
    {9599,0},
    {9599,7199},
    {0,7199},
    {0,0},
};

//
// ===== LINE ARRAY =====
// Elke polyline = 1 tekenbare eenheid
//
static const PolylineView smiley[] = {
    { head,      (uint16_t)(sizeof(head)      / sizeof(head[0])) },
    { eye_left,  (uint16_t)(sizeof(eye_left)  / sizeof(eye_left[0])) },
    { eye_right, (uint16_t)(sizeof(eye_right) / sizeof(eye_right[0])) },
    { mouth,     (uint16_t)(sizeof(mouth)     / sizeof(mouth[0])) },
    { body,      (uint16_t)(sizeof(body)      / sizeof(body[0])) },
    { arm_left,  (uint16_t)(sizeof(arm_left)  / sizeof(arm_left[0])) },
    { arm_right, (uint16_t)(sizeof(arm_right) / sizeof(arm_right[0])) },
    { leg_left,  (uint16_t)(sizeof(leg_left)  / sizeof(leg_left[0])) },
    { leg_right, (uint16_t)(sizeof(leg_right) / sizeof(leg_right[0])) },
    { square,    (uint16_t)(sizeof(square)    / sizeof(square[0])) },
};

static const uint16_t smiley_count =
    (uint16_t)(sizeof(smiley) / sizeof(smiley[0]));