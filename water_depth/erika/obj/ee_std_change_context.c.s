	.file	"ee_std_change_context.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_change_context_from_running,"ax",@progbits
.global	osEE_change_context_from_running
	.type	osEE_change_context_from_running, @function
osEE_change_context_from_running:
.LFB52:
	.file 1 "/home/yvonne/water_depth/erika/src/ee_std_change_context.c"
	.loc 1 61 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	.loc 1 62 0
	ldd r26,Z+4
	ldd r27,Z+5
.LVL1:
	.loc 1 63 0
	adiw r26,2
	ld r18,X+
	ld r19,X
	sbiw r26,2+1
.LVL2:
	.loc 1 65 0
	ldi r20,lo8(4)
	ldi r21,0
	adiw r26,2+1
	st X,r21
	st -X,r20
	sbiw r26,2
	movw r26,r24
.LVL3:
	adiw r26,2
	ld r20,X+
	ld r21,X
	sbiw r26,2+1
	ldd r22,Z+2
	ldd r23,Z+3
.LVL4:
	.loc 1 68 0
	movw r24,r30
.LVL5:
	.loc 1 67 0
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L2
	.loc 1 68 0
	jmp osEE_hal_save_ctx_and_restore_ctx
.LVL6:
.L2:
	.loc 1 71 0
	jmp osEE_hal_save_ctx_and_ready2stacked
.LVL7:
	.cfi_endproc
.LFE52:
	.size	osEE_change_context_from_running, .-osEE_change_context_from_running
	.section	.text.osEE_change_context_from_task_end,"ax",@progbits
.global	osEE_change_context_from_task_end
	.type	osEE_change_context_from_task_end, @function
osEE_change_context_from_task_end:
.LFB53:
	.loc 1 82 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r24,r22
.LVL9:
	.loc 1 83 0
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
.LVL10:
	.loc 1 84 0
	ldd r18,Z+2
	ldd r19,Z+3
.LVL11:
	.loc 1 86 0
	ldi r20,lo8(4)
	ldi r21,0
	std Z+3,r21
	std Z+2,r20
	adiw r26,2
	ld r22,X+
	ld r23,X
	sbiw r26,2+1
.LVL12:
	.loc 1 88 0
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L5
	.loc 1 89 0
	jmp osEE_hal_restore_ctx
.LVL13:
.L5:
	.loc 1 91 0
	jmp osEE_hal_ready2stacked
.LVL14:
	.cfi_endproc
.LFE53:
	.size	osEE_change_context_from_task_end, .-osEE_change_context_from_task_end
	.section	.text.osEE_idle_task_terminate,"ax",@progbits
.global	osEE_idle_task_terminate
	.type	osEE_idle_task_terminate, @function
osEE_idle_task_terminate:
.LFB54:
	.loc 1 103 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 108 0
	movw r26,r24
	adiw r26,2
	ld r22,X+
	ld r23,X
	sbiw r26,2+1
.LVL16:
	.loc 1 109 0
	ld r30,X+
	ld r31,X
	ld r20,Z
	ldd r21,Z+1
.LVL17:
	.loc 1 110 0
	movw r26,r22
	ld r30,X+
	ld r31,X
.LVL18:
.L8:
	.loc 1 114 0 discriminator 2
	ldd r18,Z+18
	ldd r19,Z+19
.LVL19:
	.loc 1 115 0 discriminator 2
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L7
.L9:
	.loc 1 118 0
	movw r26,r22
	st X+,r30
	st X,r31
.LVL20:
	.loc 1 120 0
	jmp osEE_hal_restore_ctx
.LVL21:
.L7:
	.loc 1 115 0 discriminator 1
	cp r18,r20
	cpc r19,r21
	breq .L9
	movw r30,r18
.LVL22:
	rjmp .L8
	.cfi_endproc
.LFE54:
	.size	osEE_idle_task_terminate, .-osEE_idle_task_terminate
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/water_depth/erika/inc/ee_platform_types.h"
	.file 4 "/home/yvonne/water_depth/erika/inc/ee_api_types.h"
	.file 5 "/home/yvonne/water_depth/erika/inc/ee_hal_internal_types.h"
	.file 6 "/home/yvonne/water_depth/erika/inc/ee_scheduler_types.h"
	.file 7 "/home/yvonne/water_depth/erika/inc/ee_kernel_types.h"
	.file 8 "/home/yvonne/water_depth/erika/inc/ee_get_kernel_and_core.h"
	.file 9 "/home/yvonne/water_depth/erika/src/ee_std_change_context.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x95b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF143
	.byte	0x1
	.long	.LASF144
	.long	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
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
	.byte	0x3
	.byte	0x5f
	.long	0x48
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x69
	.long	0x5a
	.uleb128 0x5
	.byte	0x2
	.long	0x96
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x3f
	.long	0x53
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x45
	.long	0x7a
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x4d
	.long	0x53
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x59
	.long	0x53
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x64
	.long	0x90
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x4
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
	.byte	0x4
	.byte	0x70
	.long	0xcf
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x72
	.long	0xf4
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x4
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
	.byte	0x4
	.byte	0x7d
	.long	0x10a
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x84
	.long	0x13b
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.byte	0xda
	.long	0x85
	.uleb128 0x7
	.long	.LASF34
	.byte	0x2
	.byte	0x4
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
	.byte	0x4
	.word	0x104
	.long	0x15c
	.uleb128 0x9
	.long	.LASF64
	.byte	0x4
	.word	0x106
	.long	0x211
	.uleb128 0xa
	.long	.LASF67
	.byte	0x14
	.byte	0x5
	.byte	0x3f
	.long	0x338
	.uleb128 0xb
	.string	"r29"
	.byte	0x5
	.byte	0x40
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"r28"
	.byte	0x5
	.byte	0x41
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"r17"
	.byte	0x5
	.byte	0x42
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"r16"
	.byte	0x5
	.byte	0x43
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"r15"
	.byte	0x5
	.byte	0x44
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"r14"
	.byte	0x5
	.byte	0x45
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"r13"
	.byte	0x5
	.byte	0x46
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"r12"
	.byte	0x5
	.byte	0x47
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"r11"
	.byte	0x5
	.byte	0x48
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"r10"
	.byte	0x5
	.byte	0x49
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"r9"
	.byte	0x5
	.byte	0x4a
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"r8"
	.byte	0x5
	.byte	0x4b
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.string	"r7"
	.byte	0x5
	.byte	0x4c
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"r6"
	.byte	0x5
	.byte	0x4d
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"r5"
	.byte	0x5
	.byte	0x4e
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"r4"
	.byte	0x5
	.byte	0x4f
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.string	"r3"
	.byte	0x5
	.byte	0x50
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"r2"
	.byte	0x5
	.byte	0x51
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF65
	.byte	0x5
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
	.byte	0x5
	.byte	0x53
	.long	0x229
	.uleb128 0xa
	.long	.LASF68
	.byte	0x2
	.byte	0x5
	.byte	0x56
	.long	0x364
	.uleb128 0xc
	.long	.LASF69
	.byte	0x5
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
	.byte	0x5
	.byte	0x58
	.long	0x349
	.uleb128 0xa
	.long	.LASF71
	.byte	0x4
	.byte	0x5
	.byte	0x5a
	.long	0x39e
	.uleb128 0xc
	.long	.LASF72
	.byte	0x5
	.byte	0x5b
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF73
	.byte	0x5
	.byte	0x5c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0x5
	.byte	0x5d
	.long	0x3a9
	.uleb128 0xd
	.long	0x375
	.uleb128 0xa
	.long	.LASF75
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.long	0x3d7
	.uleb128 0xc
	.long	.LASF76
	.byte	0x5
	.byte	0x60
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF77
	.byte	0x5
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
	.byte	0x5
	.byte	0x65
	.long	0x3ee
	.uleb128 0xd
	.long	0x3ae
	.uleb128 0xa
	.long	.LASF79
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.long	0x41c
	.uleb128 0xc
	.long	.LASF80
	.byte	0x6
	.byte	0x46
	.long	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF81
	.byte	0x6
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
	.byte	0x7
	.byte	0xac
	.long	0x49f
	.uleb128 0xb
	.string	"hdb"
	.byte	0x7
	.byte	0xad
	.long	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x7
	.byte	0xae
	.long	0x53f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"tid"
	.byte	0x7
	.byte	0xaf
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF84
	.byte	0x7
	.byte	0xb0
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF85
	.byte	0x7
	.byte	0xb1
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF86
	.byte	0x7
	.byte	0xb2
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF87
	.byte	0x7
	.byte	0xb3
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF88
	.byte	0x7
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
	.byte	0x6
	.byte	0x48
	.long	0x3f3
	.uleb128 0x4
	.long	.LASF90
	.byte	0x6
	.byte	0x9f
	.long	0x4c0
	.uleb128 0x5
	.byte	0x2
	.long	0x4aa
	.uleb128 0x4
	.long	.LASF91
	.byte	0x7
	.byte	0x52
	.long	0x53
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.byte	0x71
	.long	0x4f2
	.uleb128 0x8
	.long	.LASF92
	.sleb128 0
	.uleb128 0x8
	.long	.LASF93
	.sleb128 1
	.uleb128 0x8
	.long	.LASF94
	.sleb128 2
	.uleb128 0x8
	.long	.LASF95
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF96
	.byte	0x7
	.byte	0x79
	.long	0x4d1
	.uleb128 0xa
	.long	.LASF97
	.byte	0x4
	.byte	0x7
	.byte	0x9c
	.long	0x534
	.uleb128 0xc
	.long	.LASF98
	.byte	0x7
	.byte	0x9d
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF99
	.byte	0x7
	.byte	0x9e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF100
	.byte	0x7
	.byte	0x9f
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF101
	.byte	0x7
	.byte	0xaa
	.long	0x4fd
	.uleb128 0x5
	.byte	0x2
	.long	0x534
	.uleb128 0x4
	.long	.LASF102
	.byte	0x7
	.byte	0xb8
	.long	0x4a5
	.uleb128 0x5
	.byte	0x2
	.long	0x545
	.uleb128 0xf
	.long	.LASF103
	.byte	0x12
	.byte	0x7
	.word	0x142
	.long	0x617
	.uleb128 0x10
	.long	.LASF104
	.byte	0x7
	.word	0x143
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"rq"
	.byte	0x7
	.word	0x148
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF105
	.byte	0x7
	.word	0x149
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF106
	.byte	0x7
	.word	0x14e
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF107
	.byte	0x7
	.word	0x14f
	.long	0x4f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF108
	.byte	0x7
	.word	0x150
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.long	.LASF109
	.byte	0x7
	.word	0x152
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF110
	.byte	0x7
	.word	0x163
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.long	.LASF111
	.byte	0x7
	.word	0x164
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.long	.LASF112
	.byte	0x7
	.word	0x165
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF113
	.byte	0x7
	.word	0x166
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF114
	.byte	0x7
	.word	0x167
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x7
	.word	0x168
	.long	0x556
	.uleb128 0xf
	.long	.LASF116
	.byte	0x6
	.byte	0x7
	.word	0x16a
	.long	0x65e
	.uleb128 0x10
	.long	.LASF117
	.byte	0x7
	.word	0x16b
	.long	0x65e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF118
	.byte	0x7
	.word	0x16d
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF119
	.byte	0x7
	.word	0x16f
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x617
	.uleb128 0x9
	.long	.LASF120
	.byte	0x7
	.word	0x17e
	.long	0x670
	.uleb128 0xd
	.long	0x623
	.uleb128 0xf
	.long	.LASF121
	.byte	0x1
	.byte	0x7
	.word	0x180
	.long	0x692
	.uleb128 0x10
	.long	.LASF122
	.byte	0x7
	.word	0x196
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF123
	.byte	0x7
	.word	0x198
	.long	0x675
	.uleb128 0xf
	.long	.LASF124
	.byte	0xa
	.byte	0x7
	.word	0x19a
	.long	0x6f7
	.uleb128 0x10
	.long	.LASF125
	.byte	0x7
	.word	0x19b
	.long	0x6f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF126
	.byte	0x7
	.word	0x19e
	.long	0x708
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF127
	.byte	0x7
	.word	0x1a0
	.long	0x719
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF128
	.byte	0x7
	.word	0x1a2
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF129
	.byte	0x7
	.word	0x1a3
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x692
	.uleb128 0x12
	.long	0x49f
	.long	0x708
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x6fd
	.uleb128 0x12
	.long	0x4aa
	.long	0x719
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x70e
	.uleb128 0x9
	.long	.LASF130
	.byte	0x7
	.word	0x1b3
	.long	0x72b
	.uleb128 0xd
	.long	0x69e
	.uleb128 0x14
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7ac
	.uleb128 0x15
	.long	.LASF131
	.byte	0x1
	.byte	0x3a
	.long	0x550
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF132
	.byte	0x1
	.byte	0x3b
	.long	0x550
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF133
	.byte	0x1
	.byte	0x3e
	.long	0x7ac
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF134
	.byte	0x1
	.byte	0x3f
	.long	0x7b1
	.long	.LLST3
	.uleb128 0x17
	.long	.LVL6
	.byte	0x1
	.long	0x8f4
	.long	0x7a1
	.uleb128 0x18
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x19
	.long	.LVL7
	.byte	0x1
	.long	0x912
	.byte	0
	.uleb128 0xd
	.long	0x53f
	.uleb128 0xd
	.long	0x146
	.uleb128 0x14
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x832
	.uleb128 0x15
	.long	.LASF131
	.byte	0x1
	.byte	0x4f
	.long	0x550
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF132
	.byte	0x1
	.byte	0x50
	.long	0x550
	.long	.LLST5
	.uleb128 0x16
	.long	.LASF133
	.byte	0x1
	.byte	0x53
	.long	0x7ac
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF134
	.byte	0x1
	.byte	0x54
	.long	0x7b1
	.long	.LLST7
	.uleb128 0x17
	.long	.LVL13
	.byte	0x1
	.long	0x930
	.long	0x827
	.uleb128 0x18
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x19
	.long	.LVL14
	.byte	0x1
	.long	0x949
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x8c0
	.uleb128 0x15
	.long	.LASF138
	.byte	0x1
	.byte	0x65
	.long	0x550
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x68
	.long	0x364
	.long	.LLST9
	.uleb128 0x16
	.long	.LASF139
	.byte	0x1
	.byte	0x6a
	.long	0x8c0
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x6b
	.long	0x8cb
	.long	.LLST11
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0x6c
	.long	0x8d0
	.long	.LLST12
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x6d
	.long	0x8d5
	.long	.LLST13
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x6e
	.long	0x364
	.long	.LLST14
	.uleb128 0x19
	.long	.LVL21
	.byte	0x1
	.long	0x930
	.byte	0
	.uleb128 0xd
	.long	0x8c5
	.uleb128 0x5
	.byte	0x2
	.long	0x3e3
	.uleb128 0xd
	.long	0x3d7
	.uleb128 0xd
	.long	0x3dd
	.uleb128 0xd
	.long	0x364
	.uleb128 0x1a
	.string	"KDB"
	.byte	0x8
	.byte	0x3b
	.long	0x71f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"CDB"
	.byte	0x8
	.byte	0x3c
	.long	0x664
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF140
	.byte	0x9
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.long	0x912
	.uleb128 0x1c
	.long	0x550
	.uleb128 0x1c
	.long	0x3dd
	.uleb128 0x1c
	.long	0x3dd
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF141
	.byte	0x9
	.byte	0x63
	.byte	0x1
	.byte	0x1
	.long	0x930
	.uleb128 0x1c
	.long	0x550
	.uleb128 0x1c
	.long	0x3dd
	.uleb128 0x1c
	.long	0x3dd
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF142
	.byte	0x9
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.long	0x949
	.uleb128 0x1c
	.long	0x550
	.uleb128 0x1c
	.long	0x3dd
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF145
	.byte	0x9
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	0x550
	.uleb128 0x1c
	.long	0x3dd
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.long	.LVL0
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6-1
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL6-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6-1
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x86
	.sleb128 4
	.long	.LVL4
	.long	.LVL6-1
	.word	0x2
	.byte	0x8e
	.sleb128 4
	.long	.LVL6
	.long	.LVL7-1
	.word	0x2
	.byte	0x88
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL6-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL12
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-1
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL13-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL11
	.long	.LVL13-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL21-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL21
	.long	.LFE54
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL21-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL20
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL21
	.long	.LFE54
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL21-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE54
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL21-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE54
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LVL21-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE54
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"OsEE_byte"
.LASF106:
	.string	"p_stk_sn"
.LASF97:
	.string	"OsEE_TCB_tag"
.LASF108:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF102:
	.string	"OsEE_TDB"
.LASF116:
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
.LASF145:
	.string	"osEE_hal_ready2stacked"
.LASF70:
	.string	"OsEE_SCB"
.LASF137:
	.string	"osEE_idle_task_terminate"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF19:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF24:
	.string	"OsEE_task_status_tag"
.LASF84:
	.string	"task_type"
.LASF105:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF51:
	.string	"E_OS_PROTECTION_TIME"
.LASF62:
	.string	"E_OS_SYS_ACT"
.LASF119:
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
.LASF78:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF96:
	.string	"OsEE_kernel_status"
.LASF74:
	.string	"OsEE_SDB"
.LASF143:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF69:
	.string	"p_tos"
.LASF38:
	.string	"E_OS_ID"
.LASF33:
	.string	"MemSize"
.LASF93:
	.string	"OSEE_KERNEL_STARTING"
.LASF122:
	.string	"dummy"
.LASF53:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF85:
	.string	"task_func"
.LASF88:
	.string	"max_num_of_act"
.LASF129:
	.string	"sn_array_size"
.LASF0:
	.string	"unsigned int"
.LASF134:
	.string	"status_prev_running"
.LASF8:
	.string	"long unsigned int"
.LASF121:
	.string	"OsEE_KCB_tag"
.LASF50:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF125:
	.string	"p_kcb"
.LASF16:
	.string	"TaskFunc"
.LASF13:
	.string	"TaskType"
.LASF135:
	.string	"osEE_change_context_from_running"
.LASF92:
	.string	"OSEE_KERNEL_STOPPED"
.LASF107:
	.string	"os_status"
.LASF12:
	.string	"AppModeType"
.LASF82:
	.string	"OsEE_TDB_tag"
.LASF68:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF90:
	.string	"OsEE_RQ"
.LASF115:
	.string	"OsEE_CCB"
.LASF142:
	.string	"osEE_hal_restore_ctx"
.LASF118:
	.string	"p_idle_hook"
.LASF110:
	.string	"prev_s_isr_all_status"
.LASF132:
	.string	"p_to"
.LASF138:
	.string	"p_idle_tdb"
.LASF35:
	.string	"E_OK"
.LASF42:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF124:
	.string	"OsEE_KDB_tag"
.LASF114:
	.string	"d_isr_all_cnt"
.LASF104:
	.string	"p_curr"
.LASF95:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF60:
	.string	"E_OS_SYS_TASK"
.LASF141:
	.string	"osEE_hal_save_ctx_and_ready2stacked"
