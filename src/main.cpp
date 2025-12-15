#include <iostream>
#include <fstream>

#include "mock_framebuffer.hxx"

int main(int argc, char** argv) {
    FB::pixel_t input[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];
    FB::pixel_t output[FB::MockFramebuffer::HEIGHT][FB::MockFramebuffer::WIDTH];

    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <input_fb_file> <output_fb_file>\n";
        return -1;
    }

    std::ifstream input_fb_file(argv[1], std::ios::binary);
    input_fb_file.read(reinterpret_cast<char*>(input), sizeof(input));

    FB::MockFramebuffer fb(input, output);

    fb.read({});
    fb.write({}, {});

    std::ofstream output_fb_file(argv[2], std::ios::binary);
    output_fb_file.write(reinterpret_cast<char*>(output), sizeof(output));
    return 0;
}
