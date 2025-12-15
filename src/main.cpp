#include <iostream>
#include <fstream>
#include <cstdlib>

#include "mock_framebuffer.hxx"

int main(int argc, char** argv) {
    FB::pixel_t input_fb[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];
    FB::pixel_t output_fb[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];

    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <input_fb_file> <output_fb_file>\n";
        return EXIT_FAILURE;
    }

    std::ifstream input_fb_file(argv[1], std::ios::binary);
    input_fb_file.read(reinterpret_cast<char*>(input_fb), sizeof(input_fb));

    FB::MockFramebuffer fb(input_fb, output_fb);

    // copy over temporarily
    for (uint64_t y = 0; y < FB::MockFramebuffer::HEIGHT; y++) {
        for (uint64_t x = 0; x < FB::MockFramebuffer::WIDTH; x++) {
            output_fb[y][x] = input_fb[y][x];
        }
    }

    std::ofstream output_fb_file(argv[2], std::ios::binary);
    output_fb_file.write(reinterpret_cast<char*>(output_fb), sizeof(output_fb));
    return EXIT_SUCCESS;
}
