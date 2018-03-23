	.file	"wiring_shift.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.shiftIn,"ax",@progbits
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
.LFB8:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_shift.c"
	.loc 1 25 0
	.cfi_startproc
.LVL0:
	push r12
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r15,r24
	mov r29,r22
	mov r14,r20
.LVL1:
	.loc 1 25 0
	ldi r16,lo8(7)
	ldi r17,0
	.loc 1 26 0
	ldi r28,0
	ldi r24,lo8(7)
	mov r12,r24
	mov r13,__zero_reg__
.LVL2:
.L4:
	.loc 1 30 0
	ldi r22,lo8(1)
	mov r24,r29
	call digitalWrite
.LVL3:
	.loc 1 32 0
	mov r24,r15
	.loc 1 31 0
	cpse r14,__zero_reg__
	rjmp .L2
	.loc 1 32 0
	call digitalRead
.LVL4:
	movw r18,r12
	sub r18,r16
	sbc r19,r17
	rjmp 2f
	1:
	lsl r24
	2:
	dec r18
	brpl 1b
	rjmp .L6
.L2:
	.loc 1 34 0
	call digitalRead
.LVL5:
	mov r0,r16
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
.L6:
	or r28,r24
.LVL6:
	.loc 1 35 0
	ldi r22,0
	mov r24,r29
	call digitalWrite
.LVL7:
.LVL8:
	subi r16,1
	sbc r17,__zero_reg__
	brcc .L4
	.loc 1 38 0
	mov r24,r28
/* epilogue start */
	pop r29
.LVL9:
	pop r28
.LVL10:
	pop r17
	pop r16
.LVL11:
	pop r15
.LVL12:
	pop r14
.LVL13:
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE8:
	.size	shiftIn, .-shiftIn
	.section	.text.shiftOut,"ax",@progbits
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
.LFB9:
	.loc 1 41 0
	.cfi_startproc
.LVL14:
	push r11
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI16:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
	mov r13,r22
	mov r11,r20
.LVL15:
	.loc 1 41 0
	ldi r28,lo8(7)
	ldi r29,0
	mov r16,r18
	ldi r17,0
	ldi r24,lo8(7)
	mov r14,r24
	mov r15,__zero_reg__
.LVL16:
.L11:
	.loc 1 45 0
	cpse r11,__zero_reg__
	rjmp .L9
	movw r24,r14
	sub r24,r28
	sbc r25,r29
	.loc 1 46 0
	movw r18,r16
	rjmp .L13
.L9:
	.loc 1 48 0
	movw r18,r16
	mov r24,r28
.L13:
	rjmp 2f
	1:
	asr r19
	ror r18
	2:
	dec r24
	brpl 1b
	movw r22,r18
	andi r22,1
	clr r23
	mov r24,r12
	call digitalWrite
.LVL17:
	.loc 1 50 0
	ldi r22,lo8(1)
	mov r24,r13
	call digitalWrite
.LVL18:
	.loc 1 51 0
	ldi r22,0
	mov r24,r13
	call digitalWrite
.LVL19:
.LVL20:
	sbiw r28,1
	brcc .L11
/* epilogue start */
	.loc 1 53 0
	pop r29
	pop r28
.LVL21:
	pop r17
	pop r16
.LVL22:
	pop r15
	pop r14
	pop r13
.LVL23:
	pop r12
.LVL24:
	pop r11
.LVL25:
	ret
	.cfi_endproc
