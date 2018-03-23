# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.S"
# 1 "/home/yvonne/distance_sensor/erika//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.S"
# 52 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.S"
# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 1 3
# 99 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 3
# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/sfr_defs.h" 1 3
# 100 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3
# 272 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 3
# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/iom328p.h" 1 3
# 273 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3
# 627 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 3
# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/portpins.h" 1 3
# 628 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3

# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/common.h" 1 3
# 630 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3

# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/version.h" 1 3
# 632 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3






# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/fuse.h" 1 3
# 639 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3


# 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/lock.h" 1 3
# 642 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/avr/io.h" 2 3
# 53 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/wiring_pulse.S" 2

.section .text

.global countPulseASM

countPulseASM:

.LM0:
.LFBB1:
    push r12 ; ; 130 pushqi1/1 [length = 1]
    push r13 ; ; 131 pushqi1/1 [length = 1]
    push r14 ; ; 132 pushqi1/1 [length = 1]
    push r15 ; ; 133 pushqi1/1 [length = 1]
    push r16 ; ; 134 pushqi1/1 [length = 1]
    push r17 ; ; 135 pushqi1/1 [length = 1]



.L__stack_usage = 6
    mov r30,r24 ; port, port ; 2 *movhi/1 [length = 2]
    mov r31,r25 ; port, port




.LM1:
    rjmp .L2 ; ; 181 jump [length = 1]
.L4:

.LM2:
    subi r16,1 ; maxloops, ; 17 addsi3/2 [length = 4]
    sbc r17, r1 ; maxloops
    sbc r18, r1 ; maxloops
    sbc r19, r1 ; maxloops
    breq .L13 ; , ; 19 branch [length = 1]
.L2:

.LM3:
    ld r25,Z ; D.1554, *port_7(D) ; 22 movqi_insn/4 [length = 1]
    and r25,r22 ; D.1554, bit ; 24 andqi3/1 [length = 1]
    cp r25,r20 ; D.1554, stateMask ; 25 *cmpqi/2 [length = 1]
    breq .L4 ; , ; 26 branch [length = 1]
    rjmp .L6 ; ; 184 jump [length = 1]
.L7:






.LM4:
    subi r16,1 ; maxloops, ; 31 addsi3/2 [length = 4]
    sbc r17, r1 ; maxloops
    sbc r18, r1 ; maxloops
    sbc r19, r1 ; maxloops
    breq .L13 ; , ; 33 branch [length = 1]
.L6:

.LM5:
    ld r25,Z ; D.1554, *port_7(D) ; 41 movqi_insn/4 [length = 1]
    and r25,r22 ; D.1554, bit ; 43 andqi3/1 [length = 1]
    cpse r25,r20 ; D.1554, stateMask ; 44 enable_interrupt-3 [length = 1]
    rjmp .L7 ;
    mov r12, r1 ; width ; 7 *movsi/2 [length = 4]
    mov r13, r1 ; width
    mov r14, r1 ; width
    mov r15, r1 ; width
    rjmp .L9 ; ; 186 jump [length = 1]
.L10:






.LM6:
    ldi r24,-1 ; , ; 50 addsi3/3 [length = 5]
    sub r12,r24 ; width,
    sbc r13,r24 ; width,
    sbc r14,r24 ; width,
    sbc r15,r24 ; width,
    cp r16,r12 ; maxloops, width ; 51 *cmpsi/2 [length = 4]
    cpc r17,r13 ; maxloops, width
    cpc r18,r14 ; maxloops, width
    cpc r19,r15 ; maxloops, width
    breq .L13 ; , ; 52 branch [length = 1]
.L9:

.LM7:
    ld r24,Z ; D.1554, *port_7(D) ; 60 movqi_insn/4 [length = 1]
    and r24,r22 ; D.1554, bit ; 62 andqi3/1 [length = 1]
    cp r24,r20 ; D.1554, stateMask ; 63 *cmpqi/2 [length = 1]
    breq .L10 ; , ; 64 branch [length = 1]




.LM8:
    mov r22,r12 ; D.1553, width ; 108 movqi_insn/1 [length = 1]
    mov r23,r13 ; D.1553, width ; 109 movqi_insn/1 [length = 1]
    mov r24,r14 ; D.1553, width ; 110 movqi_insn/1 [length = 1]
    mov r25,r15 ; D.1553, width ; 111 movqi_insn/1 [length = 1]

.LM9:
    pop r17 ; ; 171 popqi [length = 1]
    pop r16 ; ; 172 popqi [length = 1]
    pop r15 ; ; 173 popqi [length = 1]
    pop r14 ; ; 174 popqi [length = 1]
    pop r13 ; ; 175 popqi [length = 1]
    pop r12 ; ; 176 popqi [length = 1]
    ret ; 177 return_from_epilogue [length = 1]
.L13:
.LM10:
    ldi r22,0 ; D.1553 ; 120 movqi_insn/1 [length = 1]
    ldi r23,0 ; D.1553 ; 121 movqi_insn/1 [length = 1]
    ldi r24,0 ; D.1553 ; 122 movqi_insn/1 [length = 1]
    ldi r25,0 ; D.1553 ; 123 movqi_insn/1 [length = 1]

.LM11:
    pop r17 ; ; 138 popqi [length = 1]
    pop r16 ; ; 139 popqi [length = 1]
    pop r15 ; ; 140 popqi [length = 1]
    pop r14 ; ; 141 popqi [length = 1]
    pop r13 ; ; 142 popqi [length = 1]
    pop r12 ; ; 143 popqi [length = 1]
    ret ; 144 return_from_epilogue [length = 1]
