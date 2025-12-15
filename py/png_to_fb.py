#!/usr/bin/env python3
import numpy as np
from PIL import Image

# Framebuffer dimensions
WIDTH = 640
HEIGHT = 480

input_image_file = "image.jpg"  # Image to convert to fb
output_fb_file = "../build/input_fb"

# Load image
img = Image.open(input_image_file).convert("RGB")
img = img.resize((WIDTH, HEIGHT))

data = np.array(img, dtype=np.uint8)

r4 = (data[..., 0] >> 4) & 0xF
g4 = (data[..., 1] >> 4) & 0xF
b4 = (data[..., 2] >> 4) & 0xF

# Prevent overflowing when bitshifting 8-bits out of range
r4_16 = r4.astype(np.uint16)
g4_16 = g4.astype(np.uint16)
b4_16 = b4.astype(np.uint16)

pixels = (r4_16 << 8) | (g4_16 << 4) | b4_16

with open(output_fb_file, "wb") as f:
    f.write(pixels.astype("<u2").tobytes())

print(f"Framebuffer written to {output_fb_file}")
