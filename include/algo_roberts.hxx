#ifndef H_ALGO_ROBERTS
#define H_ALGO_ROBERTS

#include <cmath>

#include "algorithm.hxx"

uint32_t roberts_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif
