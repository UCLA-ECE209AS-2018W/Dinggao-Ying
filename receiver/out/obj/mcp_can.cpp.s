	.file	"mcp_can.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN8SPIClass16beginTransactionE11SPISettings,"axG",@progbits,_ZN8SPIClass16beginTransactionE11SPISettings,comdat
	.weak	_ZN8SPIClass16beginTransactionE11SPISettings
	.type	_ZN8SPIClass16beginTransactionE11SPISettings, @function
_ZN8SPIClass16beginTransactionE11SPISettings:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,_ZN8SPIClass13interruptModeE
	tst r18
	breq .L2
	in r20,__SREG__
/* #APP */
 ;  181 "/home/yvonne/receiver/SPI.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,_ZN8SPIClass13interruptModeE
	cpi r18,lo8(1)
	brne .L3
	in r18,0x1d
	sts _ZN8SPIClass13interruptSaveE,r18
	in r19,0x1d
	lds r18,_ZN8SPIClass13interruptMaskE
	com r18
	and r18,r19
	out 0x1d,r18
	out __SREG__,r20
	rjmp .L2
.L3:
	sts _ZN8SPIClass13interruptSaveE,r20
.L2:
	out 0x2c,r24
	out 0x2d,r25
	ret
	.size	_ZN8SPIClass16beginTransactionE11SPISettings, .-_ZN8SPIClass16beginTransactionE11SPISettings
	.section	.text._ZN8SPIClass8transferEh,"axG",@progbits,_ZN8SPIClass8transferEh,comdat
	.weak	_ZN8SPIClass8transferEh
	.type	_ZN8SPIClass8transferEh, @function
_ZN8SPIClass8transferEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x2e,r24
/* #APP */
 ;  216 "/home/yvonne/receiver/SPI.h" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L9:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L9
	in r24,0x2e
	ret
	.size	_ZN8SPIClass8transferEh, .-_ZN8SPIClass8transferEh
	.section	.text._ZN8SPIClass14endTransactionEv,"axG",@progbits,_ZN8SPIClass14endTransactionEv,comdat
	.weak	_ZN8SPIClass14endTransactionEv
	.type	_ZN8SPIClass14endTransactionEv, @function
_ZN8SPIClass14endTransactionEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_ZN8SPIClass13interruptModeE
	tst r24
	breq .L11
	in r25,__SREG__
/* #APP */
 ;  273 "/home/yvonne/receiver/SPI.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,_ZN8SPIClass13interruptModeE
	lds r24,_ZN8SPIClass13interruptSaveE
	cpi r18,lo8(1)
	brne .L13
	out 0x1d,r24
	out __SREG__,r25
	ret
.L13:
	out __SREG__,r24
.L11:
	ret
	.size	_ZN8SPIClass14endTransactionEv, .-_ZN8SPIClass14endTransactionEv
	.section	.text._Z9txCtrlRegh,"ax",@progbits
.global	_Z9txCtrlRegh
	.type	_Z9txCtrlRegh, @function
_Z9txCtrlRegh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(3)
	brsh .L19
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(CSWTCH.48))
	sbci r31,hi8(-(CSWTCH.48))
	ld r24,Z
	ret
.L19:
	ldi r24,lo8(80)
	ret
	.size	_Z9txCtrlRegh, .-_Z9txCtrlRegh
	.section	.text._Z16statusToTxBufferh,"ax",@progbits
.global	_Z16statusToTxBufferh
	.type	_Z16statusToTxBufferh, @function
_Z16statusToTxBufferh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	subi r24,lo8(-(-4))
	cpi r24,lo8(13)
	brsh .L22
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(CSWTCH.50))
	sbci r31,hi8(-(CSWTCH.50))
	ld r24,Z
	ret
.L22:
	ldi r24,lo8(-1)
	ret
	.size	_Z16statusToTxBufferh, .-_Z16statusToTxBufferh
	.section	.text._Z14statusToTxSidhh,"ax",@progbits
.global	_Z14statusToTxSidhh
	.type	_Z14statusToTxSidhh, @function
_Z14statusToTxSidhh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	subi r24,lo8(-(-4))
	cpi r24,lo8(13)
	brsh .L25
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(CSWTCH.52))
	sbci r31,hi8(-(CSWTCH.52))
	ld r24,Z
	ret
.L25:
	ldi r24,0
	ret
	.size	_Z14statusToTxSidhh, .-_Z14statusToTxSidhh
	.section	.text._Z11txSidhToRTSh,"ax",@progbits
.global	_Z11txSidhToRTSh
	.type	_Z11txSidhToRTSh, @function
_Z11txSidhToRTSh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(65)
	breq .L28
	cpi r24,lo8(81)
	breq .L29
	cpi r24,lo8(49)
	breq .L33
	ldi r24,0
	ret
.L28:
	ldi r24,lo8(-126)
	ret
.L29:
	ldi r24,lo8(-124)
	ret
.L33:
	ldi r24,lo8(-127)
	ret
	.size	_Z11txSidhToRTSh, .-_Z11txSidhToRTSh
	.section	.text._Z14txSidhToTxLoadh,"ax",@progbits
.global	_Z14txSidhToTxLoadh
	.type	_Z14txSidhToTxLoadh, @function
_Z14txSidhToTxLoadh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(65)
	breq .L36
	cpi r24,lo8(81)
	breq .L37
	cpi r24,lo8(49)
	breq .L41
	ldi r24,0
	ret
.L36:
	ldi r24,lo8(66)
	ret
.L37:
	ldi r24,lo8(68)
	ret
.L41:
	ldi r24,lo8(64)
	ret
	.size	_Z14txSidhToTxLoadh, .-_Z14txSidhToTxLoadh
	.section	.text._Z8txIfFlagh,"ax",@progbits
.global	_Z8txIfFlagh
	.type	_Z8txIfFlagh, @function
_Z8txIfFlagh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(3)
	brsh .L44
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(CSWTCH.56))
	sbci r31,hi8(-(CSWTCH.56))
	ld r24,Z
	ret
.L44:
	ldi r24,0
	ret
	.size	_Z8txIfFlagh, .-_Z8txIfFlagh
	.section	.text._Z19txStatusPendingFlagh,"ax",@progbits
.global	_Z19txStatusPendingFlagh
	.type	_Z19txStatusPendingFlagh, @function
_Z19txStatusPendingFlagh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(3)
	brsh .L47
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(CSWTCH.58))
	sbci r31,hi8(-(CSWTCH.58))
	ld r24,Z
	ret
.L47:
	ldi r24,lo8(-1)
	ret
	.size	_Z19txStatusPendingFlagh, .-_Z19txStatusPendingFlagh
	.section	.text._ZN7MCP_CAN13mcp2515_resetEv,"ax",@progbits
.global	_ZN7MCP_CAN13mcp2515_resetEv
	.type	_ZN7MCP_CAN13mcp2515_resetEv, @function
_ZN7MCP_CAN13mcp2515_resetEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(-64)
	call _ZN8SPIClass8transferEh
	ldi r22,lo8(1)
	ldd r24,Y+6
	call digitalWrite
	call _ZN8SPIClass14endTransactionEv
	ldi r22,lo8(10)
	ldi r23,0
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	jmp delay
	.size	_ZN7MCP_CAN13mcp2515_resetEv, .-_ZN7MCP_CAN13mcp2515_resetEv
	.section	.text._ZN7MCP_CAN20mcp2515_readRegisterEh,"ax",@progbits
.global	_ZN7MCP_CAN20mcp2515_readRegisterEh
	.type	_ZN7MCP_CAN20mcp2515_readRegisterEh, @function
_ZN7MCP_CAN20mcp2515_readRegisterEh:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r22
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(3)
	call _ZN8SPIClass8transferEh
	mov r24,r17
	call _ZN8SPIClass8transferEh
	ldi r24,0
	call _ZN8SPIClass8transferEh
	mov r17,r24
	ldi r22,lo8(1)
	ldd r24,Y+6
	call digitalWrite
	call _ZN8SPIClass14endTransactionEv
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	_ZN7MCP_CAN20mcp2515_readRegisterEh, .-_ZN7MCP_CAN20mcp2515_readRegisterEh
	.section	.text._ZN7MCP_CAN21mcp2515_readRegisterSEhPhh,"ax",@progbits
.global	_ZN7MCP_CAN21mcp2515_readRegisterSEhPhh
	.type	_ZN7MCP_CAN21mcp2515_readRegisterSEhPhh, @function
_ZN7MCP_CAN21mcp2515_readRegisterSEhPhh:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	mov r17,r22
	mov r12,r18
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	std Y+1,r20
	std Y+2,r21
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
	ldi r24,lo8(3)
	call _ZN8SPIClass8transferEh
	mov r24,r17
	call _ZN8SPIClass8transferEh
	ldd r20,Y+1
	mov r16,r20
	ldd r21,Y+2
	mov r17,r21
	mov r13,__zero_reg__
.L51:
	cp r13,r12
	breq .L52
	ldi r31,lo8(8)
	cp r13,r31
	breq .L52
	ldi r24,0
	call _ZN8SPIClass8transferEh
	movw r30,r16
	st Z+,r24
	movw r16,r30
	inc r13
	rjmp .L51
.L52:
	ldi r22,lo8(1)
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
/* epilogue start */
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
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN7MCP_CAN21mcp2515_readRegisterSEhPhh, .-_ZN7MCP_CAN21mcp2515_readRegisterSEhPhh
	.section	.text._ZN7MCP_CAN19mcp2515_setRegisterEhh,"ax",@progbits
.global	_ZN7MCP_CAN19mcp2515_setRegisterEhh
	.type	_ZN7MCP_CAN19mcp2515_setRegisterEhh, @function
_ZN7MCP_CAN19mcp2515_setRegisterEhh:
	push r14
	push r15
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	mov r17,r22
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	std Y+1,r20
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
	ldi r24,lo8(2)
	call _ZN8SPIClass8transferEh
	mov r24,r17
	call _ZN8SPIClass8transferEh
	ldd r20,Y+1
	mov r24,r20
	call _ZN8SPIClass8transferEh
	ldi r22,lo8(1)
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN7MCP_CAN19mcp2515_setRegisterEhh, .-_ZN7MCP_CAN19mcp2515_setRegisterEhh
	.section	.text._ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh,"ax",@progbits
.global	_ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh
	.type	_ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh, @function
_ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	mov r14,r22
	mov r15,r18
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	std Y+1,r20
	std Y+2,r21
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	movw r30,r16
	ldd r24,Z+6
	call digitalWrite
	ldi r24,lo8(2)
	call _ZN8SPIClass8transferEh
	mov r24,r14
	call _ZN8SPIClass8transferEh
	ldd r20,Y+1
	mov r14,r20
	mov r12,r20
	ldd r21,Y+2
	mov r13,r21
.L56:
	mov r24,r12
	sub r24,r14
	cp r24,r15
	brsh .L58
	movw r30,r12
	ld r24,Z+
	movw r12,r30
	call _ZN8SPIClass8transferEh
	rjmp .L56
.L58:
	ldi r22,lo8(1)
	movw r30,r16
	ldd r24,Z+6
	call digitalWrite
/* epilogue start */
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
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh, .-_ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh
	.section	.text._ZN7MCP_CAN22mcp2515_modifyRegisterEhhh,"ax",@progbits
.global	_ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	.type	_ZN7MCP_CAN22mcp2515_modifyRegisterEhhh, @function
_ZN7MCP_CAN22mcp2515_modifyRegisterEhhh:
	push r14
	push r15
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r24
	mov r17,r22
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	std Y+2,r18
	std Y+1,r20
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
	ldi r24,lo8(5)
	call _ZN8SPIClass8transferEh
	mov r24,r17
	call _ZN8SPIClass8transferEh
	ldd r20,Y+1
	mov r24,r20
	call _ZN8SPIClass8transferEh
	ldd r18,Y+2
	mov r24,r18
	call _ZN8SPIClass8transferEh
	ldi r22,lo8(1)
	movw r30,r14
	ldd r24,Z+6
	call digitalWrite
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN7MCP_CAN22mcp2515_modifyRegisterEhhh, .-_ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	.section	.text._ZN7MCP_CAN18mcp2515_readStatusEv,"ax",@progbits
.global	_ZN7MCP_CAN18mcp2515_readStatusEv
	.type	_ZN7MCP_CAN18mcp2515_readStatusEv, @function
_ZN7MCP_CAN18mcp2515_readStatusEv:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(-96)
	call _ZN8SPIClass8transferEh
	ldi r24,0
	call _ZN8SPIClass8transferEh
	mov r17,r24
	ldi r22,lo8(1)
	ldd r24,Y+6
	call digitalWrite
	call _ZN8SPIClass14endTransactionEv
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	_ZN7MCP_CAN18mcp2515_readStatusEv, .-_ZN7MCP_CAN18mcp2515_readStatusEv
	.section	.text._ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh,"ax",@progbits
.global	_ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	.type	_ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh, @function
_ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r16,r24
	mov r28,r22
	mov r18,r22
	ldi r20,lo8(-32)
	ldi r22,lo8(15)
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	ldi r22,lo8(15)
	movw r24,r16
	call _ZN7MCP_CAN20mcp2515_readRegisterEh
	mov r25,r24
	andi r25,lo8(-32)
	ldi r24,lo8(1)
	cpse r25,r28
	rjmp .L62
	ldi r24,0
.L62:
/* epilogue start */
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh, .-_ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	.section	.text._ZN7MCP_CAN18mcp2515_configRateEhh,"ax",@progbits
.global	_ZN7MCP_CAN18mcp2515_configRateEhh
	.type	_ZN7MCP_CAN18mcp2515_configRateEhh, @function
_ZN7MCP_CAN18mcp2515_configRateEhh:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	cpi r20,lo8(1)
	breq .L65
	cpi r20,lo8(2)
	brne .+2
	rjmp .L66
	rjmp .L102
