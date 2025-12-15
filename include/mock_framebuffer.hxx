#ifndef H_MOCK_FRAMEBUFFER
#define H_MOCK_FRAMEBUFFER

#include "framebuffer.hxx"
#include <iostream>

namespace FB {

class MockFramebuffer : public Framebuffer {
private:
    pixel_t (&input_fb)[HEIGHT][WIDTH];
    pixel_t (&output_fb)[HEIGHT][WIDTH];

public:
    MockFramebuffer() = delete;
    MockFramebuffer(pixel_t (&input_fb)[HEIGHT][WIDTH], pixel_t (&output_fb)[HEIGHT][WIDTH]) noexcept;

    void write(screen_point_t point, pixel_t pixel) const noexcept override;
    [[nodiscard]] pixel_t read(screen_point_t point) const noexcept override;
};

}

#endif
