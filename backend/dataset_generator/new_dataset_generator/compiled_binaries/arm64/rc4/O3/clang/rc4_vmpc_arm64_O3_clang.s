	.text
	.file	"rc4_vmpc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function rc4_vmpc_variant
.LCPI0_0:
	.byte	0                               // 0x0
	.byte	1                               // 0x1
	.byte	2                               // 0x2
	.byte	3                               // 0x3
	.byte	4                               // 0x4
	.byte	5                               // 0x5
	.byte	6                               // 0x6
	.byte	7                               // 0x7
	.byte	8                               // 0x8
	.byte	9                               // 0x9
	.byte	10                              // 0xa
	.byte	11                              // 0xb
	.byte	12                              // 0xc
	.byte	13                              // 0xd
	.byte	14                              // 0xe
	.byte	15                              // 0xf
.LCPI0_1:
	.byte	16                              // 0x10
	.byte	17                              // 0x11
	.byte	18                              // 0x12
	.byte	19                              // 0x13
	.byte	20                              // 0x14
	.byte	21                              // 0x15
	.byte	22                              // 0x16
	.byte	23                              // 0x17
	.byte	24                              // 0x18
	.byte	25                              // 0x19
	.byte	26                              // 0x1a
	.byte	27                              // 0x1b
	.byte	28                              // 0x1c
	.byte	29                              // 0x1d
	.byte	30                              // 0x1e
	.byte	31                              // 0x1f
.LCPI0_2:
	.byte	32                              // 0x20
	.byte	33                              // 0x21
	.byte	34                              // 0x22
	.byte	35                              // 0x23
	.byte	36                              // 0x24
	.byte	37                              // 0x25
	.byte	38                              // 0x26
	.byte	39                              // 0x27
	.byte	40                              // 0x28
	.byte	41                              // 0x29
	.byte	42                              // 0x2a
	.byte	43                              // 0x2b
	.byte	44                              // 0x2c
	.byte	45                              // 0x2d
	.byte	46                              // 0x2e
	.byte	47                              // 0x2f
.LCPI0_3:
	.byte	48                              // 0x30
	.byte	49                              // 0x31
	.byte	50                              // 0x32
	.byte	51                              // 0x33
	.byte	52                              // 0x34
	.byte	53                              // 0x35
	.byte	54                              // 0x36
	.byte	55                              // 0x37
	.byte	56                              // 0x38
	.byte	57                              // 0x39
	.byte	58                              // 0x3a
	.byte	59                              // 0x3b
	.byte	60                              // 0x3c
	.byte	61                              // 0x3d
	.byte	62                              // 0x3e
	.byte	63                              // 0x3f
.LCPI0_4:
	.byte	64                              // 0x40
	.byte	65                              // 0x41
	.byte	66                              // 0x42
	.byte	67                              // 0x43
	.byte	68                              // 0x44
	.byte	69                              // 0x45
	.byte	70                              // 0x46
	.byte	71                              // 0x47
	.byte	72                              // 0x48
	.byte	73                              // 0x49
	.byte	74                              // 0x4a
	.byte	75                              // 0x4b
	.byte	76                              // 0x4c
	.byte	77                              // 0x4d
	.byte	78                              // 0x4e
	.byte	79                              // 0x4f
.LCPI0_5:
	.byte	80                              // 0x50
	.byte	81                              // 0x51
	.byte	82                              // 0x52
	.byte	83                              // 0x53
	.byte	84                              // 0x54
	.byte	85                              // 0x55
	.byte	86                              // 0x56
	.byte	87                              // 0x57
	.byte	88                              // 0x58
	.byte	89                              // 0x59
	.byte	90                              // 0x5a
	.byte	91                              // 0x5b
	.byte	92                              // 0x5c
	.byte	93                              // 0x5d
	.byte	94                              // 0x5e
	.byte	95                              // 0x5f
.LCPI0_6:
	.byte	96                              // 0x60
	.byte	97                              // 0x61
	.byte	98                              // 0x62
	.byte	99                              // 0x63
	.byte	100                             // 0x64
	.byte	101                             // 0x65
	.byte	102                             // 0x66
	.byte	103                             // 0x67
	.byte	104                             // 0x68
	.byte	105                             // 0x69
	.byte	106                             // 0x6a
	.byte	107                             // 0x6b
	.byte	108                             // 0x6c
	.byte	109                             // 0x6d
	.byte	110                             // 0x6e
	.byte	111                             // 0x6f
