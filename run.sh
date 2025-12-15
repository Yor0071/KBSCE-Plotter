#!/bin/env bash
echo "== BUILDING"
cd build
make

# assumes we are in build directory
function run_algorithm {
    echo "Running algorithm: $1"
    ./app input_fb ${1}fb $1
    python3 ../py/fb_to_png.py ${1}fb ${1}.png
}

echo "== RUNNING"
run_algorithm CANNY
run_algorithm SOBEL
run_algorithm PREWITT
run_algorithm ROBERTS
