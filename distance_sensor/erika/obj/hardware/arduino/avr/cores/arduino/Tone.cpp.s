	.file	"Tone.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z4tonehjm,"ax",@progbits
.global	_Z4tonehjm
	.type	_Z4tonehjm, @function
_Z4tonehjm:
.LFB113:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp"
	.loc 1 244 0
	.cfi_startproc
.LVL0:
	push r3
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 3, -2
	push r4
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r8
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -7
	push r9
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 9, -8
	push r10
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 10, -9
	push r11
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 11, -10
	push r12
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 12, -11
	push r13
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 13, -12
	push r14
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 14, -13
	push r15
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 15, -14
	push r16
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 16, -15
	push r17
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 17, -16
	push r28
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
.LCFI16:
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
	rcall .
	rcall .
.LCFI17:
	.cfi_def_cfa_offset 23
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI18:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 21 */
.L__stack_usage = 21
.LVL1:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
.LBB30:
	.loc 1 134 0
	lds r25,_ZL9tone_pins
	cp r25,r24
	breq .L2
.LVL2:
.LBE30:
.LBE29:
.LBB34:
.LBB35:
	.loc 1 141 0
	cpi r25,lo8(-1)
	breq .+2
	rjmp .L1
	rjmp .L49
.LVL3:
.L2:
.LBE35:
.LBE34:
.LBB39:
.LBB33:
.LBB31:
.LBB32:
	.loc 1 135 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  135 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r3, Z
	
 ;  0 "" 2
.LVL4:
/* #NOAPP */
	rjmp .L5
.LVL5:
.L49:
.LBE32:
.LBE31:
.LBE33:
.LBE39:
.LBB40:
.LBB38:
.LBB36:
	.loc 1 142 0
	sts _ZL9tone_pins,r24
.LVL6:
.LBB37:
	.loc 1 143 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  143 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL7:
/* #NOAPP */
.LBE37:
.LBE36:
.LBE38:
.LBE40:
.LBB41:
	.loc 1 148 0
	cpi r30,lo8(-1)
	brne .+2
	rjmp .L1
.LBB42:
	.loc 1 154 0
	cpi r30,lo8(1)
	breq .L6
	cpi r30,lo8(2)
	brne .+2
	rjmp .L7
	cpse r30,__zero_reg__
	rjmp .L46
.LBB43:
	.loc 1 159 0
	out 0x24,__zero_reg__
	.loc 1 160 0
	out 0x25,__zero_reg__
	.loc 1 161 0
	in r25,0x24
	ori r25,lo8(2)
	out 0x24,r25
	.loc 1 162 0
	in r25,0x25
	ori r25,lo8(1)
	out 0x25,r25
.LBB44:
.LBB45:
	.loc 1 163 0
	mov r26,r24
	ldi r27,0
.LVL8:
	movw r30,r26
.LVL9:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL10:
/* #APP */
 ;  163 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.LBE45:
	ldi r31,0
	lsl r30
	rol r31
.LVL12:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL13:
/* #APP */
 ;  163 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r16, Z+
	lpm r17, Z
	
 ;  0 "" 2
.LVL14:
/* #NOAPP */
.LBE44:
	sts timer0_pin_port+1,r17
	sts timer0_pin_port,r16
.LVL15:
.LBB46:
	.loc 1 164 0
	movw r30,r26
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL16:
/* #APP */
 ;  164 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL17:
/* #NOAPP */
	sts timer0_pin_mask,r30
	mov r3,__zero_reg__
	rjmp .L28
.LVL18:
.L6:
.LBE46:
	.loc 1 171 0
	sts 128,__zero_reg__
	.loc 1 172 0
	sts 129,__zero_reg__
	.loc 1 173 0
	lds r25,129
	ori r25,lo8(8)
	sts 129,r25
	.loc 1 174 0
	lds r25,129
	ori r25,lo8(1)
	sts 129,r25
.LBB47:
.LBB48:
	.loc 1 175 0
	mov r26,r24
	ldi r27,0
.LVL19:
	movw r30,r26
.LVL20:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL21:
/* #APP */
 ;  175 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL22:
/* #NOAPP */
.LBE48:
	ldi r31,0
	lsl r30
	rol r31
.LVL23:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL24:
/* #APP */
 ;  175 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r16, Z+
	lpm r17, Z
	
 ;  0 "" 2
.LVL25:
/* #NOAPP */
.LBE47:
	sts timer1_pin_port+1,r17
	sts timer1_pin_port,r16
.LVL26:
.LBB49:
	.loc 1 176 0
	movw r30,r26
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL27:
/* #APP */
 ;  176 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL28:
/* #NOAPP */
	sts timer1_pin_mask,r30
	clr r3
	inc r3
	rjmp .L28
.LVL29:
.L7:
.LBE49:
	.loc 1 183 0
	sts 176,__zero_reg__
	.loc 1 184 0
	sts 177,__zero_reg__
	.loc 1 185 0
	lds r25,176
	ori r25,lo8(2)
	sts 176,r25
	.loc 1 186 0
	lds r25,177
	ori r25,lo8(1)
	sts 177,r25
.LBB50:
.LBB51:
	.loc 1 187 0
	mov r26,r24
	ldi r27,0
.LVL30:
	movw r30,r26
.LVL31:
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
.LVL32:
/* #APP */
 ;  187 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL33:
/* #NOAPP */
.LBE51:
	ldi r31,0
	lsl r30
	rol r31
.LVL34:
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
.LVL35:
/* #APP */
 ;  187 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r16, Z+
	lpm r17, Z
	
 ;  0 "" 2
.LVL36:
/* #NOAPP */
.LBE50:
	sts timer2_pin_port+1,r17
	sts timer2_pin_port,r16
.LVL37:
.LBB52:
	.loc 1 188 0
	movw r30,r26
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
.LVL38:
/* #APP */
 ;  188 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL39:
/* #NOAPP */
	sts timer2_pin_mask,r30
	ldi r16,lo8(2)
	mov r3,r16
.LVL40:
	rjmp .L28
.LVL41:
.L46:
.LBE52:
.LBE43:
	.loc 1 154 0
	mov r3,r30
.LVL42:
.L5:
.LBE42:
.LBE41:
.LBE28:
.LBE27:
	.loc 1 252 0
	sbrc r3,7
	rjmp .L1
.L28:
	movw r4,r18
	movw r6,r20
	movw r16,r22
	.loc 1 255 0
	ldi r22,lo8(1)
.LVL43:
	call pinMode
.LVL44:
	movw r8,r16
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	.loc 1 258 0
	mov r24,r3
	andi r24,lo8(-3)
	breq .+2
	rjmp .L11
.LVL45:
	.loc 1 260 0
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	movw r12,r18
	movw r14,r20
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL46:
	.loc 1 262 0
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L34
	.loc 1 264 0
	ldi r22,lo8(64)
	ldi r23,lo8(66)
	ldi r24,lo8(15)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL47:
	ldi r30,1
	sub r12,r30
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL48:
	.loc 1 267 0
	ldi r31,lo8(2)
	cpse r3,r31
	rjmp .L13
	.loc 1 267 0 is_stmt 0 discriminator 1
	ldi r18,-1
	cp r12,r18
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L35
	.loc 1 269 0 is_stmt 1
	ldi r22,lo8(-112)
	ldi r23,lo8(-48)
	ldi r24,lo8(3)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL49:
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL50:
	.loc 1 273 0
	ldi r30,-1
	cp r12,r30
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .L15
	.loc 1 270 0
	ldi r24,lo8(3)
	rjmp .L16
.LVL51:
.L13:
	.loc 1 273 0
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L36
	brlo .L36
	.loc 1 275 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL52:
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL53:
	.loc 1 276 0
	tst r3
	brne .+2
	rjmp .L17
	rjmp .L50
.LVL54:
.L34:
	.loc 1 261 0
	ldi r24,lo8(1)
	rjmp .L12
.LVL55:
.L36:
	.loc 1 265 0
	ldi r24,lo8(2)
.LVL56:
.L12:
	.loc 1 299 0
	tst r3
	breq .L20
	rjmp .L16
.LVL57:
.L30:
	.loc 1 291 0
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	ldi r18,10
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r18
	brne 1b
	movw r12,r24
	movw r14,r26
.LVL58:
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL59:
.L37:
	.loc 1 292 0
	ldi r24,lo8(5)
.L20:
.LVL60:
	.loc 1 301 0
	in r25,0x25
	andi r25,lo8(-8)
	or r24,r25
.LVL61:
	out 0x25,r24
	rjmp .L21
.LVL62:
.L15:
	.loc 1 275 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL63:
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL64:
	.loc 1 278 0
	ldi r18,-1
	cp r12,r18
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L51
	.loc 1 280 0
	ldi r22,lo8(36)
	ldi r23,lo8(-12)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL65:
	ldi r30,1
	sub r12,r30
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL66:
	.loc 1 284 0
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L19
	.loc 1 281 0
	ldi r24,lo8(5)
.LVL67:
.L16:
	.loc 1 307 0
	lds r25,177
	andi r25,lo8(-8)
	or r24,r25
.LVL68:
	sts 177,r24
	rjmp .L21
.LVL69:
.L11:
	.loc 1 318 0
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL70:
	.loc 1 321 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	ldi r30,1
	cpc r14,r30
	cpc r15,__zero_reg__
	brlo .L38
	.loc 1 323 0
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL71:
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL72:
	.loc 1 324 0
	ldi r25,lo8(3)
	rjmp .L22
.LVL73:
.L38:
	.loc 1 320 0
	ldi r25,lo8(1)
.LVL74:
.L22:
	.loc 1 327 0
	ldi r18,lo8(1)
	cpse r3,r18
	rjmp .L21
	.loc 1 330 0
	lds r24,129
	andi r24,lo8(-8)
	or r24,r25
	sts 129,r24
	.loc 1 350 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .L23
	.loc 1 356 0
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
	rjmp .L24
.LVL75:
.L21:
	.loc 1 350 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L39
.L23:
	.loc 1 352 0
	movw r26,r16
	lsl r26
	rol r27
	movw r20,r6
	movw r18,r4
	call __muluhisi3
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
.LVL76:
	rjmp .L25
.LVL77:
.L39:
	.loc 1 356 0
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
.LVL78:
.L25:
	.loc 1 362 0
	ldi r24,lo8(1)
	cp r3,r24
	breq .L24
	ldi r30,lo8(2)
	cp r3,r30
	breq .L26
	cpse r3,__zero_reg__
	rjmp .L1
	.loc 1 367 0
	out 0x27,r12
	.loc 1 368 0
	sts timer0_toggle_count,r18
	sts timer0_toggle_count+1,r19
	sts timer0_toggle_count+2,r20
	sts timer0_toggle_count+3,r21
	.loc 1 369 0
	lds r24,110
	ori r24,lo8(2)
	sts 110,r24
	.loc 1 370 0
	rjmp .L1
.LVL79:
.L24:
	.loc 1 375 0
	sts 136+1,r13
	sts 136,r12
	.loc 1 376 0
	sts timer1_toggle_count,r18
	sts timer1_toggle_count+1,r19
	sts timer1_toggle_count+2,r20
	sts timer1_toggle_count+3,r21
	.loc 1 377 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 384 0
	rjmp .L1
.L26:
	.loc 1 388 0
	sts 179,r12
	.loc 1 389 0
	sts timer2_toggle_count,r18
	sts timer2_toggle_count+1,r19
	sts timer2_toggle_count+2,r20
	sts timer2_toggle_count+3,r21
	.loc 1 390 0
	lds r24,112
	ori r24,lo8(2)
	sts 112,r24
	.loc 1 391 0
	rjmp .L1
.LVL80:
.L51:
	.loc 1 276 0
	ldi r24,lo8(4)
	rjmp .L16
.LVL81:
.L17:
	.loc 1 284 0
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L52
	brlo .L52
	.loc 1 286 0
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL82:
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL83:
	.loc 1 288 0
	ldi r30,-1
	cp r12,r30
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L30
	.loc 1 287 0
	ldi r24,lo8(4)
	rjmp .L20
.LVL84:
.L52:
	.loc 1 276 0
	ldi r24,lo8(3)
	rjmp .L20
.LVL85:
.L19:
	.loc 1 286 0
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
.LVL86:
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL87:
	.loc 1 288 0
	ldi r30,-1
	cp r12,r30
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L53
	brlo .L53
	.loc 1 291 0
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	ldi r20,10
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r20
	brne 1b
	movw r12,r24
	movw r14,r26
.LVL88:
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL89:
	.loc 1 292 0
	tst r3
	brne .+2
	rjmp .L37
	ldi r24,lo8(7)
	rjmp .L16
.LVL90:
.L53:
	.loc 1 287 0
	ldi r24,lo8(6)
	rjmp .L12
.LVL91:
.L50:
	.loc 1 284 0
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .L19
	.loc 1 276 0
	ldi r24,lo8(4)
	rjmp .L12
.LVL92:
.L35:
	.loc 1 265 0
	ldi r24,lo8(2)
.LVL93:
	rjmp .L16
.LVL94:
.L1:
/* epilogue start */
.LBE26:
	.loc 1 420 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	ret
	.cfi_endproc
.LFE113:
	.size	_Z4tonehjm, .-_Z4tonehjm
	.section	.text._Z12disableTimerh,"ax",@progbits
.global	_Z12disableTimerh
	.type	_Z12disableTimerh, @function
_Z12disableTimerh:
.LFB114:
	.loc 1 427 0
	.cfi_startproc
.LVL95:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 428 0
	cpi r24,lo8(1)
	breq .L56
	brlo .L57
	cpi r24,lo8(2)
	breq .L58
	ret
.L57:
	.loc 1 432 0
	sts 110,__zero_reg__
	.loc 1 436 0
	ret
.L56:
	.loc 1 440 0
	lds r24,111
.LVL96:
	andi r24,lo8(-3)
	sts 111,r24
	.loc 1 441 0
	ret
.LVL97:
.L58:
.LBB55:
.LBB56:
	.loc 1 446 0
	lds r24,112
.LVL98:
	andi r24,lo8(-3)
	sts 112,r24
	.loc 1 449 0
	ldi r24,lo8(1)
	sts 176,r24
	.loc 1 452 0
	lds r24,177
	andi r24,lo8(-8)
	ori r24,lo8(4)
	sts 177,r24
	.loc 1 455 0
	sts 179,__zero_reg__
	ret
.LBE56:
.LBE55:
	.cfi_endproc
.LFE114:
	.size	_Z12disableTimerh, .-_Z12disableTimerh
	.section	.text._Z6noToneh,"ax",@progbits
.global	_Z6noToneh
	.type	_Z6noToneh, @function
_Z6noToneh:
.LFB115:
	.loc 1 481 0
	.cfi_startproc
.LVL99:
	push r28
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.LVL100:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 485 0
	lds r24,_ZL9tone_pins
.LVL101:
	cpse r24,r28
	rjmp .L61
.LVL102:
.LBB60:
.LBB61:
	.loc 1 486 0
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  486 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL103:
/* #NOAPP */
.LBE61:
	.loc 1 487 0
	ldi r24,lo8(-1)
	sts _ZL9tone_pins,r24
	.loc 1 488 0
	rjmp .L60
.LVL104:
.L61:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 482 0
	ldi r30,lo8(-1)
.LVL105:
.L60:
	.loc 1 492 0
	mov r24,r30
	call _Z12disableTimerh
.LVL106:
	.loc 1 494 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
.LBE57:
	.loc 1 495 0
	pop r28
.LVL107:
.LBB62:
	.loc 1 494 0
	jmp digitalWrite
.LVL108:
.LBE62:
	.cfi_endproc
.LFE115:
	.size	_Z6noToneh, .-_Z6noToneh
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
.LFB116:
	.loc 1 539 0
	.cfi_startproc
	push r1
.LCFI20:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI21:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI22:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI23:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI24:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI26:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI27:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI28:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI29:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI30:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI31:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI32:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI33:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 541 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L63
	.loc 1 544 0
	lds r24,timer2_pin_mask
	lds r30,timer2_pin_port
	lds r31,timer2_pin_port+1
	ld r25,Z
	eor r24,r25
	st Z,r24
	.loc 1 546 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brge .L62
	.loc 1 547 0
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts timer2_toggle_count,r24
	sts timer2_toggle_count+1,r25
	sts timer2_toggle_count+2,r26
	sts timer2_toggle_count+3,r27
	rjmp .L62
.L63:
	.loc 1 554 0
	lds r24,_ZL9tone_pins
	call _Z6noToneh
.LVL109:
.L62:
/* epilogue start */
	.loc 1 558 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE116:
	.size	__vector_7, .-__vector_7
	.section	.progmem.data._ZL21tone_pin_to_timer_PGM,"a",@progbits
	.type	_ZL21tone_pin_to_timer_PGM, @object
	.size	_ZL21tone_pin_to_timer_PGM, 1
_ZL21tone_pin_to_timer_PGM:
	.byte	2
	.section	.data._ZL9tone_pins,"aw",@progbits
	.type	_ZL9tone_pins, @object
	.size	_ZL9tone_pins, 1
_ZL9tone_pins:
	.byte	-1
.global	timer2_pin_mask
	.section	.bss.timer2_pin_mask,"aw",@nobits
	.type	timer2_pin_mask, @object
	.size	timer2_pin_mask, 1
timer2_pin_mask:
	.zero	1
.global	timer2_pin_port
	.section	.bss.timer2_pin_port,"aw",@nobits
	.type	timer2_pin_port, @object
	.size	timer2_pin_port, 2
timer2_pin_port:
	.zero	2
.global	timer2_toggle_count
	.section	.bss.timer2_toggle_count,"aw",@nobits
	.type	timer2_toggle_count, @object
	.size	timer2_toggle_count, 4
timer2_toggle_count:
	.zero	4
.global	timer1_pin_mask
	.section	.bss.timer1_pin_mask,"aw",@nobits
	.type	timer1_pin_mask, @object
	.size	timer1_pin_mask, 1
timer1_pin_mask:
	.zero	1
.global	timer1_pin_port
	.section	.bss.timer1_pin_port,"aw",@nobits
	.type	timer1_pin_port, @object
	.size	timer1_pin_port, 2
timer1_pin_port:
	.zero	2
.global	timer1_toggle_count
	.section	.bss.timer1_toggle_count,"aw",@nobits
	.type	timer1_toggle_count, @object
	.size	timer1_toggle_count, 4
timer1_toggle_count:
	.zero	4
.global	timer0_pin_mask
	.section	.bss.timer0_pin_mask,"aw",@nobits
	.type	timer0_pin_mask, @object
	.size	timer0_pin_mask, 1
timer0_pin_mask:
	.zero	1
.global	timer0_pin_port
	.section	.bss.timer0_pin_port,"aw",@nobits
	.type	timer0_pin_port, @object
	.size	timer0_pin_port, 2
timer0_pin_port:
	.zero	2
.global	timer0_toggle_count
	.section	.bss.timer0_toggle_count,"aw",@nobits
	.type	timer0_toggle_count, @object
	.size	timer0_toggle_count, 4
timer0_toggle_count:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Arduino.h"
	.file 4 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 5 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Stream.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x781
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF49
	.byte	0x4
	.long	.LASF50
	.long	.LASF51
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7d
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7e
	.long	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x80
	.long	0x66
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x82
	.long	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF52
	.byte	0x2
	.byte	0x5
	.byte	0x29
	.long	0xc8
	.uleb128 0x6
	.long	.LASF15
	.sleb128 0
	.uleb128 0x6
	.long	.LASF16
	.sleb128 1
	.uleb128 0x6
	.long	.LASF17
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x7
	.long	.LASF53
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x8
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.word	0x1aa
	.byte	0x1
	.long	0xf6
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.word	0x1aa
	.long	0x42
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.byte	0x80
	.long	0x30
	.byte	0x1
	.long	0x259
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x80
	.long	0x42
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x82
	.long	0x30
	.uleb128 0xe
	.long	0x144
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x54
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0x87
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x87
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x16b
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x54
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0x8f
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x8f
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x19f
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xa3
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xa3
	.long	0x5b
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xa3
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xa3
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x1bb
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xa4
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xa4
	.long	0x42
	.byte	0
	.uleb128 0xe
	.long	0x1ef
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xaf
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xaf
	.long	0x5b
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xaf
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xaf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x20b
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xb0
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xb0
	.long	0x42
	.byte	0
	.uleb128 0xe
	.long	0x23f
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xbb
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xbb
	.long	0x5b
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xbb
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xbb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0xbc
	.long	0x5b
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xbc
	.long	0x42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xf3
	.long	.LASF55
	.long	.LFB113
	.long	.LFE113
	.long	.LLST0
	.byte	0x1
	.long	0x48b
	.uleb128 0x11
	.long	.LASF21
	.byte	0x1
	.byte	0xf3
	.long	0x42
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF24
	.byte	0x1
	.byte	0xf3
	.long	0x66
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.byte	0xf3
	.long	0x29
	.long	.LLST3
	.uleb128 0x12
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0xf5
	.long	0x42
	.long	.LLST4
	.uleb128 0x13
	.long	.LASF27
	.byte	0x1
	.byte	0xf6
	.long	0x6d
	.long	.LLST5
	.uleb128 0x14
	.string	"ocr"
	.byte	0x1
	.byte	0xf7
	.long	0x74
	.long	.LLST6
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0xf8
	.long	0x30
	.uleb128 0x15
	.long	0xf6
	.long	.LBB27
	.long	.LBE27
	.byte	0x1
	.byte	0xfa
	.long	0x47a
	.uleb128 0x16
	.long	0x106
	.long	.LLST7
	.uleb128 0x12
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x17
	.long	0x112
	.long	.LLST8
	.uleb128 0x18
	.long	.Ldebug_ranges0+0
	.long	0x33d
	.uleb128 0x17
	.long	0x122
	.long	.LLST9
	.uleb128 0x12
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x19
	.long	0x12c
	.uleb128 0x17
	.long	0x137
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x18
	.long	0x368
	.uleb128 0x17
	.long	0x149
	.long	.LLST11
	.uleb128 0x12
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x19
	.long	0x153
	.uleb128 0x17
	.long	0x15e
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB44
	.long	.LBE44
	.long	0x3a4
	.uleb128 0x17
	.long	0x170
	.long	.LLST13
	.uleb128 0x17
	.long	0x17b
	.long	.LLST14
	.uleb128 0x12
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x17
	.long	0x187
	.long	.LLST15
	.uleb128 0x17
	.long	0x192
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB46
	.long	.LBE46
	.long	0x3c4
	.uleb128 0x17
	.long	0x1a4
	.long	.LLST17
	.uleb128 0x17
	.long	0x1af
	.long	.LLST18
	.byte	0
	.uleb128 0x1a
	.long	.LBB47
	.long	.LBE47
	.long	0x400
	.uleb128 0x17
	.long	0x1c0
	.long	.LLST19
	.uleb128 0x17
	.long	0x1cb
	.long	.LLST20
	.uleb128 0x12
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x17
	.long	0x1d7
	.long	.LLST21
	.uleb128 0x17
	.long	0x1e2
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB49
	.long	.LBE49
	.long	0x420
	.uleb128 0x17
	.long	0x1f4
	.long	.LLST23
	.uleb128 0x17
	.long	0x1ff
	.long	.LLST24
	.byte	0
	.uleb128 0x1a
	.long	.LBB50
	.long	.LBE50
	.long	0x45c
	.uleb128 0x17
	.long	0x210
	.long	.LLST25
	.uleb128 0x17
	.long	0x21b
	.long	.LLST26
	.uleb128 0x12
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x17
	.long	0x227
	.long	.LLST27
	.uleb128 0x17
	.long	0x232
	.long	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x17
	.long	0x240
	.long	.LLST29
	.uleb128 0x17
	.long	0x24b
	.long	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL44
	.long	0x758
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xdb
	.long	.LASF56
	.long	.LFB114
	.long	.LFE114
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4bf
	.uleb128 0x16
	.long	0xe9
	.long	.LLST31
	.uleb128 0x12
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x1e
	.long	0xe9
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.word	0x1e0
	.long	.LASF57
	.long	.LFB115
	.long	.LFE115
	.long	.LLST32
	.byte	0x1
	.long	0x563
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.word	0x1e0
	.long	0x42
	.long	.LLST33
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x22
	.long	.LASF20
	.byte	0x1
	.word	0x1e2
	.long	0x30
	.long	.LLST34
	.uleb128 0x1a
	.long	.LBB58
	.long	.LBE58
	.long	0x541
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x1e4
	.long	0x54
	.byte	0
	.uleb128 0x12
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x24
	.long	.LASF22
	.byte	0x1
	.word	0x1e6
	.long	0x5b
	.uleb128 0x22
	.long	.LASF23
	.byte	0x1
	.word	0x1e6
	.long	0x42
	.long	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL106
	.long	0xdb
	.uleb128 0x26
	.long	.LVL108
	.byte	0x1
	.long	0x770
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x21a
	.long	.LFB116
	.long	.LFE116
	.long	.LLST36
	.byte	0x1
	.long	0x587
	.uleb128 0x25
	.long	.LVL109
	.long	0x4bf
	.byte	0
	.uleb128 0x28
	.long	0x66
	.long	0x592
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x3
	.byte	0xa5
	.long	0x587
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	0x4d
	.long	0x5aa
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x3
	.byte	0xa7
	.long	0x59f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x3
	.byte	0xa9
	.long	0x59f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"SS"
	.byte	0x4
	.byte	0x2b
	.long	0x5cf
	.byte	0xa
	.uleb128 0x2c
	.long	0x42
	.uleb128 0x2d
	.long	.LASF33
	.byte	0x4
	.byte	0x2c
	.long	0x5cf
	.byte	0xb
	.uleb128 0x2d
	.long	.LASF34
	.byte	0x4
	.byte	0x2d
	.long	0x5cf
	.byte	0xc
	.uleb128 0x2b
	.string	"SCK"
	.byte	0x4
	.byte	0x2e
	.long	0x5cf
	.byte	0xd
	.uleb128 0x2b
	.string	"SDA"
	.byte	0x4
	.byte	0x33
	.long	0x5cf
	.byte	0x12
	.uleb128 0x2b
	.string	"SCL"
	.byte	0x4
	.byte	0x34
	.long	0x5cf
	.byte	0x13
	.uleb128 0x2b
	.string	"A0"
	.byte	0x4
	.byte	0x41
	.long	0x5cf
	.byte	0xe
	.uleb128 0x2b
	.string	"A1"
	.byte	0x4
	.byte	0x42
	.long	0x5cf
	.byte	0xf
	.uleb128 0x2b
	.string	"A2"
	.byte	0x4
	.byte	0x43
	.long	0x5cf
	.byte	0x10
	.uleb128 0x2b
	.string	"A3"
	.byte	0x4
	.byte	0x44
	.long	0x5cf
	.byte	0x11
	.uleb128 0x2b
	.string	"A4"
	.byte	0x4
	.byte	0x45
	.long	0x5cf
	.byte	0x12
	.uleb128 0x2b
	.string	"A5"
	.byte	0x4
	.byte	0x46
	.long	0x5cf
	.byte	0x13
	.uleb128 0x2b
	.string	"A6"
	.byte	0x4
	.byte	0x47
	.long	0x5cf
	.byte	0x14
	.uleb128 0x2b
	.string	"A7"
	.byte	0x4
	.byte	0x48
	.long	0x5cf
	.byte	0x15
	.uleb128 0x2e
	.long	.LASF35
	.byte	0x1
	.byte	0x3c
	.long	0x67a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_toggle_count
	.uleb128 0x2f
	.long	0x6d
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.byte	0x3d
	.long	0x691
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_pin_port
	.uleb128 0x30
	.byte	0x2
	.long	0x697
	.uleb128 0x2f
	.long	0x42
	.uleb128 0x2e
	.long	.LASF37
	.byte	0x1
	.byte	0x3e
	.long	0x697
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer0_pin_mask
	.uleb128 0x2e
	.long	.LASF38
	.byte	0x1
	.byte	0x41
	.long	0x67a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_toggle_count
	.uleb128 0x2e
	.long	.LASF39
	.byte	0x1
	.byte	0x42
	.long	0x691
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_pin_port
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.byte	0x43
	.long	0x697
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_pin_mask
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.byte	0x44
	.long	0x67a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_toggle_count
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.byte	0x45
	.long	0x691
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_pin_port
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.byte	0x46
	.long	0x697
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer2_pin_mask
	.uleb128 0x28
	.long	0x4d
	.long	0x72a
	.uleb128 0x31
	.long	0x72a
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF44
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.byte	0x79
	.long	0x742
	.byte	0x5
	.byte	0x3
	.long	_ZL21tone_pin_to_timer_PGM
	.uleb128 0x2c
	.long	0x71a
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.byte	0x7a
	.long	0x71a
	.byte	0x5
	.byte	0x3
	.long	_ZL9tone_pins
	.uleb128 0x33
	.byte	0x1
	.long	.LASF48
	.byte	0x3
	.byte	0x85
	.byte	0x1
	.long	0x770
	.uleb128 0x34
	.long	0x42
	.uleb128 0x34
	.long	0x42
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF59
	.byte	0x3
	.byte	0x86
	.byte	0x1
	.uleb128 0x34
	.long	0x42
	.uleb128 0x34
	.long	0x42
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
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB113
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
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 23
	.long	.LCFI18
	.long	.LFE113
	.word	0x2
	.byte	0x8c
	.sleb128 23
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL44-1
	.word	0x1
	.byte	0x68
	.long	.LVL44-1
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL43
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LVL45
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45
	.long	.LVL94
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL44-1
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
	.long	.LVL44-1
	.long	.LVL94
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
	.long	.LVL94
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL48
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL48
	.long	.LVL50
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL51
	.long	.LVL54
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL59
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL62
	.long	.LVL64
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL64
	.long	.LVL66
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.word	0x1
	.byte	0x68
	.long	.LVL69
	.long	.LVL72
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.word	0x1
	.byte	0x69
	.long	.LVL80
	.long	.LVL81
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL81
	.long	.LVL83
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL83
	.long	.LVL84
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL87
	.long	.LVL91
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL91
	.long	.LVL92
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL92
	.long	.LVL93
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL93
	.long	.LVL94
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL76
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
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
	.long	.LVL77
	.long	.LVL78
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL78
	.long	.LVL80
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
	.long	.LVL80
	.long	.LVL94
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL1
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
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
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL48
	.long	.LVL49
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
	.long	.LVL49
	.long	.LVL50
	.word	0x11
	.byte	0xc
	.long	0xf4240
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL50
	.long	.LVL52
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
	.long	.LVL52
	.long	.LVL53
	.word	0x11
	.byte	0xc
	.long	0xf4240
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL53
	.long	.LVL56
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
	.long	.LVL57
	.long	.LVL58
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
	.long	.LVL58
	.long	.LVL59
	.word	0xf
	.byte	0xa
	.word	0x7a12
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
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
	.long	.LVL63
	.long	.LVL64
	.word	0x11
	.byte	0xc
	.long	0x3d090
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
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
	.long	.LVL65
	.long	.LVL66
	.word	0x11
	.byte	0xc
	.long	0x1e848
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
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
	.long	.LVL69
	.long	.LVL70
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
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
	.long	.LVL71
	.long	.LVL72
	.word	0x11
	.byte	0xc
	.long	0x7a1200
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
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
	.long	.LVL80
	.long	.LVL82
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
	.long	.LVL82
	.long	.LVL83
	.word	0x11
	.byte	0xc
	.long	0x1e848
	.byte	0xf7
	.uleb128 0x29
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL83
	.long	.LVL86
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
	.long	.LVL87
	.long	.LVL88
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
	.long	.LVL88
	.long	.LVL89
	.word	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.long	.LVL90
	.long	.LVL93
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
	.long	.LVL1
	.long	.LVL44-1
	.word	0x1
	.byte	0x68
	.long	.LVL44-1
	.long	.LFE113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL1
	.long	.LVL7
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9
	.word	0x1
	.byte	0x6e
	.long	.LVL18
	.long	.LVL20
	.word	0x1
	.byte	0x6e
	.long	.LVL29
	.long	.LVL31
	.word	0x1
	.byte	0x6e
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST9:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL42
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL7
	.long	.LVL9
	.word	0x1
	.byte	0x6e
	.long	.LVL18
	.long	.LVL20
	.word	0x1
	.byte	0x6e
	.long	.LVL29
	.long	.LVL31
	.word	0x1
	.byte	0x6e
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST13:
	.long	.LVL13
	.long	.LVL14
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
	.long	.LVL14
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL10
	.long	.LVL11
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
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST17:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST19:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL29
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
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
.LLST22:
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST23:
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST25:
	.long	.LVL35
	.long	.LVL36
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
	.long	.LVL36
	.long	.LVL40
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LVL41
	.word	0x5
	.byte	0x3
	.long	timer2_pin_port
	.long	0
	.long	0
