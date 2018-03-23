	.file	"SPI.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN8SPIClass5beginEv,"ax",@progbits
.global	_ZN8SPIClass5beginEv
	.type	_ZN8SPIClass5beginEv, @function
_ZN8SPIClass5beginEv:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	in r28,__SREG__
/* #APP */
 ;  29 "/home/yvonne/distance_sensor/SPI.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,_ZN8SPIClass11initializedE
	cpse r24,__zero_reg__
	rjmp .L2
	ldi r30,lo8(digital_pin_to_port_PGM+10)
	ldi r31,hi8(digital_pin_to_port_PGM+10)
/* #APP */
 ;  32 "/home/yvonne/distance_sensor/SPI.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(digital_pin_to_bit_mask_PGM+10)
	ldi r31,hi8(digital_pin_to_bit_mask_PGM+10)
/* #APP */
 ;  33 "/home/yvonne/distance_sensor/SPI.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
/* #APP */
 ;  34 "/home/yvonne/distance_sensor/SPI.cpp" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r30,X
	and r30,r25
	brne .L3
	ldi r22,lo8(1)
	ldi r24,lo8(10)
	call digitalWrite
.L3:
	ldi r22,lo8(1)
	ldi r24,lo8(10)
	call pinMode
	in r24,0x2c
	ori r24,lo8(16)
	out 0x2c,r24
	in r24,0x2c
	ori r24,lo8(64)
	out 0x2c,r24
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call pinMode
	ldi r22,lo8(1)
	ldi r24,lo8(11)
	call pinMode
.L2:
	lds r24,_ZN8SPIClass11initializedE
	subi r24,lo8(-(1))
	sts _ZN8SPIClass11initializedE,r24
	out __SREG__,r28
/* epilogue start */
	pop r28
	ret
	.size	_ZN8SPIClass5beginEv, .-_ZN8SPIClass5beginEv
	.section	.text._ZN8SPIClass3endEv,"ax",@progbits
.global	_ZN8SPIClass3endEv
	.type	_ZN8SPIClass3endEv, @function
_ZN8SPIClass3endEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,__SREG__
/* #APP */
 ;  68 "/home/yvonne/distance_sensor/SPI.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,_ZN8SPIClass11initializedE
	tst r24
	breq .L6
	subi r24,lo8(-(-1))
	sts _ZN8SPIClass11initializedE,r24
.L6:
	lds r24,_ZN8SPIClass11initializedE
	cpse r24,__zero_reg__
	rjmp .L7
	in r24,0x2c
	andi r24,lo8(-65)
	out 0x2c,r24
	sts _ZN8SPIClass13interruptModeE,__zero_reg__
.L7:
	out __SREG__,r25
	ret
	.size	_ZN8SPIClass3endEv, .-_ZN8SPIClass3endEv
	.section	.text._ZN8SPIClass14usingInterruptEh,"ax",@progbits
.global	_ZN8SPIClass14usingInterruptEh
	.type	_ZN8SPIClass14usingInterruptEh, @function
_ZN8SPIClass14usingInterruptEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,__SREG__
/* #APP */
 ;  124 "/home/yvonne/distance_sensor/SPI.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L16
	cpi r24,lo8(1)
	brne .L17
	ldi r24,lo8(2)
	rjmp .L13
.L17:
	ldi r24,lo8(2)
	sts _ZN8SPIClass13interruptModeE,r24
	ldi r24,0
	rjmp .L13
.L16:
	ldi r24,lo8(1)
.L13:
	lds r18,_ZN8SPIClass13interruptMaskE
	or r24,r18
	sts _ZN8SPIClass13interruptMaskE,r24
	lds r24,_ZN8SPIClass13interruptModeE
	cpse r24,__zero_reg__
	rjmp .L15
	ldi r24,lo8(1)
	sts _ZN8SPIClass13interruptModeE,r24
.L15:
	out __SREG__,r25
	ret
	.size	_ZN8SPIClass14usingInterruptEh, .-_ZN8SPIClass14usingInterruptEh
	.section	.text._ZN8SPIClass17notUsingInterruptEh,"ax",@progbits
.global	_ZN8SPIClass17notUsingInterruptEh
	.type	_ZN8SPIClass17notUsingInterruptEh, @function
_ZN8SPIClass17notUsingInterruptEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,_ZN8SPIClass13interruptModeE
	cpi r25,lo8(2)
	breq .L18
	in r18,__SREG__
/* #APP */
 ;  167 "/home/yvonne/distance_sensor/SPI.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L21
	cpi r24,lo8(1)
	brne .L29
	ldi r24,lo8(2)
	rjmp .L20
.L21:
	ldi r24,lo8(1)
	rjmp .L20
.L29:
	ldi r24,0
.L20:
	com r24
	lds r25,_ZN8SPIClass13interruptMaskE
	and r24,r25
	sts _ZN8SPIClass13interruptMaskE,r24
	cpse r24,__zero_reg__
	rjmp .L23
	sts _ZN8SPIClass13interruptModeE,__zero_reg__
.L23:
	out __SREG__,r18
.L18:
	ret
	.size	_ZN8SPIClass17notUsingInterruptEh, .-_ZN8SPIClass17notUsingInterruptEh
.global	_ZN8SPIClass13interruptSaveE
	.section	.bss._ZN8SPIClass13interruptSaveE,"aw",@nobits
	.type	_ZN8SPIClass13interruptSaveE, @object
	.size	_ZN8SPIClass13interruptSaveE, 1
_ZN8SPIClass13interruptSaveE:
	.zero	1
.global	_ZN8SPIClass13interruptMaskE
	.section	.bss._ZN8SPIClass13interruptMaskE,"aw",@nobits
	.type	_ZN8SPIClass13interruptMaskE, @object
	.size	_ZN8SPIClass13interruptMaskE, 1
_ZN8SPIClass13interruptMaskE:
	.zero	1
.global	_ZN8SPIClass13interruptModeE
	.section	.bss._ZN8SPIClass13interruptModeE,"aw",@nobits
	.type	_ZN8SPIClass13interruptModeE, @object
	.size	_ZN8SPIClass13interruptModeE, 1
_ZN8SPIClass13interruptModeE:
	.zero	1
.global	_ZN8SPIClass11initializedE
	.section	.bss._ZN8SPIClass11initializedE,"aw",@nobits
	.type	_ZN8SPIClass11initializedE, @object
	.size	_ZN8SPIClass11initializedE, 1
_ZN8SPIClass11initializedE:
	.zero	1
.global	SPI
	.section	.bss.SPI,"aw",@nobits
	.type	SPI, @object
	.size	SPI, 1
SPI:
	.zero	1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_clear_bss
