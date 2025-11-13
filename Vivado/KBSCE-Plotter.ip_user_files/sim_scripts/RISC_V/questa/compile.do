vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/microblaze_riscv_v1_0_5
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_riscv_v1_0_5
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/axi_vip_v1_1_21
vlib questa_lib/msim/util_vector_logic_v2_0_5

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap microblaze_riscv_v1_0_5 questa_lib/msim/microblaze_riscv_v1_0_5
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_5 questa_lib/msim/mdm_riscv_v1_0_5
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21
vmap util_vector_logic_v2_0_5 questa_lib/msim/util_vector_logic_v2_0_5

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_15  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_5  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/0725/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_microblaze_riscv_0_0/sim/RISC_V_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_15  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_dlmb_v10_0/sim/RISC_V_dlmb_v10_0.vhd" \
"../../../bd/RISC_V/ip/RISC_V_ilmb_v10_0/sim/RISC_V_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_dlmb_bram_if_cntlr_0/sim/RISC_V_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/RISC_V/ip/RISC_V_ilmb_bram_if_cntlr_0/sim/RISC_V_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_lmb_bram_0/sim/RISC_V_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_5  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/2c73/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_mdm_1_0/sim/RISC_V_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_clk_wiz_1_0/RISC_V_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/RISC_V/ip/RISC_V_clk_wiz_1_0/RISC_V_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_rst_clk_wiz_1_100M_0/sim/RISC_V_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_axi_gpio_0_0/sim/RISC_V_axi_gpio_0_0.vhd" \
"../../../bd/RISC_V/ip/RISC_V_axi_gpio_1_0/sim/RISC_V_axi_gpio_1_0.vhd" \

vcom -work axi_uartlite_v2_0_39  -93  \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_axi_uartlite_0_0/sim/RISC_V_axi_uartlite_0_0.vhd" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_0/sim/bd_33e2_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_1/sim/bd_33e2_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_2/sim/bd_33e2_arinsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_3/sim/bd_33e2_rinsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_4/sim/bd_33e2_awinsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_5/sim/bd_33e2_winsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_6/sim/bd_33e2_binsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_7/sim/bd_33e2_aroutsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_8/sim/bd_33e2_routsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_9/sim/bd_33e2_awoutsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_10/sim/bd_33e2_woutsw_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_11/sim/bd_33e2_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_12/sim/bd_33e2_arni_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_13/sim/bd_33e2_rni_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_14/sim/bd_33e2_awni_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_15/sim/bd_33e2_wni_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_16/sim/bd_33e2_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_17/sim/bd_33e2_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_18/sim/bd_33e2_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_19/sim/bd_33e2_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_20/sim/bd_33e2_s00a2s_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_21/sim/bd_33e2_sarn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_22/sim/bd_33e2_srn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_23/sim/bd_33e2_sawn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_24/sim/bd_33e2_swn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_25/sim/bd_33e2_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_26/sim/bd_33e2_m00s2a_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_27/sim/bd_33e2_m00arn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_28/sim/bd_33e2_m00rn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_29/sim/bd_33e2_m00awn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_30/sim/bd_33e2_m00wn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_31/sim/bd_33e2_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_32/sim/bd_33e2_m00e_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_33/sim/bd_33e2_m01s2a_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_34/sim/bd_33e2_m01arn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_35/sim/bd_33e2_m01rn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_36/sim/bd_33e2_m01awn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_37/sim/bd_33e2_m01wn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_38/sim/bd_33e2_m01bn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_39/sim/bd_33e2_m01e_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_40/sim/bd_33e2_m02s2a_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_41/sim/bd_33e2_m02arn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_42/sim/bd_33e2_m02rn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_43/sim/bd_33e2_m02awn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_44/sim/bd_33e2_m02wn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_45/sim/bd_33e2_m02bn_0.sv" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/ip/ip_46/sim/bd_33e2_m02e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/bd_0/sim/bd_33e2.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_axi_smc_0/sim/RISC_V_axi_smc_0.sv" \

vlog -work util_vector_logic_v2_0_5  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a9be" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/a8e4/hdl/verilog" "+incdir+../../../../KBSCE-Plotter.gen/sources_1/bd/RISC_V/ipshared/ec67/hdl" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/RISC_V/ip/RISC_V_reset_inv_0_0/sim/RISC_V_reset_inv_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/RISC_V/sim/RISC_V.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

