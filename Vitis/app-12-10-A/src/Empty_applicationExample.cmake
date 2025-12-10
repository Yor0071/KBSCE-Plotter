set(lmb_bram_if_cntlr_0_memory_0 "0x3fff0000;0x10000")
set(microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_1 "0x0;0x10000")
set(DDR lmb_bram_if_cntlr_0_memory_0)
set(CODE lmb_bram_if_cntlr_0_memory_0)
set(DATA lmb_bram_if_cntlr_0_memory_0)
set(TOTAL_MEM_CONTROLLERS "lmb_bram_if_cntlr_0_memory_0;microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_1")
set(MEMORY_SECTION "MEMORY
{
	lmb_bram_if_cntlr_0_memory_0 : ORIGIN = 0x3fff0000, LENGTH = 0x10000
	microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_1 : ORIGIN = 0x0, LENGTH = 0x10000
}")
set(STACK_SIZE 0x400)
set(HEAP_SIZE 0x800)
