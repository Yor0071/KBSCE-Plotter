#ifndef H_ALGORITHM
#define H_ALGORITHM

#include <string_view>
#include <iostream>

enum class AlgoType {
    CANNY,
    SOBEL,
    PREWITT,
    ROBERTS
};

AlgoType to_algo_type(std::string_view str);

#endif
