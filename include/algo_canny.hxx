#ifndef H_ALGO_CANNY
#define H_ALGO_CANNY

#include "algorithm.hxx"

#include <cmath>

int32_t canny_gaussian_for_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;
FB::pixel_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif
