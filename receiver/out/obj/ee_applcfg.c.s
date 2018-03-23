	.file	"ee_applcfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
.global	KDB
	.section	.rodata.KDB,"a",@progbits
	.type	KDB, @object
	.size	KDB, 10
KDB:
	.word	KCB
	.word	tdb_ptr_array
	.word	sn_array
	.word	2
	.word	1
	.comm	KCB,1,1
.global	CDB
	.section	.rodata.CDB,"a",@progbits
	.type	CDB, @object
	.size	CDB, 6
CDB:
	.word	CCB
	.word	gs(idle_hook)
	.word	tdb_array+14
.global	CCB
	.section	.data.CCB,"aw",@progbits
	.type	CCB, @object
	.size	CCB, 18
CCB:
	.word	tdb_array+14
	.word	0
	.word	sn_array
	.word	0
	.word	0
	.byte	-1
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	sn_array
	.section	.bss.sn_array,"aw",@nobits
	.type	sn_array, @object
	.size	sn_array, 4
sn_array:
	.zero	4
.global	tdb_ptr_array
	.section	.rodata.tdb_ptr_array,"a",@progbits
	.type	tdb_ptr_array, @object
	.size	tdb_ptr_array, 4
tdb_ptr_array:
	.word	tdb_array
	.word	tdb_array+14
.global	tdb_array
	.section	.rodata.tdb_array,"a",@progbits
	.type	tdb_array, @object
	.size	tdb_array, 28
tdb_array:
	.word	sdb_array
	.word	scb_array
	.word	tcb_array
	.byte	0
	.word	0
	.word	gs(FuncTaskL1)
	.byte	1
	.byte	1
	.byte	1
	.word	sdb_array
	.word	scb_array
	.word	tcb_array+4
	.byte	1
	.word	3
	.word	gs(osEE_idle_hook_wrapper)
	.byte	0
	.byte	0
	.byte	1
.global	tcb_array
	.section	.data.tcb_array,"aw",@progbits
	.type	tcb_array, @object
	.size	tcb_array, 8
tcb_array:
	.byte	0
	.byte	1
	.word	0
	.byte	1
	.byte	0
	.word	4
.global	sdb_array
	.section	.rodata.sdb_array,"a",@progbits
	.type	sdb_array, @object
	.size	sdb_array, 4
sdb_array:
	.word	0
	.word	-1
.global	scb_array
	.section	.bss.scb_array,"aw",@nobits
	.type	scb_array, @object
	.size	scb_array, 2
scb_array:
	.zero	2
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
