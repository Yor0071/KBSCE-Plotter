#!/usr/bin/env python3
import random
import sys

import numpy as np
from PIL import Image

# Framebuffer dimensions
WIDTH = 640
HEIGHT = 480

if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} <input_image> <result_fb>")
    exit(-1)

input_image_file = sys.argv[1]
output_fb_file = sys.argv[2]

img = Image.open(input_image_file).convert("RGB")
img = img.resize((WIDTH, HEIGHT))

data = np.array(img, dtype=np.int16)

noise_intensity = 25

# gaussian noise
noise = np.random.normal(0, noise_intensity, data.shape).astype(np.int16)

data_noisy = data + noise
data_noisy = np.clip(data_noisy, 0, 255).astype(np.uint8)

r4 = (data_noisy[..., 0] >> 4) & 0xF
g4 = (data_noisy[..., 1] >> 4) & 0xF
b4 = (data_noisy[..., 2] >> 4) & 0xF

r4_16 = r4.astype(np.uint16)
g4_16 = g4.astype(np.uint16)
b4_16 = b4.astype(np.uint16)

pixels = (r4_16 << 8) | (g4_16 << 4) | b4_16

with open(output_fb_file, "wb") as f:
    f.write(pixels.astype("<u2").tobytes())

print(f"Framebuffer written to {output_fb_file}")
