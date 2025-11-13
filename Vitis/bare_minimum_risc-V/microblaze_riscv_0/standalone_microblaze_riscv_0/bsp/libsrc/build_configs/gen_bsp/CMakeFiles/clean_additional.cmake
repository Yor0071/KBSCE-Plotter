# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\liamb\\GitHub\\KBSCE-Plotter\\Vitis\\bare_minimum_risc-V\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\sleep.h"
  "C:\\Users\\liamb\\GitHub\\KBSCE-Plotter\\Vitis\\bare_minimum_risc-V\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\liamb\\GitHub\\KBSCE-Plotter\\Vitis\\bare_minimum_risc-V\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\liamb\\GitHub\\KBSCE-Plotter\\Vitis\\bare_minimum_risc-V\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
