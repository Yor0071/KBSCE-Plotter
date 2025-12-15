#ifndef H_ALGO_PREWITT
#define H_ALGO_PREWITT

#include "algorithm.hxx"

#include <cmath>

FB::pixel_t prewitt_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif
