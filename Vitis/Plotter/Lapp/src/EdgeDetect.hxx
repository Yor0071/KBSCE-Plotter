#ifndef H_EDGE_DETECT
#define H_EDGE_DETECT

#include "Framebuffer.hxx"
#include "Geometry.h"
#include "xil_types.h"
#include "math.h"

namespace EdgeDetect {

extern bool big_beautiful_buffer[3][3];
extern PolylineView lines[8];
extern Vec2 startstop[8][2];

constexpr uint32_t MAX_POINT_COUNT = 128;

typedef struct {
    PolylineView data;
    bool contains_data;
} MaybePolylineView;

typedef struct {
    Vec2 data;
    bool is_straight_after;
    bool contains_data;
} MaybePoint;

[[nodiscard]] bool is_edge(FB::screen_point_t point) noexcept;
void fill_buffer(FB::screen_point_t offset) noexcept;
[[nodiscard]] int32_t make_lines() noexcept;

int32_t canny_gaussian_for_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;
uint32_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

[[nodiscard]] MaybePoint get_next_point(FB::screen_point_t& point) noexcept;

}
#endif