#ifndef H_ALGO_SOBEL
#define H_ALGO_SOBEL

#include "algorithm.hxx"
#include <cmath>

uint32_t sobel_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif
