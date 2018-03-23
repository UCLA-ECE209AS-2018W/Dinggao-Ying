	.file	"ee_atmega_timer1ctc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.OsEE_atmega_startTimer1,"ax",@progbits
.global	OsEE_atmega_startTimer1
	.type	OsEE_atmega_startTimer1, @function
OsEE_atmega_startTimer1:
.LFB52:
	.file 1 "/home/yvonne/distance_sensor/erika/src/ee_atmega_timer1ctc.c"
	.loc 1 67 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
	sts 129,__zero_reg__
	.loc 1 71 0
	sts 128,__zero_reg__
	.loc 1 72 0
	sts 130,__zero_reg__
	.loc 1 73 0
	sts 132+1,__zero_reg__
	sts 132,__zero_reg__
	.loc 1 84 0
	cp r22,__zero_reg__
	ldi r18,16
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L2
.LVL1:
	.loc 1 86 0
	ldi r30,4
	1:
	lsl r22
	rol r23
	dec r30
	brne 1b
.LVL2:
	subi r22,1
	sbc r23,__zero_reg__
.LVL3:
	.loc 1 85 0
	ldi r24,lo8(1)
	rjmp .L3
.LVL4:
.L2:
	.loc 1 88 0
	cp r22,__zero_reg__
	ldi r18,-128
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L4
.LVL5:
	.loc 1 90 0
	lsl r22
	rol r23
.LVL6:
	subi r22,1
	sbc r23,__zero_reg__
.LVL7:
	.loc 1 89 0
	ldi r24,lo8(2)
	rjmp .L3
.LVL8:
.L4:
	.loc 1 92 0
	cpi r22,-4
	ldi r18,-1
	cpc r23,r18
	ldi r18,3
	cpc r24,r18
	cpc r25,__zero_reg__
	brsh .L5
.LVL9:
	.loc 1 94 0
	movw r26,r24
	movw r24,r22
	ldi r20,2
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r20
	brne 1b
	movw r22,r24
.LVL10:
	subi r22,1
	sbc r23,__zero_reg__
.LVL11:
	.loc 1 93 0
	ldi r24,lo8(3)
	rjmp .L3
.LVL12:
.L5:
	.loc 1 96 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	ldi r18,16
	cpc r24,r18
	cpc r25,__zero_reg__
	brsh .L6
.LVL13:
	.loc 1 98 0
	movw r26,r24
	movw r24,r22
	ldi r19,4
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r19
	brne 1b
	movw r22,r24
.LVL14:
	subi r22,1
	sbc r23,__zero_reg__
.LVL15:
	.loc 1 97 0
	ldi r24,lo8(4)
	rjmp .L3
.LVL16:
.L6:
	.loc 1 102 0
	movw r26,r24
	movw r24,r22
	ldi r18,6
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r18
	brne 1b
	movw r22,r24
.LVL17:
	subi r22,1
	sbc r23,__zero_reg__
.LVL18:
	.loc 1 101 0
	ldi r24,lo8(5)
.LVL19:
.L3:
	.loc 1 107 0
	ldi r25,lo8(2)
	out 0x16,r25
	.loc 1 108 0
	sts 111,r25
	.loc 1 109 0
	sts 136+1,r23
	sts 136,r22
	.loc 1 110 0
	ori r24,lo8(8)
.LVL20:
	sts 129,r24
	ret
	.cfi_endproc
