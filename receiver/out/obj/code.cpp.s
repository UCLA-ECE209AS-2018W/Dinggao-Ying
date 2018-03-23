	.file	"code.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	call ActivateTask
	lds r24,stk_wrong
	cpse r24,__zero_reg__
	rjmp .L1
	lds r24,old_sp
	lds r25,old_sp+1
	or r24,r25
	brne .L3
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts old_sp+1,r25
	sts old_sp,r24
	ret
.L3:
	lds r18,old_sp
	lds r19,old_sp+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	cp r18,r24
	cpc r19,r25
	breq .L1
	ldi r24,lo8(1)
	sts stk_wrong,r24
	ldi r22,lo8(1)
	lds r24,led
	jmp digitalWrite
.L1:
	ret
	.size	loop, .-loop
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"CAN BUS Shield init fail"
.LC1:
	.string	" Init CAN BUS Shield again"
.LC2:
	.string	"CAN BUS Shield init ok!"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	lds r24,led
	call pinMode
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
.L6:
	ldi r20,lo8(1)
	ldi r22,lo8(16)
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN7MCP_CAN5beginEhh
	tst r24
	breq .L8
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(100)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	rjmp .L6
.L8:
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	jmp _ZN5Print7printlnEPKc
	.size	setup, .-setup
	.section	.text.idle_hook,"ax",@progbits
.global	idle_hook
	.type	idle_hook, @function
idle_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call loop
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L9
	jmp _Z14serialEventRunv
.L9:
	ret
	.size	idle_hook, .-idle_hook
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	call setup
	ldi r24,0
	call StartOS
	ldi r24,0
	ldi r25,0
	ret
	.size	main, .-main
	.section	.text.startup._GLOBAL__sub_I_led,"ax",@progbits
	.type	_GLOBAL__sub_I_led, @function
_GLOBAL__sub_I_led:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(10)
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	jmp _ZN7MCP_CANC1Eh
	.size	_GLOBAL__sub_I_led, .-_GLOBAL__sub_I_led
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_led)
.global	old_sp
	.section	.bss.old_sp,"aw",@nobits
	.type	old_sp, @object
	.size	old_sp, 2
old_sp:
	.zero	2
.global	stk_wrong
	.section	.bss.stk_wrong,"aw",@nobits
	.type	stk_wrong, @object
	.size	stk_wrong, 1
stk_wrong:
	.zero	1
.global	CAN
	.section	.bss.CAN,"aw",@nobits
	.type	CAN, @object
	.size	CAN, 10
CAN:
	.zero	10
.global	dis_prev
	.section	.data.dis_prev,"aw",@progbits
	.type	dis_prev, @object
	.size	dis_prev, 2
dis_prev:
	.word	10000
.global	led
	.section	.data.led,"aw",@progbits
	.type	led, @object
	.size	led, 2
led:
	.word	13
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
