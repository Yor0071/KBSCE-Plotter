set(microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0 "0x0;0x4000")
set(axi_bram_ctrl_0_memory_0 "0x37ff0000;0x2000")
set(DDR microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(CODE microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(DATA microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(TOTAL_MEM_CONTROLLERS "microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0;axi_bram_ctrl_0_memory_0")
set(MEMORY_SECTION "MEMORY
{
	microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0 : ORIGIN = 0x0, LENGTH = 0x4000
	axi_bram_ctrl_0_memory_0 : ORIGIN = 0x37ff0000, LENGTH = 0x2000
}")
set(STACK_SIZE 0x400)
set(HEAP_SIZE 0x800)
