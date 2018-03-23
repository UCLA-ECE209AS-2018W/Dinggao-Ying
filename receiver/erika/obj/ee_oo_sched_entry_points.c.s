	.file	"ee_oo_sched_entry_points.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_task_end,"ax",@progbits
.global	osEE_scheduler_task_end
	.type	osEE_scheduler_task_end, @function
osEE_scheduler_task_end:
.LFB53:
	.file 1 "/home/yvonne/receiver/erika/src/ee_oo_sched_entry_points.c"
	.loc 1 74 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
.LCFI2:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 78 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_terminated
.LVL0:
.LBB31:
.LBB32:
	.file 2 "/home/yvonne/receiver/erika/src/ee_hal_internal.h"
	.loc 2 185 0
	movw r22,r24
	ldd r24,Y+1
	ldd r25,Y+2
.LVL1:
	call osEE_change_context_from_task_end
.LVL2:
/* epilogue start */
.LBE32:
.LBE31:
	.loc 1 86 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE53:
	.size	osEE_scheduler_task_end, .-osEE_scheduler_task_end
	.section	.text.osEE_scheduler_task_wrapper_restore,"ax",@progbits
.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
.LFB54:
	.loc 1 94 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE54:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB55:
	.loc 1 147 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 147 0
	movw r28,r24
.LVL5:
	.loc 1 148 0
	ldd r30,Y+4
	ldd r31,Y+5
	.loc 1 151 0
	ldd r24,Z+1
.LVL6:
	cpi r24,lo8(-1)
	breq .L4
.LVL7:
.LBB46:
.LBB47:
	.loc 2 105 0
/* #APP */
 ;  105 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL8:
/* #NOAPP */
.L4:
.LBE47:
.LBE46:
	.loc 1 156 0
	ldd r30,Y+9
	ldd r31,Y+10
	icall
.LVL9:
.LBB48:
.LBB49:
.LBB50:
.LBB51:
.LBB52:
.LBB53:
	.loc 2 111 0
	in r24,__SREG__
.LBB54:
.LBB55:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE55:
.LBE54:
.LBE53:
.LBE52:
.LBE51:
.LBE50:
.LBB56:
.LBB57:
	.file 3 "/home/yvonne/receiver/erika/src/ee_std_change_context.h"
	.loc 3 136 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.LVL11:
.LBE57:
.LBE56:
.LBE49:
.LBE48:
	.cfi_endproc
.LFE55:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB56:
	.loc 1 167 0
	.cfi_startproc
	push r16
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LBB58:
	.loc 1 178 0
	lds r28,CDB+2
	lds r29,CDB+2+1
.LBE58:
	.loc 1 176 0
	lds r16,CDB
	lds r17,CDB+1
.L10:
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	brne .L16
.L11:
.LVL12:
.LBB59:
	.loc 1 179 0
	sbiw r28,0
	breq .L11
	.loc 1 180 0
	movw r30,r28
	icall
.LVL13:
	rjmp .L10
.LVL14:
.L16:
.LBE59:
	.loc 1 186 0
	lds r24,CDB+4
	lds r25,CDB+4+1
/* epilogue start */
	.loc 1 187 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 186 0
	jmp osEE_idle_task_terminate
.LVL15:
	.cfi_endproc
.LFE56:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.text
.Letext0:
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 5 "/home/yvonne/receiver/erika/inc/ee_platform_types.h"
	.file 6 "/home/yvonne/receiver/erika/inc/ee_api_types.h"
	.file 7 "/home/yvonne/receiver/erika/inc/ee_hal_internal_types.h"
	.file 8 "/home/yvonne/receiver/erika/inc/ee_scheduler_types.h"
	.file 9 "/home/yvonne/receiver/erika/inc/ee_kernel_types.h"
	.file 10 "/home/yvonne/receiver/erika/inc/ee_get_kernel_and_core.h"
	.file 11 "/home/yvonne/receiver/erika/src/ee_kernel.h"
	.file 12 "/home/yvonne/receiver/erika/src/ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xab8
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF156
	.byte	0x1
	.long	.LASF157
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x4
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
	.byte	0x80
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x5
	.byte	0x5f
	.long	0x48
	.uleb128 0x4
	.long	.LASF11
	.byte	0x5
	.byte	0x69
	.long	0x5a
	.uleb128 0x5
	.byte	0x2
	.long	0x96
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF12
	.byte	0x6
	.byte	0x3f
	.long	0x53
	.uleb128 0x4
	.long	.LASF13
	.byte	0x6
	.byte	0x45
	.long	0x7a
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x4d
	.long	0x53
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0x59
	.long	0x53
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0x64
	.long	0x90
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x6
	.byte	0x6b
	.long	0xf4
	.uleb128 0x8
	.long	.LASF17
	.sleb128 0
	.uleb128 0x8
	.long	.LASF18
	.sleb128 1
	.uleb128 0x8
	.long	.LASF19
	.sleb128 2
	.uleb128 0x8
	.long	.LASF20
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x6
	.byte	0x70
	.long	0xcf
	.uleb128 0x4
	.long	.LASF22
	.byte	0x6
	.byte	0x72
	.long	0xf4
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x6
	.byte	0x74
	.long	0x13b
	.uleb128 0x8
	.long	.LASF25
	.sleb128 0
	.uleb128 0x8
	.long	.LASF26
	.sleb128 1
	.uleb128 0x8
	.long	.LASF27
	.sleb128 2
	.uleb128 0x8
	.long	.LASF28
	.sleb128 3
	.uleb128 0x8
	.long	.LASF29
	.sleb128 4
	.uleb128 0x8
	.long	.LASF30
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x6
	.byte	0x7d
	.long	0x10a
	.uleb128 0x4
	.long	.LASF32
	.byte	0x6
	.byte	0x84
	.long	0x13b
	.uleb128 0x4
	.long	.LASF33
	.byte	0x6
	.byte	0xda
	.long	0x85
	.uleb128 0x7
	.long	.LASF34
	.byte	0x2
	.byte	0x6
	.byte	0xe2
	.long	0x211
	.uleb128 0x8
	.long	.LASF35
	.sleb128 0
	.uleb128 0x8
	.long	.LASF36
	.sleb128 1
	.uleb128 0x8
	.long	.LASF37
	.sleb128 2
	.uleb128 0x8
	.long	.LASF38
	.sleb128 3
	.uleb128 0x8
	.long	.LASF39
	.sleb128 4
	.uleb128 0x8
	.long	.LASF40
	.sleb128 5
	.uleb128 0x8
	.long	.LASF41
	.sleb128 6
	.uleb128 0x8
	.long	.LASF42
	.sleb128 7
	.uleb128 0x8
	.long	.LASF43
	.sleb128 8
	.uleb128 0x8
	.long	.LASF44
	.sleb128 9
	.uleb128 0x8
	.long	.LASF45
	.sleb128 10
	.uleb128 0x8
	.long	.LASF46
	.sleb128 11
	.uleb128 0x8
	.long	.LASF47
	.sleb128 12
	.uleb128 0x8
	.long	.LASF48
	.sleb128 13
	.uleb128 0x8
	.long	.LASF49
	.sleb128 14
	.uleb128 0x8
	.long	.LASF50
	.sleb128 15
	.uleb128 0x8
	.long	.LASF51
	.sleb128 16
	.uleb128 0x8
	.long	.LASF52
	.sleb128 17
	.uleb128 0x8
	.long	.LASF53
	.sleb128 18
	.uleb128 0x8
	.long	.LASF54
	.sleb128 19
	.uleb128 0x8
	.long	.LASF55
	.sleb128 20
	.uleb128 0x8
	.long	.LASF56
	.sleb128 21
	.uleb128 0x8
	.long	.LASF57
	.sleb128 22
	.uleb128 0x8
	.long	.LASF58
	.sleb128 23
	.uleb128 0x8
	.long	.LASF59
	.sleb128 24
	.uleb128 0x8
	.long	.LASF60
	.sleb128 25
	.uleb128 0x8
	.long	.LASF61
	.sleb128 26
	.uleb128 0x8
	.long	.LASF62
	.sleb128 27
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x6
	.word	0x104
	.long	0x15c
	.uleb128 0x9
	.long	.LASF64
	.byte	0x6
	.word	0x106
	.long	0x211
	.uleb128 0xa
	.long	.LASF67
	.byte	0x14
	.byte	0x7
	.byte	0x3f
	.long	0x338
	.uleb128 0xb
	.string	"r29"
	.byte	0x7
	.byte	0x40
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"r28"
	.byte	0x7
	.byte	0x41
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"r17"
	.byte	0x7
	.byte	0x42
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"r16"
	.byte	0x7
	.byte	0x43
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"r15"
	.byte	0x7
	.byte	0x44
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"r14"
	.byte	0x7
	.byte	0x45
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"r13"
	.byte	0x7
	.byte	0x46
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"r12"
	.byte	0x7
	.byte	0x47
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"r11"
	.byte	0x7
	.byte	0x48
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"r10"
	.byte	0x7
	.byte	0x49
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"r9"
	.byte	0x7
	.byte	0x4a
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"r8"
	.byte	0x7
	.byte	0x4b
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.string	"r7"
	.byte	0x7
	.byte	0x4c
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"r6"
	.byte	0x7
	.byte	0x4d
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"r5"
	.byte	0x7
	.byte	0x4e
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"r4"
	.byte	0x7
	.byte	0x4f
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.string	"r3"
	.byte	0x7
	.byte	0x50
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"r2"
	.byte	0x7
	.byte	0x51
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF65
	.byte	0x7
	.byte	0x52
	.long	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x229
	.uleb128 0x4
	.long	.LASF66
	.byte	0x7
	.byte	0x53
	.long	0x229
	.uleb128 0xa
	.long	.LASF68
	.byte	0x2
	.byte	0x7
	.byte	0x56
	.long	0x364
	.uleb128 0xc
	.long	.LASF69
	.byte	0x7
	.byte	0x57
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x33e
	.uleb128 0x4
	.long	.LASF70
	.byte	0x7
	.byte	0x58
	.long	0x349
	.uleb128 0xa
	.long	.LASF71
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.long	0x39e
	.uleb128 0xc
	.long	.LASF72
	.byte	0x7
	.byte	0x5b
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF73
	.byte	0x7
	.byte	0x5c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0x7
	.byte	0x5d
	.long	0x3a9
	.uleb128 0xd
	.long	0x375
	.uleb128 0xa
	.long	.LASF75
	.byte	0x4
	.byte	0x7
	.byte	0x5f
	.long	0x3d7
	.uleb128 0xc
	.long	.LASF76
	.byte	0x7
	.byte	0x60
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF77
	.byte	0x7
	.byte	0x61
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x39e
	.uleb128 0x5
	.byte	0x2
	.long	0x36a
	.uleb128 0x4
	.long	.LASF78
	.byte	0x7
	.byte	0x65
	.long	0x3ee
	.uleb128 0xd
	.long	0x3ae
	.uleb128 0xa
	.long	.LASF79
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.long	0x41c
	.uleb128 0xc
	.long	.LASF80
	.byte	0x8
	.byte	0x46
	.long	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF81
	.byte	0x8
	.byte	0x47
	.long	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x3f3
	.uleb128 0xa
	.long	.LASF82
	.byte	0xe
	.byte	0x9
	.byte	0xac
	.long	0x49f
	.uleb128 0xb
	.string	"hdb"
	.byte	0x9
	.byte	0xad
	.long	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x9
	.byte	0xae
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"tid"
	.byte	0x9
	.byte	0xaf
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF84
	.byte	0x9
	.byte	0xb0
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF85
	.byte	0x9
	.byte	0xb1
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF86
	.byte	0x9
	.byte	0xb2
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF87
	.byte	0x9
	.byte	0xb3
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF88
	.byte	0x9
	.byte	0xb4
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x4a5
	.uleb128 0xd
	.long	0x422
	.uleb128 0x4
	.long	.LASF89
	.byte	0x8
	.byte	0x48
	.long	0x3f3
	.uleb128 0x4
	.long	.LASF90
	.byte	0x8
	.byte	0x9f
	.long	0x4c0
	.uleb128 0x5
	.byte	0x2
	.long	0x4aa
	.uleb128 0x4
	.long	.LASF91
	.byte	0x9
	.byte	0x50
	.long	0x90
	.uleb128 0x4
	.long	.LASF92
	.byte	0x9
	.byte	0x52
	.long	0x53
	.uleb128 0xe
	.byte	0x2
	.byte	0x9
	.byte	0x71
	.long	0x4fd
	.uleb128 0x8
	.long	.LASF93
	.sleb128 0
	.uleb128 0x8
	.long	.LASF94
	.sleb128 1
	.uleb128 0x8
	.long	.LASF95
	.sleb128 2
	.uleb128 0x8
	.long	.LASF96
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF97
	.byte	0x9
	.byte	0x79
	.long	0x4dc
	.uleb128 0xa
	.long	.LASF98
	.byte	0x4
	.byte	0x9
	.byte	0x9c
	.long	0x53f
	.uleb128 0xc
	.long	.LASF99
	.byte	0x9
	.byte	0x9d
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF100
	.byte	0x9
	.byte	0x9e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF101
	.byte	0x9
	.byte	0x9f
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF102
	.byte	0x9
	.byte	0xaa
	.long	0x508
	.uleb128 0x5
	.byte	0x2
	.long	0x53f
	.uleb128 0x4
	.long	.LASF103
	.byte	0x9
	.byte	0xb8
	.long	0x4a5
	.uleb128 0x5
	.byte	0x2
	.long	0x550
	.uleb128 0xf
	.long	.LASF104
	.byte	0x12
	.byte	0x9
	.word	0x142
	.long	0x622
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.word	0x143
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"rq"
	.byte	0x9
	.word	0x148
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF106
	.byte	0x9
	.word	0x149
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF107
	.byte	0x9
	.word	0x14e
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF108
	.byte	0x9
	.word	0x14f
	.long	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.word	0x150
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.long	.LASF110
	.byte	0x9
	.word	0x152
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF111
	.byte	0x9
	.word	0x163
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.long	.LASF112
	.byte	0x9
	.word	0x164
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.long	.LASF113
	.byte	0x9
	.word	0x165
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.word	0x166
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.word	0x167
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	.LASF116
	.byte	0x9
	.word	0x168
	.long	0x561
	.uleb128 0xf
	.long	.LASF117
	.byte	0x6
	.byte	0x9
	.word	0x16a
	.long	0x669
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.word	0x16b
	.long	0x669
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF119
	.byte	0x9
	.word	0x16d
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF120
	.byte	0x9
	.word	0x16f
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x622
	.uleb128 0x9
	.long	.LASF121
	.byte	0x9
	.word	0x17e
	.long	0x67b
	.uleb128 0xd
	.long	0x62e
	.uleb128 0xf
	.long	.LASF122
	.byte	0x1
	.byte	0x9
	.word	0x180
	.long	0x69d
	.uleb128 0x10
	.long	.LASF123
	.byte	0x9
	.word	0x196
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x9
	.word	0x198
	.long	0x680
	.uleb128 0xf
	.long	.LASF125
	.byte	0xa
	.byte	0x9
	.word	0x19a
	.long	0x702
	.uleb128 0x10
	.long	.LASF126
	.byte	0x9
	.word	0x19b
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF127
	.byte	0x9
	.word	0x19e
	.long	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF128
	.byte	0x9
	.word	0x1a0
	.long	0x724
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF129
	.byte	0x9
	.word	0x1a2
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF130
	.byte	0x9
	.word	0x1a3
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x69d
	.uleb128 0x12
	.long	0x49f
	.long	0x713
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x708
	.uleb128 0x12
	.long	0x4aa
	.long	0x724
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x719
	.uleb128 0x9
	.long	.LASF131
	.byte	0x9
	.word	0x1b3
	.long	0x736
	.uleb128 0xd
	.long	0x6a9
	.uleb128 0x14
	.long	.LASF144
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.long	.LASF135
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.long	0x75d
	.uleb128 0x16
	.long	.LASF137
	.byte	0x2
	.byte	0x7a
	.long	0xae
	.byte	0
	.uleb128 0x17
	.long	.LASF158
	.byte	0x2
	.byte	0x6d
	.byte	0x1
	.long	0x7a
	.byte	0x3
	.long	0x779
	.uleb128 0x18
	.string	"sr"
	.byte	0x2
	.byte	0x6f
	.long	0x7a
	.byte	0
	.uleb128 0x19
	.long	.LASF132
	.byte	0x2
	.byte	0x8c
	.byte	0x1
	.long	0x7a
	.byte	0x3
	.uleb128 0x19
	.long	.LASF133
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.long	0x793
	.byte	0x3
	.uleb128 0x5
	.byte	0x2
	.long	0x66f
	.uleb128 0x19
	.long	.LASF134
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.long	0x7a6
	.byte	0x3
	.uleb128 0x5
	.byte	0x2
	.long	0x72a
	.uleb128 0x15
	.long	.LASF136
	.byte	0x2
	.byte	0xb3
	.byte	0x1
	.byte	0x3
	.long	0x7d0
	.uleb128 0x16
	.long	.LASF138
	.byte	0x2
	.byte	0xb5
	.long	0x55b
	.uleb128 0x16
	.long	.LASF139
	.byte	0x2
	.byte	0xb6
	.long	0x55b
	.byte	0
	.uleb128 0x15
	.long	.LASF140
	.byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x3
	.long	0x7f4
	.uleb128 0x16
	.long	.LASF141
	.byte	0x3
	.byte	0x84
	.long	0x7f4
	.uleb128 0x16
	.long	.LASF142
	.byte	0x3
	.byte	0x85
	.long	0x4c6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x3e3
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.long	0x814
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.byte	0x5c
	.long	0x55b
	.byte	0
	.uleb128 0x14
	.long	.LASF145
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST0
	.byte	0x1
	.long	0x899
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x1
	.byte	0x4b
	.long	0x55b
	.long	.LLST1
	.uleb128 0x1d
	.long	.LASF138
	.byte	0x1
	.byte	0x4c
	.long	0x55b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1e
	.long	0x7ac
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.byte	0x54
	.long	0x883
	.uleb128 0x1f
	.long	0x7c4
	.long	.LLST1
	.uleb128 0x1f
	.long	0x7b9
	.long	.LLST3
	.uleb128 0x20
	.long	.LVL2
	.long	0xa50
	.byte	0
	.uleb128 0x21
	.long	.LVL0
	.long	0xa6a
	.uleb128 0x22
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x7fa
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x8bc
	.uleb128 0x24
	.long	0x808
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF146
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.long	0x8d5
	.uleb128 0x16
	.long	.LASF141
	.byte	0x1
	.byte	0x3b
	.long	0x55b
	.byte	0
	.uleb128 0x19
	.long	.LASF147
	.byte	0xb
	.byte	0x83
	.byte	0x1
	.long	0x7a
	.byte	0x3
	.uleb128 0x25
	.byte	0x1
	.long	.LASF149
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9da
	.uleb128 0x26
	.long	.LASF143
	.byte	0x1
	.byte	0x91
	.long	0x55b
	.long	.LLST4
	.uleb128 0x1c
	.long	.LASF150
	.byte	0x1
	.byte	0x94
	.long	0x9da
	.long	.LLST5
	.uleb128 0x27
	.long	0x814
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.byte	0x9a
	.uleb128 0x28
	.long	0x8bc
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.byte	0x9f
	.uleb128 0x24
	.long	0x8c9
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1e
	.long	0x8d5
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.byte	0x3e
	.long	0x998
	.uleb128 0x28
	.long	0x779
	.long	.LBB51
	.long	.LBE51
	.byte	0xb
	.byte	0x88
	.uleb128 0x28
	.long	0x75d
	.long	.LBB52
	.long	.LBE52
	.byte	0x2
	.byte	0x8e
	.uleb128 0x29
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2a
	.long	0x76e
	.byte	0x1
	.byte	0x68
	.uleb128 0x27
	.long	0x73b
	.long	.LBB54
	.long	.LBE54
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x7d0
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0x40
	.uleb128 0x24
	.long	0x7dd
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	0x7e8
	.byte	0x6
	.byte	0x3
	.long	osEE_scheduler_task_end
	.byte	0x9f
	.uleb128 0x21
	.long	.LVL11
	.long	0xa92
	.uleb128 0x22
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	osEE_scheduler_task_end
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xae
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF151
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST6
	.byte	0x1
	.long	0xa2c
	.uleb128 0x2b
	.long	.LASF152
	.byte	0x1
	.byte	0xa9
	.long	0xa2c
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.long	0xa21
	.uleb128 0x2b
	.long	.LASF119
	.byte	0x1
	.byte	0xb2
	.long	0xa31
	.uleb128 0x2d
	.long	.LVL13
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.long	.LVL15
	.byte	0x1
	.long	0xaab
	.byte	0
	.uleb128 0xd
	.long	0x793
	.uleb128 0xd
	.long	0xc4
	.uleb128 0x2f
	.string	"KDB"
	.byte	0xa
	.byte	0x3b
	.long	0x72a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"CDB"
	.byte	0xa
	.byte	0x3c
	.long	0x66f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.long	.LASF154
	.byte	0x9
	.word	0x1d0
	.byte	0x1
	.byte	0x1
	.long	0xa6a
	.uleb128 0x31
	.long	0x55b
	.uleb128 0x31
	.long	0x55b
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF159
	.byte	0xc
	.byte	0x9b
	.byte	0x1
	.long	0x55b
	.byte	0x1
	.long	0xa8c
	.uleb128 0x31
	.long	0x7a6
	.uleb128 0x31
	.long	0x793
	.uleb128 0x31
	.long	0xa8c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x55b
	.uleb128 0x33
	.byte	0x1
	.long	.LASF155
	.byte	0x3
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.long	0xaab
	.uleb128 0x31
	.long	0x3dd
	.uleb128 0x31
	.long	0x4c6
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF160
	.byte	0x3
	.byte	0x96
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	0x55b
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB53
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI3
	.long	.LFE53
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL2-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE55
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x88
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL9-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LFB56
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LFE56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB58
	.long	.LBE58
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF146:
	.string	"osEE_scheduler_task_not_terminated"
.LASF92:
	.string	"OsEE_byte"
.LASF107:
	.string	"p_stk_sn"
.LASF98:
	.string	"OsEE_TCB_tag"
.LASF109:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF103:
	.string	"OsEE_TDB"
.LASF117:
	.string	"OsEE_CDB_tag"
.LASF17:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF52:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF20:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF23:
	.string	"OsEE_task_type_tag"
.LASF9:
	.string	"long long unsigned int"
.LASF64:
	.string	"StatusType"
.LASF31:
	.string	"OsEE_task_status"
.LASF70:
	.string	"OsEE_SCB"
.LASF140:
	.string	"osEE_hal_terminate_activation"
.LASF160:
	.string	"osEE_idle_task_terminate"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF150:
	.string	"task_prio"
.LASF19:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF24:
	.string	"OsEE_task_status_tag"
.LASF84:
	.string	"task_type"
.LASF106:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF51:
	.string	"E_OS_PROTECTION_TIME"
.LASF62:
	.string	"E_OS_SYS_ACT"
.LASF120:
	.string	"p_idle_task"
.LASF34:
	.string	"OsEE_status_type_tag"
.LASF21:
	.string	"OsEE_task_type"
.LASF14:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF58:
	.string	"E_OS_CORE"
.LASF36:
	.string	"E_OS_ACCESS"
.LASF147:
	.string	"osEE_begin_primitive"
.LASF143:
	.string	"p_tdb_to"
.LASF78:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF97:
	.string	"OsEE_kernel_status"
.LASF74:
	.string	"OsEE_SDB"
.LASF156:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF69:
	.string	"p_tos"
.LASF38:
	.string	"E_OS_ID"
.LASF33:
	.string	"MemSize"
.LASF94:
	.string	"OSEE_KERNEL_STARTING"
.LASF123:
	.string	"dummy"
.LASF53:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF137:
	.string	"virt_prio"
.LASF85:
	.string	"task_func"
.LASF88:
	.string	"max_num_of_act"
.LASF130:
	.string	"sn_array_size"
.LASF0:
	.string	"unsigned int"
.LASF141:
	.string	"p_to_term"
.LASF144:
	.string	"osEE_hal_disableIRQ"
.LASF135:
	.string	"osEE_hal_set_ipl"
.LASF8:
	.string	"long unsigned int"
.LASF122:
	.string	"OsEE_KCB_tag"
.LASF157:
	.string	"/home/yvonne/receiver/erika/src/ee_oo_sched_entry_points.c"
.LASF142:
	.string	"kernel_cb"
.LASF50:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF126:
	.string	"p_kcb"
.LASF16:
	.string	"TaskFunc"
.LASF13:
	.string	"TaskType"
.LASF93:
	.string	"OSEE_KERNEL_STOPPED"
.LASF108:
	.string	"os_status"
.LASF12:
	.string	"AppModeType"
.LASF82:
	.string	"OsEE_TDB_tag"
.LASF68:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF134:
	.string	"osEE_get_kernel"
.LASF90:
	.string	"OsEE_RQ"
.LASF116:
	.string	"OsEE_CCB"
.LASF119:
	.string	"p_idle_hook"
.LASF111:
	.string	"prev_s_isr_all_status"
.LASF139:
	.string	"p_to"
.LASF35:
	.string	"E_OK"
.LASF42:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF125:
	.string	"OsEE_KDB_tag"
.LASF115:
	.string	"d_isr_all_cnt"
.LASF105:
	.string	"p_curr"
.LASF96:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF60:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF15:
	.string	"TaskActivation"
.LASF49:
	.string	"E_OS_PARAM_POINTER"
.LASF151:
	.string	"osEE_idle_hook_wrapper"
.LASF136:
	.string	"osEE_change_context_from_isr2_end"
.LASF72:
	.string	"p_bos"
.LASF47:
	.string	"E_OS_DISABLEDINT"
.LASF124:
	.string	"OsEE_KCB"
.LASF89:
	.string	"OsEE_SN"
.LASF114:
	.string	"s_isr_os_cnt"
.LASF46:
	.string	"E_OS_MISSINGEND"
.LASF145:
	.string	"osEE_hal_enableIRQ"
.LASF86:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF43:
	.string	"E_OS_VALUE"
.LASF71:
	.string	"OsEE_SDB_tag"
.LASF159:
	.string	"osEE_scheduler_task_terminated"
.LASF133:
	.string	"osEE_get_curr_core"
.LASF99:
	.string	"current_num_of_act"
.LASF83:
	.string	"p_tcb"
.LASF155:
	.string	"osEE_hal_terminate_ctx"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF67:
	.string	"OsEE_CTX_tag"
.LASF61:
	.string	"E_OS_SYS_STACK"
.LASF95:
	.string	"OSEE_KERNEL_STARTED"
.LASF56:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF131:
	.string	"OsEE_KDB"
.LASF127:
	.string	"p_tdb_ptr_array"
.LASF80:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF121:
	.string	"OsEE_CDB"
.LASF39:
	.string	"E_OS_LIMIT"
.LASF118:
	.string	"p_ccb"
.LASF128:
	.string	"p_sn_array"
.LASF18:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF91:
	.string	"OsEE_kernel_cb"
.LASF112:
	.string	"prev_s_isr_os_status"
.LASF110:
	.string	"last_error"
.LASF149:
	.string	"osEE_scheduler_task_wrapper_run"
.LASF79:
	.string	"OsEE_SN_tag"
.LASF100:
	.string	"current_prio"
.LASF59:
	.string	"E_OS_SYS_INIT"
.LASF63:
	.string	"OsEE_status_type"
.LASF81:
	.string	"p_tdb"
.LASF45:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF11:
	.string	"OsEE_mem_size"
.LASF77:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF152:
	.string	"p_cdb"
.LASF41:
	.string	"E_OS_RESOURCE"
.LASF129:
	.string	"tdb_array_size"
.LASF113:
	.string	"s_isr_all_cnt"
.LASF132:
	.string	"osEE_hal_begin_nested_primitive"
.LASF101:
	.string	"status"
.LASF148:
	.string	"osEE_scheduler_task_end"
.LASF57:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF87:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF154:
	.string	"osEE_change_context_from_task_end"
.LASF44:
	.string	"E_OS_SERVICEID"
.LASF73:
	.string	"stack_size"
.LASF153:
	.string	"osEE_scheduler_task_wrapper_restore"
.LASF102:
	.string	"OsEE_TCB"
.LASF75:
	.string	"OsEE_HDB_tag"
.LASF104:
	.string	"OsEE_CCB_tag"
.LASF40:
	.string	"E_OS_NOFUNC"
.LASF158:
	.string	"osEE_hal_suspendIRQ"
.LASF76:
	.string	"p_sdb"
.LASF37:
	.string	"E_OS_CALLEVEL"
.LASF22:
	.string	"TaskExecutionType"
.LASF29:
	.string	"OSEE_TASK_RUNNING"
.LASF48:
	.string	"E_OS_STACKFAULT"
.LASF65:
	.string	"p_ctx"
.LASF138:
	.string	"p_from"
.LASF55:
	.string	"E_OS_SPINLOCK"
.LASF66:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
