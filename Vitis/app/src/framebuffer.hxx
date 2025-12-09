#ifndef H_FRAMEBUFFER
#define H_FRAMEBUFFER

#include <unistd.h>
#include "xparameters.h"
#include <assert.h>

class Framebuffer {
private:
public:
    void write(uint64_t offset, uint32_t value);
    uint32_t read(uint64_t offset);
};

#endif
