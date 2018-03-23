	.file	"tasks.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Recommended Control Change: Gas Down"
.LC1:
	.string	"Recommended Control Change: Break"
.LC2:
	.string	"Recommended Control Change: Gas Up"
.LC3:
	.string	"Car Temp Status: Cold , Warning"
.LC4:
	.string	"Car oil tank Status: low"
.LC5:
	.string	"-----------------------------"
.LC6:
	.string	"Get data from ID: "
.LC7:
	.string	"\t"
.LC8:
	.string	"Car Temp Status: Cold, Fan Speed Down"
.LC9:
	.string	"Car Temp Status: Normal and Balanced"
.LC10:
	.string	"Car Temp Status: Hot, Fan Speed Up"
.LC11:
	.string	"Car Temp Status: Hot, Warning"
.LC12:
	.string	"Car oil tank Status: mid"
.LC13:
	.string	"Car oil tank Status: high"
	.section	.text.FuncTaskL1,"ax",@progbits
.global	FuncTaskL1
	.type	FuncTaskL1, @function
FuncTaskL1:
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
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 17 */
.L__stack_usage = 17
	lds r24,isr_cnt
	lds r25,isr_cnt+1
	adiw r24,1
	sts isr_cnt+1,r25
	sts isr_cnt,r24
	std Y+9,__zero_reg__
	lds r24,isr_cnt
	lds r25,isr_cnt+1
	cpi r24,-24
	sbci r25,3
	brsh .+2
	rjmp .L3
	sts isr_cnt+1,__zero_reg__
	sts isr_cnt,__zero_reg__
	ldi r24,lo8(CAN_rec)
	ldi r25,hi8(CAN_rec)
	call _ZN7MCP_CAN12checkReceiveEv
	cpi r24,lo8(3)
	breq .+2
	rjmp .L3
	movw r14,r28
	ldi r24,9
	add r14,r24
	adc r15,__zero_reg__
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r20,r16
	movw r22,r14
	ldi r24,lo8(CAN_rec)
	ldi r25,hi8(CAN_rec)
	call _ZN7MCP_CAN10readMsgBufEPhS0_
	movw r30,r16
.L5:
	lds r24,result
	lds r25,result+1
	ld r18,Z+
	mov r25,r24
	clr r24
	add r24,r18
	adc r25,__zero_reg__
	sts result+1,r25
	sts result,r24
	cp r30,r14
	cpc r31,r15
	brne .L5
	ldi r24,lo8(CAN_rec)
	ldi r25,hi8(CAN_rec)
	call _ZN7MCP_CAN8getCanIdEv
	movw r12,r22
	movw r14,r24
	cpi r22,1
	cpc r23,__zero_reg__
	breq .L7
	brlo .L8
	cpi r22,2
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L9
	rjmp .L31
.L8:
	lds r24,result
	lds r25,result+1
	sts dis_cur+1,r25
	sts dis_cur,r24
	lds r24,dis_prev
	lds r25,dis_prev+1
	lds r18,dis_cur
	lds r19,dis_cur+1
	sub r24,r18
	sbc r25,r19
	sts dis_change+1,r25
	sts dis_change,r24
	lds r24,dis_cur
	lds r25,dis_cur+1
	sts dis_prev+1,r25
	sts dis_prev,r24
	lds r24,dis_change
	lds r25,dis_change+1
	or r24,r25
	breq .L10
	lds r24,dis_change
	lds r25,dis_change+1
	sbiw r24,50
	brsh .L11
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	rjmp .L29
.L11:
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	rjmp .L29
.L10:
	lds r24,dis_change
	lds r25,dis_change+1
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	rjmp .L29
.L7:
	lds r24,result
	lds r25,result+1
	sts temp+1,r25
	sts temp,r24
	lds r24,temp
	lds r25,temp+1
	sbiw r24,60
	brsh .L12
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	rjmp .L29
.L12:
	lds r24,temp
	lds r25,temp+1
	sbiw r24,60
	brsh .+2
	rjmp .L13
	lds r24,temp
	lds r25,temp+1
	cpi r24,85
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L13
	ldi r22,lo8(.LC8)
	ldi r23,hi8(.LC8)
	rjmp .L29