.LASF2:
	.string	"long double"
.LASF15:
	.string	"TaskActivation"
.LASF49:
	.string	"E_OS_PARAM_POINTER"
.LASF139:
	.string	"p_idle_hdb"
.LASF72:
	.string	"p_bos"
.LASF47:
	.string	"E_OS_DISABLEDINT"
.LASF123:
	.string	"OsEE_KCB"
.LASF89:
	.string	"OsEE_SN"
.LASF113:
	.string	"s_isr_os_cnt"
.LASF46:
	.string	"E_OS_MISSINGEND"
.LASF86:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF43:
	.string	"E_OS_VALUE"
.LASF71:
	.string	"OsEE_SDB_tag"
.LASF98:
	.string	"current_num_of_act"
.LASF83:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF67:
	.string	"OsEE_CTX_tag"
.LASF61:
	.string	"E_OS_SYS_STACK"
.LASF94:
	.string	"OSEE_KERNEL_STARTED"
.LASF56:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF130:
	.string	"OsEE_KDB"
.LASF126:
	.string	"p_tdb_ptr_array"
.LASF80:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF120:
	.string	"OsEE_CDB"
.LASF39:
	.string	"E_OS_LIMIT"
.LASF117:
	.string	"p_ccb"
.LASF127:
	.string	"p_sn_array"
.LASF18:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF133:
	.string	"p_to_tcb"
.LASF111:
	.string	"prev_s_isr_os_status"
.LASF109:
	.string	"last_error"
.LASF79:
	.string	"OsEE_SN_tag"
.LASF99:
	.string	"current_prio"
.LASF59:
	.string	"E_OS_SYS_INIT"
.LASF63:
	.string	"OsEE_status_type"
.LASF81:
	.string	"p_tdb"
.LASF140:
	.string	"osEE_hal_save_ctx_and_restore_ctx"
.LASF45:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF11:
	.string	"OsEE_mem_size"
.LASF77:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF41:
	.string	"E_OS_RESOURCE"
.LASF128:
	.string	"tdb_array_size"
.LASF112:
	.string	"s_isr_all_cnt"
.LASF100:
	.string	"status"
.LASF57:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF87:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF136:
	.string	"osEE_change_context_from_task_end"
.LASF44:
	.string	"E_OS_SERVICEID"
.LASF73:
	.string	"stack_size"
.LASF101:
	.string	"OsEE_TCB"
.LASF75:
	.string	"OsEE_HDB_tag"
.LASF103:
	.string	"OsEE_CCB_tag"
.LASF144:
	.string	"/home/yvonne/water_depth/erika/src/ee_std_change_context.c"
.LASF40:
	.string	"E_OS_NOFUNC"
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
.LASF131:
	.string	"p_from"
.LASF55:
	.string	"E_OS_SPINLOCK"
.LASF66:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