.LLST27:
	.long	.LVL32
	.long	.LVL33
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
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST29:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL39
	.long	.LVL41
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST31:
	.long	.LVL95
	.long	.LVL96
	.word	0x1
	.byte	0x68
	.long	.LVL96
	.long	.LVL97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL97
	.long	.LVL98
	.word	0x1
	.byte	0x68
	.long	.LVL98
	.long	.LFE114
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LFB115
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19
	.long	.LFE115
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST33:
	.long	.LVL99
	.long	.LVL101
	.word	0x1
	.byte	0x68
	.long	.LVL101
	.long	.LVL107
	.word	0x1
	.byte	0x6c
	.long	.LVL107
	.long	.LVL108-1
	.word	0x1
	.byte	0x68
	.long	.LVL108-1
	.long	.LFE115
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL100
	.long	.LVL103
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL103
	.long	.LVL104
	.word	0x1
	.byte	0x6e
	.long	.LVL104
	.long	.LVL105
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106-1
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST35:
	.long	.LVL103
	.long	.LVL104
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST36:
	.long	.LFB116
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI33
	.long	.LFE116
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
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
	.long	.LFB113
	.long	.LFE113-.LFB113
	.long	.LFB114
	.long	.LFE114-.LFB114
	.long	.LFB115
	.long	.LFE115-.LFB115
	.long	.LFB116
	.long	.LFE116-.LFB116
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB29
	.long	.LBE29
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB34
	.long	.LBE34
	.long	.LBB40
	.long	.LBE40
	.long	0
	.long	0
	.long	.LBB57
	.long	.LBE57
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LFB113
	.long	.LFE113
	.long	.LFB114
	.long	.LFE114
	.long	.LFB115
	.long	.LFE115
	.long	.LFB116
	.long	.LFE116
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"digital_pin_to_port_PGM"
.LASF41:
	.string	"timer2_toggle_count"
