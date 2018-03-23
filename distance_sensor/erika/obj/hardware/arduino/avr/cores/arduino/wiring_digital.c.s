	.file	"wiring_digital.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.turnOffPWM,"ax",@progbits
	.type	turnOffPWM, @function
turnOffPWM:
.LFB9:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c"
	.loc 1 76 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	cpi r24,lo8(3)
	breq .L3
	brsh .L4
	cpi r24,lo8(1)
	breq .L5
	cpi r24,lo8(2)
	breq .L6
	ret
.L4:
	cpi r24,lo8(7)
	breq .L7
	cpi r24,lo8(8)
	breq .L8
	cpi r24,lo8(4)
	brne .L1
	.loc 1 83 0
	lds r24,128
.LVL1:
	andi r24,lo8(-33)
	rjmp .L10
.LVL2:
.L3:
	.loc 1 80 0
	lds r24,128
.LVL3:
	andi r24,lo8(127)
.L10:
	.loc 1 83 0
	sts 128,r24
	ret
.LVL4:
.L5:
.LBB4:
.LBB5:
	.loc 1 94 0
	in r24,0x24
.LVL5:
	andi r24,lo8(127)
	rjmp .L12
.LVL6:
.L6:
.LBE5:
.LBE4:
	.loc 1 98 0
	in r24,0x24
.LVL7:
	andi r24,lo8(-33)
.L12:
	out 0x24,r24
	ret
.LVL8:
.L7:
	.loc 1 101 0
	lds r24,176
.LVL9:
	andi r24,lo8(127)
	rjmp .L11
.LVL10:
.L8:
	.loc 1 104 0
	lds r24,176
.LVL11:
	andi r24,lo8(-33)
.L11:
	sts 176,r24
.L1:
	ret
	.cfi_endproc
.LFE9:
	.size	turnOffPWM, .-turnOffPWM
	.section	.text.pinMode,"ax",@progbits
.global	pinMode
	.type	pinMode, @function
pinMode:
.LFB8:
	.loc 1 30 0
	.cfi_startproc
.LVL12:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB6:
	.loc 1 31 0
	ldi r25,0
.LVL13:
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL14:
/* #APP */
 ;  31 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL15:
/* #NOAPP */
.LBE6:
.LBB7:
	.loc 1 32 0
	movw r30,r24
.LVL16:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL17:
/* #APP */
 ;  32 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL18:
/* #NOAPP */
.LBE7:
	.loc 1 35 0
	tst r24
	breq .L14
.LBB8:
	.loc 1 38 0
	ldi r25,0
	lsl r24
	rol r25
.LVL19:
	movw r30,r24
.LVL20:
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
.LVL21:
/* #APP */
 ;  38 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE8:
.LBB9:
	.loc 1 39 0
	movw r30,r24
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL23:
/* #APP */
 ;  39 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBE9:
	.loc 1 41 0
	cpse r22,__zero_reg__
	rjmp .L16
.LBB10:
	.loc 1 42 0
	in r25,__SREG__
.LVL25:
	.loc 1 43 0
/* #APP */
 ;  43 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 44 0
/* #NOAPP */
	ld r24,Y
	com r18
.LVL26:
	and r24,r18
	st Y,r24
	.loc 1 45 0
	ld r30,X
	and r18,r30
.LVL27:
	rjmp .L21
.LVL28:
.L16:
.LBE10:
	.loc 1 47 0
	cpi r22,lo8(2)
	brne .L17
.LBB11:
	.loc 1 48 0
	in r25,__SREG__
.LVL29:
	.loc 1 49 0
/* #APP */
 ;  49 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 50 0
/* #NOAPP */
	ld r19,Y
	mov r24,r18
	com r24
	and r24,r19
	st Y,r24
	.loc 1 51 0
	ld r30,X
	or r18,r30
.LVL30:
.L21:
	st X,r18
	.loc 1 52 0
	out __SREG__,r25
.LBE11:
	rjmp .L14
.LVL31:
.L17:
.LBB12:
	.loc 1 54 0
	in r24,__SREG__
.LVL32:
	.loc 1 55 0
/* #APP */
 ;  55 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 56 0
/* #NOAPP */
	ld r30,Y
	or r18,r30
.LVL33:
	st Y,r18
	.loc 1 57 0
	out __SREG__,r24