.L65:
	mov r20,r22
	ldi r21,0
	movw r30,r20
	sbiw r30,1
	cpi r30,18
	cpc r31,__zero_reg__
	brlo .+2
	rjmp .L102
	subi r30,lo8(-(gs(.L68)))
	sbci r31,hi8(-(gs(.L68)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table._ZN7MCP_CAN18mcp2515_configRateEhh,"a",@progbits
	.p2align	1
.L68:
	.word gs(.L67)
	.word gs(.L69)
	.word gs(.L101)
	.word gs(.L71)
	.word gs(.L72)
	.word gs(.L73)
	.word gs(.L74)
	.word gs(.L75)
	.word gs(.L76)
	.word gs(.L77)
	.word gs(.L78)
	.word gs(.L79)
	.word gs(.L80)
	.word gs(.L81)
	.word gs(.L82)
	.word gs(.L83)
	.word gs(.L84)
	.word gs(.L85)
	.section	.text._ZN7MCP_CAN18mcp2515_configRateEhh
.L69:
	ldi r28,lo8(-121)
	ldi r29,lo8(-1)
	rjmp .L111
.L71:
	ldi r28,lo8(7)
	ldi r29,lo8(-70)
	rjmp .L106
.L72:
	ldi r28,lo8(-123)
	ldi r29,lo8(-15)
	rjmp .L106
.L73:
	ldi r28,lo8(7)
	ldi r29,lo8(-66)
	ldi r20,lo8(9)
	rjmp .L70
.L74:
	ldi r28,lo8(-121)
	ldi r29,lo8(-1)
	rjmp .L107
.L75:
	ldi r28,lo8(-121)
	ldi r29,lo8(-6)
	rjmp .L107
.L76:
	ldi r28,lo8(-121)
	ldi r29,lo8(-1)
	rjmp .L109
.L77:
	ldi r28,lo8(7)
	ldi r29,lo8(-66)
	rjmp .L109
.L78:
	ldi r28,lo8(7)
	ldi r29,lo8(-83)
	rjmp .L109
.L79:
	ldi r28,lo8(-121)
	ldi r29,lo8(-6)
	rjmp .L109
.L80:
	ldi r28,lo8(-122)
	ldi r29,lo8(-16)
	rjmp .L109
.L81:
	ldi r28,lo8(-121)
	ldi r29,lo8(-6)
	rjmp .L110
.L82:
	ldi r28,lo8(-123)
	ldi r29,lo8(-15)
	ldi r20,lo8(65)
	rjmp .L70
.L83:
	ldi r28,lo8(-122)
	ldi r29,lo8(-16)
	rjmp .L108
.L84:
	ldi r28,lo8(4)
	ldi r29,lo8(-96)
	rjmp .L108
.L85:
	ldi r28,lo8(-126)
	ldi r29,lo8(-48)
	rjmp .L108
.L66:
	mov r20,r22
	ldi r21,0
	movw r30,r20
	sbiw r30,1
	cpi r30,18
	cpc r31,__zero_reg__
	brsh .L102
	subi r30,lo8(-(gs(.L86)))
	sbci r31,hi8(-(gs(.L86)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table._ZN7MCP_CAN18mcp2515_configRateEhh
	.p2align	1
.L86:
	.word gs(.L103)
	.word gs(.L87)
	.word gs(.L88)
	.word gs(.L102)
	.word gs(.L89)
	.word gs(.L102)
	.word gs(.L90)
	.word gs(.L91)
	.word gs(.L92)
	.word gs(.L102)
	.word gs(.L102)
	.word gs(.L93)
	.word gs(.L94)
	.word gs(.L95)
	.word gs(.L96)
	.word gs(.L97)
	.word gs(.L102)
	.word gs(.L98)
	.section	.text._ZN7MCP_CAN18mcp2515_configRateEhh
.L87:
	ldi r28,lo8(7)
	ldi r29,lo8(-65)
	rjmp .L106
.L88:
	ldi r28,lo8(7)
	ldi r29,lo8(-65)
	rjmp .L107
.L89:
	ldi r28,lo8(4)
	ldi r29,lo8(-92)
.L107:
	ldi r20,lo8(7)
	rjmp .L70
.L90:
	ldi r28,lo8(7)
	ldi r29,lo8(-65)
	rjmp .L109
.L91:
	ldi r28,lo8(6)
	ldi r29,lo8(-76)
.L109:
	ldi r20,lo8(3)
	rjmp .L70
.L92:
	ldi r28,lo8(7)
	ldi r29,lo8(-65)
	rjmp .L110
.L93:
	ldi r28,lo8(6)
	ldi r29,lo8(-76)
.L110:
	ldi r20,lo8(1)
	rjmp .L70
.L94:
	ldi r28,lo8(5)
	ldi r29,lo8(-79)
	rjmp .L110
.L95:
	ldi r28,lo8(6)
	ldi r29,lo8(-76)
.L108:
	ldi r20,0
	rjmp .L70
.L96:
	ldi r28,lo8(5)
	ldi r29,lo8(-79)
	rjmp .L108
.L97:
	ldi r28,lo8(2)
	ldi r29,lo8(-112)
	rjmp .L108
.L98:
	ldi r28,0
	ldi r29,lo8(-128)
	rjmp .L108
.L102:
	ldi r24,lo8(1)
	rjmp .L105
.L67:
	ldi r28,lo8(-121)
	ldi r29,lo8(-1)
	ldi r20,lo8(63)
	rjmp .L70
.L101:
	ldi r28,lo8(-121)
	ldi r29,lo8(-1)
.L106:
	ldi r20,lo8(15)
	rjmp .L70
.L103:
	ldi r28,lo8(7)
	ldi r29,lo8(-65)
.L111:
	ldi r20,lo8(31)
.L70:
	movw r16,r24
	ldi r22,lo8(42)
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	mov r20,r29
	ldi r22,lo8(41)
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	mov r20,r28
	ldi r22,lo8(40)
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	ldi r24,0
.L105:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN7MCP_CAN18mcp2515_configRateEhh, .-_ZN7MCP_CAN18mcp2515_configRateEhh
	.section	.text._ZN7MCP_CAN22mcp2515_initCANBuffersEv,"ax",@progbits
.global	_ZN7MCP_CAN22mcp2515_initCANBuffersEv
	.type	_ZN7MCP_CAN22mcp2515_initCANBuffersEv, @function
_ZN7MCP_CAN22mcp2515_initCANBuffersEv:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r16,r24
	ldi r28,lo8(48)
.L113:
	ldi r20,0
	mov r22,r28
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	ldi r22,lo8(16)
	add r22,r28
	ldi r20,0
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	ldi r22,lo8(32)
	add r22,r28
	ldi r20,0
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	subi r28,lo8(-(1))
	cpi r28,lo8(62)
	brne .L113
	ldi r20,0
	ldi r22,lo8(96)
	movw r24,r16
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	ldi r20,0
	ldi r22,lo8(112)
	movw r24,r16
/* epilogue start */
	pop r28
	pop r17
	pop r16
	jmp _ZN7MCP_CAN19mcp2515_setRegisterEhh
	.size	_ZN7MCP_CAN22mcp2515_initCANBuffersEv, .-_ZN7MCP_CAN22mcp2515_initCANBuffersEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Enter setting mode fail\r\n"
.LC1:
	.string	"Enter setting mode success \r\n"
.LC2:
	.string	"set rate fall!!\r\n"
.LC3:
	.string	"set rate success!!\r\n"
.LC4:
	.string	"Enter Normal Mode Fail!!\r\n"
.LC5:
	.string	"Enter Normal Mode Success!!\r\n"
	.section	.text._ZN7MCP_CAN12mcp2515_initEhh,"ax",@progbits
.global	_ZN7MCP_CAN12mcp2515_initEhh
	.type	_ZN7MCP_CAN12mcp2515_initEhh, @function
_ZN7MCP_CAN12mcp2515_initEhh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r24
	mov r16,r22
	std Y+1,r20
	call _ZN7MCP_CAN13mcp2515_resetEv
	ldi r22,lo8(-128)
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	ldd r20,Y+1
	tst r24
	breq .L116
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	rjmp .L120
.L116:
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	std Y+1,r20
	call _ZN5Print5printEPKc
	ldd r20,Y+1
	mov r22,r16
	movw r24,r14
	call _ZN7MCP_CAN18mcp2515_configRateEhh
	tst r24
	breq .L118
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	rjmp .L120
.L118:
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	movw r24,r14
	call _ZN7MCP_CAN22mcp2515_initCANBuffersEv
	ldi r20,lo8(3)
	ldi r22,lo8(43)
	movw r24,r14
	call _ZN7MCP_CAN19mcp2515_setRegisterEhh
	ldi r18,lo8(4)
	ldi r20,lo8(100)
	ldi r22,lo8(96)
	movw r24,r14
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	ldi r18,0
	ldi r20,lo8(96)
	ldi r22,lo8(112)
	movw r24,r14
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	ldi r22,0
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	tst r24
	breq .L119
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	rjmp .L120
.L119:
	ldi r22,lo8(.LC5)
	ldi r23,hi8(.LC5)
.L120:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	mov r24,r17
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN7MCP_CAN12mcp2515_initEhh, .-_ZN7MCP_CAN12mcp2515_initEhh
	.section	.text._Z17mcp2515_id_to_bufhmPh,"ax",@progbits
.global	_Z17mcp2515_id_to_bufhmPh
	.type	_Z17mcp2515_id_to_bufhmPh, @function
_Z17mcp2515_id_to_bufhmPh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r18
	cpi r24,lo8(1)
	brne .L122
	std Z+3,r20
	std Z+2,r21
	movw r20,r22
	clr r22
	clr r23
	mov r25,r20
	andi r25,lo8(28)
	mov r24,r20
	andi r24,lo8(3)
	ldi r18,lo8(8)
	mul r25,r18
	add r24,r0
	clr __zero_reg__
	ori r24,lo8(8)
	std Z+1,r24
	ldi r22,5
	1:
	lsr r21
	ror r20
	dec r22
	brne 1b
	st Z,r20
	ret
.L122:
	movw r24,r20
	ldi r18,3
	1:
	lsr r25
	ror r24
	dec r18
	brne 1b
	st Z,r24
	swap r20
	lsl r20
	andi r20,lo8(-32)
	std Z+1,r20
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ret
	.size	_Z17mcp2515_id_to_bufhmPh, .-_Z17mcp2515_id_to_bufhmPh
	.section	.text._ZN7MCP_CAN16mcp2515_write_idEhhm,"ax",@progbits
.global	_ZN7MCP_CAN16mcp2515_write_idEhhm
	.type	_ZN7MCP_CAN16mcp2515_write_idEhhm, @function
_ZN7MCP_CAN16mcp2515_write_idEhhm:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r14,r24
	mov r13,r22
	mov r24,r20
	movw r22,r18
	movw r20,r16
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	call _Z17mcp2515_id_to_bufhmPh
	ldi r18,lo8(4)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	mov r22,r13
	movw r24,r14
	call _ZN7MCP_CAN20mcp2515_setRegisterSEhPKhh
/* epilogue start */
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
	ret
	.size	_ZN7MCP_CAN16mcp2515_write_idEhhm, .-_ZN7MCP_CAN16mcp2515_write_idEhhm
	.section	.text._ZN7MCP_CAN15mcp2515_read_idEhPhPm,"ax",@progbits
.global	_ZN7MCP_CAN15mcp2515_read_idEhPhPm
	.type	_ZN7MCP_CAN15mcp2515_read_idEhPhPm, @function
_ZN7MCP_CAN15mcp2515_read_idEhPhPm:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r20
	movw r16,r18
	movw r30,r20
	st Z,__zero_reg__
	movw r30,r18
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	ldi r18,lo8(4)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call _ZN7MCP_CAN21mcp2515_readRegisterSEhPhh
	ldd r18,Y+2
	ldd r19,Y+1
	mov r24,r18
	ldi r25,0
	ldi r22,5
	1:
	asr r25
	ror r24
	dec r22
	brne 1b
	ldi r31,lo8(8)
	mul r19,r31
	add r24,r0
	adc r25,r1
	clr __zero_reg__
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	movw r30,r16
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	sbrs r18,3
	rjmp .L125
	ldi r19,2
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r19
	brne 1b
	andi r18,lo8(3)
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	ldd r18,Y+3
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	ldd r18,Y+4
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldi r24,lo8(1)
	movw r30,r14
	st Z,r24
.L125:
/* epilogue start */
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
	ret
	.size	_ZN7MCP_CAN15mcp2515_read_idEhPhPm, .-_ZN7MCP_CAN15mcp2515_read_idEhPhPm
	.section	.text._ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_,"ax",@progbits
.global	_ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_
	.type	_ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_, @function
_ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_:
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r8,r24
	mov r5,r22
	movw r10,r20
	movw r6,r18
	ldi r22,0
	movw r30,r24
	ldd r24,Z+6
	call digitalWrite
	mov r24,r5
	call _ZN8SPIClass8transferEh
	movw r24,r28
	adiw r24,1
	movw r4,r24
	ldi r30,lo8(4)
	mov r3,r30
	add r3,r24
.L131:
	ldi r24,0
	call _ZN8SPIClass8transferEh
	movw r30,r4
	st Z+,r24
	movw r4,r30
	cpse r3,r30
	rjmp .L131
	ldd r18,Y+4
	bst r18,3
	clr r24
	bld r24,0
	movw r30,r16
	st Z,r24
	ldd r19,Y+2
	ldd r20,Y+1
	mov r24,r19
	ldi r25,0
	ldi r23,5
	1:
	asr r25
	ror r24
	dec r23
	brne 1b
	ldi r31,lo8(8)
	mul r20,r31
	add r24,r0
	adc r25,r1
	clr __zero_reg__
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	movw r30,r10
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	sbrs r19,3
	rjmp .L132
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	ldi r20,2
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r20
	brne 1b
	andi r19,lo8(3)
	add r24,r19
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	ldd r19,Y+3
	add r24,r19
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r18
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldi r24,lo8(1)
	movw r30,r6
	st Z,r24
.L132:
	ldi r24,0
	call _ZN8SPIClass8transferEh
	andi r24,lo8(15)
	movw r30,r14
	st Z,r24
	movw r10,r12
	ldi r17,0
.L133:
	movw r30,r14
	ld r24,Z
	cp r17,r24
	brsh .L134
	cpi r17,lo8(8)
	breq .L134
	ldi r24,0
	call _ZN8SPIClass8transferEh
	movw r30,r10
	st Z+,r24
	movw r10,r30
	subi r17,lo8(-(1))
	rjmp .L133
.L134:
	ldi r22,lo8(1)
	movw r30,r8
	ldd r24,Z+6
/* epilogue start */
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
	jmp digitalWrite
	.size	_ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_, .-_ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_
	.section	.text._ZN7MCP_CAN22mcp2515_start_transmitEh,"ax",@progbits
.global	_ZN7MCP_CAN22mcp2515_start_transmitEh
	.type	_ZN7MCP_CAN22mcp2515_start_transmitEh, @function
_ZN7MCP_CAN22mcp2515_start_transmitEh:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r22
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	mov r24,r17
	call _Z11txSidhToRTSh
	call _ZN8SPIClass8transferEh
	ldi r22,lo8(1)
	ldd r24,Y+6
	call digitalWrite
/* epilogue start */
	pop r29
	pop r28
	pop r17
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN7MCP_CAN22mcp2515_start_transmitEh, .-_ZN7MCP_CAN22mcp2515_start_transmitEh
	.section	.text._ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh,"ax",@progbits
.global	_ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh
	.type	_ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh, @function
_ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 20 */
.L__stack_usage = 20
	movw r8,r24
	mov r13,r22
	movw r22,r20
	movw r20,r18
	mov r24,r13
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	call _Z14txSidhToTxLoadh
	mov r17,r24
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	cpse r14,__zero_reg__
	rjmp .L147
	mov r15,__zero_reg__
	rjmp .L142
.L147:
	ldi r25,lo8(64)
	mov r15,r25
.L142:
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	mov r24,r16
	call _Z17mcp2515_id_to_bufhmPh
	ldi r24,lo8(80)
	ldi r25,lo8(1)
	call _ZN8SPIClass16beginTransactionE11SPISettings
	ldi r22,0
	movw r30,r8
	ldd r24,Z+6
	call digitalWrite
	mov r24,r17
	call _ZN8SPIClass8transferEh
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ldi r24,lo8(4)
	mov r14,r24
	add r14,r16
.L143:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	call _ZN8SPIClass8transferEh
	cpse r14,r16
	rjmp .L143
	mov r24,r15
	or r24,r12
	call _ZN8SPIClass8transferEh
	movw r14,r10
	ldi r17,0
.L144:
	cp r17,r12
	breq .L145
	cpi r17,lo8(8)
	breq .L145
	movw r30,r14
	ld r24,Z+
	movw r14,r30
	call _ZN8SPIClass8transferEh
	subi r17,lo8(-(1))
	rjmp .L144
.L145:
	ldi r22,lo8(1)
	movw r30,r8
	ldd r24,Z+6
	call digitalWrite
	call _ZN8SPIClass14endTransactionEv
	mov r22,r13
	movw r24,r8
	call _ZN7MCP_CAN22mcp2515_start_transmitEh
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	ret
	.size	_ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh, .-_ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh
	.section	.text._ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh,"ax",@progbits
.global	_ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh
	.type	_ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh, @function
_ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh:
	push r14
	push r15
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r30,r22
	st Z,__zero_reg__
	cpi r20,lo8(3)
	brsh .L150
	mov r28,r20
	movw r14,r22
	movw r16,r24
	call _ZN7MCP_CAN18mcp2515_readStatusEv
	mov r20,r28
	ldi r21,0
	movw r30,r20
	subi r30,lo8(-(CSWTCH.58))
	sbci r31,hi8(-(CSWTCH.58))
	ld r28,Z
	and r28,r24
	brne .L150
	movw r30,r20
	subi r30,lo8(-(CSWTCH.48))
	sbci r31,hi8(-(CSWTCH.48))
	ld r24,Z
	subi r24,lo8(-(1))
	movw r30,r14
	st Z,r24
	movw r30,r20
	subi r30,lo8(-(CSWTCH.56))
	sbci r31,hi8(-(CSWTCH.56))
	ldi r18,0
	ld r20,Z
	ldi r22,lo8(44)
	movw r24,r16
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	rjmp .L152
.L150:
	ldi r28,lo8(2)
.L152:
	mov r24,r28
/* epilogue start */
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh, .-_ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh
	.section	.text._ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh,"ax",@progbits
.global	_ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh
	.type	_ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh, @function
_ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh:
	push r14
	push r15
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r16,r24
	movw r14,r22
	call _ZN7MCP_CAN18mcp2515_readStatusEv
	andi r24,lo8(84)
	movw r30,r14
	st Z,__zero_reg__
	cpi r24,lo8(84)
	breq .L160
	movw r30,r16
	ldd r25,Z+9
	ldi r18,lo8(3)
	ldi r19,0
	sub r18,r25
	sbc r19,__zero_reg__
	ldi r22,lo8(CSWTCH.58)
	ldi r23,hi8(CSWTCH.58)
	movw r30,r22
.L155:
	mov r25,r30
	sub r25,r22
	mov r20,r25
	ldi r21,0
	cp r20,r18
	cpc r21,r19
	brge .L160
	cpi r25,lo8(3)
	brsh .L161
	ld r28,Z
	rjmp .L156
.L161:
	ldi r28,lo8(-1)
.L156:
	and r28,r24
	adiw r30,1
	cpse r28,__zero_reg__
	rjmp .L155
	cpi r25,lo8(3)
	brsh .L162
	movw r30,r20
	subi r30,lo8(-(CSWTCH.48))
	sbci r31,hi8(-(CSWTCH.48))
	ld r18,Z
	rjmp .L157
.L162:
	ldi r18,lo8(80)
.L157:
	subi r18,lo8(-(1))
	movw r30,r14
	st Z,r18
	cpi r25,lo8(3)
	brsh .L163
	movw r30,r20
	subi r30,lo8(-(CSWTCH.56))
	sbci r31,hi8(-(CSWTCH.56))
	ld r20,Z
	rjmp .L158
.L163:
	ldi r20,0
.L158:
	ldi r18,0
	ldi r22,lo8(44)
	movw r24,r16
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	rjmp .L154
.L160:
	ldi r28,lo8(2)
.L154:
	mov r24,r28
/* epilogue start */
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh, .-_ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh
	.section	.text._ZN7MCP_CAN7init_CSEh,"ax",@progbits
.global	_ZN7MCP_CAN7init_CSEh
	.type	_ZN7MCP_CAN7init_CSEh, @function
_ZN7MCP_CAN7init_CSEh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	tst r22
	breq .L165
	mov r24,r22
	std Y+6,r22
	ldi r22,lo8(1)
	call pinMode
	ldi r22,lo8(1)
	ldd r24,Y+6
/* epilogue start */
	pop r29
	pop r28
	jmp digitalWrite
.L165:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN7MCP_CAN7init_CSEh, .-_ZN7MCP_CAN7init_CSEh
	.section	.text._ZN7MCP_CANC2Eh,"ax",@progbits
.global	_ZN7MCP_CANC2Eh
	.type	_ZN7MCP_CANC2Eh, @function
_ZN7MCP_CANC2Eh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+9,__zero_reg__
	ldi r18,lo8(SPI)
	ldi r19,hi8(SPI)
	std Z+8,r19
	std Z+7,r18
	jmp _ZN7MCP_CAN7init_CSEh
	.size	_ZN7MCP_CANC2Eh, .-_ZN7MCP_CANC2Eh
.global	_ZN7MCP_CANC1Eh
	.set	_ZN7MCP_CANC1Eh,_ZN7MCP_CANC2Eh
	.section	.text._ZN7MCP_CAN5beginEhh,"ax",@progbits
.global	_ZN7MCP_CAN5beginEhh
	.type	_ZN7MCP_CAN5beginEhh, @function
_ZN7MCP_CAN5beginEhh:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r20
	std Y+3,r22
	std Y+1,r24
	std Y+2,r25
	call _ZN8SPIClass5beginEv
	ldd r20,Y+4
	ldd r22,Y+3
	ldd r24,Y+1
	ldd r25,Y+2
	call _ZN7MCP_CAN12mcp2515_initEhh
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L169
	ldi r25,0
.L169:
	mov r24,r25
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	_ZN7MCP_CAN5beginEhh, .-_ZN7MCP_CAN5beginEhh
	.section	.text._ZN7MCP_CAN17enableTxInterruptEb,"ax",@progbits
.global	_ZN7MCP_CAN17enableTxInterruptEb
	.type	_ZN7MCP_CAN17enableTxInterruptEb, @function
_ZN7MCP_CAN17enableTxInterruptEb:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r22
	ldi r22,lo8(43)
	call _ZN7MCP_CAN20mcp2515_readRegisterEh
	mov r20,r24
	tst r17
	breq .L171
	ori r20,lo8(28)
	rjmp .L172
.L171:
	andi r20,lo8(-29)
.L172:
	ldi r22,lo8(43)
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	jmp _ZN7MCP_CAN19mcp2515_setRegisterEhh
	.size	_ZN7MCP_CAN17enableTxInterruptEb, .-_ZN7MCP_CAN17enableTxInterruptEb
	.section	.rodata.str1.1
.LC6:
	.string	"Begin to set Mask!!\r\n"
.LC7:
	.string	"Enter setting mode fall\r\n"
.LC8:
	.string	"Enter normal mode fall\r\n"
.LC9:
	.string	"set Mask success!!\r\n"
	.section	.text._ZN7MCP_CAN9init_MaskEhhm,"ax",@progbits
.global	_ZN7MCP_CAN9init_MaskEhhm
	.type	_ZN7MCP_CAN9init_MaskEhhm, @function
_ZN7MCP_CAN9init_MaskEhhm:
	push r8
	push r9
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r14,r24
	mov r13,r22
	movw r8,r16
	movw r10,r18
	ldi r22,lo8(.LC6)
	ldi r23,hi8(.LC6)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	std Y+1,r20
	call _ZN5Print5printEPKc
	ldi r22,lo8(-128)
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	ldd r20,Y+1
	tst r24
	breq .L174
	ldi r22,lo8(.LC7)
	ldi r23,hi8(.LC7)
	rjmp .L180
.L174:
	cpse r13,__zero_reg__
	rjmp .L176
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(32)
	rjmp .L179
.L176:
	ldi r24,lo8(1)
	cpse r13,r24
	rjmp .L177
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(36)
.L179:
	movw r24,r14
	call _ZN7MCP_CAN16mcp2515_write_idEhhm
.L177:
	ldi r22,0
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	tst r24
	breq .L178
	ldi r22,lo8(.LC8)
	ldi r23,hi8(.LC8)
.L180:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	mov r24,r17
	rjmp .L175
.L178:
	ldi r22,lo8(.LC9)
	ldi r23,hi8(.LC9)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r24,0
.L175:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	_ZN7MCP_CAN9init_MaskEhhm, .-_ZN7MCP_CAN9init_MaskEhhm
	.section	.rodata.str1.1
.LC10:
	.string	"Begin to set Filter!!\r\n"
.LC11:
	.string	"Enter normal mode fall\r\nSet filter fail!!\r\n"
.LC12:
	.string	"set Filter success!!\r\n"
	.section	.text._ZN7MCP_CAN9init_FiltEhhm,"ax",@progbits
.global	_ZN7MCP_CAN9init_FiltEhhm
	.type	_ZN7MCP_CAN9init_FiltEhhm, @function
_ZN7MCP_CAN9init_FiltEhhm:
	push r8
	push r9
	push r10
	push r11
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r14,r24
	mov r21,r22
	movw r8,r16
	movw r10,r18
	ldi r22,lo8(.LC10)
	ldi r23,hi8(.LC10)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	std Y+2,r20
	std Y+1,r21
	call _ZN5Print5printEPKc
	ldi r22,lo8(-128)
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	ldd r20,Y+2
	ldd r21,Y+1
	tst r24
	breq .L182
	ldi r22,lo8(.LC7)
	ldi r23,hi8(.LC7)
	rjmp .L194
.L182:
	cpi r21,lo8(2)
	breq .L185
	brsh .L186
	tst r21
	breq .L187
	cpi r21,lo8(1)
	brne .L184
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(4)
	rjmp .L193
.L186:
	cpi r21,lo8(4)
	breq .L189
	brlo .L190
	cpi r21,lo8(5)
	brne .L184
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(24)
	rjmp .L193
.L187:
	movw r18,r10
	movw r16,r8
	ldi r22,0
	rjmp .L193
.L185:
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(8)
	rjmp .L193
.L190:
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(16)
	rjmp .L193
.L189:
	movw r18,r10
	movw r16,r8
	ldi r22,lo8(20)
.L193:
	movw r24,r14
	call _ZN7MCP_CAN16mcp2515_write_idEhhm
.L184:
	ldi r22,0
	movw r24,r14
	call _ZN7MCP_CAN23mcp2515_setCANCTRL_ModeEh
	mov r17,r24
	tst r24
	breq .L192
	ldi r22,lo8(.LC11)
	ldi r23,hi8(.LC11)
.L194:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	mov r24,r17
	rjmp .L183
.L192:
	ldi r22,lo8(.LC12)
	ldi r23,hi8(.LC12)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r24,0
.L183:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	_ZN7MCP_CAN9init_FiltEhhm, .-_ZN7MCP_CAN9init_FiltEhhm
	.section	.text._ZN7MCP_CAN10sendMsgBufEhmhhhPVKh,"ax",@progbits
.global	_ZN7MCP_CAN10sendMsgBufEhmhhhPVKh
	.type	_ZN7MCP_CAN10sendMsgBufEhmhhhPVKh, @function
_ZN7MCP_CAN10sendMsgBufEhmhhhPVKh:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r14
	push r16
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 15 */
.L__stack_usage = 15
	movw r8,r24
	movw r4,r18
	movw r6,r20
	mov r24,r22
	std Y+1,r22
	call _Z14statusToTxSidhh
	mov r17,r24
	ldd r22,Y+1
	tst r24
	breq .L197
	ldi r18,0
	mov r20,r22
	ldi r22,lo8(44)
	movw r24,r8
	call _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
	movw r20,r6
	movw r18,r4
	mov r22,r17
	movw r24,r8
	call _ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh
	ldi r24,0
	rjmp .L196
.L197:
	ldi r24,lo8(2)
.L196:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r14
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	_ZN7MCP_CAN10sendMsgBufEhmhhhPVKh, .-_ZN7MCP_CAN10sendMsgBufEhmhhhPVKh
	.section	.text._ZN7MCP_CAN13trySendMsgBufEmhhhPKhh,"ax",@progbits
.global	_ZN7MCP_CAN13trySendMsgBufEmhhhPKhh
	.type	_ZN7MCP_CAN13trySendMsgBufEmhhhPKhh, @function
_ZN7MCP_CAN13trySendMsgBufEmhhhPKhh:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r16
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r8,r24
	movw r4,r20
	movw r6,r22
	mov r17,r18
	mov r20,r10
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	cpi r20,lo8(3)
	brsh .L199
	call _ZN7MCP_CAN19mcp2515_isTXBufFreeEPhh
.L204:
	cpse r24,__zero_reg__
	rjmp .L200
	movw r10,r12
	mov r12,r14
	mov r14,r16
	mov r16,r17
	movw r20,r6
	movw r18,r4
	ldd r22,Y+1
	movw r24,r8
	call _ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh
	ldi r24,0
	rjmp .L201
.L200:
	ldi r24,lo8(2)
	rjmp .L201
.L199:
	call _ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh
	rjmp .L204
.L201:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
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
	ret
	.size	_ZN7MCP_CAN13trySendMsgBufEmhhhPKhh, .-_ZN7MCP_CAN13trySendMsgBufEmhhhPKhh
	.section	.text._ZN7MCP_CAN7sendMsgEmhhhPKhb,"ax",@progbits
.global	_ZN7MCP_CAN7sendMsgEmhhhPKhb
	.type	_ZN7MCP_CAN7sendMsgEmhhhPKhb, @function
_ZN7MCP_CAN7sendMsgEmhhhPKhb:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 19 */
.L__stack_usage = 19
	movw r8,r24
	movw r2,r20
	movw r4,r22
	mov r17,r18
	mov r15,r10
	movw r30,r24
	std Z+1,r20
	std Z+2,r21
	std Z+3,r22
	std Z+4,r23
	st Z,r18
	std Z+5,r16
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L206:
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r8
	call _ZN7MCP_CAN24mcp2515_getNextFreeTXBufEPh
	ldi r31,-1
	sub r6,r31
	sbc r7,r31
	cpi r24,lo8(2)
	brne .L207
	ldi r24,50
	cp r6,r24
	cpc r7,__zero_reg__
	breq .L213
	ldi r24,lo8(10)
	ldi r25,0
	call delayMicroseconds
	rjmp .L206
.L207:
	ldi r25,50
	cp r6,r25
	cpc r7,__zero_reg__
	breq .L213
	movw r10,r12
	mov r12,r14
	mov r14,r16
	mov r16,r17
	movw r20,r4
	movw r18,r2
	ldd r22,Y+1
	movw r24,r8
	call _ZN7MCP_CAN20mcp2515_write_canMsgEhmhhhPVKh
	tst r15
	breq .L216
	ldi r16,0
	ldi r17,0
.L210:
	subi r16,-1
	sbci r17,-1
	ldd r22,Y+1
	subi r22,lo8(-(-1))
	movw r24,r8
	call _ZN7MCP_CAN20mcp2515_readRegisterEh
	sbrs r24,3
	rjmp .L211
	cpi r16,50
	cpc r17,__zero_reg__
	breq .L215
	ldi r24,lo8(10)
	ldi r25,0
	call delayMicroseconds
	rjmp .L210
.L211:
	cpi r16,50
	cpc r17,__zero_reg__
	breq .L215
.L216:
	ldi r24,0
	rjmp .L209
.L213:
	ldi r24,lo8(6)
	rjmp .L209
.L215:
	ldi r24,lo8(7)
.L209:
/* epilogue start */
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
	pop r2
	ret
	.size	_ZN7MCP_CAN7sendMsgEmhhhPKhb, .-_ZN7MCP_CAN7sendMsgEmhhhPKhb
	.section	.text._ZN7MCP_CAN10sendMsgBufEmhhhPKhb,"ax",@progbits
.global	_ZN7MCP_CAN10sendMsgBufEmhhhPKhb
	.type	_ZN7MCP_CAN10sendMsgBufEmhhhPKhb, @function
_ZN7MCP_CAN10sendMsgBufEmhhhPKhb:
	push r10
	push r12
	push r13
	push r14
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	call _ZN7MCP_CAN7sendMsgEmhhhPKhb
/* epilogue start */
	pop r16
	pop r14
	pop r13
	pop r12
	pop r10
	ret
	.size	_ZN7MCP_CAN10sendMsgBufEmhhhPKhb, .-_ZN7MCP_CAN10sendMsgBufEmhhhPKhb
	.section	.text._ZN7MCP_CAN10sendMsgBufEmhhPKhb,"ax",@progbits
.global	_ZN7MCP_CAN10sendMsgBufEmhhPKhb
	.type	_ZN7MCP_CAN10sendMsgBufEmhhPKhb, @function
_ZN7MCP_CAN10sendMsgBufEmhhPKhb:
	push r10
	push r12
	push r13
	push r14
	push r15
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r10,r12
	movw r12,r14
	mov r14,r16
	ldi r16,0
	call _ZN7MCP_CAN7sendMsgEmhhhPKhb
/* epilogue start */
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r10
	ret
	.size	_ZN7MCP_CAN10sendMsgBufEmhhPKhb, .-_ZN7MCP_CAN10sendMsgBufEmhhPKhb
	.section	.text._ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_,"ax",@progbits
.global	_ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_
	.type	_ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_, @function
_ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_:
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r28,r24
	movw r10,r20
	movw r8,r18
	movw r6,r16
	sbrs r22,0
	rjmp .L220
	ldi r22,lo8(-112)
	rjmp .L225
.L220:
	sbrs r22,1
	rjmp .L222
	ldi r22,lo8(-108)
.L225:
	movw r24,r28
	call _ZN7MCP_CAN19mcp2515_read_canMsgEhPVmPVhS3_S3_S3_
	movw r30,r6
	ld r24,Z
	std Y+5,r24
	movw r30,r8
	ld r24,Z
	st Y,r24
	movw r30,r10
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldi r24,0
	rjmp .L224
.L222:
	movw r30,r14
	st Z,__zero_reg__
	ldi r24,lo8(4)
.L224:
/* epilogue start */
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
	ret
	.size	_ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_, .-_ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_
	.section	.text._ZN7MCP_CAN14readRxTxStatusEv,"ax",@progbits
.global	_ZN7MCP_CAN14readRxTxStatusEv
	.type	_ZN7MCP_CAN14readRxTxStatusEv, @function
_ZN7MCP_CAN14readRxTxStatusEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZN7MCP_CAN18mcp2515_readStatusEv
	mov r25,r24
	andi r25,lo8(-85)
	sbrc r24,3
	rjmp .L230
	ldi r19,0
	rjmp .L227
.L230:
	ldi r19,lo8(4)
.L227:
	sbrc r24,5
	rjmp .L231
	ldi r18,0
	rjmp .L228
.L231:
	ldi r18,lo8(8)
.L228:
	mov r24,r25
	rol r24
	clr r24
	rol r24
	swap r24
	andi r24,lo8(-16)
	andi r25,lo8(3)
	or r25,r19
	or r25,r18
	or r24,r25
	ret
	.size	_ZN7MCP_CAN14readRxTxStatusEv, .-_ZN7MCP_CAN14readRxTxStatusEv
	.section	.text._ZN7MCP_CAN10readMsgBufEPhS0_,"ax",@progbits
.global	_ZN7MCP_CAN10readMsgBufEPhS0_
	.type	_ZN7MCP_CAN10readMsgBufEPhS0_, @function
_ZN7MCP_CAN10readMsgBufEPhS0_:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	movw r14,r22
	movw r12,r20
	call _ZN7MCP_CAN14readRxTxStatusEv
	movw r16,r28
	subi r16,-5
	sbci r17,-1
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r18,r28
	mov r22,r24
	movw r24,r28
	call _ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN7MCP_CAN10readMsgBufEPhS0_, .-_ZN7MCP_CAN10readMsgBufEPhS0_
	.section	.text._ZN7MCP_CAN12readMsgBufIDEPmPhS1_,"ax",@progbits
.global	_ZN7MCP_CAN12readMsgBufIDEPmPhS1_
	.type	_ZN7MCP_CAN12readMsgBufIDEPmPhS1_, @function
_ZN7MCP_CAN12readMsgBufIDEPmPhS1_:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r28,r24
	movw r10,r22
	movw r14,r20
	movw r12,r18
	call _ZN7MCP_CAN14readRxTxStatusEv
	movw r16,r28
	subi r16,-5
	sbci r17,-1
	movw r18,r28
	movw r20,r10
	mov r22,r24
	movw r24,r28
	call _ZN7MCP_CAN12readMsgBufIDEhPVmPVhS3_S3_S3_
/* epilogue start */
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
	ret
	.size	_ZN7MCP_CAN12readMsgBufIDEPmPhS1_, .-_ZN7MCP_CAN12readMsgBufIDEPmPhS1_
	.section	.text._ZN7MCP_CAN18checkClearRxStatusEPh,"ax",@progbits
.global	_ZN7MCP_CAN18checkClearRxStatusEPh
	.type	_ZN7MCP_CAN18checkClearRxStatusEPh, @function
_ZN7MCP_CAN18checkClearRxStatusEPh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	ld r25,Z
	sbrs r25,0
	rjmp .L236
	andi r25,lo8(-2)
	st Z,r25
	ldi r24,lo8(1)
	ret
.L236:
	mov r24,r25
	andi r24,lo8(2)
	andi r25,lo8(-4)
	st Z,r25
	ret
	.size	_ZN7MCP_CAN18checkClearRxStatusEPh, .-_ZN7MCP_CAN18checkClearRxStatusEPh
	.section	.text._ZN7MCP_CAN18checkClearTxStatusEPhh,"ax",@progbits
.global	_ZN7MCP_CAN18checkClearTxStatusEPhh
	.type	_ZN7MCP_CAN18checkClearTxStatusEPhh, @function
_ZN7MCP_CAN18checkClearTxStatusEPhh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r22
	cpi r20,lo8(3)
	brlo .L239
	movw r26,r24
	adiw r26,9
	ld r24,X
	ldi r22,lo8(3)
	ldi r23,0
	sub r22,r24
	sbc r23,__zero_reg__
	ldi r28,lo8(CSWTCH.56)
	ldi r29,hi8(CSWTCH.56)
	movw r26,r28
	rjmp .L240
.L239:
	ld r25,Z
	mov r26,r20
	ldi r27,0
	subi r26,lo8(-(CSWTCH.56))
	sbci r27,hi8(-(CSWTCH.56))
	ld r18,X
	mov r24,r18
	and r24,r25
	ldi r19,0
	com r18
	com r19
	mov r20,r25
	rjmp .L249
.L240:
	mov r25,r26
	sub r25,r28
	mov r18,r25
	ldi r19,0
	cp r18,r22
	cpc r19,r23
	brge .L250
	ld r20,Z
	cpi r25,lo8(3)
	brsh .L245
	ld r24,X
.L242:
	and r24,r20
	adiw r26,1
	tst r24
	breq .L240
	cpi r25,lo8(3)
	brsh .L246
	movw r26,r18
	subi r26,lo8(-(CSWTCH.56))
	sbci r27,hi8(-(CSWTCH.56))
	ld r18,X
.L243:
	ldi r19,0
	com r18
	com r19
.L249:
	ldi r21,0
	and r18,r20
	and r19,r21
	st Z,r18
	rjmp .L241
.L245:
	ldi r24,0
	rjmp .L242
.L246:
	ldi r18,0
	rjmp .L243
.L250:
	ldi r24,0
.L241:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN7MCP_CAN18checkClearTxStatusEPhh, .-_ZN7MCP_CAN18checkClearTxStatusEPhh
	.section	.text._ZN7MCP_CAN26clearBufferTransmitIfFlagsEh,"ax",@progbits
.global	_ZN7MCP_CAN26clearBufferTransmitIfFlagsEh
	.type	_ZN7MCP_CAN26clearBufferTransmitIfFlagsEh, @function
_ZN7MCP_CAN26clearBufferTransmitIfFlagsEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r22
	andi r20,lo8(28)
	breq .L251
	ldi r18,0
	ldi r22,lo8(44)
	jmp _ZN7MCP_CAN22mcp2515_modifyRegisterEhhh
.L251:
	ret
	.size	_ZN7MCP_CAN26clearBufferTransmitIfFlagsEh, .-_ZN7MCP_CAN26clearBufferTransmitIfFlagsEh
	.section	.text._ZN7MCP_CAN12checkReceiveEv,"ax",@progbits
.global	_ZN7MCP_CAN12checkReceiveEv
	.type	_ZN7MCP_CAN12checkReceiveEv, @function
_ZN7MCP_CAN12checkReceiveEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZN7MCP_CAN18mcp2515_readStatusEv
	andi r24,lo8(3)
	brne .L255
	ldi r24,lo8(4)
	ret
.L255:
	ldi r24,lo8(3)
	ret
	.size	_ZN7MCP_CAN12checkReceiveEv, .-_ZN7MCP_CAN12checkReceiveEv
	.section	.text._ZN7MCP_CAN10checkErrorEv,"ax",@progbits
.global	_ZN7MCP_CAN10checkErrorEv
	.type	_ZN7MCP_CAN10checkErrorEv, @function
_ZN7MCP_CAN10checkErrorEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(45)
	call _ZN7MCP_CAN20mcp2515_readRegisterEh
	andi r24,lo8(-8)
	breq .L257
	ldi r24,lo8(5)
.L257:
	ret
	.size	_ZN7MCP_CAN10checkErrorEv, .-_ZN7MCP_CAN10checkErrorEv
	.section	.text._ZN7MCP_CAN8getCanIdEv,"ax",@progbits
.global	_ZN7MCP_CAN8getCanIdEv
	.type	_ZN7MCP_CAN8getCanIdEv, @function
_ZN7MCP_CAN8getCanIdEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+1
	ldd r23,Z+2
	ldd r24,Z+3
	ldd r25,Z+4
	ret
	.size	_ZN7MCP_CAN8getCanIdEv, .-_ZN7MCP_CAN8getCanIdEv
	.section	.text._ZN7MCP_CAN15isRemoteRequestEv,"ax",@progbits
.global	_ZN7MCP_CAN15isRemoteRequestEv
	.type	_ZN7MCP_CAN15isRemoteRequestEv, @function
_ZN7MCP_CAN15isRemoteRequestEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+5
	ret
	.size	_ZN7MCP_CAN15isRemoteRequestEv, .-_ZN7MCP_CAN15isRemoteRequestEv
	.section	.text._ZN7MCP_CAN15isExtendedFrameEv,"ax",@progbits
.global	_ZN7MCP_CAN15isExtendedFrameEv
	.type	_ZN7MCP_CAN15isExtendedFrameEv, @function
_ZN7MCP_CAN15isExtendedFrameEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ret
	.size	_ZN7MCP_CAN15isExtendedFrameEv, .-_ZN7MCP_CAN15isExtendedFrameEv
	.section	.rodata.CSWTCH.58,"a",@progbits
	.type	CSWTCH.58, @object
	.size	CSWTCH.58, 3
CSWTCH.58:
	.byte	4
	.byte	16
	.byte	64
	.section	.rodata.CSWTCH.56,"a",@progbits
	.type	CSWTCH.56, @object
	.size	CSWTCH.56, 3
CSWTCH.56:
	.byte	4
	.byte	8
	.byte	16
	.section	.rodata.CSWTCH.52,"a",@progbits
	.type	CSWTCH.52, @object
	.size	CSWTCH.52, 13
CSWTCH.52:
	.byte	49
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	81
	.section	.rodata.CSWTCH.50,"a",@progbits
	.type	CSWTCH.50, @object
	.size	CSWTCH.50, 13
CSWTCH.50:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	2
	.section	.rodata.CSWTCH.48,"a",@progbits
	.type	CSWTCH.48, @object
	.size	CSWTCH.48, 3
CSWTCH.48:
	.byte	48
	.byte	64
	.byte	80
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
