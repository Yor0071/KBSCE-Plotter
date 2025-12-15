#include "algorithm.hxx"

AlgoType to_algo_type(std::string_view str) {
    if (str == "CANNY")   return AlgoType::CANNY;
    if (str == "SOBEL")   return AlgoType::SOBEL;
    if (str == "PREWITT") return AlgoType::PREWITT;
    if (str == "ROBERTS") return AlgoType::ROBERTS;

    std::cerr << "Unknown algorithm: " << str << std::endl;
    exit(EXIT_FAILURE);
}