.L9:
	lds r24,result
	lds r25,result+1
	sts depth+1,r25
	sts depth,r24
	lds r24,depth
	lds r25,depth+1
	sbiw r24,20
	brsh .L19
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	rjmp .L29
.L19:
	lds r24,depth
	lds r25,depth+1
	sbiw r24,20
	brsh .+2
	rjmp .L20
	lds r24,depth
	lds r25,depth+1
	cpi r24,100
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L20
	ldi r22,lo8(.LC12)
	ldi r23,hi8(.LC12)
	rjmp .L29
.L31:
	ldi r22,lo8(.LC5)
	ldi r23,hi8(.LC5)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(.LC6)
	ldi r23,hi8(.LC6)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r20,lo8(16)
	ldi r21,0
	movw r22,r12
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEji
	movw r14,r16
.L22:
	ldd r24,Y+9
	ldi r25,0
	movw r18,r14
	sub r18,r16
	sbc r19,r17
	cp r18,r24
	cpc r19,r25
	brge .L32
	movw r30,r14
	ld r22,Z+
	movw r14,r30
	ldi r20,lo8(16)
	ldi r21,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEhi
	ldi r22,lo8(.LC7)
	ldi r23,hi8(.LC7)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	rjmp .L22
.L32:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEv
.L3:
	lds r24,TaskL1_count
	lds r25,TaskL1_count+1
	adiw r24,1
	sts TaskL1_count+1,r25
	sts TaskL1_count,r24
	call TerminateTask
/* epilogue start */
	adiw r28,9
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
	ret
.L13:
	lds r24,temp
	lds r25,temp+1
	cpi r24,85
	cpc r25,__zero_reg__
	brlo .L16
	lds r24,temp
	lds r25,temp+1
	cpi r24,95
	cpc r25,__zero_reg__
	brsh .L16
	ldi r22,lo8(.LC9)
	ldi r23,hi8(.LC9)
	rjmp .L29
.L16:
	lds r24,temp
	lds r25,temp+1
	cpi r24,95
	cpc r25,__zero_reg__
	brlo .L18
	lds r24,temp
	lds r25,temp+1
	cpi r24,110
	cpc r25,__zero_reg__
	brsh .L18
	ldi r22,lo8(.LC10)
	ldi r23,hi8(.LC10)
	rjmp .L29
.L18:
	ldi r22,lo8(.LC11)
	ldi r23,hi8(.LC11)
	rjmp .L29
.L20:
	ldi r22,lo8(.LC13)
	ldi r23,hi8(.LC13)
.L29:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	rjmp .L3
	.size	FuncTaskL1, .-FuncTaskL1
	.section	.text.startup._GLOBAL__sub_I_TaskL1_count,"ax",@progbits
	.type	_GLOBAL__sub_I_TaskL1_count, @function
_GLOBAL__sub_I_TaskL1_count:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(10)
	ldi r24,lo8(CAN_rec)
	ldi r25,hi8(CAN_rec)
	jmp _ZN7MCP_CANC1Eh
	.size	_GLOBAL__sub_I_TaskL1_count, .-_GLOBAL__sub_I_TaskL1_count
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_TaskL1_count)
.global	CAN_rec
	.section	.bss.CAN_rec,"aw",@nobits
	.type	CAN_rec, @object
	.size	CAN_rec, 10
CAN_rec:
	.zero	10
.global	isr_cnt
	.section	.bss.isr_cnt,"aw",@nobits
	.type	isr_cnt, @object
	.size	isr_cnt, 2
isr_cnt:
	.zero	2
.global	result
	.section	.bss.result,"aw",@nobits
	.type	result, @object
	.size	result, 2
result:
	.zero	2
.global	depth
	.section	.bss.depth,"aw",@nobits
	.type	depth, @object
	.size	depth, 2
depth:
	.zero	2
.global	temp
	.section	.bss.temp,"aw",@nobits
	.type	temp, @object
	.size	temp, 2
temp:
	.zero	2
.global	dis_change
	.section	.bss.dis_change,"aw",@nobits
	.type	dis_change, @object
	.size	dis_change, 2
dis_change:
	.zero	2
.global	dis_cur
	.section	.bss.dis_cur,"aw",@nobits
	.type	dis_cur, @object
	.size	dis_cur, 2
dis_cur:
	.zero	2
.global	TaskL1_count
	.section	.bss.TaskL1_count,"aw",@nobits
	.type	TaskL1_count, @object
	.size	TaskL1_count, 2
TaskL1_count:
	.zero	2
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
