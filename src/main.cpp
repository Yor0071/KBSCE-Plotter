#include <iostream>
#include <fstream>
#include <cstdlib>
#include <functional>
#include <utility>

#include "framebuffer.hxx"
#include "mock_framebuffer.hxx"
#include "algorithm.hxx"
#include "algo_canny.hxx"
#include "algo_sobel.hxx"
#include "algo_prewitt.hxx"
#include "algo_roberts.hxx"

std::function<FB::pixel_t(FB::Framebuffer&,FB::screen_point_t)> get_function_instance(AlgoType algorithm_type) noexcept;

int main(int argc, char** argv) {
    FB::pixel_t input_fb[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];
    FB::pixel_t output_fb[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];

    if (argc != 4) {
        std::cerr << "Usage: " << argv[0] << " <input_fb_file> <output_fb_file> ALGORITHM_TYPE\n\tALGORITHM_TYPE: CANNY SOBEL PREWITT ROBERTS\n";
        return EXIT_FAILURE;
    }

    std::ifstream input_fb_file(argv[1], std::ios::binary);
    if (!input_fb_file) {
        std::cerr << "Failed to open file: " << argv[1] << std::endl;
        return EXIT_FAILURE;
    }

    input_fb_file.read(reinterpret_cast<char*>(input_fb), sizeof(input_fb));

    FB::MockFramebuffer fb(input_fb, output_fb);

    std::string algorithm_name{argv[3]};
    AlgoType algo = to_algo_type(algorithm_name);
    auto algo_fun = get_function_instance(algo);

    for (uint16_t y = 0; y < FB::MockFramebuffer::HEIGHT; y++) {
        for (uint16_t x = 0; x < FB::MockFramebuffer::WIDTH; x++) {
            FB::screen_point_t point = { .x = x, .y = y };
            FB::pixel_t p = algo_fun(fb, point);
            fb.write(point, p);
        }
    }

    std::ofstream output_fb_file(argv[2], std::ios::binary);
    if (!output_fb_file) {
        std::cerr << "Failed to open file: " << argv[2] << std::endl;
        return EXIT_FAILURE;
    }

    output_fb_file.write(reinterpret_cast<char*>(output_fb), sizeof(output_fb));
    return EXIT_SUCCESS;
}

std::function<FB::pixel_t(FB::Framebuffer&,FB::screen_point_t)> get_function_instance(AlgoType algorithm_type) noexcept {
    switch (algorithm_type) {
        case AlgoType::CANNY:   return canny_process_pixel;
        case AlgoType::SOBEL:   return sobel_process_pixel;
        case AlgoType::PREWITT: return prewitt_process_pixel;
        case AlgoType::ROBERTS: return roberts_process_pixel;
    }

    std::unreachable();
}