.LCPI0_7:
	.byte	112                             // 0x70
	.byte	113                             // 0x71
	.byte	114                             // 0x72
	.byte	115                             // 0x73
	.byte	116                             // 0x74
	.byte	117                             // 0x75
	.byte	118                             // 0x76
	.byte	119                             // 0x77
	.byte	120                             // 0x78
	.byte	121                             // 0x79
	.byte	122                             // 0x7a
	.byte	123                             // 0x7b
	.byte	124                             // 0x7c
	.byte	125                             // 0x7d
	.byte	126                             // 0x7e
	.byte	127                             // 0x7f
.LCPI0_8:
	.byte	128                             // 0x80
	.byte	129                             // 0x81
	.byte	130                             // 0x82
	.byte	131                             // 0x83
	.byte	132                             // 0x84
	.byte	133                             // 0x85
	.byte	134                             // 0x86
	.byte	135                             // 0x87
	.byte	136                             // 0x88
	.byte	137                             // 0x89
	.byte	138                             // 0x8a
	.byte	139                             // 0x8b
	.byte	140                             // 0x8c
	.byte	141                             // 0x8d
	.byte	142                             // 0x8e
	.byte	143                             // 0x8f
.LCPI0_9:
	.byte	144                             // 0x90
	.byte	145                             // 0x91
	.byte	146                             // 0x92
	.byte	147                             // 0x93
	.byte	148                             // 0x94
	.byte	149                             // 0x95
	.byte	150                             // 0x96
	.byte	151                             // 0x97
	.byte	152                             // 0x98
	.byte	153                             // 0x99
	.byte	154                             // 0x9a
	.byte	155                             // 0x9b
	.byte	156                             // 0x9c
	.byte	157                             // 0x9d
	.byte	158                             // 0x9e
	.byte	159                             // 0x9f
.LCPI0_10:
	.byte	160                             // 0xa0
	.byte	161                             // 0xa1
	.byte	162                             // 0xa2
	.byte	163                             // 0xa3
	.byte	164                             // 0xa4
	.byte	165                             // 0xa5
	.byte	166                             // 0xa6
	.byte	167                             // 0xa7
	.byte	168                             // 0xa8
	.byte	169                             // 0xa9
	.byte	170                             // 0xaa
	.byte	171                             // 0xab
	.byte	172                             // 0xac
	.byte	173                             // 0xad
	.byte	174                             // 0xae
	.byte	175                             // 0xaf
.LCPI0_11:
	.byte	176                             // 0xb0
	.byte	177                             // 0xb1
	.byte	178                             // 0xb2
	.byte	179                             // 0xb3
	.byte	180                             // 0xb4
	.byte	181                             // 0xb5
	.byte	182                             // 0xb6
	.byte	183                             // 0xb7
	.byte	184                             // 0xb8
	.byte	185                             // 0xb9
	.byte	186                             // 0xba
	.byte	187                             // 0xbb
	.byte	188                             // 0xbc
	.byte	189                             // 0xbd
	.byte	190                             // 0xbe
	.byte	191                             // 0xbf
.LCPI0_12:
	.byte	192                             // 0xc0
	.byte	193                             // 0xc1
	.byte	194                             // 0xc2
	.byte	195                             // 0xc3
	.byte	196                             // 0xc4
	.byte	197                             // 0xc5
	.byte	198                             // 0xc6
	.byte	199                             // 0xc7
	.byte	200                             // 0xc8
	.byte	201                             // 0xc9
	.byte	202                             // 0xca
	.byte	203                             // 0xcb
	.byte	204                             // 0xcc
	.byte	205                             // 0xcd
	.byte	206                             // 0xce
	.byte	207                             // 0xcf
