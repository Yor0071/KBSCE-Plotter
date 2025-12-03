from PIL import Image

img = Image.open("TPTILEwv-640x480.png").convert("RGB")
with open("framebuffer_tptilewv.coe", "w") as f:
    f.write("memory_initialization_radix=16;\n")
    f.write("memory_initialization_vector=\n")
    vals = []
    for y in range(480):
        for x in range(640):
            r,g,b = img.getpixel((x,y))
            r4 = r >> 4
            g4 = g >> 4
            b4 = b >> 4
            rgb12 = (r4<<8) | (g4<<4) | b4
            vals.append("{:03X}".format(rgb12))
    f.write(',\n'.join(vals) + ";\n")
