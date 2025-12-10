# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\yoric\\OneDrive\\Documenten\\GitHub\\KBSCE-Plotter\\Vitis\\Plotter\\Platform3\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\sleep.h"
  "C:\\Users\\yoric\\OneDrive\\Documenten\\GitHub\\KBSCE-Plotter\\Vitis\\Plotter\\Platform3\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\yoric\\OneDrive\\Documenten\\GitHub\\KBSCE-Plotter\\Vitis\\Plotter\\Platform3\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\yoric\\OneDrive\\Documenten\\GitHub\\KBSCE-Plotter\\Vitis\\Plotter\\Platform3\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