.LVL34:
.L14:
/* epilogue start */
.LBE12:
	.loc 1 59 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE8:
	.size	pinMode, .-pinMode
	.section	.text.digitalWrite,"ax",@progbits
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
.LFB10:
	.loc 1 139 0
	.cfi_startproc
.LVL35:
	push r17
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB13:
	.loc 1 140 0
	mov r18,r24
	ldi r19,0
.LVL36:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
.LVL37:
/* #APP */
 ;  140 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL38:
/* #NOAPP */
.LBE13:
.LBB14:
	.loc 1 141 0
	movw r30,r18
.LVL39:
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL40:
/* #APP */
 ;  141 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
.LVL41:
/* #NOAPP */
.LBE14:
.LBB15:
	.loc 1 142 0
	movw r30,r18
.LVL42:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL43:
/* #APP */
 ;  142 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL44:
/* #NOAPP */
.LBE15:
	.loc 1 145 0
	tst r28
	breq .L22
	mov r17,r22
	.loc 1 149 0
	cpse r24,__zero_reg__
	.loc 1 149 0 is_stmt 0 discriminator 1
	call turnOffPWM
.LVL45:
.L24:
.LBB16:
	.loc 1 151 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL46:
/* #APP */
 ;  151 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL47:
/* #NOAPP */
.LBE16:
	.loc 1 153 0
	in r24,__SREG__
.LVL48:
	.loc 1 154 0
/* #APP */
 ;  154 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.loc 1 156 0
/* #NOAPP */
	cpse r17,__zero_reg__
	rjmp .L25
	.loc 1 157 0
	ld r25,X
	mov r30,r29
	com r30
	and r30,r25
	rjmp .L33
.L25:
	.loc 1 159 0
	ld r30,X
	or r30,r29
.L33:
	st X,r30
	.loc 1 162 0
	out __SREG__,r24
.LVL49:
.L22:
/* epilogue start */
	.loc 1 163 0
	pop r29
.LVL50:
	pop r28
.LVL51:
	pop r17
	ret
	.cfi_endproc
.LFE10:
	.size	digitalWrite, .-digitalWrite
	.section	.text.digitalRead,"ax",@progbits
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
.LFB11:
	.loc 1 166 0
	.cfi_startproc
.LVL52:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB17:
	.loc 1 167 0
	mov r18,r24
	ldi r19,0
.LVL53:
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
.LVL54:
/* #APP */
 ;  167 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE17:
.LBB18:
	.loc 1 168 0
	movw r30,r18
.LVL56:
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL57:
/* #APP */
 ;  168 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
.LVL58:
/* #NOAPP */
.LBE18:
.LBB19:
	.loc 1 169 0
	movw r30,r18
.LVL59:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL60:
/* #APP */
 ;  169 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL61:
/* #NOAPP */
.LBE19:
	.loc 1 171 0
	tst r28
	breq .L38
	.loc 1 175 0
	cpse r24,__zero_reg__
	.loc 1 175 0 is_stmt 0 discriminator 1
	call turnOffPWM
.LVL62:
.L36:
.LBB20:
	.loc 1 177 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
.LVL63:
/* #APP */
 ;  177 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
.LVL64:
/* #NOAPP */
.LBE20:
	ld r30,X
	and r30,r29
	ldi r24,lo8(1)
	ldi r25,0
	brne .L35
	ldi r24,0
	rjmp .L35
.LVL65:
.L38:
	.loc 1 171 0
	ldi r24,0
.LVL66:
	ldi r25,0
.LVL67:
.L35:
/* epilogue start */
	.loc 1 179 0
	pop r29
.LVL68:
	pop r28
.LVL69:
	ret
	.cfi_endproc
.LFE11:
	.size	digitalRead, .-digitalRead
.global	digital_pin_to_timer_PGM
	.section	.progmem.data.digital_pin_to_timer_PGM,"a",@progbits
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 20
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	digital_pin_to_bit_mask_PGM
	.section	.progmem.data.digital_pin_to_bit_mask_PGM,"a",@progbits
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 20
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
.global	digital_pin_to_port_PGM
	.section	.progmem.data.digital_pin_to_port_PGM,"a",@progbits
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 20
digital_pin_to_port_PGM:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
.global	port_to_input_PGM
	.section	.progmem.data.port_to_input_PGM,"a",@progbits
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 10
port_to_input_PGM:
	.word	0
	.word	0
	.word	35
	.word	38
	.word	41
.global	port_to_output_PGM
	.section	.progmem.data.port_to_output_PGM,"a",@progbits
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 10
port_to_output_PGM:
	.word	0
	.word	0
	.word	37
	.word	40
	.word	43
.global	port_to_mode_PGM
	.section	.progmem.data.port_to_mode_PGM,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 10
port_to_mode_PGM:
	.word	0
	.word	0
	.word	36
	.word	39
	.word	42
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5f1
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF28
	.byte	0x1
	.long	.LASF29
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF30
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.long	0x9a
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x4b
	.long	0x2c
	.byte	0
	.uleb128 0x7
	.long	0x81
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xcd
	.uleb128 0x8
	.long	0x8e
	.long	.LLST0
	.uleb128 0x9
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x8
	.long	0x8e
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.byte	0x1
	.long	0x243
	.uleb128 0xb
	.string	"pin"
	.byte	0x1
	.byte	0x1d
	.long	0x2c
	.long	.LLST3
	.uleb128 0xc
	.long	.LASF11
	.byte	0x1
	.byte	0x1d
	.long	0x2c
	.byte	0x1
	.byte	0x66
	.uleb128 0xd
	.string	"bit"
	.byte	0x1
	.byte	0x1f
	.long	0x2c
	.long	.LLST4
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0x20
	.long	0x2c
	.long	.LLST5
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.byte	0x21
	.long	0x243
	.long	.LLST6
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x21
	.long	0x243
	.long	.LLST7
	.uleb128 0xf
	.long	.LBB6
	.long	.LBE6
	.long	0x16b
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x1f
	.long	0x45
	.long	.LLST8
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x1f
	.long	0x2c
	.long	.LLST4
	.byte	0
	.uleb128 0xf
	.long	.LBB7
	.long	.LBE7
	.long	0x197
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.long	0x45
	.long	.LLST10
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x20
	.long	0x2c
	.long	.LLST5
	.byte	0
	.uleb128 0xf
	.long	.LBB8
	.long	.LBE8
	.long	0x1c3
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x26
	.long	0x45
	.long	.LLST12
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x26
	.long	0x45
	.long	.LLST6
	.byte	0
	.uleb128 0xf
	.long	.LBB9
	.long	.LBE9
	.long	0x1ef
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x27
	.long	0x45
	.long	.LLST14
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.long	0x45
	.long	.LLST7
	.byte	0
	.uleb128 0xf
	.long	.LBB10
	.long	.LBE10
	.long	0x20c
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x2a
	.long	0x2c
	.long	.LLST16
	.byte	0
	.uleb128 0xf
	.long	.LBB11
	.long	.LBE11
	.long	0x229
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x30
	.long	0x2c
	.long	.LLST17
	.byte	0
	.uleb128 0x9
	.long	.LBB12
	.long	.LBE12
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x36
	.long	0x2c
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x249
	.uleb128 0x11
	.long	0x2c
	.uleb128 0xa
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST19
	.byte	0x1
	.long	0x38b
	.uleb128 0xb
	.string	"pin"
	.byte	0x1
	.byte	0x8a
	.long	0x2c
	.long	.LLST20
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.byte	0x8a
	.long	0x2c
	.long	.LLST21
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x8c
	.long	0x2c
	.long	.LLST22
	.uleb128 0xd
	.string	"bit"
	.byte	0x1
	.byte	0x8d
	.long	0x2c
	.long	.LLST23
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0x8e
	.long	0x2c
	.long	.LLST24
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x8f
	.long	0x243
	.long	.LLST25
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x99
	.long	0x2c
	.long	.LLST26
	.uleb128 0xf
	.long	.LBB13
	.long	.LBE13
	.long	0x2fd
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x8c
	.long	0x45
	.long	.LLST27
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x8c
	.long	0x2c
	.long	.LLST22
	.byte	0
	.uleb128 0xf
	.long	.LBB14
	.long	.LBE14
	.long	0x329
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x8d
	.long	0x45
	.long	.LLST29
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x8d
	.long	0x2c
	.long	.LLST23
	.byte	0
	.uleb128 0xf
	.long	.LBB15
	.long	.LBE15
	.long	0x355
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x8e
	.long	0x45
	.long	.LLST31
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x8e
	.long	0x2c
	.long	.LLST24
	.byte	0
	.uleb128 0xf
	.long	.LBB16
	.long	.LBE16
	.long	0x381
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x97
	.long	0x45
	.long	.LLST33
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x97
	.long	0x45
	.long	.LLST25
	.byte	0
	.uleb128 0x12
	.long	.LVL45
	.long	0x81
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x3e
	.long	.LFB11
	.long	.LFE11
	.long	.LLST35
	.byte	0x1
	.long	0x49f
	.uleb128 0xb
	.string	"pin"
	.byte	0x1
	.byte	0xa5
	.long	0x2c
	.long	.LLST36
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0xa7
	.long	0x2c
	.long	.LLST37
	.uleb128 0xd
	.string	"bit"
	.byte	0x1
	.byte	0xa8
	.long	0x2c
	.long	.LLST38
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0xa9
	.long	0x2c
	.long	.LLST39
	.uleb128 0xf
	.long	.LBB17
	.long	.LBE17
	.long	0x411
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0xa7
	.long	0x45
	.long	.LLST40
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xa7
	.long	0x2c
	.long	.LLST37
	.byte	0
	.uleb128 0xf
	.long	.LBB18
	.long	.LBE18
	.long	0x43d
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0xa8
	.long	0x45
	.long	.LLST42
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xa8
	.long	0x2c
	.long	.LLST38
	.byte	0
	.uleb128 0xf
	.long	.LBB19
	.long	.LBE19
	.long	0x469
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0xa9
	.long	0x45
	.long	.LLST44
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xa9
	.long	0x2c
	.long	.LLST39
	.byte	0
	.uleb128 0xf
	.long	.LBB20
	.long	.LBE20
	.long	0x495
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0xb1
	.long	0x45
	.long	.LLST46
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xb1
	.long	0x45
	.long	.LLST47
	.byte	0
	.uleb128 0x12
	.long	.LVL62
	.long	0x81
	.byte	0
	.uleb128 0x14
	.string	"SS"
	.byte	0x3
	.byte	0x2b
	.long	0x4aa
	.byte	0xa
	.uleb128 0x15
	.long	0x2c
	.uleb128 0x16
	.long	.LASF19
	.byte	0x3
	.byte	0x2c
	.long	0x4aa
	.byte	0xb
	.uleb128 0x16
	.long	.LASF20
	.byte	0x3
	.byte	0x2d
	.long	0x4aa
	.byte	0xc
	.uleb128 0x14
	.string	"SCK"
	.byte	0x3
	.byte	0x2e
	.long	0x4aa
	.byte	0xd
	.uleb128 0x14
	.string	"SDA"
	.byte	0x3
	.byte	0x33
	.long	0x4aa
	.byte	0x12
	.uleb128 0x14
	.string	"SCL"
	.byte	0x3
	.byte	0x34
	.long	0x4aa
	.byte	0x13
	.uleb128 0x14
	.string	"A0"
	.byte	0x3
	.byte	0x41
	.long	0x4aa
	.byte	0xe
	.uleb128 0x14
	.string	"A1"
	.byte	0x3
	.byte	0x42
	.long	0x4aa
	.byte	0xf
	.uleb128 0x14
	.string	"A2"
	.byte	0x3
	.byte	0x43
	.long	0x4aa
	.byte	0x10
	.uleb128 0x14
	.string	"A3"
	.byte	0x3
	.byte	0x44
	.long	0x4aa
	.byte	0x11
	.uleb128 0x14
	.string	"A4"
	.byte	0x3
	.byte	0x45
	.long	0x4aa
	.byte	0x12
	.uleb128 0x14
	.string	"A5"
	.byte	0x3
	.byte	0x46
	.long	0x4aa
	.byte	0x13
	.uleb128 0x14
	.string	"A6"
	.byte	0x3
	.byte	0x47
	.long	0x4aa
	.byte	0x14
	.uleb128 0x14
	.string	"A7"
	.byte	0x3
	.byte	0x48
	.long	0x4aa
	.byte	0x15
	.uleb128 0x17
	.long	0x45
	.long	0x553
	.uleb128 0x18
	.long	0x553
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.byte	0x7e
	.long	0x56c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	port_to_mode_PGM
	.uleb128 0x15
	.long	0x543
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.byte	0x8e
	.long	0x583
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	port_to_input_PGM
	.uleb128 0x15
	.long	0x543
	.uleb128 0x19
	.long	.LASF24
	.byte	0x3
	.byte	0x86
	.long	0x59a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	port_to_output_PGM
	.uleb128 0x15
	.long	0x543
	.uleb128 0x17
	.long	0x2c
	.long	0x5af
	.uleb128 0x18
	.long	0x553
	.byte	0x13
	.byte	0
	.uleb128 0x19
	.long	.LASF25
	.byte	0x3
	.byte	0x96
	.long	0x5c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.uleb128 0x15
	.long	0x59f
	.uleb128 0x19
	.long	.LASF26
	.byte	0x3
	.byte	0xad
	.long	0x5d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.uleb128 0x15
	.long	0x59f
	.uleb128 0x19
	.long	.LASF27
	.byte	0x3
	.byte	0xc4
	.long	0x5ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.uleb128 0x15
	.long	0x59f
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
.LLST3:
	.long	.LVL12
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL18
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL26
	.word	0x1
	.byte	0x62
	.long	.LVL26
	.long	.LVL27
	.word	0x4
	.byte	0x82
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL28
	.long	.LVL30
	.word	0x1
	.byte	0x62
	.long	.LVL31
	.long	.LVL33
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL22
	.long	.LVL34
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL34
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL18
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL18
	.long	.LVL20
	.word	0xf
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x1c
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL17
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
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
.LLST14:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL25
	.long	.LVL28
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST18:
	.long	.LVL32
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LFB10
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
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST20:
	.long	.LVL35
	.long	.LVL38
	.word	0x1
	.byte	0x68
	.long	.LVL38
	.long	.LVL45-1
	.word	0x1
	.byte	0x62
	.long	.LVL45-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL45-1
	.word	0x1
	.byte	0x66
	.long	.LVL45-1
	.long	.LVL49
	.word	0x1
	.byte	0x61
	.long	.LVL49
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL38
	.long	.LVL45-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL41
	.long	.LVL50
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST24:
	.long	.LVL44
	.long	.LVL51
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST25:
	.long	.LVL47
	.long	.LVL49
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST27:
	.long	.LVL36
	.long	.LVL37
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL45-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL38
	.long	.LVL40
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL40
	.long	.LVL42
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL45-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL41
	.long	.LVL43
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL43
	.long	.LVL45-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST35:
	.long	.LFB11
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST36:
	.long	.LVL52
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL55
	.long	.LVL62-1
	.word	0x1
	.byte	0x62
	.long	.LVL62-1
	.long	.LVL65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL65
	.long	.LVL67
	.word	0x1
	.byte	0x62
	.long	.LVL67
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL55
	.long	.LVL62-1
	.word	0x1
	.byte	0x68
	.long	.LVL65
	.long	.LVL66
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST38:
	.long	.LVL58
	.long	.LVL68
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST39:
	.long	.LVL61
	.long	.LVL69
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST40:
	.long	.LVL53
	.long	.LVL54
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL54
	.long	.LVL56
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LVL62-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL65
	.long	.LVL67
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_timer_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL55
	.long	.LVL57
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL57
	.long	.LVL59
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL62-1
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL65
	.long	.LVL67
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_bit_mask_PGM
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL58
	.long	.LVL60
	.word	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x3
	.long	digital_pin_to_port_PGM
	.byte	0x22
	.byte	0x9f
	.long	.LVL60
	.long	.LVL62-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL67
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST47:
	.long	.LVL64
	.long	.LVL65
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
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB9
	.long	.LFE9
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"turnOffPWM"
.LASF21:
	.string	"sizetype"
.LASF11:
	.string	"mode"
.LASF2:
	.string	"uint8_t"
.LASF18:
	.string	"timer"
.LASF13:
	.string	"__addr16"
.LASF29:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_digital.c"
.LASF7:
	.string	"long long int"
.LASF16:
	.string	"pinMode"
.LASF5:
	.string	"long int"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"port_to_mode_PGM"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"port_to_output_PGM"
.LASF3:
	.string	"uint16_t"
.LASF14:
	.string	"__result"
.LASF9:
	.string	"char"
.LASF20:
	.string	"MISO"
.LASF10:
	.string	"_Bool"
.LASF28:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF17:
	.string	"digitalWrite"
.LASF12:
	.string	"port"
.LASF6:
	.string	"long unsigned int"
.LASF25:
	.string	"digital_pin_to_port_PGM"
.LASF15:
	.string	"oldSREG"
.LASF23:
	.string	"port_to_input_PGM"
.LASF26:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF27:
	.string	"digital_pin_to_timer_PGM"
.LASF19:
	.string	"MOSI"
.LASF31:
	.string	"digitalRead"
	.ident	"GCC: (GNU) 4.9.2"
