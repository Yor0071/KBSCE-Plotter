#ifndef H_ALGORITHM
#define H_ALGORITHM

#include "framebuffer.hxx"
#include <string_view>
#include <iostream>

enum class AlgoType {
    CANNY,
    SOBEL,
    PREWITT,
    ROBERTS
};

AlgoType to_algo_type(std::string_view str) noexcept;

FB::pixel_t process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept;

#endif
