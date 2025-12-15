#!/usr/bin/env python3
import sys

import matplotlib.pyplot as plt
import numpy as np
from PIL import Image

# Framebuffer dimensions
WIDTH = 640
HEIGHT = 480

if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} <input_fb> <result_image>")
    exit(-1)

input_fb_file = sys.argv[1]

fb = np.fromfile(input_fb_file, dtype=np.uint16)
fb = fb.reshape((HEIGHT, WIDTH))

r4 = (fb >> 8) & 0xF
g4 = (fb >> 4) & 0xF
b4 = fb & 0xF

# Extend it to 8-bit from 4-bit (0xFF / 0xF = 17)
r8 = (r4 * 17).astype(np.uint8)
g8 = (g4 * 17).astype(np.uint8)
b8 = (b4 * 17).astype(np.uint8)

img_data = np.stack([r8, g8, b8], axis=-1)

img = Image.fromarray(img_data, mode="RGB")
img.save(sys.argv[2])

plt.imshow(img)
plt.axis("off")
plt.show()
