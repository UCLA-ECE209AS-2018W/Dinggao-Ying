	.file	"wiring_pulse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pulseIn,"ax",@progbits
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
.LFB8:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c"
	.loc 1 34 0
	.cfi_startproc
.LVL0:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB2:
	.loc 1 38 0
	ldi r25,0
.LVL1:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL2:
/* #APP */
 ;  38 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r23, Z
	
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE2:
.LBB3:
	.loc 1 39 0
	movw r30,r24
.LVL4:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL5:
/* #APP */
 ;  39 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBE3:
	.loc 1 40 0
	tst r22
	breq .L4
	mov r22,r23
.LVL7:
	rjmp .L2
.LVL8:
.L4:
	ldi r22,0
.LVL9:
.L2:
.LBB4:
	.loc 1 46 0 discriminator 4
	ldi r31,0
	lsl r30
	rol r31
.LVL10:
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
.LVL11:
/* #APP */
 ;  46 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
.LVL12:
/* #NOAPP */
.LBE4:
	.loc 1 44 0 discriminator 4
	movw r16,r18
	movw r18,r20
	andi r19,15
	.loc 1 46 0 discriminator 4
	mov r20,r22
	mov r22,r23
.LVL13:
	call countPulseASM
.LVL14:
	.loc 1 49 0 discriminator 4
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L5
	.loc 1 50 0
	movw r26,r24
	movw r24,r22
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	movw r22,r24
	movw r24,r26
.LVL15:
	andi r25,15
.LVL16:
	rjmp .L3
.LVL17:
.L5:
	.loc 1 52 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.LVL18:
.L3:
/* epilogue start */
	.loc 1 53 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE8:
	.size	pulseIn, .-pulseIn
	.section	.text.pulseInLong,"ax",@progbits
.global	pulseInLong
	.type	pulseInLong, @function
pulseInLong:
.LFB9:
	.loc 1 64 0
	.cfi_startproc
.LVL19:
	push r4
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r8
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 8, -6
	push r9
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 9, -7
	push r10
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 10, -8
	push r11
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 11, -9
	push r12
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 12, -10
	push r13
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 13, -11
	push r14
.LCFI12:
	.cfi_def_cfa_offset 13
	.cfi_offset 14, -12
	push r15
.LCFI13:
	.cfi_def_cfa_offset 14
	.cfi_offset 15, -13
	push r16
.LCFI14:
	.cfi_def_cfa_offset 15
	.cfi_offset 16, -14
	push r17
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -15
	push r28
.LCFI16:
	.cfi_def_cfa_offset 17
	.cfi_offset 28, -16
	push r29
.LCFI17:
	.cfi_def_cfa_offset 18
	.cfi_offset 29, -17
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r12,r18
	movw r14,r20
.LBB5:
	.loc 1 68 0
	ldi r25,0
.LVL20:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL21:
/* #APP */
 ;  68 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r17, Z
	
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE5:
.LBB6:
	.loc 1 69 0
	movw r30,r24
.LVL23:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL24:
/* #APP */
 ;  69 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL25:
/* #NOAPP */
.LBE6:
	.loc 1 70 0
	tst r22
	breq .L17
	mov r16,r17
	rjmp .L8
.L17:
	ldi r16,0
.L8:
.LVL26:
	.loc 1 72 0 discriminator 4
	call micros
.LVL27:
	movw r8,r22
	movw r10,r24
.LVL28:
.LBB7:
	.loc 1 75 0 discriminator 4
	ldi r29,0
	lsl r28
	rol r29
.LVL29:
	subi r28,lo8(-(port_to_input_PGM))
	sbci r29,hi8(-(port_to_input_PGM))
.L9:
.LVL30:
	.loc 1 75 0 is_stmt 0
	movw r30,r28
/* #APP */
 ;  75 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL31:
/* #NOAPP */
.LBE7:
	ld r24,X
	and r24,r17
	cpse r24,r16
	rjmp .L12
	.loc 1 76 0 is_stmt 1
	call micros
.LVL32:
	movw r26,r24
	movw r24,r22
	sub r24,r8
	sbc r25,r9
	sbc r26,r10
	sbc r27,r11
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brsh .L9
.L13:
	.loc 1 77 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
	rjmp .L10
.LVL33:
.L14:
	.loc 1 82 0
	call micros
.LVL34:
	movw r26,r24
	movw r24,r22
	sub r24,r8
	sbc r25,r9
	sbc r26,r10
	sbc r27,r11
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L13
.L12:
.LVL35:
.LBB8:
	.loc 1 81 0
	movw r30,r28
/* #APP */
 ;  81 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL36:
/* #NOAPP */
.LBE8:
	ld r24,X
	and r24,r17
	cpse r24,r16
	rjmp .L14
	.loc 1 86 0
	call micros
.LVL37:
	movw r4,r22
	movw r6,r24
.LVL38:
.L15:
.LBB9:
	.loc 1 88 0
	movw r30,r28
/* #APP */
 ;  88 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL39:
