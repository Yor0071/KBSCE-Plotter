# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\emmah\\Desktop\\school\\KBS_CE\\KBSCE-Plotter\\Vitis\\Plotter\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\sleep.h"
  "C:\\Users\\emmah\\Desktop\\school\\KBS_CE\\KBSCE-Plotter\\Vitis\\Plotter\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\emmah\\Desktop\\school\\KBS_CE\\KBSCE-Plotter\\Vitis\\Plotter\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\emmah\\Desktop\\school\\KBS_CE\\KBSCE-Plotter\\Vitis\\Plotter\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
