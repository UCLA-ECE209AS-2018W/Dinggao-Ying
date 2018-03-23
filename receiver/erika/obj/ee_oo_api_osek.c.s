	.file	"ee_oo_api_osek.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DisableAllInterrupts,"ax",@progbits
.global	DisableAllInterrupts
	.type	DisableAllInterrupts, @function
DisableAllInterrupts:
.LFB52:
	.file 1 "/home/yvonne/receiver/erika/src/ee_oo_api_osek.c"
	.loc 1 67 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 69 0
	lds r30,CDB
	lds r31,CDB+1
.LVL0:
.LBB219:
.LBB220:
	.file 2 "/home/yvonne/receiver/erika/src/ee_hal_internal.h"
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE220:
.LBE219:
	.loc 1 72 0
	ldd r24,Z+17
	subi r24,lo8(-(1))
	std Z+17,r24
	ret
	.cfi_endproc
.LFE52:
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.section	.text.EnableAllInterrupts,"ax",@progbits
.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
.LFB53:
	.loc 1 81 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 88 0
	lds r30,CDB
	lds r31,CDB+1
.LVL1:
.LBB221:
.LBB222:
.LBB223:
.LBB224:
	.loc 2 111 0
	in r25,__SREG__
.LVL2:
.LBB225:
.LBB226:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE226:
.LBE225:
.LBE224:
.LBE223:
.LBE222:
.LBE221:
	.loc 1 91 0
	ldd r24,Z+17
	tst r24
	breq .L3
	.loc 1 92 0
	subi r24,lo8(-(-1))
	std Z+17,r24
.LBB227:
.LBB228:
	.loc 2 105 0
/* #APP */
 ;  105 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
.L3:
.LVL3:
.LBE228:
.LBE227:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r25
	ret
.LBE232:
.LBE231:
.LBE230:
.LBE229:
	.cfi_endproc
.LFE53:
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.section	.text.SuspendAllInterrupts,"ax",@progbits
.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB54:
	.loc 1 104 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 106 0
	lds r30,CDB
	lds r31,CDB+1
.LVL4:
	.loc 1 108 0
	ldd r24,Z+15
	cpse r24,__zero_reg__
	rjmp .L7
.LBB233:
.LBB234:
.LBB235:
	.loc 2 111 0
	in r24,__SREG__
.LVL5:
.LBB236:
.LBB237:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE237:
.LBE236:
.LBE235:
.LBE234:
	.loc 1 110 0
	std Z+13,r24
	.loc 1 111 0
	ldd r24,Z+15
.LVL6:
	rjmp .L12
.LVL7:
.L7:
.LBE233:
	.loc 1 112 0
	cpi r24,lo8(-1)
	breq .L6
.L12:
	.loc 1 113 0
	subi r24,lo8(-(1))
	std Z+15,r24
.L6:
	ret
	.cfi_endproc
.LFE54:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.section	.text.ResumeAllInterrupts,"ax",@progbits
.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB55:
	.loc 1 122 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 124 0
	lds r30,CDB
	lds r31,CDB+1
.LVL8:
	.loc 1 126 0
	ldd r24,Z+15
	tst r24
	breq .L13
	.loc 1 127 0
	subi r24,lo8(-(-1))
	std Z+15,r24
	cpse r24,__zero_reg__
	rjmp .L13
	.loc 1 128 0
	ldd r24,Z+13
.LVL9:
.LBB238:
.LBB239:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r24
.LVL10:
.L13:
	ret
.LBE239:
.LBE238:
	.cfi_endproc
.LFE55:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.section	.text.SuspendOSInterrupts,"ax",@progbits
.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
.LFB56:
	.loc 1 138 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 140 0
	lds r30,CDB
	lds r31,CDB+1
.LVL11:
	.loc 1 142 0
	ldd r24,Z+16
	cpse r24,__zero_reg__
	rjmp .L18
.LBB240:
.LBB241:
.LBB242:
.LBB243:
	.loc 2 111 0
	in r24,__SREG__
.LVL12:
.LBB244:
.LBB245:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE245:
.LBE244:
.LBE243:
.LBE242:
.LBE241:
	.loc 1 144 0
	std Z+14,r24
	.loc 1 145 0
	ldd r24,Z+16
.LVL13:
	rjmp .L23
.LVL14:
.L18:
.LBE240:
	.loc 1 146 0
	cpi r24,lo8(-1)
	breq .L17
.L23:
	.loc 1 147 0
	subi r24,lo8(-(1))
	std Z+16,r24
.L17:
	ret
	.cfi_endproc
.LFE56:
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.section	.text.ResumeOSInterrupts,"ax",@progbits
.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
.LFB57:
	.loc 1 156 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 158 0
	lds r30,CDB
	lds r31,CDB+1
.LVL15:
	.loc 1 160 0
	ldd r24,Z+16
	tst r24
	breq .L24
	.loc 1 161 0
	subi r24,lo8(-(-1))
	std Z+16,r24
	cpse r24,__zero_reg__
	rjmp .L24
	.loc 1 162 0
	ldd r24,Z+14
.LVL16:
.LBB246:
.LBB247:
.LBB248:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r24
.LVL17:
.L24:
	ret
.LBE248:
.LBE247:
.LBE246:
	.cfi_endproc
.LFE57:
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.section	.text.StartOS,"ax",@progbits
.global	StartOS
	.type	StartOS, @function
StartOS:
.LFB58:
	.loc 1 172 0
	.cfi_startproc
.LVL18:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 175 0
	lds r16,CDB
	lds r17,CDB+1
.LVL19:
.LBB266:
.LBB267:
.LBB268:
.LBB269:
	.loc 2 111 0
	in r25,__SREG__
.LVL20:
.LBB270:
.LBB271:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE271:
.LBE270:
.LBE269:
.LBE268:
.LBE267:
.LBE266:
	.loc 1 180 0
	movw r30,r16
	ldd r18,Z+8
	ldd r19,Z+9
	or r18,r19
	brne .L29
	mov r18,r24
.LBB272:
.LBB273:
	.loc 2 168 0
	ldi r24,lo8(gs(osEE_atmega_intvect))
	ldi r25,hi8(gs(osEE_atmega_intvect))
.LVL21:
	std Y+2,r25
	std Y+1,r24
.LBE273:
.LBE272:
.LBB274:
	.loc 1 184 0
	lds r24,CDB+4
	lds r25,CDB+4+1
	.loc 1 205 0
	std Z+10,r18
.LVL22:
	.loc 1 281 0
	ldi r18,lo8(2)
	ldi r19,0
.LVL23:
	std Z+9,r19
	std Z+8,r18
.LBB275:
.LBB276:
	.file 3 "/home/yvonne/receiver/erika/src/ee_std_change_context.h"
	.loc 3 145 0
	movw r30,r24
	ldd r22,Z+2
	ldd r23,Z+3
	movw r20,r22
	call osEE_hal_save_ctx_and_ready2stacked
.LVL24:
.LBE276:
.LBE275:
	.loc 1 312 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	brne .L30
.LVL25:
.LBB277:
.LBB278:
	.loc 2 105 0
/* #APP */
 ;  105 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL26:
/* #NOAPP */
.L30:
.LBE278:
.LBE277:
.LBE274:
	.loc 1 172 0
	ldi r24,0
	ldi r25,0
	rjmp .L32
.LVL27:
.L29:
.LBB279:
.LBB280:
.LBB281:
.LBB282:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r25
.LBE282:
.LBE281:
.LBE280:
.LBE279:
	.loc 1 326 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL28:
.L32:
/* epilogue start */
	.loc 1 335 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE58:
	.size	StartOS, .-StartOS
	.section	.text.GetActiveApplicationMode,"ax",@progbits
.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
.LFB59:
	.loc 1 342 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 345 0
	lds r30,CDB
	lds r31,CDB+1
.LVL29:
	.loc 1 347 0
	ldd r24,Z+8
	ldd r25,Z+9
	or r24,r25
	breq .L35
	.loc 1 348 0
	ldd r24,Z+10
.LVL30:
	ret
.LVL31:
.L35:
	.loc 1 350 0
	ldi r24,lo8(-1)
.LVL32:
	.loc 1 353 0
	ret
	.cfi_endproc
.LFE59:
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.section	.text.ActivateTask,"ax",@progbits
.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
.LFB60:
	.loc 1 360 0
	.cfi_startproc
.LVL33:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL34:
.LBB283:
.LBB284:
	.file 4 "/home/yvonne/receiver/erika/src/ee_kernel.h"
	.loc 4 179 0
	ldi r25,0
.LBE284:
.LBE283:
	.loc 1 364 0
	lds r18,KDB+6
	lds r19,KDB+6+1
	cp r24,r18
	cpc r25,r19
	brsh .L39
.LBB285:
	.loc 1 369 0
	lds r30,KDB+2
	lds r31,KDB+2+1
	lsl r24
	rol r25
.LVL35:
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
.LVL36:
	.loc 1 373 0
	movw r30,r20
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L39
.LBB286:
.LBB287:
.LBB288:
.LBB289:
.LBB290:
	.loc 2 111 0
	in r28,__SREG__
.LVL37:
.LBB291:
.LBB292:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE292:
.LBE291:
.LBE290:
.LBE289:
.LBE288:
.LBE287:
	.loc 1 376 0
	ldi r18,lo8(1)
	ldi r19,0
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_activated
.LVL38:
.LBB293:
.LBB294:
.LBB295:
.LBB296:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r28
	rjmp .L37
.LVL39:
.L39:
.LBE296:
.LBE295:
.LBE294:
.LBE293:
.LBE286:
.LBE285:
	.loc 1 365 0
	ldi r24,lo8(3)
	ldi r25,0
.L37:
.LVL40:
/* epilogue start */
	.loc 1 401 0
	pop r28
	ret
	.cfi_endproc