.LASF22:
	.string	"__addr16"
.LASF54:
	.string	"toneBegin"
.LASF43:
	.string	"timer2_pin_mask"
.LASF42:
	.string	"timer2_pin_port"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"frequency"
.LASF49:
	.string	"GNU C++ 4.9.2 -fpreprocessed -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF9:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF38:
	.string	"timer1_toggle_count"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"noTone"
.LASF45:
	.string	"tone_pin_to_timer_PGM"
.LASF5:
	.string	"uint16_t"
.LASF14:
	.string	"double"
.LASF23:
	.string	"__result"
.LASF55:
	.string	"_Z4tonehjm"
.LASF25:
	.string	"duration"
.LASF48:
	.string	"pinMode"
.LASF6:
	.string	"unsigned int"
.LASF35:
	.string	"timer0_toggle_count"
.LASF0:
	.string	"long unsigned int"
.LASF37:
	.string	"timer0_pin_mask"
.LASF40:
	.string	"timer1_pin_mask"
.LASF30:
	.string	"port_to_output_PGM"
.LASF57:
	.string	"_Z6noToneh"
.LASF36:
	.string	"timer0_pin_port"
.LASF58:
	.string	"__vector_7"
.LASF39:
	.string	"timer1_pin_port"
.LASF19:
	.string	"short unsigned int"
.LASF11:
	.string	"bool"
.LASF53:
	.string	"decltype(nullptr)"
.LASF26:
	.string	"prescalarbits"
.LASF44:
	.string	"sizetype"
.LASF18:
	.string	"long double"
.LASF13:
	.string	"float"
.LASF51:
	.string	"/home/yvonne/distance_sensor/erika"
.LASF28:
	.string	"tone"
.LASF4:
	.string	"unsigned char"
.LASF27:
	.string	"toggle_count"
.LASF56:
	.string	"_Z12disableTimerh"
.LASF8:
	.string	"uint32_t"
.LASF59:
	.string	"digitalWrite"
.LASF46:
	.string	"tone_pins"
.LASF12:
	.string	"char"
.LASF52:
	.string	"LookaheadMode"
.LASF32:
	.string	"digital_pin_to_bit_mask_PGM"
.LASF47:
	.string	"disableTimer"
.LASF33:
	.string	"MOSI"
.LASF21:
	.string	"_pin"
.LASF2:
	.string	"int8_t"
.LASF15:
	.string	"SKIP_ALL"
.LASF34:
	.string	"MISO"
.LASF17:
	.string	"SKIP_WHITESPACE"
.LASF3:
	.string	"uint8_t"
.LASF20:
	.string	"_timer"
.LASF50:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Tone.cpp"
.LASF16:
	.string	"SKIP_NONE"
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
