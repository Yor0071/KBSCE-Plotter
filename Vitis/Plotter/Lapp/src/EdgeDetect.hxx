#ifndef H_EDGE_DETECT
#define H_EDGE_DETECT

#include "Framebuffer.hxx"
#include "Geometry.h"
#include "xil_types.h"
#include "math.h"

namespace EdgeDetect {

typedef struct {
    PolylineView data;
    bool contains_data;
} MaybePolylineView;

int32_t canny_gaussian_for_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;
uint32_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

[[nodiscard]] MaybePolylineView get_next_line(FB::screen_point_t& point) noexcept;

}
#endif