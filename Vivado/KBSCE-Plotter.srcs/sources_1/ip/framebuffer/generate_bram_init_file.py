from PIL import Image

img = Image.open("wallpaper.jpg").convert("RGB")
with open("framebuffer_wallpaper.coe", "w") as f:
    f.write("memory_initialization_radix=16;\n") # Radix of the data
    f.write("memory_initialization_vector=\n")   # Data
    vals = []
    for y in range(480):
        for x in range(640):
            r,g,b = img.getpixel((x,y))
            r4 = r >> 4
            g4 = g >> 4
            b4 = b >> 4
            rgb12 = (r4<<8) | (g4<<4) | b4 # Pack individual 4-bit color values into one 12-bit
            vals.append("{:03X}".format(rgb12))
    f.write(',\n'.join(vals) + ";\n") # Put together