.LFE52:
	.size	OsEE_atmega_startTimer1, .-OsEE_atmega_startTimer1
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/distance_sensor/erika/inc/ee_platform_types.h"
	.file 4 "/home/yvonne/distance_sensor/erika/inc/ee_api_types.h"
	.file 5 "/home/yvonne/distance_sensor/erika/inc/ee_hal_internal_types.h"
	.file 6 "/home/yvonne/distance_sensor/erika/inc/ee_scheduler_types.h"
	.file 7 "/home/yvonne/distance_sensor/erika/inc/ee_kernel_types.h"
	.file 8 "/home/yvonne/distance_sensor/erika/inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x79a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF134
	.byte	0x1
	.long	.LASF135
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x82
	.long	0x77
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x5f
	.long	0x48
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x69
	.long	0x5a
	.uleb128 0x5
	.byte	0x2
	.long	0xa1
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x3f
	.long	0x53
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x45
	.long	0x85
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x4d
	.long	0x53
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x59
	.long	0x53
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x64
	.long	0x9b
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x4
	.byte	0x6b
	.long	0xff
	.uleb128 0x8
	.long	.LASF18
	.sleb128 0
	.uleb128 0x8
	.long	.LASF19
	.sleb128 1
	.uleb128 0x8
	.long	.LASF20
	.sleb128 2
	.uleb128 0x8
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x70
	.long	0xda
	.uleb128 0x4
	.long	.LASF23
	.byte	0x4
	.byte	0x72
	.long	0xff
	.uleb128 0x7
	.long	.LASF25
	.byte	0x2
	.byte	0x4
	.byte	0x74
	.long	0x146
	.uleb128 0x8
	.long	.LASF26
	.sleb128 0
	.uleb128 0x8
	.long	.LASF27
	.sleb128 1
	.uleb128 0x8
	.long	.LASF28
	.sleb128 2
	.uleb128 0x8
	.long	.LASF29
	.sleb128 3
	.uleb128 0x8
	.long	.LASF30
	.sleb128 4
	.uleb128 0x8
	.long	.LASF31
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x7d
	.long	0x115
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.byte	0x84
	.long	0x146
	.uleb128 0x4
	.long	.LASF34
	.byte	0x4
	.byte	0xda
	.long	0x90
	.uleb128 0x7
	.long	.LASF35
	.byte	0x2
	.byte	0x4
	.byte	0xe2
	.long	0x21c
	.uleb128 0x8
	.long	.LASF36
	.sleb128 0
	.uleb128 0x8
	.long	.LASF37
	.sleb128 1
	.uleb128 0x8
	.long	.LASF38
	.sleb128 2
	.uleb128 0x8
	.long	.LASF39
	.sleb128 3
	.uleb128 0x8
	.long	.LASF40
	.sleb128 4
	.uleb128 0x8
	.long	.LASF41
	.sleb128 5
	.uleb128 0x8
	.long	.LASF42
	.sleb128 6
	.uleb128 0x8
	.long	.LASF43
	.sleb128 7
	.uleb128 0x8
	.long	.LASF44
	.sleb128 8
	.uleb128 0x8
	.long	.LASF45
	.sleb128 9
	.uleb128 0x8
	.long	.LASF46
	.sleb128 10
	.uleb128 0x8
	.long	.LASF47
	.sleb128 11
	.uleb128 0x8
	.long	.LASF48
	.sleb128 12
	.uleb128 0x8
	.long	.LASF49
	.sleb128 13
	.uleb128 0x8
	.long	.LASF50
	.sleb128 14
	.uleb128 0x8
	.long	.LASF51
	.sleb128 15
	.uleb128 0x8
	.long	.LASF52
	.sleb128 16
	.uleb128 0x8
	.long	.LASF53
	.sleb128 17
	.uleb128 0x8
	.long	.LASF54
	.sleb128 18
	.uleb128 0x8
	.long	.LASF55
	.sleb128 19
	.uleb128 0x8
	.long	.LASF56
	.sleb128 20
	.uleb128 0x8
	.long	.LASF57
	.sleb128 21
	.uleb128 0x8
	.long	.LASF58
	.sleb128 22
	.uleb128 0x8
	.long	.LASF59
	.sleb128 23
	.uleb128 0x8
	.long	.LASF60
	.sleb128 24
	.uleb128 0x8
	.long	.LASF61
	.sleb128 25
	.uleb128 0x8
	.long	.LASF62
	.sleb128 26
	.uleb128 0x8
	.long	.LASF63
	.sleb128 27
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x4
	.word	0x104
	.long	0x167
	.uleb128 0x9
	.long	.LASF65
	.byte	0x4
	.word	0x106
	.long	0x21c
	.uleb128 0xa
	.long	.LASF68
	.byte	0x14
	.byte	0x5
	.byte	0x3f
	.long	0x343
	.uleb128 0xb
	.string	"r29"
	.byte	0x5
	.byte	0x40
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"r28"
	.byte	0x5
	.byte	0x41
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"r17"
	.byte	0x5
	.byte	0x42
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"r16"
	.byte	0x5
	.byte	0x43
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"r15"
	.byte	0x5
	.byte	0x44
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"r14"
	.byte	0x5
	.byte	0x45
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"r13"
	.byte	0x5
	.byte	0x46
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"r12"
	.byte	0x5
	.byte	0x47
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"r11"
	.byte	0x5
	.byte	0x48
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"r10"
	.byte	0x5
	.byte	0x49
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"r9"
	.byte	0x5
	.byte	0x4a
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"r8"
	.byte	0x5
	.byte	0x4b
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.string	"r7"
	.byte	0x5
	.byte	0x4c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"r6"
	.byte	0x5
	.byte	0x4d
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"r5"
	.byte	0x5
	.byte	0x4e
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"r4"
	.byte	0x5
	.byte	0x4f
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.string	"r3"
	.byte	0x5
	.byte	0x50
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"r2"
	.byte	0x5
	.byte	0x51
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF66
	.byte	0x5
	.byte	0x52
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x234
	.uleb128 0x4
	.long	.LASF67
	.byte	0x5
	.byte	0x53
	.long	0x234
	.uleb128 0xa
	.long	.LASF69
	.byte	0x2
	.byte	0x5
	.byte	0x56
	.long	0x36f
	.uleb128 0xc
	.long	.LASF70
	.byte	0x5
	.byte	0x57
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x349
	.uleb128 0x4
	.long	.LASF71
	.byte	0x5
	.byte	0x58
	.long	0x354
	.uleb128 0xa
	.long	.LASF72
	.byte	0x4
	.byte	0x5
	.byte	0x5a
	.long	0x3a9
	.uleb128 0xc
	.long	.LASF73
	.byte	0x5
	.byte	0x5b
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF74
	.byte	0x5
	.byte	0x5c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF75
	.byte	0x5
	.byte	0x5d
	.long	0x3b4
	.uleb128 0xd
	.long	0x380
	.uleb128 0xa
	.long	.LASF76
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.long	0x3e2
	.uleb128 0xc
	.long	.LASF77
	.byte	0x5
	.byte	0x60
	.long	0x3e2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF78
	.byte	0x5
	.byte	0x61
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x3a9
	.uleb128 0x5
	.byte	0x2
	.long	0x375
	.uleb128 0x4
	.long	.LASF79
	.byte	0x5
	.byte	0x65
	.long	0x3f9
	.uleb128 0xd
	.long	0x3b9
	.uleb128 0xa
	.long	.LASF80
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.long	0x427
	.uleb128 0xc
	.long	.LASF81
	.byte	0x6
	.byte	0x46
	.long	0x427
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF82
	.byte	0x6
	.byte	0x47
	.long	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x3fe
	.uleb128 0xa
	.long	.LASF83
	.byte	0xe
	.byte	0x7
	.byte	0xac
	.long	0x4aa
	.uleb128 0xb
	.string	"hdb"
	.byte	0x7
	.byte	0xad
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF84
	.byte	0x7
	.byte	0xae
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"tid"
	.byte	0x7
	.byte	0xaf
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF85
	.byte	0x7
	.byte	0xb0
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF86
	.byte	0x7
	.byte	0xb1
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF87
	.byte	0x7
	.byte	0xb2
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF88
	.byte	0x7
	.byte	0xb3
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF89
	.byte	0x7
	.byte	0xb4
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x4b0
	.uleb128 0xd
	.long	0x42d
	.uleb128 0x4
	.long	.LASF90
	.byte	0x6
	.byte	0x48
	.long	0x3fe
	.uleb128 0x4
	.long	.LASF91
	.byte	0x6
	.byte	0x9f
	.long	0x4cb
	.uleb128 0x5
	.byte	0x2
	.long	0x4b5
	.uleb128 0x4
	.long	.LASF92
	.byte	0x7
	.byte	0x52
	.long	0x53
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
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
	.byte	0x7
	.byte	0x79
	.long	0x4dc
	.uleb128 0xa
	.long	.LASF98
	.byte	0x4
	.byte	0x7
	.byte	0x9c
	.long	0x53f
	.uleb128 0xc
	.long	.LASF99
	.byte	0x7
	.byte	0x9d
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF100
	.byte	0x7
	.byte	0x9e
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF101
	.byte	0x7
	.byte	0x9f
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF102
	.byte	0x7
	.byte	0xaa
	.long	0x508
	.uleb128 0x5
	.byte	0x2
	.long	0x53f
	.uleb128 0x4
	.long	.LASF103
	.byte	0x7
	.byte	0xb8
	.long	0x4b0
	.uleb128 0x5
	.byte	0x2
	.long	0x550
	.uleb128 0xf
	.long	.LASF104
	.byte	0x12
	.byte	0x7
	.word	0x142
	.long	0x622
	.uleb128 0x10
	.long	.LASF105
	.byte	0x7
	.word	0x143
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"rq"
	.byte	0x7
	.word	0x148
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF106
	.byte	0x7
	.word	0x149
	.long	0x4cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF107
	.byte	0x7
	.word	0x14e
	.long	0x4cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF108
	.byte	0x7
	.word	0x14f
	.long	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF109
	.byte	0x7
	.word	0x150
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.long	.LASF110
	.byte	0x7
	.word	0x152
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.long	.LASF111
	.byte	0x7
	.word	0x163
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.long	.LASF112
	.byte	0x7
	.word	0x164
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.long	.LASF113
	.byte	0x7
	.word	0x165
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF114
	.byte	0x7
	.word	0x166
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF115
	.byte	0x7
	.word	0x167
	.long	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	.LASF116
	.byte	0x7
	.word	0x168
	.long	0x561
	.uleb128 0xf
	.long	.LASF117
	.byte	0x6
	.byte	0x7
	.word	0x16a
	.long	0x669
	.uleb128 0x10
	.long	.LASF118
	.byte	0x7
	.word	0x16b
	.long	0x669
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF119
	.byte	0x7
	.word	0x16d
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF120
	.byte	0x7
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
	.byte	0x7
	.word	0x17e
	.long	0x67b
	.uleb128 0xd
	.long	0x62e
	.uleb128 0xf
	.long	.LASF122
	.byte	0x1
	.byte	0x7
	.word	0x180
	.long	0x69d
	.uleb128 0x10
	.long	.LASF123
	.byte	0x7
	.word	0x196
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x7
	.word	0x198
	.long	0x680
	.uleb128 0xf
	.long	.LASF125
	.byte	0xa
	.byte	0x7
	.word	0x19a
	.long	0x702
	.uleb128 0x10
	.long	.LASF126
	.byte	0x7
	.word	0x19b
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF127
	.byte	0x7
	.word	0x19e
	.long	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.long	.LASF128
	.byte	0x7
	.word	0x1a0
	.long	0x724
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF129
	.byte	0x7
	.word	0x1a2
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.long	.LASF130
	.byte	0x7
	.word	0x1a3
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x69d
	.uleb128 0x12
	.long	0x4aa
	.long	0x713
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x708
	.uleb128 0x12
	.long	0x4b5
	.long	0x724
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x719
	.uleb128 0x9
	.long	.LASF131
	.byte	0x7
	.word	0x1b3
	.long	0x736
	.uleb128 0xd
	.long	0x6a9
	.uleb128 0x14
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x783
	.uleb128 0x15
	.long	.LASF137
	.byte	0x1
	.byte	0x43
	.long	0x6c
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF132
	.byte	0x1
	.byte	0x44
	.long	0x48
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF133
	.byte	0x1
	.byte	0x45
	.long	0x5a
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.string	"KDB"
	.byte	0x8
	.byte	0x3b
	.long	0x72a
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"CDB"
	.byte	0x8
	.byte	0x3c
	.long	0x66f
	.byte	0x1
	.byte	0x1
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL5
	.long	.LVL8
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL9
	.long	.LVL12
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL13
	.long	.LVL16
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL16
	.long	.LVL19
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE52
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB52
	.long	.LFE52
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF92:
	.string	"OsEE_byte"
.LASF107:
	.string	"p_stk_sn"
.LASF98:
	.string	"OsEE_TCB_tag"
.LASF109:
	.string	"app_mode"
.LASF11:
	.string	"OsEE_reg"
.LASF103:
	.string	"OsEE_TDB"
.LASF117:
	.string	"OsEE_CDB_tag"
.LASF18:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF53:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF21:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF24:
	.string	"OsEE_task_type_tag"
.LASF10:
	.string	"long long unsigned int"
.LASF65:
	.string	"StatusType"
.LASF32:
	.string	"OsEE_task_status"
.LASF71:
	.string	"OsEE_SCB"
.LASF26:
	.string	"OSEE_TASK_SUSPENDED"
.LASF20:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF25:
	.string	"OsEE_task_status_tag"
.LASF85:
	.string	"task_type"
.LASF106:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF52:
	.string	"E_OS_PROTECTION_TIME"
.LASF63:
	.string	"E_OS_SYS_ACT"
.LASF120:
	.string	"p_idle_task"
.LASF35:
	.string	"OsEE_status_type_tag"
.LASF22:
	.string	"OsEE_task_type"
.LASF15:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF59:
	.string	"E_OS_CORE"
.LASF37:
	.string	"E_OS_ACCESS"
.LASF79:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF97:
	.string	"OsEE_kernel_status"
.LASF75:
	.string	"OsEE_SDB"
.LASF134:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF70:
	.string	"p_tos"
.LASF135:
	.string	"/home/yvonne/distance_sensor/erika/src/ee_atmega_timer1ctc.c"
.LASF39:
	.string	"E_OS_ID"
.LASF34:
	.string	"MemSize"
.LASF94:
	.string	"OSEE_KERNEL_STARTING"
.LASF123:
	.string	"dummy"
.LASF54:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF86:
	.string	"task_func"
.LASF89:
	.string	"max_num_of_act"
.LASF130:
	.string	"sn_array_size"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long unsigned int"
.LASF122:
	.string	"OsEE_KCB_tag"
.LASF51:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF126:
	.string	"p_kcb"
.LASF132:
	.string	"timer1Prescaler"
.LASF17:
	.string	"TaskFunc"
.LASF14:
	.string	"TaskType"
.LASF93:
	.string	"OSEE_KERNEL_STOPPED"
.LASF108:
	.string	"os_status"
.LASF13:
	.string	"AppModeType"
.LASF83:
	.string	"OsEE_TDB_tag"
.LASF69:
	.string	"OsEE_SCB_tag"
.LASF31:
	.string	"OSEE_TASK_CHAINED"
.LASF91:
	.string	"OsEE_RQ"
