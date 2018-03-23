# 1 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
# 1 "/home/yvonne/distance_sensor/erika//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
# 55 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .macro osEE_hal_save_vcontext_m p_from_scb_h p_from_scb_l

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


    mov r30, \p_from_scb_l
    mov r31, \p_from_scb_h
    ld r4, z+
    ld r5, z


    push r4
    push r5


    mov r30, \p_from_scb_l
    mov r31, \p_from_scb_h
    in r4, 0x3D
    in r5, 0x3E
    st z+, r4
    st z, r5
  .endm


  .macro osEE_hal_restore_vcontext_m p_to_scb_h p_to_scb_l


    mov r30, \p_to_scb_l
    mov r31, \p_to_scb_h
    ld r4, z+
    ld r5, z


    out 0x3D, r4
    out 0x3E, r5


    pop r5
    pop r4


    mov r30, \p_to_scb_l
    mov r31, \p_to_scb_h
    st z+, r4
    st z, r5


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

  .endm
# 149 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .align 2
  .globl osEE_hal_save_ctx_and_restore_ctx
  .type osEE_hal_save_ctx_and_restore_ctx, @function
osEE_hal_save_ctx_and_restore_ctx:



    osEE_hal_save_vcontext_m r21 r20


    jmp osEE_hal_restore_ctx

  .size osEE_hal_save_ctx_and_restore_ctx, .-osEE_hal_save_ctx_and_restore_ctx
# 171 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .align 2
  .globl osEE_hal_restore_ctx
  .type osEE_hal_restore_ctx, @function
osEE_hal_restore_ctx:


    osEE_hal_restore_vcontext_m r23 r22
    jmp osEE_scheduler_task_wrapper_restore
  .size osEE_hal_restore_ctx, .-osEE_hal_restore_ctx
# 189 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .align 2
  .global osEE_hal_ready2stacked
  .type osEE_hal_ready2stacked, @function
osEE_hal_ready2stacked:



    mov r30, r22
    mov r31, r23
    ld r20, z+
    ld r21, z

    out 0x3D, r20
    out 0x3E, r21

    jmp osEE_scheduler_task_wrapper_run

  .size osEE_hal_ready2stacked, .-osEE_hal_ready2stacked
# 217 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .align 2
  .globl osEE_hal_save_ctx_and_ready2stacked
  .type osEE_hal_save_ctx_and_ready2stacked, @function
osEE_hal_save_ctx_and_ready2stacked:



    osEE_hal_save_vcontext_m r21 r20
    jmp osEE_hal_ready2stacked
  .size osEE_hal_save_ctx_and_ready2stacked, .-osEE_hal_save_ctx_and_ready2stacked
# 236 "/home/yvonne/distance_sensor/erika/src/ee_avr8_asm.S"
  .align 2
  .globl osEE_hal_terminate_ctx
  .type osEE_hal_terminate_ctx, @function
osEE_hal_terminate_ctx:



    mov r30, r24
    mov r31, r25
    ld r20, z+
    ld r21, z


    out 0x3D, r20
    out 0x3E, r21


    mov r30, r22
    mov r31, r23

    ijmp

  .size osEE_hal_terminate_ctx, .-osEE_hal_terminate_ctx
