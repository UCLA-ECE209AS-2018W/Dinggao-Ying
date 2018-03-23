	.file	"wiring.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
.LFB8:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c"
	.loc 1 47 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r24
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r26
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 26, -8
	push r27
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 27, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 50 0
	lds r24,timer0_millis
	lds r25,timer0_millis+1
	lds r26,timer0_millis+2
	lds r27,timer0_millis+3
.LVL0:
	.loc 1 51 0
	lds r19,timer0_fract
.LVL1:
	.loc 1 54 0
	ldi r18,lo8(3)
	add r18,r19
.LVL2:
	.loc 1 55 0
	cpi r18,lo8(125)
	brsh .L2
	.loc 1 53 0
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL3:
	rjmp .L3
.LVL4:
.L2:
	.loc 1 56 0
	ldi r18,lo8(-122)
.LVL5:
	add r18,r19
.LVL6:
	.loc 1 57 0
	adiw r24,2
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL7:
.L3:
	.loc 1 60 0
	sts timer0_fract,r18
	.loc 1 61 0
	sts timer0_millis,r24
	sts timer0_millis+1,r25
	sts timer0_millis+2,r26
	sts timer0_millis+3,r27
	.loc 1 62 0
	lds r24,timer0_overflow_count
	lds r25,timer0_overflow_count+1
	lds r26,timer0_overflow_count+2
	lds r27,timer0_overflow_count+3
.LVL8:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts timer0_overflow_count,r24
	sts timer0_overflow_count+1,r25
	sts timer0_overflow_count+2,r26
	sts timer0_overflow_count+3,r27
.LVL9:
/* epilogue start */
	.loc 1 63 0
	pop r27
	pop r26
	pop r25
	pop r24
	pop r19
	pop r18
.LVL10:
	pop r0
	out __SREG__,r0
.LVL11:
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE8:
	.size	__vector_16, .-__vector_16
	.section	.text.millis,"ax",@progbits
.global	millis
	.type	millis, @function
millis:
.LFB9:
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 0
	in r18,__SREG__
.LVL12:
	.loc 1 72 0
/* #APP */
 ;  72 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.loc 1 73 0
/* #NOAPP */
	lds r22,timer0_millis
	lds r23,timer0_millis+1
	lds r24,timer0_millis+2
	lds r25,timer0_millis+3
.LVL13:
	.loc 1 74 0
	out __SREG__,r18
	.loc 1 77 0
	ret
	.cfi_endproc
.LFE9:
	.size	millis, .-millis
	.section	.text.micros,"ax",@progbits
.global	micros
	.type	micros, @function
micros:
.LFB10:
	.loc 1 79 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 81 0
	in r19,__SREG__
.LVL14:
	.loc 1 83 0
/* #APP */
 ;  83 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.loc 1 84 0
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,timer0_overflow_count+1
	lds r26,timer0_overflow_count+2
	lds r27,timer0_overflow_count+3
.LVL15:
	.loc 1 86 0
	in r18,0x26
.LVL16:
	.loc 1 94 0
	sbis 0x15,0
	rjmp .L7
	.loc 1 94 0 is_stmt 0 discriminator 1
	cpi r18,lo8(-1)
	breq .L7
	.loc 1 95 0 is_stmt 1
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL17:
.L7:
	.loc 1 101 0
	out __SREG__,r19
	.loc 1 103 0
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
.LVL18:
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	movw r22,r24
	movw r24,r26
	ldi r20,2
	1:
	lsl r22
	rol r23
	rol r24
	rol r25
	dec r20
	brne 1b
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE10:
	.size	micros, .-micros
	.section	.text.delay,"ax",@progbits
.global	delay
	.type	delay, @function
delay:
.LFB11:
	.loc 1 107 0
	.cfi_startproc
.LVL19:
	push r8
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r22
	movw r14,r24
	.loc 1 108 0
	call micros
.LVL20:
	movw r8,r22
	movw r10,r24
.LVL21:
.L15:
	.loc 1 110 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L23
	.loc 1 111 0
	call yield
.LVL22:
.L16:
	.loc 1 112 0 discriminator 1
	call micros