.LFE60:
	.size	ActivateTask, .-ActivateTask
	.section	.text.ChainTask,"ax",@progbits
.global	ChainTask
	.type	ChainTask, @function
ChainTask:
.LFB61:
	.loc 1 409 0
	.cfi_startproc
.LVL41:
	push r17
.LCFI7:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI9:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL42:
.LBB297:
.LBB298:
	.loc 4 179 0
	ldi r25,0
.LBE298:
.LBE297:
	.loc 1 413 0
	lds r18,KDB+6
	lds r19,KDB+6+1
	cp r24,r18
	cpc r25,r19
	brsh .L46
.LBB299:
	.loc 1 417 0
	lds r30,KDB+2
	lds r31,KDB+2+1
	lsl r24
	rol r25
.LVL43:
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
.LVL44:
.LBB300:
.LBB301:
	.loc 4 92 0
	lds r28,CDB
	lds r29,CDB+1
	ld r24,Y
	ldd r25,Y+1
.LBE301:
.LBE300:
	.loc 1 443 0
	movw r26,r20
	adiw r26,7
	ld r18,X+
	ld r19,X
	sbiw r26,7+1
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L46
.LBB302:
.LBB303:
.LBB304:
.LBB305:
.LBB306:
	.loc 2 111 0
	in r17,__SREG__
.LVL45:
.LBB307:
.LBB308:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE308:
.LBE307:
.LBE306:
.LBE305:
.LBE304:
.LBE303:
	.loc 1 446 0
	cp r20,r24
	cpc r21,r25
	brne .L42
	.loc 1 448 0
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	ldi r24,lo8(5)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
.LVL46:
	rjmp .L43
.LVL47:
.L42:
	.loc 1 451 0
	ldi r18,0
	ldi r19,0
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_activated
.LVL48:
	.loc 1 453 0
	sbiw r24,0
	brne .L44
.LVL49:
.L43:
	ld r30,Y
	ldd r31,Y+1
.LBB309:
.LBB310:
	.loc 3 136 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.LVL50:
.L44:
.LBE310:
.LBE309:
.LBB311:
.LBB312:
.LBB313:
.LBB314:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r17
	rjmp .L41
.LVL51:
.L46:
.LBE314:
.LBE313:
.LBE312:
.LBE311:
.LBE302:
.LBE299:
	.loc 1 414 0
	ldi r24,lo8(3)
	ldi r25,0
.L41:
.LVL52:
/* epilogue start */
	.loc 1 481 0
	pop r29
	pop r28
	pop r17
	ret
	.cfi_endproc
.LFE61:
	.size	ChainTask, .-ChainTask
	.section	.text.TerminateTask,"ax",@progbits
.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
.LFB62:
	.loc 1 488 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL53:
	.loc 1 495 0
	lds r30,CDB
	lds r31,CDB+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL54:
.LBB315:
.LBB316:
.LBB317:
.LBB318:
.LBB319:
	.loc 2 111 0
	in r24,__SREG__
.LBB320:
.LBB321:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE321:
.LBE320:
.LBE319:
.LBE318:
.LBE317:
.LBE316:
.LBB322:
.LBB323:
	.loc 3 136 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.LVL56:
.LBE323:
.LBE322:
.LBE315:
	.cfi_endproc
.LFE62:
	.size	TerminateTask, .-TerminateTask
	.section	.text.Schedule,"ax",@progbits
.global	Schedule
	.type	Schedule, @function
Schedule:
.LFB63:
	.loc 1 565 0
	.cfi_startproc
	push r15
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL57:
	.loc 1 569 0
	lds r30,CDB
	lds r31,CDB+1
	ld r28,Z
	ldd r29,Z+1
.LVL58:
	.loc 1 570 0
	ldd r16,Y+4
	ldd r17,Y+5
.LVL59:
	.loc 1 579 0
	movw r30,r16
	ldd r25,Z+1
	ldd r24,Y+12
	cpse r25,r24
	rjmp .L49
.LBB324:
.LBB325:
.LBB326:
.LBB327:
.LBB328:
	.loc 2 111 0
	in r15,__SREG__
.LVL60:
.LBB329:
.LBB330:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE330:
.LBE329:
.LBE328:
.LBE327:
.LBE326:
.LBE325:
	.loc 1 585 0
	ldd r24,Y+11
	std Z+1,r24
	.loc 1 587 0
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
.LVL61:
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_preemption_point
.LVL62:
	.loc 1 589 0
	ldd r24,Y+12
	movw r30,r16
	std Z+1,r24
.LVL63:
.LBB331:
.LBB332:
.LBB333:
.LBB334:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r15
.LVL64:
.L49:
.LBE334:
.LBE333:
.LBE332:
.LBE331:
.LBE324:
	.loc 1 611 0
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
.LVL65:
	pop r17
	pop r16
.LVL66:
	pop r15
	ret
	.cfi_endproc
.LFE63:
	.size	Schedule, .-Schedule
	.section	.text.ShutdownOS,"ax",@progbits
.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
.LFB64:
	.loc 1 768 0
	.cfi_startproc
.LVL67:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r24
	.loc 1 771 0
	lds r30,CDB
	lds r31,CDB+1
.LVL68:
.LBB335:
.LBB336:
.LBB337:
.LBB338:
	.loc 2 111 0
	in r25,__SREG__
.LVL69:
.LBB339:
.LBB340:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL70:
/* #NOAPP */
.LBE340:
.LBE339:
.LBE338:
.LBE337:
.LBE336:
.LBE335:
	.loc 1 775 0
	ldd r18,Z+8
	ldd r19,Z+9
	subi r18,1
	sbc r19,__zero_reg__
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L51
	.loc 1 777 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL71:
	std Z+9,r25
	std Z+8,r24
.LVL72:
	.loc 1 779 0
	std Z+12,r21
	std Z+11,r20
.LBB341:
.LBB342:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/yvonne/receiver/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L52:
.LBE342:
.LBE341:
	.loc 1 786 0 discriminator 1
	rjmp .L52
.LVL73:
.L51:
.LBB343:
.LBB344:
.LBB345:
.LBB346:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r25
.LVL74:
.LBE346:
.LBE345:
.LBE344:
.LBE343:
	.loc 1 803 0
	ldi r24,lo8(7)
	ldi r25,0
	ret
	.cfi_endproc
.LFE64:
	.size	ShutdownOS, .-ShutdownOS
	.section	.text.GetTaskID,"ax",@progbits
.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
.LFB65:
	.loc 1 810 0
	.cfi_startproc
.LVL75:
	push r28
.LCFI15:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	.loc 1 817 0
	or r24,r25
	breq .L60
.LVL76:
.LBB347:
.LBB348:
.LBB349:
	.loc 4 92 0
	lds r30,CDB
	lds r31,CDB+1
	ld r28,Z
	ldd r29,Z+1
.LBE349:
.LBE348:
	.loc 1 825 0
	ldd r24,Y+7
	ldd r25,Y+8
.LVL77:
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L62
	.loc 1 827 0
	sbiw r24,2
	brne .L61
.LVL78:
.LBB350:
	.loc 1 832 0
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
.LVL79:
.L58:
.LBB351:
	.loc 1 841 0
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL80:
.LBE351:
	.loc 1 834 0
	sbiw r30,0
	breq .L61
.LBB352:
	.loc 1 836 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL81:
	.loc 1 837 0
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,2
	brsh .L58
.LVL82:
.L62:
	.loc 1 838 0
	ldd r25,Y+6
.LVL83:
	.loc 1 839 0
	rjmp .L56
.LVL84:
.L61:
.LBE352:
.LBE350:
	.loc 1 821 0
	ldi r25,lo8(-1)
.LVL85:
.L56:
	.loc 1 846 0
	st X,r25
.LVL86:
	.loc 1 847 0
	ldi r24,0
	ldi r25,0
	rjmp .L54
.LVL87:
.L60:
.LBE347:
	.loc 1 818 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL88:
.L54:
/* epilogue start */
	.loc 1 867 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE65:
	.size	GetTaskID, .-GetTaskID
	.section	.text.GetTaskState,"ax",@progbits
.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
.LFB66:
	.loc 1 875 0
	.cfi_startproc
.LVL89:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	.loc 1 884 0
	sbiw r26,0
	breq .L70
.LVL90:
.LBB353:
.LBB354:
	.loc 4 179 0
	ldi r25,0
.LBE354:
.LBE353:
	.loc 1 887 0
	lds r18,KDB+6
	lds r19,KDB+6+1
	cp r24,r18
	cpc r25,r19
	brsh .L71
.LVL91:
.LBB355:
	.loc 1 892 0
	lds r30,KDB+2
	lds r31,KDB+2+1
	lsl r24
	rol r25
.LVL92:
	add r30,r24
	adc r31,r25
	.loc 1 895 0
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldd r24,Z+2
	ldd r25,Z+3
	clr r25
	.loc 1 896 0
	cpi r24,3
	cpc r25,__zero_reg__
	brge .L65
	cpi r24,1
	cpc r25,__zero_reg__
	brge .L66
	or r24,r25
	brne .L72
	.loc 1 898 0
	st X+,__zero_reg__
	st X,__zero_reg__
	rjmp .L72
.L65:
	.loc 1 896 0
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L74
	sbiw r24,6
	brge .L72
	.loc 1 909 0
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L74
.L66:
	.loc 1 902 0
	ldi r24,lo8(1)
	ldi r25,0
.L74:
	.loc 1 909 0
	st X+,r24
	st X,r25
	rjmp .L72
.LVL93:
.L70:
.LBE355:
	.loc 1 885 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL94:
	ret
.LVL95:
.L71:
	.loc 1 888 0
	ldi r24,lo8(3)
	ldi r25,0
.LVL96:
	ret
.L72:
.LBB356:
	.loc 1 915 0
	ldi r24,0
	ldi r25,0