.LFE9:
	.size	shiftOut, .-shiftOut
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Arduino.h"
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF17
	.byte	0x1
	.long	.LASF18
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x7e
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF8
	.uleb128 0x5
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x2c
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x129
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x19
	.long	0x2c
	.long	.LLST1
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x19
	.long	0x2c
	.long	.LLST2
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x19
	.long	0x2c
	.long	.LLST3
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x1a
	.long	0x2c
	.long	.LLST4
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.long	0x2c
	.long	.LLST5
	.uleb128 0x9
	.long	.LVL3
	.long	0x274
	.long	0xf6
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x9
	.long	.LVL4
	.long	0x28d
	.long	0x10a
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.long	.LVL5
	.long	0x28d
	.uleb128 0xc
	.long	.LVL7
	.long	0x274
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST6
	.byte	0x1
	.long	0x1d0
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.long	.LLST7
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.long	.LLST8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.long	.LLST9
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.long	.LLST10
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x2c
	.long	.LLST11
	.uleb128 0x9
	.long	.LVL17
	.long	0x274
	.long	0x1a0
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LVL18
	.long	0x274
	.long	0x1b9
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.long	.LVL19
	.long	0x274
	.uleb128 0xa
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"SS"
	.byte	0x2
	.byte	0x2b
	.long	0x1db
	.byte	0xa
	.uleb128 0x10
	.long	0x2c
	.uleb128 0x11
	.long	.LASF13
	.byte	0x2
	.byte	0x2c
	.long	0x1db
	.byte	0xb
	.uleb128 0x11
	.long	.LASF14
	.byte	0x2
	.byte	0x2d
	.long	0x1db
	.byte	0xc
	.uleb128 0xf
	.string	"SCK"
	.byte	0x2
	.byte	0x2e
	.long	0x1db
	.byte	0xd
	.uleb128 0xf
	.string	"SDA"
	.byte	0x2
	.byte	0x33
	.long	0x1db
	.byte	0x12
	.uleb128 0xf
	.string	"SCL"
	.byte	0x2
	.byte	0x34
	.long	0x1db
	.byte	0x13
	.uleb128 0xf
	.string	"A0"
	.byte	0x2
	.byte	0x41
	.long	0x1db
	.byte	0xe
	.uleb128 0xf
	.string	"A1"
	.byte	0x2
	.byte	0x42
	.long	0x1db
	.byte	0xf
	.uleb128 0xf
	.string	"A2"
	.byte	0x2
	.byte	0x43
	.long	0x1db
	.byte	0x10
	.uleb128 0xf
	.string	"A3"
	.byte	0x2
	.byte	0x44
	.long	0x1db
	.byte	0x11
	.uleb128 0xf
	.string	"A4"
	.byte	0x2
	.byte	0x45
	.long	0x1db
	.byte	0x12
	.uleb128 0xf
	.string	"A5"
	.byte	0x2
	.byte	0x46
	.long	0x1db
	.byte	0x13
	.uleb128 0xf
	.string	"A6"
	.byte	0x2
	.byte	0x47
	.long	0x1db
	.byte	0x14
	.uleb128 0xf
	.string	"A7"
	.byte	0x2
	.byte	0x48
	.long	0x1db
	.byte	0x15
	.uleb128 0x12
	.byte	0x1
	.long	.LASF15
	.byte	0x3
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.long	0x28d
	.uleb128 0x13
	.long	0x2c
	.uleb128 0x13
	.long	0x2c
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF16
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.long	0x3e
	.byte	0x1
	.uleb128 0x13
	.long	0x2c
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB8
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
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL12
	.word	0x1
	.byte	0x5f
	.long	.LVL12
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x66
	.long	.LVL2
	.long	.LVL9
	.word	0x1
	.byte	0x6d
	.long	.LVL9
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x64
	.long	.LVL2
	.long	.LVL13
	.word	0x1
	.byte	0x5e
	.long	.LVL13
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL10
	.word	0x1
	.byte	0x6c
	.long	.LVL10
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL7
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x5
	.byte	0x38
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL8
	.long	.LVL11
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB9
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI16
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LVL24
	.word	0x1
	.byte	0x5c
	.long	.LVL24
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x66
	.long	.LVL16
	.long	.LVL23
	.word	0x1
	.byte	0x5d
	.long	.LVL23
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x64
	.long	.LVL16
	.long	.LVL25
	.word	0x1
	.byte	0x5b
	.long	.LVL25
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x62
	.long	.LVL16
	.long	.LVL22
	.word	0x1
	.byte	0x60
	.long	.LVL22
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL19
	.word	0x5
	.byte	0x37
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x5
	.byte	0x38
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x5
	.byte	0x37
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"clockPin"
.LASF12:
	.string	"value"
.LASF19:
	.string	"uint8_t"
.LASF21:
	.string	"shiftOut"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"char"
.LASF3:
	.string	"long int"
.LASF20:
	.string	"shiftIn"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"bitOrder"
.LASF9:
	.string	"dataPin"
.LASF18:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_shift.c"
.LASF14:
	.string	"MISO"
.LASF8:
	.string	"_Bool"
.LASF17:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF15:
	.string	"digitalWrite"
.LASF4:
	.string	"long unsigned int"
.LASF13:
	.string	"MOSI"
.LASF16:
	.string	"digitalRead"
	.ident	"GCC: (GNU) 4.9.2"