.LVL23:
	movw r26,r24
	movw r24,r22
	sub r24,r8
	sbc r25,r9
	sbc r26,r10
	sbc r27,r11
	cpi r24,-24
	sbci r25,3
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlo .L15
	.loc 1 113 0
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL24:
	.loc 1 114 0
	ldi r24,-24
	add r8,r24
	ldi r24,3
	adc r9,r24
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.LVL25:
	.loc 1 112 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L16
	rjmp .L15
.L23:
/* epilogue start */
	.loc 1 117 0
	pop r15
	pop r14
	pop r13
	pop r12
.LVL26:
	pop r11
	pop r10
	pop r9
	pop r8
.LVL27:
	ret
	.cfi_endproc
.LFE11:
	.size	delay, .-delay
	.section	.text.delayMicroseconds,"ax",@progbits
.global	delayMicroseconds
	.type	delayMicroseconds, @function
delayMicroseconds:
.LFB12:
	.loc 1 121 0
	.cfi_startproc
.LVL28:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 170 0
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L24
	.loc 1 175 0
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL29:
	.loc 1 180 0
	sbiw r24,5
.LVL30:
	.loc 1 234 0
/* #APP */
 ;  234 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
.LVL31:
/* #NOAPP */
.L24:
	ret
	.cfi_endproc
.LFE12:
	.size	delayMicroseconds, .-delayMicroseconds
	.section	.text.init,"ax",@progbits
.global	init
	.type	init, @function
init:
.LFB13:
	.loc 1 242 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 245 0
/* #APP */
 ;  245 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c" 1
	sei
 ;  0 "" 2
	.loc 1 251 0
/* #NOAPP */
	in r24,0x24
	ori r24,lo8(2)
	out 0x24,r24
	.loc 1 252 0
	in r24,0x24
	ori r24,lo8(1)
	out 0x24,r24
	.loc 1 265 0
	in r24,0x25
	ori r24,lo8(2)
	out 0x25,r24
	.loc 1 266 0
	in r24,0x25
	ori r24,lo8(1)
	out 0x25,r24
	.loc 1 279 0
	ldi r30,lo8(110)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 290 0
	ldi r30,lo8(-127)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 293 0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.loc 1 295 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 305 0
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 312 0
	ldi r30,lo8(-79)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.loc 1 321 0
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 356 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.loc 1 357 0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.loc 1 358 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 381 0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 390 0
	sts 193,__zero_reg__
	ret
	.cfi_endproc
.LFE13:
	.size	init, .-init
	.section	.bss.timer0_fract,"aw",@nobits
	.type	timer0_fract, @object
	.size	timer0_fract, 1
timer0_fract:
	.zero	1
.global	timer0_millis
	.section	.bss.timer0_millis,"aw",@nobits
	.type	timer0_millis, @object
	.size	timer0_millis, 4
timer0_millis:
	.zero	4
.global	timer0_overflow_count
	.section	.bss.timer0_overflow_count,"aw",@nobits
	.type	timer0_overflow_count, @object
	.size	timer0_overflow_count, 4
timer0_overflow_count:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0x1
	.long	.LASF25
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
	.long	.LASF15
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0xc1
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x32
	.long	0x69
	.long	.LLST1
	.uleb128 0x6
	.string	"f"
	.byte	0x1
	.byte	0x33
	.long	0x37
	.long	.LLST2
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x69
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x103
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x43
	.long	0x69
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
	.uleb128 0x9
	.long	.LASF12
	.byte	0x1
	.byte	0x44
	.long	0x2c
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x69
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x149
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x50
	.long	0x69
	.long	.LLST3
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x51
	.long	0x2c
	.long	.LLST4
	.uleb128 0x8
	.string	"t"
	.byte	0x1
	.byte	0x51
	.long	0x2c
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST5
	.byte	0x1
	.long	0x19c
	.uleb128 0xb
	.string	"ms"
	.byte	0x1
	.byte	0x6a
	.long	0x69
	.long	.LLST6
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x6c
	.long	0x5e
	.long	.LLST7
	.uleb128 0xc
	.long	.LVL20
	.long	0x103
	.uleb128 0xc
	.long	.LVL22
	.long	0x2b9
	.uleb128 0xc
	.long	.LVL23
	.long	0x103
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1c5
	.uleb128 0xb
	.string	"us"
	.byte	0x1
	.byte	0x78
	.long	0x50
	.long	.LLST8
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xf
	.string	"SS"
	.byte	0x3
	.byte	0x2b
	.long	0x1e6
	.byte	0xa
	.uleb128 0x10
	.long	0x2c
	.uleb128 0x11
	.long	.LASF19
	.byte	0x3
	.byte	0x2c
	.long	0x1e6
	.byte	0xb
	.uleb128 0x11
	.long	.LASF20
	.byte	0x3
	.byte	0x2d
	.long	0x1e6
	.byte	0xc
	.uleb128 0xf
	.string	"SCK"
	.byte	0x3
	.byte	0x2e
	.long	0x1e6
	.byte	0xd
	.uleb128 0xf
	.string	"SDA"
	.byte	0x3
	.byte	0x33
	.long	0x1e6
	.byte	0x12
	.uleb128 0xf
	.string	"SCL"
	.byte	0x3
	.byte	0x34
	.long	0x1e6
	.byte	0x13
	.uleb128 0xf
	.string	"A0"
	.byte	0x3
	.byte	0x41
	.long	0x1e6
	.byte	0xe
	.uleb128 0xf
	.string	"A1"
	.byte	0x3
	.byte	0x42
	.long	0x1e6
	.byte	0xf
	.uleb128 0xf
	.string	"A2"
	.byte	0x3
	.byte	0x43
	.long	0x1e6
	.byte	0x10
	.uleb128 0xf
	.string	"A3"
	.byte	0x3
	.byte	0x44
	.long	0x1e6
	.byte	0x11
	.uleb128 0xf
	.string	"A4"
	.byte	0x3
	.byte	0x45
	.long	0x1e6
	.byte	0x12
	.uleb128 0xf
	.string	"A5"
	.byte	0x3
	.byte	0x46
	.long	0x1e6
	.byte	0x13
	.uleb128 0xf
	.string	"A6"
	.byte	0x3
	.byte	0x47
	.long	0x1e6
	.byte	0x14
	.uleb128 0xf
	.string	"A7"
	.byte	0x3
	.byte	0x48
	.long	0x1e6
	.byte	0x15
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x28
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	timer0_fract
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x26
	.long	0x2a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_overflow_count
	.uleb128 0x13
	.long	0x69
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x27
	.long	0x2a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_millis
	.uleb128 0x14
	.byte	0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x26
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
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x13
	.uleb128 0x35
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
	.long	.LVL1
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL3
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL7
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL9
	.word	0x5
	.byte	0x3
	.long	timer0_millis
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x63
	.long	.LVL2
	.long	.LVL5
	.word	0x1
	.byte	0x62
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x83
	.sleb128 3
	.byte	0x9f
	.long	.LVL6
	.long	.LVL10
	.word	0x1
	.byte	0x62
	.long	.LVL10
	.long	.LVL11
	.word	0x5
	.byte	0x3
	.long	timer0_fract
	.long	0
	.long	0
.LLST3:
	.long	.LVL15
	.long	.LVL18
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL18
	.word	0x1
	.byte	0x63
	.long	.LVL18
	.long	.LFE10
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST5:
	.long	.LFB11
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
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL20-1
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
	.long	.LVL20-1
	.long	.LVL26
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
	.long	0
	.long	0
.LLST7:
	.long	.LVL21
	.long	.LVL27
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
.LLST8:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL31
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"timer0_fract"
.LASF16:
	.string	"delay"
.LASF25:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring.c"
.LASF2:
	.string	"uint8_t"
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF13:
	.string	"millis"
.LASF23:
	.string	"timer0_millis"
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
	.string	"MOSI"
.LASF22:
	.string	"timer0_overflow_count"
.LASF17:
	.string	"start"
.LASF10:
	.string	"char"
.LASF26:
	.string	"init"
.LASF20:
	.string	"MISO"
.LASF11:
	.string	"_Bool"
.LASF24:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF27:
	.string	"yield"
.LASF7:
	.string	"long unsigned int"
.LASF15:
	.string	"__vector_16"
.LASF12:
	.string	"oldSREG"
.LASF18:
	.string	"delayMicroseconds"
.LASF14:
	.string	"micros"
	.ident	"GCC: (GNU) 4.9.2"
.global __do_clear_bss