.LVL97:
.LBE356:
	.loc 1 937 0
	ret
	.cfi_endproc
.LFE66:
	.size	GetTaskState, .-GetTaskState
	.text
.Letext0:
	.file 5 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 6 "/home/yvonne/receiver/erika/inc/ee_platform_types.h"
	.file 7 "/home/yvonne/receiver/erika/inc/ee_hal_internal_types.h"
	.file 8 "/home/yvonne/receiver/erika/inc/ee_api_types.h"
	.file 9 "/home/yvonne/receiver/erika/inc/ee_scheduler_types.h"
	.file 10 "/home/yvonne/receiver/erika/inc/ee_kernel_types.h"
	.file 11 "/home/yvonne/receiver/erika/inc/ee_get_kernel_and_core.h"
	.file 12 "/home/yvonne/receiver/erika/src/ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17e4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF239
	.byte	0x1
	.long	.LASF240
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x5
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x5
	.byte	0x80
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x2
	.byte	0x6
	.byte	0x56
	.long	0x8f
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x6
	.byte	0x59
	.long	0x7a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x6
	.byte	0x5f
	.long	0x48
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x69
	.long	0x5a
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0x7a
	.long	0xbb
	.uleb128 0x7
	.byte	0x2
	.long	0xc1
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x9
	.long	.LASF18
	.byte	0x14
	.byte	0x7
	.byte	0x3f
	.long	0x1d2
	.uleb128 0xa
	.string	"r29"
	.byte	0x7
	.byte	0x40
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"r28"
	.byte	0x7
	.byte	0x41
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"r17"
	.byte	0x7
	.byte	0x42
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"r16"
	.byte	0x7
	.byte	0x43
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"r15"
	.byte	0x7
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"r14"
	.byte	0x7
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.string	"r13"
	.byte	0x7
	.byte	0x46
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"r12"
	.byte	0x7
	.byte	0x47
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.string	"r11"
	.byte	0x7
	.byte	0x48
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"r10"
	.byte	0x7
	.byte	0x49
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"r9"
	.byte	0x7
	.byte	0x4a
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"r8"
	.byte	0x7
	.byte	0x4b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"r7"
	.byte	0x7
	.byte	0x4c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"r6"
	.byte	0x7
	.byte	0x4d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"r5"
	.byte	0x7
	.byte	0x4e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"r4"
	.byte	0x7
	.byte	0x4f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"r3"
	.byte	0x7
	.byte	0x50
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"r2"
	.byte	0x7
	.byte	0x51
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF16
	.byte	0x7
	.byte	0x52
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc3
	.uleb128 0x4
	.long	.LASF17
	.byte	0x7
	.byte	0x53
	.long	0xc3
	.uleb128 0x9
	.long	.LASF19
	.byte	0x2
	.byte	0x7
	.byte	0x56
	.long	0x1fe
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0x57
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x1d8
	.uleb128 0x4
	.long	.LASF21
	.byte	0x7
	.byte	0x58
	.long	0x1e3
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.long	0x238
	.uleb128 0xb
	.long	.LASF23
	.byte	0x7
	.byte	0x5b
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x7
	.byte	0x5c
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x7
	.byte	0x5d
	.long	0x243
	.uleb128 0xc
	.long	0x20f
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x7
	.byte	0x5f
	.long	0x271
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.byte	0x60
	.long	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0x61
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x238
	.uleb128 0x7
	.byte	0x2
	.long	0x204
	.uleb128 0x4
	.long	.LASF29
	.byte	0x7
	.byte	0x65
	.long	0x288
	.uleb128 0xc
	.long	0x248
	.uleb128 0x4
	.long	.LASF30
	.byte	0x8
	.byte	0x3f
	.long	0x53
	.uleb128 0x4
	.long	.LASF31
	.byte	0x8
	.byte	0x45
	.long	0x9a
	.uleb128 0x4
	.long	.LASF32
	.byte	0x8
	.byte	0x47
	.long	0x2ae
	.uleb128 0x7
	.byte	0x2
	.long	0x298
	.uleb128 0x4
	.long	.LASF33
	.byte	0x8
	.byte	0x4d
	.long	0x53
	.uleb128 0x4
	.long	.LASF34
	.byte	0x8
	.byte	0x59
	.long	0x53
	.uleb128 0x4
	.long	.LASF35
	.byte	0x8
	.byte	0x64
	.long	0xbb
	.uleb128 0xd
	.long	.LASF42
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.long	0x2fa
	.uleb128 0x6
	.long	.LASF36
	.sleb128 0
	.uleb128 0x6
	.long	.LASF37
	.sleb128 1
	.uleb128 0x6
	.long	.LASF38
	.sleb128 2
	.uleb128 0x6
	.long	.LASF39
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x8
	.byte	0x70
	.long	0x2d5
	.uleb128 0x4
	.long	.LASF41
	.byte	0x8
	.byte	0x72
	.long	0x2fa
	.uleb128 0xd
	.long	.LASF43
	.byte	0x2
	.byte	0x8
	.byte	0x74
	.long	0x341
	.uleb128 0x6
	.long	.LASF44
	.sleb128 0
	.uleb128 0x6
	.long	.LASF45
	.sleb128 1
	.uleb128 0x6
	.long	.LASF46
	.sleb128 2
	.uleb128 0x6
	.long	.LASF47
	.sleb128 3
	.uleb128 0x6
	.long	.LASF48
	.sleb128 4
	.uleb128 0x6
	.long	.LASF49
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x8
	.byte	0x7d
	.long	0x310
	.uleb128 0x4
	.long	.LASF51
	.byte	0x8
	.byte	0x84
	.long	0x341
	.uleb128 0x4
	.long	.LASF52
	.byte	0x8
	.byte	0x85
	.long	0x362
	.uleb128 0x7
	.byte	0x2
	.long	0x34c
	.uleb128 0x4
	.long	.LASF53
	.byte	0x8
	.byte	0xda
	.long	0xa5
	.uleb128 0xd
	.long	.LASF54
	.byte	0x2
	.byte	0x8
	.byte	0xe2
	.long	0x428
	.uleb128 0x6
	.long	.LASF55
	.sleb128 0
	.uleb128 0x6
	.long	.LASF56
	.sleb128 1
	.uleb128 0x6
	.long	.LASF57
	.sleb128 2
	.uleb128 0x6
	.long	.LASF58
	.sleb128 3
	.uleb128 0x6
	.long	.LASF59
	.sleb128 4
	.uleb128 0x6
	.long	.LASF60
	.sleb128 5
	.uleb128 0x6
	.long	.LASF61
	.sleb128 6
	.uleb128 0x6
	.long	.LASF62
	.sleb128 7
	.uleb128 0x6
	.long	.LASF63
	.sleb128 8
	.uleb128 0x6
	.long	.LASF64
	.sleb128 9
	.uleb128 0x6
	.long	.LASF65
	.sleb128 10
	.uleb128 0x6
	.long	.LASF66
	.sleb128 11
	.uleb128 0x6
	.long	.LASF67
	.sleb128 12
	.uleb128 0x6
	.long	.LASF68
	.sleb128 13
	.uleb128 0x6
	.long	.LASF69
	.sleb128 14
	.uleb128 0x6
	.long	.LASF70
	.sleb128 15
	.uleb128 0x6
	.long	.LASF71
	.sleb128 16
	.uleb128 0x6
	.long	.LASF72
	.sleb128 17
	.uleb128 0x6
	.long	.LASF73
	.sleb128 18
	.uleb128 0x6
	.long	.LASF74
	.sleb128 19
	.uleb128 0x6
	.long	.LASF75
	.sleb128 20
	.uleb128 0x6
	.long	.LASF76
	.sleb128 21
	.uleb128 0x6
	.long	.LASF77
	.sleb128 22
	.uleb128 0x6
	.long	.LASF78
	.sleb128 23
	.uleb128 0x6
	.long	.LASF79
	.sleb128 24
	.uleb128 0x6
	.long	.LASF80
	.sleb128 25
	.uleb128 0x6
	.long	.LASF81
	.sleb128 26
	.uleb128 0x6
	.long	.LASF82
	.sleb128 27
	.byte	0
	.uleb128 0xe
	.long	.LASF83
	.byte	0x8
	.word	0x104
	.long	0x373
	.uleb128 0xe
	.long	.LASF84
	.byte	0x8
	.word	0x106
	.long	0x428
	.uleb128 0xf
	.long	.LASF85
	.byte	0x2
	.byte	0x8
	.word	0x118
	.long	0x532
	.uleb128 0x6
	.long	.LASF86
	.sleb128 0
	.uleb128 0x6
	.long	.LASF87
	.sleb128 1
	.uleb128 0x6
	.long	.LASF88
	.sleb128 2
	.uleb128 0x6
	.long	.LASF89
	.sleb128 3
	.uleb128 0x6
	.long	.LASF90
	.sleb128 4
	.uleb128 0x6
	.long	.LASF91
	.sleb128 5
	.uleb128 0x6
	.long	.LASF92
	.sleb128 6
	.uleb128 0x6
	.long	.LASF93
	.sleb128 7
	.uleb128 0x6
	.long	.LASF94
	.sleb128 8
	.uleb128 0x6
	.long	.LASF95
	.sleb128 9
	.uleb128 0x6
	.long	.LASF96
	.sleb128 10
	.uleb128 0x6
	.long	.LASF97
	.sleb128 11
	.uleb128 0x6
	.long	.LASF98
	.sleb128 12
	.uleb128 0x6
	.long	.LASF99
	.sleb128 13
	.uleb128 0x6
	.long	.LASF100
	.sleb128 14
	.uleb128 0x6
	.long	.LASF101
	.sleb128 15
	.uleb128 0x6
	.long	.LASF102
	.sleb128 16
	.uleb128 0x6
	.long	.LASF103
	.sleb128 17
	.uleb128 0x6
	.long	.LASF104
	.sleb128 18
	.uleb128 0x6
	.long	.LASF105
	.sleb128 19
	.uleb128 0x6
	.long	.LASF106
	.sleb128 20
	.uleb128 0x6
	.long	.LASF107
	.sleb128 21
	.uleb128 0x6
	.long	.LASF108
	.sleb128 22
	.uleb128 0x6
	.long	.LASF109
	.sleb128 23
	.uleb128 0x6
	.long	.LASF110
	.sleb128 24
	.uleb128 0x6
	.long	.LASF111
	.sleb128 25
	.uleb128 0x6
	.long	.LASF112
	.sleb128 26
	.uleb128 0x6
	.long	.LASF113
	.sleb128 27
	.uleb128 0x6
	.long	.LASF114
	.sleb128 28
	.uleb128 0x6
	.long	.LASF115
	.sleb128 29
	.uleb128 0x6
	.long	.LASF116
	.sleb128 30
	.uleb128 0x6
	.long	.LASF117
	.sleb128 31
	.uleb128 0x6
	.long	.LASF118
	.sleb128 32
	.uleb128 0x6
	.long	.LASF119
	.sleb128 33
	.uleb128 0x6
	.long	.LASF120
	.sleb128 34
	.uleb128 0x6
	.long	.LASF121
	.sleb128 35
	.uleb128 0x6
	.long	.LASF122
	.sleb128 36
	.uleb128 0x6
	.long	.LASF123
	.sleb128 -1
	.byte	0
	.uleb128 0xe
	.long	.LASF124
	.byte	0x8
	.word	0x16d
	.long	0x440
	.uleb128 0xe
	.long	.LASF125
	.byte	0x8
	.word	0x170
	.long	0x532
	.uleb128 0x9
	.long	.LASF126
	.byte	0x4
	.byte	0x9
	.byte	0x45
	.long	0x573
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.byte	0x46
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x9
	.byte	0x47
	.long	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x54a
	.uleb128 0x9
	.long	.LASF129
	.byte	0xe
	.byte	0xa
	.byte	0xac
	.long	0x5f6
	.uleb128 0xa
	.string	"hdb"
	.byte	0xa
	.byte	0xad
	.long	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF130
	.byte	0xa
	.byte	0xae
	.long	0x6a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"tid"
	.byte	0xa
	.byte	0xaf
	.long	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF131
	.byte	0xa
	.byte	0xb0
	.long	0x305
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF132
	.byte	0xa
	.byte	0xb1
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF133
	.byte	0xa
	.byte	0xb2
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.long	.LASF134
	.byte	0xa
	.byte	0xb3
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF135
	.byte	0xa
	.byte	0xb4
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x5fc
	.uleb128 0xc
	.long	0x579
	.uleb128 0x4
	.long	.LASF136
	.byte	0x9
	.byte	0x48
	.long	0x54a
	.uleb128 0x4
	.long	.LASF137
	.byte	0x9
	.byte	0x9f
	.long	0x617
	.uleb128 0x7
	.byte	0x2
	.long	0x601
	.uleb128 0x4
	.long	.LASF138
	.byte	0xa
	.byte	0x50
	.long	0xbb
	.uleb128 0x4
	.long	.LASF139
	.byte	0xa
	.byte	0x52
	.long	0x53
	.uleb128 0x5
	.byte	0x2
	.byte	0xa
	.byte	0x71
	.long	0x654
	.uleb128 0x6
	.long	.LASF140
	.sleb128 0
	.uleb128 0x6
	.long	.LASF141
	.sleb128 1
	.uleb128 0x6
	.long	.LASF142
	.sleb128 2
	.uleb128 0x6
	.long	.LASF143
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF144
	.byte	0xa
	.byte	0x79
	.long	0x633
	.uleb128 0x9
	.long	.LASF145
	.byte	0x4
	.byte	0xa
	.byte	0x9c
	.long	0x696
	.uleb128 0xb
	.long	.LASF146
	.byte	0xa
	.byte	0x9d
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF147
	.byte	0xa
	.byte	0x9e
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF148
	.byte	0xa
	.byte	0x9f
	.long	0x34c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF149
	.byte	0xa
	.byte	0xaa
	.long	0x65f
	.uleb128 0x7
	.byte	0x2
	.long	0x696
	.uleb128 0x4
	.long	.LASF150
	.byte	0xa
	.byte	0xb8
	.long	0x5fc
	.uleb128 0x7
	.byte	0x2
	.long	0x6a7
	.uleb128 0x10
	.long	.LASF151
	.byte	0x12
	.byte	0xa
	.word	0x142
	.long	0x779
	.uleb128 0x11
	.long	.LASF152
	.byte	0xa
	.word	0x143
	.long	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"rq"
	.byte	0xa
	.word	0x148
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF153
	.byte	0xa
	.word	0x149
	.long	0x617
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF154
	.byte	0xa
	.word	0x14e
	.long	0x617
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF155
	.byte	0xa
	.word	0x14f
	.long	0x654
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF156
	.byte	0xa
	.word	0x150
	.long	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF157
	.byte	0xa
	.word	0x152
	.long	0x434
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF158
	.byte	0xa
	.word	0x163
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.long	.LASF159
	.byte	0xa
	.word	0x164
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF160
	.byte	0xa
	.word	0x165
	.long	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF161
	.byte	0xa
	.word	0x166
	.long	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF162
	.byte	0xa
	.word	0x167
	.long	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xe
	.long	.LASF163
	.byte	0xa
	.word	0x168
	.long	0x6b8
	.uleb128 0x10
	.long	.LASF164
	.byte	0x6
	.byte	0xa
	.word	0x16a
	.long	0x7c0
	.uleb128 0x11
	.long	.LASF165
	.byte	0xa
	.word	0x16b
	.long	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF166
	.byte	0xa
	.word	0x16d
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF167
	.byte	0xa
	.word	0x16f
	.long	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x779
	.uleb128 0xe
	.long	.LASF168
	.byte	0xa
	.word	0x17e
	.long	0x7d2
	.uleb128 0xc
	.long	0x785
	.uleb128 0x10
	.long	.LASF169
	.byte	0x1
	.byte	0xa
	.word	0x180
	.long	0x7f4
	.uleb128 0x11
	.long	.LASF170
	.byte	0xa
	.word	0x196
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.long	.LASF171
	.byte	0xa
	.word	0x198
	.long	0x7d7
	.uleb128 0x10
	.long	.LASF172
	.byte	0xa
	.byte	0xa
	.word	0x19a
	.long	0x859
	.uleb128 0x11
	.long	.LASF173
	.byte	0xa
	.word	0x19b
	.long	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF174
	.byte	0xa
	.word	0x19e
	.long	0x86a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF175
	.byte	0xa
	.word	0x1a0
	.long	0x87b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF176
	.byte	0xa
	.word	0x1a2
	.long	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF177
	.byte	0xa
	.word	0x1a3
	.long	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7f4
	.uleb128 0x13
	.long	0x5f6
	.long	0x86a
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x85f
	.uleb128 0x13
	.long	0x601
	.long	0x87b
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x870
	.uleb128 0xe
	.long	.LASF178
	.byte	0xa
	.word	0x1b3
	.long	0x88d
	.uleb128 0xc
	.long	0x800
	.uleb128 0x15
	.long	.LASF202
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.long	.LASF179
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.long	0x8b4
	.uleb128 0x17
	.long	.LASF181
	.byte	0x2
	.byte	0x7a
	.long	0x2b4
	.byte	0
	.uleb128 0x18
	.long	.LASF185
	.byte	0x2
	.byte	0x6d
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0x8d0
	.uleb128 0x19
	.string	"sr"
	.byte	0x2
	.byte	0x6f
	.long	0x9a
	.byte	0
	.uleb128 0x16
	.long	.LASF180
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.byte	0x3
	.long	0x8e9
	.uleb128 0x17
	.long	.LASF182
	.byte	0x2
	.byte	0x74
	.long	0x9a
	.byte	0
	.uleb128 0x1a
	.long	.LASF183
	.byte	0x3
	.byte	0xa0
	.byte	0x1
	.long	0x8f
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF184
	.byte	0xb
	.byte	0x46
	.byte	0x1
	.long	0x903
	.byte	0x3
	.uleb128 0x7
	.byte	0x2
	.long	0x7c6
	.uleb128 0x18
	.long	.LASF186
	.byte	0x4
	.byte	0x60
	.byte	0x1
	.long	0x903
	.byte	0x3
	.long	0x926
	.uleb128 0x17
	.long	.LASF128
	.byte	0x4
	.byte	0x62
	.long	0x6b2
	.byte	0
	.uleb128 0x1a
	.long	.LASF187
	.byte	0x2
	.byte	0x8c
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x16
	.long	.LASF188
	.byte	0x2
	.byte	0x93
	.byte	0x1
	.byte	0x3
	.long	0x94c
	.uleb128 0x17
	.long	.LASF189
	.byte	0x2
	.byte	0x93
	.long	0x9a
	.byte	0
	.uleb128 0x18
	.long	.LASF190
	.byte	0x4
	.byte	0xa9
	.byte	0x1
	.long	0x8f
	.byte	0x3
	.long	0x974
	.uleb128 0x17
	.long	.LASF191
	.byte	0x4
	.byte	0xab
	.long	0x974
	.uleb128 0x1b
	.string	"tid"
	.byte	0x4
	.byte	0xac
	.long	0x298
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x881
	.uleb128 0x16
	.long	.LASF192
	.byte	0x4
	.byte	0xea
	.byte	0x1
	.byte	0x3
	.long	0x993
	.uleb128 0x17
	.long	.LASF165
	.byte	0x4
	.byte	0xec
	.long	0x7c0
	.byte	0
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x4
	.word	0x12a
	.byte	0x1
	.byte	0x3
	.long	0x9ba
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x4
	.word	0x12c
	.long	0x7c0
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x4
	.word	0x12d
	.long	0x434
	.byte	0
	.uleb128 0x1c
	.long	.LASF195
	.byte	0x4
	.word	0x140
	.byte	0x1
	.byte	0x3
	.long	0x9e1
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x4
	.word	0x142
	.long	0x7c0
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x4
	.word	0x143
	.long	0x434
	.byte	0
	.uleb128 0x1c
	.long	.LASF196
	.byte	0x4
	.word	0x155
	.byte	0x1
	.byte	0x3
	.long	0xa08
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x4
	.word	0x157
	.long	0x7c0
	.uleb128 0x1d
	.long	.LASF197
	.byte	0x4
	.word	0x158
	.long	0x53e
	.byte	0
	.uleb128 0x16
	.long	.LASF198
	.byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x3
	.long	0xa2c
	.uleb128 0x17
	.long	.LASF199
	.byte	0x3
	.byte	0x84
	.long	0xa2c
	.uleb128 0x17
	.long	.LASF200
	.byte	0x3
	.byte	0x85
	.long	0x61d
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x27d
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x4
	.byte	0x83
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x15
	.long	.LASF203
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.long	.LASF204
	.byte	0x4
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0xa61
	.uleb128 0x17
	.long	.LASF182
	.byte	0x4
	.byte	0x8e
	.long	0x9a
	.byte	0
	.uleb128 0x15
	.long	.LASF205
	.byte	0xb
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.long	.LASF206
	.byte	0x2
	.byte	0xa5
	.byte	0x1
	.long	0x8f
	.byte	0x3
	.long	0xa92
	.uleb128 0x19
	.string	"ivt"
	.byte	0x2
	.byte	0xa8
	.long	0xa92
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x2
	.byte	0xa9
	.long	0xa97
	.byte	0
	.uleb128 0x1f
	.long	0xb0
	.uleb128 0xc
	.long	0x8f
	.uleb128 0x15
	.long	.LASF208
	.byte	0xb
	.byte	0x59
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF209
	.byte	0xb
	.byte	0x4e
	.byte	0x1
	.long	0x974
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF210
	.byte	0x4
	.byte	0x57
	.byte	0x1
	.long	0x6b2
	.byte	0x3
	.uleb128 0x20
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xb06
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x44
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x45
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	0x892
	.long	.LBB219
	.long	.LBE219
	.byte	0x1
	.byte	0x47
	.byte	0
	.uleb128 0xc
	.long	0x903
	.uleb128 0xc
	.long	0x7c0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xbfb
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x57
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x58
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x1
	.byte	0x59
	.long	0xbfb
	.uleb128 0x23
	.long	0xa32
	.long	.LBB221
	.long	.LBE221
	.byte	0x1
	.byte	0x59
	.long	0xba6
	.uleb128 0x24
	.long	0x926
	.long	.LBB222
	.long	.LBE222
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB223
	.long	.LBE223
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB224
	.long	.LBE224
	.uleb128 0x26
	.long	0x8c5
	.byte	0x1
	.byte	0x69
	.uleb128 0x22
	.long	0x892
	.long	.LBB225
	.long	.LBE225
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa3f
	.long	.LBB227
	.long	.LBE227
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	0xa48
	.long	.LBB229
	.long	.LBE229
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.long	0xa55
	.byte	0x1
	.byte	0x69
	.uleb128 0x24
	.long	0x933
	.long	.LBB230
	.long	.LBE230
	.byte	0x4
	.byte	0x91
	.uleb128 0x27
	.long	0x940
	.byte	0x1
	.byte	0x69
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB231
	.long	.LBE231
	.byte	0x2
	.byte	0x95
	.uleb128 0x27
	.long	0x8dd
	.byte	0x1
	.byte	0x69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x9a
	.uleb128 0x20
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xc7f
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x69
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x6a
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x25
	.long	.LBB233
	.long	.LBE233
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x1
	.byte	0x6d
	.long	0xbfb
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB234
	.long	.LBE234
	.byte	0x1
	.byte	0x6d
	.uleb128 0x25
	.long	.LBB235
	.long	.LBE235
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST0
	.uleb128 0x22
	.long	0x892
	.long	.LBB236
	.long	.LBE236
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF215
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xcd0
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x7b
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x7c
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB238
	.long	.LBE238
	.byte	0x1
	.byte	0x80
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF216
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd5f
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x8b
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x8c
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x25
	.long	.LBB240
	.long	.LBE240
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x1
	.byte	0x8f
	.long	0xbfb
	.uleb128 0x24
	.long	0x926
	.long	.LBB241
	.long	.LBE241
	.byte	0x1
	.byte	0x8f
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB242
	.long	.LBE242
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB243
	.long	.LBE243
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST2
	.uleb128 0x22
	.long	0x892
	.long	.LBB244
	.long	.LBE244
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF217
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xdc9
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0x9d
	.long	0xb06
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x9e
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	0x933
	.long	.LBB246
	.long	.LBE246
	.byte	0x1
	.byte	0xa2
	.uleb128 0x29
	.long	0x940
	.long	.LLST3
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB247
	.long	.LBE247
	.byte	0x2
	.byte	0x95
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF218
	.byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0xde2
	.uleb128 0x17
	.long	.LASF219
	.byte	0x3
	.byte	0x8e
	.long	0x6b2
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF220
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	0x434
	.long	.LFB58
	.long	.LFE58
	.long	.LLST5
	.byte	0x1
	.long	0xf5f
	.uleb128 0x2b
	.long	.LASF223
	.byte	0x1
	.byte	0xaa
	.long	0x28d
	.long	.LLST6
	.uleb128 0x2c
	.string	"ev"
	.byte	0x1
	.byte	0xad
	.long	0x434
	.long	.LLST7
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.byte	0xae
	.long	0xb06
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.byte	0xaf
	.long	0xb0b
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x1
	.byte	0xb0
	.long	0xbfb
	.uleb128 0x23
	.long	0xa32
	.long	.LBB266
	.long	.LBE266
	.byte	0x1
	.byte	0xb0
	.long	0xe94
	.uleb128 0x24
	.long	0x926
	.long	.LBB267
	.long	.LBE267
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB268
	.long	.LBE268
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB269
	.long	.LBE269
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST8
	.uleb128 0x22
	.long	0x892
	.long	.LBB270
	.long	.LBE270
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0xa6a
	.long	.LBB272
	.long	.LBE272
	.byte	0x1
	.byte	0xb5
	.long	0xebf
	.uleb128 0x25
	.long	.LBB273
	.long	.LBE273
	.uleb128 0x26
	.long	0xa7b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2d
	.long	0xa86
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LBB274
	.long	.LBE274
	.long	0xf12
	.uleb128 0x21
	.long	.LASF219
	.byte	0x1
	.byte	0xb8
	.long	0xf5f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	0xdc9
	.long	.LBB275
	.long	.LBE275
	.byte	0x1
	.word	0x120
	.long	0xf01
	.uleb128 0x30
	.long	0xdd6
	.uleb128 0x31
	.long	.LVL24
	.long	0x1770
	.byte	0
	.uleb128 0x32
	.long	0xa3f
	.long	.LBB277
	.long	.LBE277
	.byte	0x1
	.word	0x13e
	.byte	0
	.uleb128 0x33
	.long	0xa48
	.long	.LBB279
	.long	.LBE279
	.byte	0x1
	.word	0x14c
	.uleb128 0x29
	.long	0xa55
	.long	.LLST9
	.uleb128 0x24
	.long	0x933
	.long	.LBB280
	.long	.LBE280
	.byte	0x4
	.byte	0x91
	.uleb128 0x29
	.long	0x940
	.long	.LLST9
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB281
	.long	.LBE281
	.byte	0x2
	.byte	0x95
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6b2
	.uleb128 0x34
	.byte	0x1
	.long	.LASF221
	.byte	0x1
	.word	0x152
	.byte	0x1
	.long	0x28d
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xfa7
	.uleb128 0x35
	.long	.LASF156
	.byte	0x1
	.word	0x157
	.long	0x28d
	.long	.LLST12
	.uleb128 0x36
	.long	.LASF165
	.byte	0x1
	.word	0x159
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF222
	.byte	0x1
	.word	0x164
	.byte	0x1
	.long	0x434
	.long	.LFB60
	.long	.LFE60
	.long	.LLST13
	.byte	0x1
	.long	0x110c
	.uleb128 0x38
	.long	.LASF224
	.byte	0x1
	.word	0x166
	.long	0x298
	.long	.LLST14
	.uleb128 0x39
	.string	"ev"
	.byte	0x1
	.word	0x169
	.long	0x434
	.long	.LLST15
	.uleb128 0x3a
	.long	.LASF191
	.byte	0x1
	.word	0x16a
	.long	0x110c
	.uleb128 0x2f
	.long	0x94c
	.long	.LBB283
	.long	.LBE283
	.byte	0x1
	.word	0x16c
	.long	0x1014
	.uleb128 0x30
	.long	0x95d
	.uleb128 0x29
	.long	0x968
	.long	.LLST16
	.byte	0
	.uleb128 0x25
	.long	.LBB285
	.long	.LBE285
	.uleb128 0x35
	.long	.LASF225
	.byte	0x1
	.word	0x171
	.long	0xf5f
	.long	.LLST17
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x1
	.word	0x173
	.long	0xb06
	.uleb128 0x25
	.long	.LBB286
	.long	.LBE286
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.word	0x176
	.long	0xbfb
	.uleb128 0x2f
	.long	0xa32
	.long	.LBB287
	.long	.LBE287
	.byte	0x1
	.word	0x176
	.long	0x10a5
	.uleb128 0x24
	.long	0x926
	.long	.LBB288
	.long	.LBE288
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB289
	.long	.LBE289
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB290
	.long	.LBE290
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST18
	.uleb128 0x22
	.long	0x892
	.long	.LBB291
	.long	.LBE291
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0xa48
	.long	.LBB293
	.long	.LBE293
	.byte	0x1
	.word	0x17a
	.long	0x10f5
	.uleb128 0x29
	.long	0xa55
	.long	.LLST19
	.uleb128 0x24
	.long	0x933
	.long	.LBB294
	.long	.LBE294
	.byte	0x4
	.byte	0x91
	.uleb128 0x29
	.long	0x940
	.long	.LLST19
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB295
	.long	.LBE295
	.byte	0x2
	.byte	0x95
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL38
	.long	0x178e
	.uleb128 0x3c
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x974
	.uleb128 0x37
	.byte	0x1
	.long	.LASF226
	.byte	0x1
	.word	0x195
	.byte	0x1
	.long	0x434
	.long	.LFB61
	.long	.LFE61
	.long	.LLST22
	.byte	0x1
	.long	0x12ba
	.uleb128 0x38
	.long	.LASF224
	.byte	0x1
	.word	0x197
	.long	0x298
	.long	.LLST23
	.uleb128 0x39
	.string	"ev"
	.byte	0x1
	.word	0x19a
	.long	0x434
	.long	.LLST24
	.uleb128 0x3a
	.long	.LASF191
	.byte	0x1
	.word	0x19b
	.long	0x110c
	.uleb128 0x2f
	.long	0x94c
	.long	.LBB297
	.long	.LBE297
	.byte	0x1
	.word	0x19d
	.long	0x117e
	.uleb128 0x30
	.long	0x95d
	.uleb128 0x29
	.long	0x968
	.long	.LLST25
	.byte	0
	.uleb128 0x25
	.long	.LBB299
	.long	.LBE299
	.uleb128 0x35
	.long	.LASF225
	.byte	0x1
	.word	0x1a1
	.long	0xf5f
	.long	.LLST26
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x1
	.word	0x1a3
	.long	0xb06
	.uleb128 0x3a
	.long	.LASF152
	.byte	0x1
	.word	0x1a5
	.long	0xf5f
	.uleb128 0x32
	.long	0xab2
	.long	.LBB300
	.long	.LBE300
	.byte	0x1
	.word	0x1a5
	.uleb128 0x25
	.long	.LBB302
	.long	.LBE302
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.word	0x1bc
	.long	0xbfb
	.uleb128 0x2f
	.long	0xa32
	.long	.LBB303
	.long	.LBE303
	.byte	0x1
	.word	0x1bc
	.long	0x122b
	.uleb128 0x24
	.long	0x926
	.long	.LBB304
	.long	.LBE304
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB305
	.long	.LBE305
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB306
	.long	.LBE306
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST27
	.uleb128 0x22
	.long	0x892
	.long	.LBB307
	.long	.LBE307
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0xa08
	.long	.LBB309
	.long	.LBE309
	.byte	0x1
	.word	0x1c7
	.long	0x1253
	.uleb128 0x30
	.long	0xa15
	.uleb128 0x30
	.long	0xa20
	.uleb128 0x31
	.long	.LVL50
	.long	0x17b5
	.byte	0
	.uleb128 0x2f
	.long	0xa48
	.long	.LBB311
	.long	.LBE311
	.byte	0x1
	.word	0x1ca
	.long	0x12a3
	.uleb128 0x29
	.long	0xa55
	.long	.LLST28
	.uleb128 0x24
	.long	0x933
	.long	.LBB312
	.long	.LBE312
	.byte	0x4
	.byte	0x91
	.uleb128 0x29
	.long	0x940
	.long	.LLST28
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB313
	.long	.LBE313
	.byte	0x2
	.byte	0x95
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL48
	.long	0x178e
	.uleb128 0x3c
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF227
	.byte	0x1
	.word	0x1e4
	.byte	0x1
	.long	0x434
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x13a0
	.uleb128 0x3d
	.string	"ev"
	.byte	0x1
	.word	0x1e9
	.long	0x434
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x1
	.word	0x1eb
	.long	0xb06
	.uleb128 0x3a
	.long	.LASF165
	.byte	0x1
	.word	0x1ed
	.long	0xb0b
	.uleb128 0x35
	.long	.LASF152
	.byte	0x1
	.word	0x1ef
	.long	0xf5f
	.long	.LLST31
	.uleb128 0x25
	.long	.LBB315
	.long	.LBE315
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.word	0x217
	.long	0xbfb
	.uleb128 0x2f
	.long	0xa32
	.long	.LBB316
	.long	.LBE316
	.byte	0x1
	.word	0x217
	.long	0x1376
	.uleb128 0x24
	.long	0x926
	.long	.LBB317
	.long	.LBE317
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB318
	.long	.LBE318
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB319
	.long	.LBE319
	.uleb128 0x26
	.long	0x8c5
	.byte	0x1
	.byte	0x68
	.uleb128 0x22
	.long	0x892
	.long	.LBB320
	.long	.LBE320
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xa08
	.long	.LBB322
	.long	.LBE322
	.byte	0x1
	.word	0x21a
	.uleb128 0x29
	.long	0xa15
	.long	.LLST32
	.uleb128 0x30
	.long	0xa20
	.uleb128 0x31
	.long	.LVL56
	.long	0x17b5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF228
	.byte	0x1
	.word	0x231
	.byte	0x1
	.long	0x434
	.long	.LFB63
	.long	.LFE63
	.long	.LLST33
	.byte	0x1
	.long	0x14ce
	.uleb128 0x3e
	.string	"ev"
	.byte	0x1
	.word	0x236
	.long	0x434
	.byte	0
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x1
	.word	0x237
	.long	0xb06
	.uleb128 0x35
	.long	.LASF165
	.byte	0x1
	.word	0x238
	.long	0xb0b
	.long	.LLST34
	.uleb128 0x35
	.long	.LASF152
	.byte	0x1
	.word	0x239
	.long	0xf5f
	.long	.LLST35
	.uleb128 0x35
	.long	.LASF130
	.byte	0x1
	.word	0x23a
	.long	0x14ce
	.long	.LLST36
	.uleb128 0x25
	.long	.LBB324
	.long	.LBE324
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.word	0x246
	.long	0xbfb
	.uleb128 0x2f
	.long	0xa32
	.long	.LBB325
	.long	.LBE325
	.byte	0x1
	.word	0x246
	.long	0x1473
	.uleb128 0x24
	.long	0x926
	.long	.LBB326
	.long	.LBE326
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB327
	.long	.LBE327
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB328
	.long	.LBE328
	.uleb128 0x28
	.long	0x8c5
	.long	.LLST37
	.uleb128 0x22
	.long	0x892
	.long	.LBB329
	.long	.LBE329
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0xa48
	.long	.LBB331
	.long	.LBE331
	.byte	0x1
	.word	0x250
	.long	0x14c3
	.uleb128 0x29
	.long	0xa55
	.long	.LLST38
	.uleb128 0x24
	.long	0x933
	.long	.LBB332
	.long	.LBE332
	.byte	0x4
	.byte	0x91
	.uleb128 0x29
	.long	0x940
	.long	.LLST38
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB333
	.long	.LBE333
	.byte	0x2
	.byte	0x95
	.uleb128 0x29
	.long	0x8dd
	.long	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LVL62
	.long	0x17ce
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6a1
	.uleb128 0x34
	.byte	0x1
	.long	.LASF229
	.byte	0x1
	.word	0x2fc
	.byte	0x1
	.long	0x434
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x15f5
	.uleb128 0x38
	.long	.LASF194
	.byte	0x1
	.word	0x2fe
	.long	0x434
	.long	.LLST41
	.uleb128 0x3e
	.string	"ev"
	.byte	0x1
	.word	0x301
	.long	0x434
	.byte	0x7
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x1
	.word	0x302
	.long	0xb06
	.uleb128 0x36
	.long	.LASF165
	.byte	0x1
	.word	0x303
	.long	0xb0b
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.word	0x304
	.long	0xbfb
	.uleb128 0x35
	.long	.LASF155
	.byte	0x1
	.word	0x305
	.long	0x15f5
	.long	.LLST42
	.uleb128 0x2f
	.long	0xa32
	.long	.LBB335
	.long	.LBE335
	.byte	0x1
	.word	0x304
	.long	0x159e
	.uleb128 0x24
	.long	0x926
	.long	.LBB336
	.long	.LBE336
	.byte	0x4
	.byte	0x88
	.uleb128 0x24
	.long	0x8b4
	.long	.LBB337
	.long	.LBE337
	.byte	0x2
	.byte	0x8e
	.uleb128 0x25
	.long	.LBB338
	.long	.LBE338
	.uleb128 0x26
	.long	0x8c5
	.byte	0x1
	.byte	0x69
	.uleb128 0x22
	.long	0x892
	.long	.LBB339
	.long	.LBE339
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x892
	.long	.LBB341
	.long	.LBE341
	.byte	0x1
	.word	0x30e
	.uleb128 0x33
	.long	0xa48
	.long	.LBB343
	.long	.LBE343
	.byte	0x1
	.word	0x321
	.uleb128 0x27
	.long	0xa55
	.byte	0x1
	.byte	0x69
	.uleb128 0x24
	.long	0x933
	.long	.LBB344
	.long	.LBE344
	.byte	0x4
	.byte	0x91
	.uleb128 0x27
	.long	0x940
	.byte	0x1
	.byte	0x69
	.uleb128 0x24
	.long	0x8d0
	.long	.LBB345
	.long	.LBE345
	.byte	0x2
	.byte	0x95
	.uleb128 0x27
	.long	0x8dd
	.byte	0x1
	.byte	0x69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x654
	.uleb128 0x37
	.byte	0x1
	.long	.LASF230
	.byte	0x1
	.word	0x326
	.byte	0x1
	.long	0x434
	.long	.LFB65
	.long	.LFE65
	.long	.LLST43
	.byte	0x1
	.long	0x16af
	.uleb128 0x38
	.long	.LASF224
	.byte	0x1
	.word	0x328
	.long	0x2a3
	.long	.LLST44
	.uleb128 0x39
	.string	"ev"
	.byte	0x1
	.word	0x32b
	.long	0x434
	.long	.LLST45
	.uleb128 0x25
	.long	.LBB347
	.long	.LBE347
	.uleb128 0x39
	.string	"tid"
	.byte	0x1
	.word	0x335
	.long	0x298
	.long	.LLST46
	.uleb128 0x3a
	.long	.LASF128
	.byte	0x1
	.word	0x337
	.long	0xf5f
	.uleb128 0x32
	.long	0xab2
	.long	.LBB348
	.long	.LBE348
	.byte	0x1
	.word	0x337
	.uleb128 0x25
	.long	.LBB350
	.long	.LBE350
	.uleb128 0x35
	.long	.LASF165
	.byte	0x1
	.word	0x33d
	.long	0xb0b
	.long	.LLST47
	.uleb128 0x35
	.long	.LASF231
	.byte	0x1
	.word	0x340
	.long	0x617
	.long	.LLST48
	.uleb128 0x3f
	.long	.Ldebug_ranges0+0
	.uleb128 0x35
	.long	.LASF232
	.byte	0x1
	.word	0x344
	.long	0xf5f
	.long	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.word	0x366
	.byte	0x1
	.long	0x434
	.long	.LFB66
	.long	.LFE66
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1751
	.uleb128 0x38
	.long	.LASF224
	.byte	0x1
	.word	0x368
	.long	0x298
	.long	.LLST50
	.uleb128 0x40
	.long	.LASF234
	.byte	0x1
	.word	0x369
	.long	0x357
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x41
	.string	"ev"
	.byte	0x1
	.word	0x36c
	.long	0x434
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3a
	.long	.LASF191
	.byte	0x1
	.word	0x36d
	.long	0x110c
	.uleb128 0x2f
	.long	0x94c
	.long	.LBB353
	.long	.LBE353
	.byte	0x1
	.word	0x377
	.long	0x1732
	.uleb128 0x30
	.long	0x95d
	.uleb128 0x29
	.long	0x968
	.long	.LLST51
	.byte	0
	.uleb128 0x3f
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x3a
	.long	.LASF128
	.byte	0x1
	.word	0x37c
	.long	0xf5f
	.uleb128 0x3a
	.long	.LASF235
	.byte	0x1
	.word	0x37f
	.long	0x1751
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x298
	.uleb128 0x42
	.string	"KDB"
	.byte	0xb
	.byte	0x3b
	.long	0x881
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"CDB"
	.byte	0xb
	.byte	0x3c
	.long	0x7c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.byte	0x1
	.long	.LASF236
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x1
	.long	0x178e
	.uleb128 0x44
	.long	0x6b2
	.uleb128 0x44
	.long	0x277
	.uleb128 0x44
	.long	0x277
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF241
	.byte	0xc
	.byte	0x73
	.byte	0x1
	.long	0x434
	.byte	0x1
	.long	0x17b5
	.uleb128 0x44
	.long	0x974
	.uleb128 0x44
	.long	0x903
	.uleb128 0x44
	.long	0x6b2
	.uleb128 0x44
	.long	0xa97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.long	.LASF237
	.byte	0x3
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.long	0x17ce
	.uleb128 0x44
	.long	0x277
	.uleb128 0x44
	.long	0x61d
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF238
	.byte	0xc
	.byte	0x7c
	.byte	0x1
	.long	0x8f
	.byte	0x1
	.uleb128 0x44
	.long	0x974
	.uleb128 0x44
	.long	0x903
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x16
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
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x8e
	.sleb128 13
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x8e
	.sleb128 14
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LFB58
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
	.sleb128 8
	.long	.LCFI5
	.long	.LFE58
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL18
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL23
	.word	0x1
	.byte	0x62
	.long	.LVL23
	.long	.LVL24-1
	.word	0x2
	.byte	0x80
	.sleb128 10
	.long	.LVL24-1
	.long	.LVL27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x68
	.long	.LVL28
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL27
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL24-1
	.word	0x1
	.byte	0x69
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST9:
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST12:
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x68
	.long	.LVL32
	.long	.LFE59
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST13:
	.long	.LFB60
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST14:
	.long	.LVL33
	.long	.LVL35
	.word	0x1
	.byte	0x68
	.long	.LVL35
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LFE60
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x68
	.long	.LVL35
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL36
	.long	.LVL38-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL37
	.long	.LVL39
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST19:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST22:
	.long	.LFB61
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9
	.long	.LFE61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST23:
	.long	.LVL41
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LFE61
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL44
	.long	.LVL48-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL51
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST28:
	.long	.LVL50
	.long	.LVL51
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST31:
	.long	.LVL54
	.long	.LVL56-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL55
	.long	.LVL56-1
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
	.long	.LFB63
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LFE63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST34:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x2
	.byte	0x86
	.sleb128 0
	.long	0
	.long	0
