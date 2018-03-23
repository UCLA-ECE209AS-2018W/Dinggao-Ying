	.file	"USBCore.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.Letext0:
	.file 1 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/variants/standard/pins_arduino.h"
	.file 2 "/home/yvonne/Downloads/arduino-1.8.5/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/Stream.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x14f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.long	.LASF19
	.long	.LASF20
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x2
	.byte	0x7e
	.long	0x2f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF22
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x3
	.byte	0x29
	.long	0xae
	.uleb128 0x7
	.long	.LASF13
	.sleb128 0
	.uleb128 0x7
	.long	.LASF14
	.sleb128 1
	.uleb128 0x7
	.long	.LASF15
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.string	"SS"
	.byte	0x1
	.byte	0x2b
	.long	0xb9
	.byte	0xa
	.uleb128 0x9
	.long	0x24
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x2c
	.long	0xb9
	.byte	0xb
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x2d
	.long	0xb9
	.byte	0xc
	.uleb128 0x8
	.string	"SCK"
	.byte	0x1
	.byte	0x2e
	.long	0xb9
	.byte	0xd
	.uleb128 0x8
	.string	"SDA"
	.byte	0x1
	.byte	0x33
	.long	0xb9
	.byte	0x12
	.uleb128 0x8
	.string	"SCL"
	.byte	0x1
	.byte	0x34
	.long	0xb9
	.byte	0x13
	.uleb128 0x8
	.string	"A0"
	.byte	0x1
	.byte	0x41
	.long	0xb9
	.byte	0xe
	.uleb128 0x8
	.string	"A1"
	.byte	0x1
	.byte	0x42
	.long	0xb9
	.byte	0xf
	.uleb128 0x8
	.string	"A2"
	.byte	0x1
	.byte	0x43
	.long	0xb9
	.byte	0x10
	.uleb128 0x8
	.string	"A3"
	.byte	0x1
	.byte	0x44
	.long	0xb9
	.byte	0x11
	.uleb128 0x8
	.string	"A4"
	.byte	0x1
	.byte	0x45
	.long	0xb9
	.byte	0x12
	.uleb128 0x8
	.string	"A5"
	.byte	0x1
	.byte	0x46
	.long	0xb9
	.byte	0x13
	.uleb128 0x8
	.string	"A6"
	.byte	0x1
	.byte	0x47
	.long	0xb9
	.byte	0x14
	.uleb128 0x8
	.string	"A7"
	.byte	0x1
	.byte	0x48
	.long	0xb9
	.byte	0x15
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
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"/home/yvonne/distance_sensor/erika"
.LASF9:
	.string	"bool"
.LASF22:
	.string	"decltype(nullptr)"
.LASF11:
	.string	"float"
.LASF4:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF14:
	.string	"SKIP_NONE"
.LASF23:
	.string	"LookaheadMode"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"double"
.LASF13:
	.string	"SKIP_ALL"
.LASF17:
	.string	"MISO"
.LASF16:
	.string	"MOSI"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"SKIP_WHITESPACE"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint8_t"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF19:
	.string	"/home/yvonne/Downloads/arduino-1.8.5/hardware/arduino/avr/cores/arduino/USBCore.cpp"
.LASF18:
	.string	"GNU C++ 4.9.2 -fpreprocessed -mn-flash=1 -mmcu=avr5 -g -Os -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF3:
	.string	"long int"
.LASF7:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.9.2"
