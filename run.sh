#!/bin/env bash
echo "== BUILDING"
cd build
make
# stop if make failed
if [ $? != 0 ]; then
    exit $?
fi
echo

# assumes we are in build directory
function run_algorithm {
    time_output=$( { time ./app input_fb ${1}fb $1 > /dev/null 2>&1; } 2>&1 ) # make sure the output is redirected
    echo -e "Algorithm: $1 ${time_output}\n"
    python3 ../py/fb_to_png.py ${1}fb ${1}.png
}

echo "== SIZE"
size CMakeFiles/app.dir/src/algo_*.cpp.o
echo

echo "== RUNNING"
run_algorithm CANNY \
& run_algorithm SOBEL \
& run_algorithm PREWITT \
& run_algorithm ROBERTS