.LLST35:
	.long	.LVL58
	.long	.LVL65
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LVL59
	.long	.LVL66
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LFE63
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST37:
	.long	.LVL60
	.long	.LVL64
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST38:
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST41:
	.long	.LVL67
	.long	.LVL71
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LFE64
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LVL70
	.long	.LVL72
	.word	0x2
	.byte	0x8e
	.sleb128 8
	.long	.LVL72
	.long	.LVL73
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0x2
	.byte	0x8e
	.sleb128 8
	.long	.LVL74
	.long	.LFE64
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LFB65
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST44:
	.long	.LVL75
	.long	.LVL77
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL87
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LFE65
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST45:
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LFE65
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LVL76
	.long	.LVL83
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x69
	.long	.LVL84
	.long	.LVL85
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL85
	.long	.LVL87
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST47:
	.long	.LVL78
	.long	.LVL79
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LVL80
	.long	.LVL82
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST50:
	.long	.LVL89
	.long	.LVL92
	.word	0x1
	.byte	0x68
	.long	.LVL92
	.long	.LVL93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL93
	.long	.LVL94
	.word	0x1
	.byte	0x68
	.long	.LVL94
	.long	.LVL95
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.word	0x1
	.byte	0x68
	.long	.LVL96
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL90
	.long	.LVL92
	.word	0x1
	.byte	0x68
	.long	.LVL92
	.long	.LVL93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.word	0x1
	.byte	0x68
	.long	.LVL96
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB351
	.long	.LBE351
	.long	.LBB352
	.long	.LBE352
	.long	0
	.long	0
	.long	.LBB355
	.long	.LBE355
	.long	.LBB356
	.long	.LBE356
	.long	0
	.long	0
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF219:
	.string	"p_idle_tdb"
.LASF139:
	.string	"OsEE_byte"
.LASF154:
	.string	"p_stk_sn"
.LASF145:
	.string	"OsEE_TCB_tag"
.LASF193:
	.string	"osEE_call_shutdown_hook"
.LASF124:
	.string	"OsEE_service_id_type"
.LASF13:
	.string	"OsEE_reg"
.LASF110:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF164:
	.string	"OsEE_CDB_tag"
.LASF122:
	.string	"OSId_Kernel"
.LASF36:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF72:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF92:
	.string	"OSServiceId_Schedule"
.LASF229:
	.string	"ShutdownOS"
.LASF125:
	.string	"OSServiceIdType"
.LASF39:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF42:
	.string	"OsEE_task_type_tag"
.LASF9:
	.string	"long long unsigned int"
.LASF84:
	.string	"StatusType"
.LASF50:
	.string	"OsEE_task_status"
.LASF21:
	.string	"OsEE_SCB"
.LASF98:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF109:
	.string	"OSServiceId_ResumeOSInterrupts_Exit"
.LASF44:
	.string	"OSEE_TASK_SUSPENDED"
.LASF214:
	.string	"SuspendAllInterrupts"
.LASF38:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF43:
	.string	"OsEE_task_status_tag"
.LASF131:
	.string	"task_type"
.LASF153:
	.string	"p_free_sn"
.LASF150:
	.string	"OsEE_TDB"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF88:
	.string	"OSServiceId_TerminateTask"
.LASF101:
	.string	"OSServiceId_EnableAllInterrupts_Exit"
.LASF207:
	.string	"cpu_startos_ok"
.LASF187:
	.string	"osEE_hal_begin_nested_primitive"
.LASF71:
	.string	"E_OS_PROTECTION_TIME"
.LASF82:
	.string	"E_OS_SYS_ACT"
.LASF167:
	.string	"p_idle_task"
.LASF233:
	.string	"GetTaskState"
.LASF54:
	.string	"OsEE_status_type_tag"
.LASF102:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF40:
	.string	"OsEE_task_type"
.LASF91:
	.string	"OSServiceId_ChainTask_Exit"
.LASF33:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF105:
	.string	"OSServiceId_ResumeAllInterrupts_Exit"
.LASF78:
	.string	"E_OS_CORE"
.LASF56:
	.string	"E_OS_ACCESS"
.LASF97:
	.string	"OSServiceId_GetTaskState_Exit"
.LASF183:
	.string	"osEE_std_cpu_startos"
.LASF230:
	.string	"GetTaskID"
.LASF240:
	.string	"/home/yvonne/receiver/erika/src/ee_oo_api_osek.c"
.LASF29:
	.string	"OsEE_HDB"
.LASF156:
	.string	"app_mode"
.LASF6:
	.string	"uint16_t"
.LASF144:
	.string	"OsEE_kernel_status"
.LASF25:
	.string	"OsEE_SDB"
.LASF239:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF20:
	.string	"p_tos"
.LASF104:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF58:
	.string	"E_OS_ID"
.LASF53:
	.string	"MemSize"
.LASF223:
	.string	"Mode"
.LASF141:
	.string	"OSEE_KERNEL_STARTING"
.LASF170:
	.string	"dummy"
.LASF73:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF181:
	.string	"virt_prio"
.LASF132:
	.string	"task_func"
.LASF201:
	.string	"osEE_begin_primitive"
.LASF135:
	.string	"max_num_of_act"
.LASF177:
	.string	"sn_array_size"
.LASF0:
	.string	"unsigned int"
.LASF199:
	.string	"p_to_term"
.LASF100:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF179:
	.string	"osEE_hal_set_ipl"
.LASF11:
	.string	"OSEE_TRUE"
.LASF8:
	.string	"long unsigned int"
.LASF62:
	.string	"E_OS_STATE"
.LASF169:
	.string	"OsEE_KCB_tag"
.LASF200:
	.string	"kernel_cb"
