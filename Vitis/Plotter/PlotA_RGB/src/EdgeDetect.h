#ifndef H_EDGE_DETECT
#define H_EDGE_DETECT

#include "Framebuffer."
#include "Geometry.h"
#include "xil_types.h"
#include "math.h"

namespace EdgeDetect {

constexpr int32_t EDGE_THRESHOLD = 2;

typedef struct {
    Vec2 data;
    bool is_straight_after;
    bool contains_data;
} MaybePoint;

[[nodiscard]] bool is_edge(FB::screen_point_t point) noexcept;

[[nodiscard]] int32_t canny_gaussian_for_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;
[[nodiscard]] uint32_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

}
#endif