.LCPI0_13:
	.byte	208                             // 0xd0
	.byte	209                             // 0xd1
	.byte	210                             // 0xd2
	.byte	211                             // 0xd3
	.byte	212                             // 0xd4
	.byte	213                             // 0xd5
	.byte	214                             // 0xd6
	.byte	215                             // 0xd7
	.byte	216                             // 0xd8
	.byte	217                             // 0xd9
	.byte	218                             // 0xda
	.byte	219                             // 0xdb
	.byte	220                             // 0xdc
	.byte	221                             // 0xdd
	.byte	222                             // 0xde
	.byte	223                             // 0xdf
.LCPI0_14:
	.byte	224                             // 0xe0
	.byte	225                             // 0xe1
	.byte	226                             // 0xe2
	.byte	227                             // 0xe3
	.byte	228                             // 0xe4
	.byte	229                             // 0xe5
	.byte	230                             // 0xe6
	.byte	231                             // 0xe7
	.byte	232                             // 0xe8
	.byte	233                             // 0xe9
	.byte	234                             // 0xea
	.byte	235                             // 0xeb
	.byte	236                             // 0xec
	.byte	237                             // 0xed
	.byte	238                             // 0xee
	.byte	239                             // 0xef
.LCPI0_15:
	.byte	240                             // 0xf0
	.byte	241                             // 0xf1
	.byte	242                             // 0xf2
	.byte	243                             // 0xf3
	.byte	244                             // 0xf4
	.byte	245                             // 0xf5
	.byte	246                             // 0xf6
	.byte	247                             // 0xf7
	.byte	248                             // 0xf8
	.byte	249                             // 0xf9
	.byte	250                             // 0xfa
	.byte	251                             // 0xfb
	.byte	252                             // 0xfc
	.byte	253                             // 0xfd
	.byte	254                             // 0xfe
	.byte	255                             // 0xff
	.text
	.globl	rc4_vmpc_variant
	.p2align	2
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       // @rc4_vmpc_variant
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	str	x29, [sp, #256]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	adrp	x8, .LCPI0_0
	ldr	q0, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_1
	ldr	q1, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	ldr	q2, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	stp	q0, q1, [sp]
	ldr	q0, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	ldr	q1, [x8, :lo12:.LCPI0_4]
	adrp	x8, .LCPI0_5
	stp	q2, q0, [sp, #32]
	ldr	q0, [x8, :lo12:.LCPI0_5]
	adrp	x8, .LCPI0_6
	ldr	q2, [x8, :lo12:.LCPI0_6]
	adrp	x8, .LCPI0_7
	stp	q1, q0, [sp, #64]
	ldr	q0, [x8, :lo12:.LCPI0_7]
	adrp	x8, .LCPI0_8
	ldr	q1, [x8, :lo12:.LCPI0_8]
	adrp	x8, .LCPI0_9
	stp	q2, q0, [sp, #96]
	ldr	q0, [x8, :lo12:.LCPI0_9]
	adrp	x8, .LCPI0_10
	ldr	q2, [x8, :lo12:.LCPI0_10]
	adrp	x8, .LCPI0_11
	stp	q1, q0, [sp, #128]
	ldr	q0, [x8, :lo12:.LCPI0_11]
	adrp	x8, .LCPI0_12
	ldr	q1, [x8, :lo12:.LCPI0_12]
	adrp	x8, .LCPI0_13
	stp	q2, q0, [sp, #160]
	ldr	q0, [x8, :lo12:.LCPI0_13]
	adrp	x8, .LCPI0_14
	ldr	q2, [x8, :lo12:.LCPI0_14]
	adrp	x8, .LCPI0_15
	stp	q1, q0, [sp, #192]
	ldr	q0, [x8, :lo12:.LCPI0_15]
	stp	q2, q0, [sp, #224]
	cbz	x1, .LBB0_3
// %bb.1:
	mov	w9, wzr
	mov	x8, sp
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	subs	x1, x1, #1
	ldrb	w11, [x8, x10]
	add	w9, w11, w9
	and	x9, x9, #0xff
	ldrb	w9, [x8, x9]
	ldrb	w11, [x8, x9]
	ldrb	w11, [x8, x11]
	add	w11, w11, #1
	and	x11, x11, #0xff
	ldrb	w11, [x8, x11]
	eor	w10, w11, w10
	strb	w10, [x0], #1
	b.ne	.LBB0_2
.LBB0_3:
	ldr	x29, [sp, #256]                 // 8-byte Folded Reload
	add	sp, sp, #272
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