.LASF70:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF85:
	.string	"OsEE_service_id_type_tag"
.LASF180:
	.string	"osEE_hal_resumeIRQ"
.LASF220:
	.string	"StartOS"
.LASF86:
	.string	"OSServiceId_ActivateTask"
.LASF205:
	.string	"osEE_lock_kernel"
.LASF35:
	.string	"TaskFunc"
.LASF202:
	.string	"osEE_hal_disableIRQ"
.LASF31:
	.string	"TaskType"
.LASF191:
	.string	"p_kdb"
.LASF140:
	.string	"OSEE_KERNEL_STOPPED"
.LASF215:
	.string	"ResumeAllInterrupts"
.LASF155:
	.string	"os_status"
.LASF30:
	.string	"AppModeType"
.LASF129:
	.string	"OsEE_TDB_tag"
.LASF210:
	.string	"osEE_get_curr_task"
.LASF49:
	.string	"OSEE_TASK_CHAINED"
.LASF198:
	.string	"osEE_hal_terminate_activation"
.LASF137:
	.string	"OsEE_RQ"
.LASF163:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF166:
	.string	"p_idle_hook"
.LASF158:
	.string	"prev_s_isr_all_status"
.LASF123:
	.string	"OsId_Invalid"
.LASF89:
	.string	"OSServiceId_TerminateTask_Exit"
.LASF55:
	.string	"E_OK"
.LASF19:
	.string	"OsEE_SCB_tag"
.LASF47:
	.string	"OSEE_TASK_WAITING"
.LASF172:
	.string	"OsEE_KDB_tag"
.LASF162:
	.string	"d_isr_all_cnt"
.LASF173:
	.string	"p_kcb"
.LASF194:
	.string	"Error"
.LASF99:
	.string	"OSServiceId_DisableAllInterrupts_Exit"
.LASF227:
	.string	"TerminateTask"
.LASF152:
	.string	"p_curr"
.LASF218:
	.string	"osEE_idle_task_start"
.LASF209:
	.string	"osEE_get_kernel"
.LASF119:
	.string	"OSId_ISR2Body_Exit"
.LASF23:
	.string	"p_bos"
.LASF116:
	.string	"OSId_TaskBody"
.LASF90:
	.string	"OSServiceId_ChainTask"
.LASF236:
	.string	"osEE_hal_save_ctx_and_ready2stacked"
.LASF2:
	.string	"long double"
.LASF225:
	.string	"p_tdb_act"
.LASF212:
	.string	"DisableAllInterrupts"
.LASF34:
	.string	"TaskActivation"
.LASF213:
	.string	"EnableAllInterrupts"
.LASF208:
	.string	"osEE_unlock_kernel"
.LASF69:
	.string	"E_OS_PARAM_POINTER"
.LASF93:
	.string	"OSServiceId_Schedule_Exit"
.LASF67:
	.string	"E_OS_DISABLEDINT"
.LASF171:
	.string	"OsEE_KCB"
.LASF136:
	.string	"OsEE_SN"
.LASF96:
	.string	"OSServiceId_GetTaskState"
.LASF161:
	.string	"s_isr_os_cnt"
.LASF192:
	.string	"osEE_call_startup_hook"
.LASF66:
	.string	"E_OS_MISSINGEND"
.LASF203:
	.string	"osEE_hal_enableIRQ"
.LASF241:
	.string	"osEE_scheduler_task_activated"
.LASF52:
	.string	"TaskStateRefType"
.LASF226:
	.string	"ChainTask"
.LASF87:
	.string	"OSServiceId_ActivateTask_Exit"
.LASF12:
	.string	"OsEE_bool"
.LASF46:
	.string	"OSEE_TASK_READY_STACKED"
.LASF63:
	.string	"E_OS_VALUE"
.LASF22:
	.string	"OsEE_SDB_tag"
.LASF143:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF184:
	.string	"osEE_get_curr_core"
.LASF95:
	.string	"OSServiceId_GetTaskID_Exit"
.LASF238:
	.string	"osEE_scheduler_task_preemption_point"
.LASF108:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF130:
	.string	"p_tcb"
.LASF106:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF121:
	.string	"OSId_Action_Exit"
.LASF237:
	.string	"osEE_hal_terminate_ctx"
.LASF4:
	.string	"unsigned char"
.LASF74:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF18:
	.string	"OsEE_CTX_tag"
.LASF81:
	.string	"E_OS_SYS_STACK"
.LASF142:
	.string	"OSEE_KERNEL_STARTED"
.LASF216:
	.string	"SuspendOSInterrupts"
.LASF76:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF178:
	.string	"OsEE_KDB"
.LASF174:
	.string	"p_tdb_ptr_array"
.LASF127:
	.string	"p_next"
.LASF45:
	.string	"OSEE_TASK_READY"
.LASF186:
	.string	"osEE_get_task_curr_core"
.LASF168:
	.string	"OsEE_CDB"
.LASF59:
	.string	"E_OS_LIMIT"
.LASF195:
	.string	"osEE_call_error_hook"
.LASF217:
	.string	"ResumeOSInterrupts"
.LASF15:
	.string	"OsEE_void_cb"
.LASF175:
	.string	"p_sn_array"
.LASF117:
	.string	"OSId_TaskBody_Exit"
.LASF190:
	.string	"osEE_is_valid_tid"
.LASF37:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF138:
	.string	"OsEE_kernel_cb"
.LASF159:
	.string	"prev_s_isr_os_status"
.LASF113:
	.string	"OSServiceId_ShutdownOS_Exit"
.LASF157:
	.string	"last_error"
.LASF126:
	.string	"OsEE_SN_tag"
.LASF189:
	.string	"flag"
.LASF147:
	.string	"current_prio"
.LASF79:
	.string	"E_OS_SYS_INIT"
.LASF83:
	.string	"OsEE_status_type"
.LASF128:
	.string	"p_tdb"
.LASF234:
	.string	"State"
.LASF32:
	.string	"TaskRefType"
.LASF111:
	.string	"OSServiceId_GetActiveApplicationMode_Exit"
.LASF197:
	.string	"service_id"
.LASF115:
	.string	"OSServiceId_StartOS_Exit"
.LASF206:
	.string	"osEE_cpu_startos"
.LASF14:
	.string	"OsEE_mem_size"
.LASF196:
	.string	"osEE_set_service_id"
.LASF146:
	.string	"current_num_of_act"
.LASF107:
	.string	"OSServiceId_SuspendOSInterrupts_Exit"
.LASF28:
	.string	"p_scb"
.LASF51:
	.string	"TaskStateType"
.LASF80:
	.string	"E_OS_SYS_TASK"
.LASF228:
	.string	"Schedule"
.LASF211:
	.string	"p_cdb"
.LASF61:
	.string	"E_OS_RESOURCE"
.LASF118:
	.string	"OSId_ISR2Body"
.LASF188:
	.string	"osEE_hal_end_nested_primitive"
.LASF204:
	.string	"osEE_end_primitive"
.LASF221:
	.string	"GetActiveApplicationMode"
.LASF176:
	.string	"tdb_array_size"
.LASF160:
	.string	"s_isr_all_cnt"
.LASF114:
	.string	"OSServiceId_StartOS"
.LASF94:
	.string	"OSServiceId_GetTaskID"
.LASF120:
	.string	"OSId_Action"
.LASF231:
	.string	"p_sn"
.LASF148:
	.string	"status"
.LASF77:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF134:
	.string	"dispatch_prio"
.LASF224:
	.string	"TaskID"
.LASF5:
	.string	"uint8_t"
.LASF235:
	.string	"local_state"
.LASF182:
	.string	"flags"
.LASF64:
	.string	"E_OS_SERVICEID"
.LASF24:
	.string	"stack_size"
.LASF149:
	.string	"OsEE_TCB"
.LASF222:
	.string	"ActivateTask"
.LASF112:
	.string	"OSServiceId_ShutdownOS"
.LASF65:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF26:
	.string	"OsEE_HDB_tag"
.LASF151:
	.string	"OsEE_CCB_tag"
.LASF60:
	.string	"E_OS_NOFUNC"
.LASF185:
	.string	"osEE_hal_suspendIRQ"
.LASF27:
	.string	"p_sdb"
.LASF57:
	.string	"E_OS_CALLEVEL"
.LASF41:
	.string	"TaskExecutionType"
.LASF48:
	.string	"OSEE_TASK_RUNNING"
.LASF232:
	.string	"p_searched_tdb"
.LASF103:
	.string	"OSServiceId_SuspendAllInterrupts_Exit"
.LASF133:
	.string	"ready_prio"
.LASF68:
	.string	"E_OS_STACKFAULT"
.LASF165:
	.string	"p_ccb"
.LASF16:
	.string	"p_ctx"
.LASF75:
	.string	"E_OS_SPINLOCK"
.LASF17:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
