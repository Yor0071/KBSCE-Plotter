#ifndef H_EDGE_DETECT
#define H_EDGE_DETECT

#include "Framebuffer.hxx"
#include "xil_types.h"
#include <cmath>

int32_t canny_gaussian_for_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;
uint32_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif