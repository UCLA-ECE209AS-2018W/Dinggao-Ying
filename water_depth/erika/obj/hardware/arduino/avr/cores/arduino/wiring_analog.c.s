	.file	"wiring_analog.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.analogReference,"ax",@progbits
.global	analogReference
	.type	analogReference, @function
analogReference:
.LFB8:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_analog.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	sts analog_reference,r24
	ret
	.cfi_endproc
.LFE8:
	.size	analogReference, .-analogReference
	.section	.text.analogRead,"ax",@progbits
.global	analogRead
	.type	analogRead, @function
analogRead:
.LFB9:
	.loc 1 39 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 0
	cpi r24,lo8(14)
	brlo .L3
	.loc 1 54 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(-14))
.LVL2:
.L3:
	.loc 1 70 0 is_stmt 1
	andi r24,lo8(7)
.LVL3:
	lds r18,analog_reference
	ldi r25,lo8(64)
	mul r18,r25
	movw r18,r0
	clr __zero_reg__
	or r24,r18
	sts 124,r24
	.loc 1 79 0
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L4:
	.loc 1 82 0 discriminator 1
	lds r24,122
	sbrc r24,6
	rjmp .L4
	.loc 1 88 0
	lds r24,120
.LVL4:
	.loc 1 89 0
	lds r18,121
.LVL5:
	.loc 1 97 0
	ldi r25,0
	.loc 1 98 0
	or r25,r18
	ret
	.cfi_endproc
.LFE9:
	.size	analogRead, .-analogRead
	.section	.text.analogWrite,"ax",@progbits
.global	analogWrite
	.type	analogWrite, @function
analogWrite:
.LFB10:
	.loc 1 105 0
	.cfi_startproc
.LVL6:
	push r17
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	.loc 1 111 0
	ldi r22,lo8(1)
.LVL7:
	call pinMode
.LVL8:
	.loc 1 112 0
	sbiw r28,0
	brne .L8
.L19:
	.loc 1 114 0
	ldi r22,0
	rjmp .L21
.L8:
	.loc 1 116 0
	cpi r28,-1
	cpc r29,__zero_reg__
	brne .L9
.L20:
	.loc 1 118 0
	ldi r22,lo8(1)
.L21:
	mov r24,r17
/* epilogue start */
	.loc 1 293 0
	pop r29
	pop r28
.LVL9:
	pop r17
.LVL10:
	.loc 1 118 0
	jmp digitalWrite
.LVL11:
.L9:
.LBB2:
	.loc 1 122 0
	mov r30,r17
	ldi r31,0
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  122 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_analog.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL12:
/* #NOAPP */
.LBE2:
	cpi r30,lo8(3)
	breq .L11
	brsh .L12
	cpi r30,lo8(1)
	breq .L13
	cpi r30,lo8(2)
	brne .L10
	.loc 1 144 0
	in r24,0x24
	ori r24,lo8(32)
	out 0x24,r24
	.loc 1 145 0
	out 0x28,r28
	.loc 1 146 0
	rjmp .L7
.L12:
	.loc 1 122 0
	cpi r30,lo8(7)
	breq .L15
	cpi r30,lo8(8)
	breq .L16
	cpi r30,lo8(4)
	brne .L10
	.loc 1 160 0
	lds r24,128
	ori r24,lo8(32)
	sts 128,r24
	.loc 1 161 0
	sts 138+1,r29
	sts 138,r28
	.loc 1 162 0
	rjmp .L7
.L13:
	.loc 1 136 0
	in r24,0x24
	ori r24,lo8(-128)
	out 0x24,r24
	.loc 1 137 0
	out 0x27,r28
	.loc 1 138 0
	rjmp .L7
.L11:
	.loc 1 152 0
	lds r24,128
	ori r24,lo8(-128)
	sts 128,r24
	.loc 1 153 0
	sts 136+1,r29
	sts 136,r28
	.loc 1 154 0
	rjmp .L7
.L15:
	.loc 1 184 0
	lds r24,176
	ori r24,lo8(-128)
	sts 176,r24
	.loc 1 185 0
	sts 179,r28
	.loc 1 186 0
	rjmp .L7
.L16:
	.loc 1 192 0
	lds r24,176
	ori r24,lo8(32)
	sts 176,r24
	.loc 1 193 0
	sts 180,r28
	.loc 1 194 0
	rjmp .L7
.L10:
	.loc 1 286 0
	cpi r28,-128
	cpc r29,__zero_reg__
	brlt .+2
	rjmp .L20
	rjmp .L19
.L7:
/* epilogue start */
	.loc 1 293 0
	pop r29
	pop r28
.LVL13:
	pop r17
.LVL14:
	ret
	.cfi_endproc
.LFE10:
	.size	analogWrite, .-analogWrite
.global	analog_reference
	.section	.data.analog_reference,"aw",@progbits
	.type	analog_reference, @object
	.size	analog_reference, 1
analog_reference:
	.byte	1
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x279
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
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
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa9
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x1e
	.long	0x2c
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x3e
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf1
	.uleb128 0x8
	.string	"pin"
	.byte	0x1
	.byte	0x26
	.long	0x2c
	.long	.LLST0
	.uleb128 0x9
	.string	"low"
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.byte	0x1
	.byte	0x68
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST1
	.byte	0x1
	.long	0x17b
	.uleb128 0x8
	.string	"pin"
	.byte	0x1
	.byte	0x68
	.long	0x2c
	.long	.LLST2
	.uleb128 0x8
	.string	"val"
	.byte	0x1
	.byte	0x68
	.long	0x3e
	.long	.LLST3
	.uleb128 0xc
	.long	.LBB2
	.long	.LBE2
	.long	0x14f
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x7a
	.long	0x45
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0x7a
	.long	0x2c
	.byte	0x1
	.byte	0x6e
	.byte	0
	.uleb128 0xe
	.long	.LVL8
	.long	0x24e
	.long	0x168
	.uleb128 0xf
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x10
	.long	.LVL11
	.byte	0x1
	.long	0x267
	.uleb128 0xf
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"SS"
	.byte	0x3
	.byte	0x2b
	.long	0x186
	.byte	0xa
	.uleb128 0x12
	.long	0x2c
	.uleb128 0x13
	.long	.LASF16
	.byte	0x3
	.byte	0x2c
	.long	0x186
	.byte	0xb
	.uleb128 0x13
	.long	.LASF17
	.byte	0x3
	.byte	0x2d
	.long	0x186
	.byte	0xc
	.uleb128 0x11
	.string	"SCK"
	.byte	0x3
	.byte	0x2e
	.long	0x186
	.byte	0xd
	.uleb128 0x11
	.string	"SDA"
	.byte	0x3
	.byte	0x33
	.long	0x186
	.byte	0x12
	.uleb128 0x11
	.string	"SCL"
	.byte	0x3
	.byte	0x34
	.long	0x186
	.byte	0x13
	.uleb128 0x11
	.string	"A0"
	.byte	0x3
	.byte	0x41
	.long	0x186
	.byte	0xe
	.uleb128 0x11
	.string	"A1"
	.byte	0x3
	.byte	0x42
	.long	0x186
	.byte	0xf
	.uleb128 0x11
	.string	"A2"
	.byte	0x3
	.byte	0x43
	.long	0x186
	.byte	0x10
	.uleb128 0x11
	.string	"A3"
	.byte	0x3
	.byte	0x44
	.long	0x186
	.byte	0x11
	.uleb128 0x11
	.string	"A4"
	.byte	0x3
	.byte	0x45
	.long	0x186
	.byte	0x12
	.uleb128 0x11
	.string	"A5"
	.byte	0x3
	.byte	0x46
	.long	0x186
	.byte	0x13
	.uleb128 0x11
	.string	"A6"
	.byte	0x3
	.byte	0x47
	.long	0x186
	.byte	0x14
	.uleb128 0x11
	.string	"A7"
	.byte	0x3
	.byte	0x48
	.long	0x186
	.byte	0x15
	.uleb128 0x14
	.long	0x2c
	.long	0x22a
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.long	.LASF18
	.byte	0x4
	.byte	0xaa
	.long	0x237
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x21f
	.uleb128 0x17
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	analog_reference
	.uleb128 0x18
	.byte	0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x85
	.byte	0x1
	.byte	0x1
	.long	0x267
	.uleb128 0x19
	.long	0x2c
	.uleb128 0x19
	.long	0x2c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	0x2c
	.uleb128 0x19
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
	.uleb128 0xa
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
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LFB10
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
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8-1
	.word	0x1
	.byte	0x68
	.long	.LVL8-1
	.long	.LVL10
	.word	0x1
	.byte	0x61
	.long	.LVL10
	.long	.LVL11-1
	.word	0x1
	.byte	0x68
	.long	.LVL11-1
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14
	.word	0x1
	.byte	0x61
	.long	.LVL14
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL9
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"mode"
.LASF2:
	.string	"uint8_t"
.LASF13:
	.string	"analogReference"
.LASF23:
	.string	"__addr16"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"analogWrite"
.LASF5:
	.string	"long int"
.LASF12:
	.string	"high"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF15:
	.string	"__result"
.LASF9:
	.string	"char"
.LASF17:
	.string	"MISO"
.LASF10:
	.string	"_Bool"
.LASF20:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF25:
	.string	"digitalWrite"
.LASF6:
	.string	"long unsigned int"
.LASF19:
	.string	"analog_reference"
.LASF22:
	.string	"analogRead"
.LASF21:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_analog.c"
.LASF24:
	.string	"pinMode"
.LASF18:
	.string	"digital_pin_to_timer_PGM"
.LASF16:
	.string	"MOSI"
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
