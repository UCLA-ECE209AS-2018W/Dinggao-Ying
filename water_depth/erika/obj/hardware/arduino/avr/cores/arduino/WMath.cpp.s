	.file	"WMath.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z10randomSeedm,"ax",@progbits
.global	_Z10randomSeedm
	.type	_Z10randomSeedm, @function
_Z10randomSeedm:
.LFB4:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/WMath.cpp"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L1
	.loc 1 31 0
	jmp srandom
.LVL1:
.L1:
	ret
	.cfi_endproc
.LFE4:
	.size	_Z10randomSeedm, .-_Z10randomSeedm
	.section	.text._Z6randoml,"ax",@progbits
.global	_Z6randoml
	.type	_Z6randoml, @function
_Z6randoml:
.LFB5:
	.loc 1 36 0
	.cfi_startproc
.LVL2:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
.LCFI2:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 37 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L6
	movw r18,r22
	movw r20,r24
	.loc 1 40 0
	std Y+1,r22
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	call random
.LVL3:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	call __divmodsi4
	rjmp .L5
.LVL4:
.L6:
	.loc 1 38 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.LVL5:
.L5:
/* epilogue start */
	.loc 1 41 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE5:
	.size	_Z6randoml, .-_Z6randoml
	.section	.text._Z6randomll,"ax",@progbits
.global	_Z6randomll
	.type	_Z6randomll, @function
_Z6randomll:
.LFB6:
	.loc 1 44 0
	.cfi_startproc
.LVL6:
	push r12
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LBB2:
	.loc 1 45 0
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brge .L8
	movw r16,r18
	movw r18,r20
	movw r12,r22
	movw r14,r24
.LVL7:
	.loc 1 48 0
	movw r24,r18
	movw r22,r16
.LVL8:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
.LVL9:
	.loc 1 49 0
	call _Z6randoml
.LVL10:
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
.LVL11:
.L8:
/* epilogue start */
.LBE2:
	.loc 1 50 0
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE6:
	.size	_Z6randomll, .-_Z6randomll
	.section	.text._Z3maplllll,"ax",@progbits
.global	_Z3maplllll
	.type	_Z3maplllll, @function
_Z3maplllll:
.LFB7:
	.loc 1 53 0
	.cfi_startproc
.LVL12:
	push r4
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r10
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 10, -6
	push r11
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -7
	push r12
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 12, -8
	push r13
.LCFI17:
	.cfi_def_cfa_offset 10
	.cfi_offset 13, -9
	push r14
.LCFI18:
	.cfi_def_cfa_offset 11
	.cfi_offset 14, -10
	push r15
.LCFI19:
	.cfi_def_cfa_offset 12
	.cfi_offset 15, -11
	push r16
.LCFI20:
	.cfi_def_cfa_offset 13
	.cfi_offset 16, -12
	push r17
.LCFI21:
	.cfi_def_cfa_offset 14
	.cfi_offset 17, -13
	push r28
.LCFI22:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI23:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI24:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r18
	movw r6,r20
	.loc 1 54 0
	movw r18,r22
	movw r20,r24
.LVL13:
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	movw r22,r24
	movw r24,r26
.LVL14:
	sub r22,r10
	sbc r23,r11
	sbc r24,r12
	sbc r25,r13
	call __mulsi3
	movw r20,r16
	movw r18,r14
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	call __divmodsi4
	movw r24,r20
	movw r22,r18
	add r22,r10
	adc r23,r11
	adc r24,r12
	adc r25,r13
/* epilogue start */
	.loc 1 55 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL15:
	pop r13
	pop r12
	pop r11
	pop r10
.LVL16:
	pop r7
	pop r6
	pop r5
	pop r4
.LVL17:
	ret
	.cfi_endproc
.LFE7:
	.size	_Z3maplllll, .-_Z3maplllll
	.section	.text._Z8makeWordj,"ax",@progbits
.global	_Z8makeWordj
	.type	_Z8makeWordj, @function
_Z8makeWordj:
.LFB8:
	.loc 1 57 0
	.cfi_startproc
.LVL18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 57 0
	ret
	.cfi_endproc
.LFE8:
	.size	_Z8makeWordj, .-_Z8makeWordj
	.section	.text._Z8makeWordhh,"ax",@progbits
.global	_Z8makeWordhh
	.type	_Z8makeWordhh, @function
_Z8makeWordhh:
.LFB9:
	.loc 1 58 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 58 0
	ldi r23,0
	movw r18,r22
	or r19,r24
	movw r24,r18
.LVL20:
	ret
	.cfi_endproc
.LFE9:
	.size	_Z8makeWordhh, .-_Z8makeWordhh
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x238
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.long	.LASF18
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.long	.LASF20
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x84
	.uleb128 0x5
	.long	.LASF3
	.byte	0x1
	.byte	0x1c
	.long	0x84
	.long	.LLST0
	.uleb128 0x6
	.long	.LVL1
	.byte	0x1
	.long	0x219
	.uleb128 0x7
	.byte	0xc
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
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x8
	.byte	0x1
	.long	.LASF5
	.byte	0x1
	.byte	0x23
	.long	.LASF6
	.long	0x33
	.long	.LFB5
	.long	.LFE5
	.long	.LLST1
	.byte	0x1
	.long	0xc5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x1
	.byte	0x23
	.long	0x33
	.long	.LLST2
	.uleb128 0x9
	.long	.LVL3
	.long	0x22d
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF5
	.byte	0x1
	.byte	0x2b
	.long	.LASF7
	.long	0x33
	.long	.LFB6
	.long	.LFE6
	.long	.LLST3
	.byte	0x1
	.long	0x13c
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x2b
	.long	0x33
	.long	.LLST4
	.uleb128 0x5
	.long	.LASF4
	.byte	0x1
	.byte	0x2b
	.long	0x33
	.long	.LLST5
	.uleb128 0xa
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x30
	.long	0x33
	.long	.LLST6
	.uleb128 0xc
	.long	.LVL10
	.long	0x8b
	.uleb128 0x7
	.byte	0xc
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
	.byte	0x5
	.byte	0x80
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"map"
	.byte	0x1
	.byte	0x34
	.long	.LASF22
	.long	0x33
	.long	.LFB7
	.long	.LFE7
	.long	.LLST7
	.byte	0x1
	.long	0x1a6
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x34
	.long	0x33
	.long	.LLST8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x1
	.byte	0x34
	.long	0x33
	.long	.LLST9
	.uleb128 0x5
	.long	.LASF10
	.byte	0x1
	.byte	0x34
	.long	0x33
	.long	.LLST10
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0x34
	.long	0x33
	.long	.LLST11
	.uleb128 0xf
	.long	.LASF12
	.byte	0x1
	.byte	0x34
	.long	0x33
	.byte	0x2
	.byte	0x91
	.sleb128 1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x39
	.long	.LASF14
	.long	0x25
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1d8
	.uleb128 0x11
	.string	"w"
	.byte	0x1
	.byte	0x39
	.long	0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x3a
	.long	.LASF15
	.long	0x25
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x212
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x3a
	.long	0x212
	.long	.LLST12
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0x3a
	.long	0x212
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF16
	.uleb128 0x12
	.byte	0x1
	.long	.LASF23
	.byte	0x2
	.word	0x253
	.byte	0x1
	.long	0x22d
	.uleb128 0x13
	.long	0x84
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF5
	.byte	0x2
	.word	0x24e
	.long	0x33
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
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
	.long	.LVL1-1
	.long	.LVL1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL1
	.long	.LFE4
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
	.long	0
	.long	0
.LLST1:
	.long	.LFB5
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
	.sleb128 8
	.long	.LCFI3
	.long	.LFE5
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3-1
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
	.long	.LVL3-1
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
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
	.long	.LVL5
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB6
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
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL8
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
	.long	.LVL8
	.long	.LVL11
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL10-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL11
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10-1
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
	.long	.LVL10-1
	.long	.LVL11
	.word	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LFB7
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI24
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LLST8:
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
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL13
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL17
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL12
	.long	.LVL15
	.word	0xc
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL16
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"_Z6randomll"
.LASF12:
	.string	"out_max"
.LASF14:
	.string	"_Z8makeWordj"
.LASF2:
	.string	"long unsigned int"
.LASF17:
	.string	"GNU C++ 4.9.2 -fpreprocessed -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF11:
	.string	"out_min"
.LASF13:
	.string	"makeWord"
.LASF9:
	.string	"in_min"
.LASF23:
	.string	"srandom"
.LASF16:
	.string	"unsigned char"
.LASF4:
	.string	"howbig"
.LASF6:
	.string	"_Z6randoml"
.LASF1:
	.string	"long int"
.LASF3:
	.string	"seed"
.LASF21:
	.string	"diff"
.LASF22:
	.string	"_Z3maplllll"
.LASF10:
	.string	"in_max"
.LASF19:
	.string	"randomSeed"
.LASF15:
	.string	"_Z8makeWordhh"
.LASF18:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/WMath.cpp"
.LASF8:
	.string	"howsmall"
.LASF20:
	.string	"_Z10randomSeedm"
.LASF5:
	.string	"random"
	.ident	"GCC: (GNU) 4.9.2"
