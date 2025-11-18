# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/maartenvk/Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/sleep.h"
  "/home/maartenvk/Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xiltimer.h"
  "/home/maartenvk/Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xtimer_config.h"
  "/home/maartenvk/Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/lib/libxiltimer.a"
  )
endif()