/* #NOAPP */
.LBE9:
	ld r24,X
	and r24,r17
	cpse r24,r16
	rjmp .L19
	.loc 1 89 0
	call micros
.LVL40:
	movw r26,r24
	movw r24,r22
	sub r24,r8
	sbc r25,r9
	sbc r26,r10
	sbc r27,r11
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brsh .L15
	rjmp .L13
.LVL41:
.L19:
	.loc 1 92 0
	call micros
.LVL42:
	sub r22,r4
	sbc r23,r5
	sbc r24,r6
	sbc r25,r7
.LVL43:
.L10:
/* epilogue start */
	.loc 1 93 0
	pop r29
	pop r28
	pop r17
.LVL44:
	pop r16
.LVL45:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL46:
	pop r11
	pop r10
	pop r9
	pop r8
.LVL47:
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE9:
	.size	pulseInLong, .-pulseInLong
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Arduino.h"
	.file 5 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x494
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.long	.LASF30
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x82
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x69
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x1c2
	.uleb128 0x6
	.string	"pin"
	.byte	0x1
	.byte	0x21
	.long	0x2c
	.long	.LLST1
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x21
	.long	0x2c
	.long	.LLST2
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x21
	.long	0x69
	.long	.LLST3
	.uleb128 0x8
	.string	"bit"
	.byte	0x1
	.byte	0x26
	.long	0x2c
	.long	.LLST4
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.long	0x2c
	.long	.LLST5
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.long	.LLST6
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x2c
	.long	0x69
	.long	.LLST7
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x2e
	.long	0x69
	.long	.LLST8
	.uleb128 0xa
	.long	.LBB2
	.long	.LBE2
	.long	0x14e
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x26
	.long	0x45
	.long	.LLST9
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x26
	.long	0x2c
	.long	.LLST4
	.byte	0
	.uleb128 0xa
	.long	.LBB3
	.long	.LBE3
	.long	0x17a
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x27
	.long	0x45
	.long	.LLST11
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x27
	.long	0x2c
	.long	.LLST5
	.byte	0
	.uleb128 0xa
	.long	.LBB4
	.long	.LBE4
	.long	0x1a6
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x2e
	.long	0x45
	.long	.LLST13
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x2e
	.long	0x45
	.long	.LLST14
	.byte	0
	.uleb128 0xb
	.long	.LVL14
	.long	0x457
	.uleb128 0xc
	.byte	0xc
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
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x69
	.long	.LFB9
	.long	.LFE9
	.long	.LLST15
	.byte	0x1
	.long	0x367
	.uleb128 0x6
	.string	"pin"
	.byte	0x1
	.byte	0x3f
	.long	0x2c
	.long	.LLST16
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x3f
	.long	0x2c
	.long	.LLST17
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x3f
	.long	0x69
	.long	.LLST18
	.uleb128 0x8
	.string	"bit"
	.byte	0x1
	.byte	0x44
	.long	0x2c
	.long	.LLST19
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x45
	.long	0x2c
	.long	.LLST20
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x46
	.long	0x2c
	.long	.LLST21
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x48
	.long	0x69
	.long	.LLST22
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x56
	.long	0x69
	.long	.LLST23
	.uleb128 0xa
	.long	.LBB5
	.long	.LBE5
	.long	0x284
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x44
	.long	0x45
	.long	.LLST24
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x44
	.long	0x2c
	.long	.LLST19
	.byte	0
	.uleb128 0xa
	.long	.LBB6
	.long	.LBE6
	.long	0x2b0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x45
	.long	0x45
	.long	.LLST26
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x45
	.long	0x2c
	.long	.LLST20
	.byte	0
	.uleb128 0xa
	.long	.LBB7
	.long	.LBE7
	.long	0x2d8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x4b
	.long	0x45
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x4b
	.long	0x45
	.long	.LLST28
	.byte	0
	.uleb128 0xa
	.long	.LBB8
	.long	.LBE8
	.long	0x304
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x51
	.long	0x45
	.long	.LLST29
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x51
	.long	0x45
	.long	.LLST30
	.byte	0
	.uleb128 0xa
	.long	.LBB9
	.long	.LBE9
	.long	0x330
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x58
	.long	0x45
	.long	.LLST31
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x58
	.long	0x45
	.long	.LLST32
	.byte	0
	.uleb128 0xe
	.long	.LVL27
	.long	0x489
	.uleb128 0xe
	.long	.LVL32
	.long	0x489
	.uleb128 0xe
	.long	.LVL34
	.long	0x489
	.uleb128 0xe
	.long	.LVL37
	.long	0x489
	.uleb128 0xe
	.long	.LVL40
	.long	0x489
	.uleb128 0xe
	.long	.LVL42
	.long	0x489
	.byte	0
	.uleb128 0xf
	.string	"SS"
	.byte	0x3
	.byte	0x2b
	.long	0x372
	.byte	0xa
	.uleb128 0x10
	.long	0x2c
	.uleb128 0x11
	.long	.LASF24
	.byte	0x3
	.byte	0x2c
	.long	0x372
	.byte	0xb
	.uleb128 0x11
	.long	.LASF25
	.byte	0x3
	.byte	0x2d
	.long	0x372
	.byte	0xc
	.uleb128 0xf
	.string	"SCK"
	.byte	0x3
	.byte	0x2e
	.long	0x372
	.byte	0xd
	.uleb128 0xf
	.string	"SDA"
	.byte	0x3
	.byte	0x33
	.long	0x372
	.byte	0x12
	.uleb128 0xf
	.string	"SCL"
	.byte	0x3
	.byte	0x34
	.long	0x372
	.byte	0x13
	.uleb128 0xf
	.string	"A0"
	.byte	0x3
	.byte	0x41
	.long	0x372
	.byte	0xe
	.uleb128 0xf
	.string	"A1"
	.byte	0x3
	.byte	0x42
	.long	0x372
	.byte	0xf
	.uleb128 0xf
	.string	"A2"
	.byte	0x3
	.byte	0x43
	.long	0x372
	.byte	0x10
	.uleb128 0xf
	.string	"A3"
	.byte	0x3
	.byte	0x44
	.long	0x372
	.byte	0x11
	.uleb128 0xf
	.string	"A4"
	.byte	0x3
	.byte	0x45
	.long	0x372
	.byte	0x12
	.uleb128 0xf
	.string	"A5"
	.byte	0x3
	.byte	0x46
	.long	0x372
	.byte	0x13
	.uleb128 0xf
	.string	"A6"
	.byte	0x3
	.byte	0x47
	.long	0x372
	.byte	0x14
	.uleb128 0xf
	.string	"A7"
	.byte	0x3
	.byte	0x48
	.long	0x372
	.byte	0x15
	.uleb128 0x12
	.long	0x45
	.long	0x416
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF26
	.byte	0x4
	.byte	0xa4
	.long	0x423
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x40b
	.uleb128 0x12
	.long	0x2c
	.long	0x433
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF27
	.byte	0x4
	.byte	0xa7
	.long	0x440
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x428
	.uleb128 0x14
	.long	.LASF28
	.byte	0x4
	.byte	0xa9
	.long	0x452
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x428
	.uleb128 0x15
	.byte	0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x2c
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x47e
	.uleb128 0x16
	.long	0x47e
	.uleb128 0x16
	.long	0x2c
	.uleb128 0x16
	.long	0x2c
	.uleb128 0x16
	.long	0x69
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0x484
	.uleb128 0x18
	.long	0x2c
	.uleb128 0x19
	.byte	0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x8d
	.byte	0x1
	.long	0x69
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
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
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
	.long	.LVL7
	.word	0x1
	.byte	0x66
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x66
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
	.long	.LVL14-1
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
	.long	.LVL14-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL14-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL10
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL13
	.word	0x1
	.byte	0x66
	.long	.LVL13
	.long	.LVL14-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL14-1
	.word	0x7
	.byte	0x82
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.long	.LVL14-1
	.long	.LFE8
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x34
	.byte	0x24
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15
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
	.long	.LVL15
	.long	.LVL16
	.word	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
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
.LLST9:
	.long	.LVL2
	.long	.LVL4
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
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL12
	.long	.LVL14-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LFB9
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI17
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	0
	.long	0
.LLST16:
	.long	.LVL19
	.long	.LVL27-1
	.word	0x1
	.byte	0x68
	.long	.LVL27-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL19
	.long	.LVL27-1
	.word	0x1
	.byte	0x66
	.long	.LVL27-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL19
	.long	.LVL27-1
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
	.long	.LVL27-1
	.long	.LVL46
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
	.long	.LVL46
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL22
	.long	.LVL44
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL29
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST21:
	.long	.LVL26
	.long	.LVL45
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST22:
	.long	.LVL28
	.long	.LVL47
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL38
	.long	.LVL43
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
	.long	0
	.long	0
.LLST24:
	.long	.LVL21
	.long	.LVL23
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL24
	.long	.LVL27-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL31
	.long	.LVL32-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST31:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL39
	.long	.LVL40-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LVL42-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
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
.LASF30:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.c"
.LASF12:
	.string	"state"
.LASF16:
	.string	"maxloops"
.LASF2:
	.string	"uint8_t"
.LASF31:
	.string	"countPulseASM"
.LASF22:
	.string	"startMicros"
.LASF18:
	.string	"__addr16"
.LASF17:
	.string	"width"
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF20:
	.string	"pulseIn"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF19:
	.string	"__result"
.LASF23:
	.string	"start"
.LASF10:
	.string	"char"
.LASF25:
	.string	"MISO"
.LASF11:
	.string	"_Bool"
.LASF29:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF15:
	.string	"stateMask"
.LASF14:
	.string	"port"
.LASF7:
	.string	"long unsigned int"
.LASF27:
	.string	"digital_pin_to_port_PGM"
.LASF21:
	.string	"pulseInLong"
.LASF26:
	.string	"port_to_input_PGM"
.LASF28:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF24:
	.string	"MOSI"
.LASF32:
	.string	"micros"
.LASF13:
	.string	"timeout"
	.ident	"GCC: (GNU) 4.9.2"
