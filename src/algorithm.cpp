#include "algorithm.hxx"
#include "framebuffer.hxx"

AlgoType to_algo_type(std::string_view str) noexcept {
    if (str == "CANNY")   return AlgoType::CANNY;
    if (str == "SOBEL")   return AlgoType::SOBEL;
    if (str == "PREWITT") return AlgoType::PREWITT;
    if (str == "ROBERTS") return AlgoType::ROBERTS;

    std::cerr << "Unknown algorithm: " << str << std::endl;
    exit(EXIT_FAILURE);
}

FB::pixel_t process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept {
    return fb.read(point);
}

FB::pixel_t canny_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept {
    return process_pixel(fb, point); // Not implemented
}

FB::pixel_t sobel_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept{
    return process_pixel(fb, point); // Not implemented
}

FB::pixel_t prewitt_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept{
    return process_pixel(fb, point); // Not implemented
}

FB::pixel_t roberts_process_pixel(FB::Framebuffer& fb, FB::screen_point_t point) noexcept{
    return process_pixel(fb, point); // Not implemented
}