.LASF116:
	.string	"OsEE_CCB"
.LASF137:
	.string	"microsecondsInterval"
.LASF119:
	.string	"p_idle_hook"
.LASF111:
	.string	"prev_s_isr_all_status"
.LASF36:
	.string	"E_OK"
.LASF43:
	.string	"E_OS_STATE"
.LASF29:
	.string	"OSEE_TASK_WAITING"
.LASF125:
	.string	"OsEE_KDB_tag"
.LASF115:
	.string	"d_isr_all_cnt"
.LASF105:
	.string	"p_curr"
.LASF96:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF61:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF16:
	.string	"TaskActivation"
.LASF50:
	.string	"E_OS_PARAM_POINTER"
.LASF73:
	.string	"p_bos"
.LASF48:
	.string	"E_OS_DISABLEDINT"
.LASF124:
	.string	"OsEE_KCB"
.LASF90:
	.string	"OsEE_SN"
.LASF114:
	.string	"s_isr_os_cnt"
.LASF136:
	.string	"OsEE_atmega_startTimer1"
.LASF47:
	.string	"E_OS_MISSINGEND"
.LASF87:
	.string	"ready_prio"
.LASF28:
	.string	"OSEE_TASK_READY_STACKED"
.LASF44:
	.string	"E_OS_VALUE"
.LASF72:
	.string	"OsEE_SDB_tag"
.LASF99:
	.string	"current_num_of_act"
.LASF84:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF55:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF68:
	.string	"OsEE_CTX_tag"
.LASF62:
	.string	"E_OS_SYS_STACK"
.LASF95:
	.string	"OSEE_KERNEL_STARTED"
.LASF57:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF131:
	.string	"OsEE_KDB"
.LASF127:
	.string	"p_tdb_ptr_array"
.LASF81:
	.string	"p_next"
.LASF27:
	.string	"OSEE_TASK_READY"
.LASF121:
	.string	"OsEE_CDB"
.LASF40:
	.string	"E_OS_LIMIT"
.LASF118:
	.string	"p_ccb"
.LASF128:
	.string	"p_sn_array"
.LASF19:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF112:
	.string	"prev_s_isr_os_status"
.LASF110:
	.string	"last_error"
.LASF8:
	.string	"uint32_t"
.LASF80:
	.string	"OsEE_SN_tag"
.LASF100:
	.string	"current_prio"
.LASF60:
	.string	"E_OS_SYS_INIT"
.LASF64:
	.string	"OsEE_status_type"
.LASF82:
	.string	"p_tdb"
.LASF46:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF12:
	.string	"OsEE_mem_size"
.LASF78:
	.string	"p_scb"
.LASF33:
	.string	"TaskStateType"
.LASF42:
	.string	"E_OS_RESOURCE"
.LASF133:
	.string	"timer1CompareValue"
.LASF129:
	.string	"tdb_array_size"
.LASF113:
	.string	"s_isr_all_cnt"
.LASF101:
	.string	"status"
.LASF58:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF88:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF45:
	.string	"E_OS_SERVICEID"
.LASF74:
	.string	"stack_size"
.LASF102:
	.string	"OsEE_TCB"
.LASF76:
	.string	"OsEE_HDB_tag"
.LASF104:
	.string	"OsEE_CCB_tag"
.LASF41:
	.string	"E_OS_NOFUNC"
.LASF77:
	.string	"p_sdb"
.LASF38:
	.string	"E_OS_CALLEVEL"
.LASF23:
	.string	"TaskExecutionType"
.LASF30:
	.string	"OSEE_TASK_RUNNING"
.LASF49:
	.string	"E_OS_STACKFAULT"
.LASF66:
	.string	"p_ctx"
.LASF56:
	.string	"E_OS_SPINLOCK"
.LASF67:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
