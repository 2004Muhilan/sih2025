	.text
	.file	"rc4_drop.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_drop_init
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI0_1:
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI0_2:
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
.LCPI0_3:
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI0_4:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
.LCPI0_5:
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
.LCPI0_6:
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
.LCPI0_7:
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
.LCPI0_8:
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	130                             # 0x82
	.byte	131                             # 0x83
	.byte	132                             # 0x84
	.byte	133                             # 0x85
	.byte	134                             # 0x86
	.byte	135                             # 0x87
	.byte	136                             # 0x88
	.byte	137                             # 0x89
	.byte	138                             # 0x8a
	.byte	139                             # 0x8b
	.byte	140                             # 0x8c
	.byte	141                             # 0x8d
	.byte	142                             # 0x8e
	.byte	143                             # 0x8f
.LCPI0_9:
	.byte	144                             # 0x90
	.byte	145                             # 0x91
	.byte	146                             # 0x92
	.byte	147                             # 0x93
	.byte	148                             # 0x94
	.byte	149                             # 0x95
	.byte	150                             # 0x96
	.byte	151                             # 0x97
	.byte	152                             # 0x98
	.byte	153                             # 0x99
	.byte	154                             # 0x9a
	.byte	155                             # 0x9b
	.byte	156                             # 0x9c
	.byte	157                             # 0x9d
	.byte	158                             # 0x9e
	.byte	159                             # 0x9f
.LCPI0_10:
	.byte	160                             # 0xa0
	.byte	161                             # 0xa1
	.byte	162                             # 0xa2
	.byte	163                             # 0xa3
	.byte	164                             # 0xa4
	.byte	165                             # 0xa5
	.byte	166                             # 0xa6
	.byte	167                             # 0xa7
	.byte	168                             # 0xa8
	.byte	169                             # 0xa9
	.byte	170                             # 0xaa
	.byte	171                             # 0xab
	.byte	172                             # 0xac
	.byte	173                             # 0xad
	.byte	174                             # 0xae
	.byte	175                             # 0xaf
.LCPI0_11:
	.byte	176                             # 0xb0
	.byte	177                             # 0xb1
	.byte	178                             # 0xb2
	.byte	179                             # 0xb3
	.byte	180                             # 0xb4
	.byte	181                             # 0xb5
	.byte	182                             # 0xb6
	.byte	183                             # 0xb7
	.byte	184                             # 0xb8
	.byte	185                             # 0xb9
	.byte	186                             # 0xba
	.byte	187                             # 0xbb
	.byte	188                             # 0xbc
	.byte	189                             # 0xbd
	.byte	190                             # 0xbe
	.byte	191                             # 0xbf
.LCPI0_12:
	.byte	192                             # 0xc0
	.byte	193                             # 0xc1
	.byte	194                             # 0xc2
	.byte	195                             # 0xc3
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
	.byte	198                             # 0xc6
	.byte	199                             # 0xc7
	.byte	200                             # 0xc8
	.byte	201                             # 0xc9
	.byte	202                             # 0xca
	.byte	203                             # 0xcb
	.byte	204                             # 0xcc
	.byte	205                             # 0xcd
	.byte	206                             # 0xce
	.byte	207                             # 0xcf
.LCPI0_13:
	.byte	208                             # 0xd0
	.byte	209                             # 0xd1
	.byte	210                             # 0xd2
	.byte	211                             # 0xd3
	.byte	212                             # 0xd4
	.byte	213                             # 0xd5
	.byte	214                             # 0xd6
	.byte	215                             # 0xd7
	.byte	216                             # 0xd8
	.byte	217                             # 0xd9
	.byte	218                             # 0xda
	.byte	219                             # 0xdb
	.byte	220                             # 0xdc
	.byte	221                             # 0xdd
	.byte	222                             # 0xde
	.byte	223                             # 0xdf
.LCPI0_14:
	.byte	224                             # 0xe0
	.byte	225                             # 0xe1
	.byte	226                             # 0xe2
	.byte	227                             # 0xe3
	.byte	228                             # 0xe4
	.byte	229                             # 0xe5
	.byte	230                             # 0xe6
	.byte	231                             # 0xe7
	.byte	232                             # 0xe8
	.byte	233                             # 0xe9
	.byte	234                             # 0xea
	.byte	235                             # 0xeb
	.byte	236                             # 0xec
	.byte	237                             # 0xed
	.byte	238                             # 0xee
	.byte	239                             # 0xef
.LCPI0_15:
	.byte	240                             # 0xf0
	.byte	241                             # 0xf1
	.byte	242                             # 0xf2
	.byte	243                             # 0xf3
	.byte	244                             # 0xf4
	.byte	245                             # 0xf5
	.byte	246                             # 0xf6
	.byte	247                             # 0xf7
	.byte	248                             # 0xf8
	.byte	249                             # 0xf9
	.byte	250                             # 0xfa
	.byte	251                             # 0xfb
	.byte	252                             # 0xfc
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.text
	.globl	rc4_drop_init
	.p2align	4, 0x90
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r8
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movups	%xmm0, (%rdi)
	movaps	.LCPI0_1(%rip), %xmm0           # xmm0 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	movups	%xmm0, 16(%rdi)
	movaps	.LCPI0_2(%rip), %xmm0           # xmm0 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	movups	%xmm0, 32(%rdi)
	movaps	.LCPI0_3(%rip), %xmm0           # xmm0 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	movups	%xmm0, 48(%rdi)
	movaps	.LCPI0_4(%rip), %xmm0           # xmm0 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	movups	%xmm0, 64(%rdi)
	movaps	.LCPI0_5(%rip), %xmm0           # xmm0 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	movups	%xmm0, 80(%rdi)
	movaps	.LCPI0_6(%rip), %xmm0           # xmm0 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	movups	%xmm0, 96(%rdi)
	movaps	.LCPI0_7(%rip), %xmm0           # xmm0 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	movups	%xmm0, 112(%rdi)
	movaps	.LCPI0_8(%rip), %xmm0           # xmm0 = [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]
	movups	%xmm0, 128(%rdi)
	movaps	.LCPI0_9(%rip), %xmm0           # xmm0 = [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]
	movups	%xmm0, 144(%rdi)
	movaps	.LCPI0_10(%rip), %xmm0          # xmm0 = [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]
	movups	%xmm0, 160(%rdi)
	movaps	.LCPI0_11(%rip), %xmm0          # xmm0 = [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]
	movups	%xmm0, 176(%rdi)
	movaps	.LCPI0_12(%rip), %xmm0          # xmm0 = [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207]
	movups	%xmm0, 192(%rdi)
	movaps	.LCPI0_13(%rip), %xmm0          # xmm0 = [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]
	movups	%xmm0, 208(%rdi)
	movaps	.LCPI0_14(%rip), %xmm0          # xmm0 = [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]
	movups	%xmm0, 224(%rdi)
	movaps	.LCPI0_15(%rip), %xmm0          # xmm0 = [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]
	movups	%xmm0, 240(%rdi)
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	addb	%r11b, %r10b
	addb	(%rsi,%rdx), %r10b
	movzbl	%r10b, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%r9)
	movb	%r11b, (%rdi,%rax)
	incq	%r9
	cmpq	$256, %r9                       # imm = 0x100
	je	.LBB0_3
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r9), %r11d
	movq	%r9, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	jne	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_7
.LBB0_3:
	movw	$0, 256(%rdi)
	testq	%rcx, %rcx
	je	.LBB0_12
# %bb.4:
	cmpq	$1, %rcx
	jne	.LBB0_13
# %bb.5:
	movb	$1, %sil
	xorl	%eax, %eax
                                        # implicit-def: $dl
	testb	$1, %cl
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_13:
	movq	%rcx, %rsi
	andq	$-2, %rsi
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rdx), %r8d
	movzbl	%r8b, %r8d
	movzbl	(%rdi,%r8), %r9d
	addb	%r9b, %al
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %r10d
	movb	%r10b, (%rdi,%r8)
	movb	%r9b, (%rdi,%rax)
	addq	$2, %rdx
	movzbl	%dl, %r8d
	movzbl	(%rdi,%r8), %r9d
	addb	%r9b, %al
	movzbl	%al, %r10d
	movzbl	(%rdi,%r10), %r11d
	movb	%r11b, (%rdi,%r8)
	movb	%r9b, (%rdi,%r10)
	cmpq	%rdx, %rsi
	jne	.LBB0_14
# %bb.8:
	leal	1(%rdx), %esi
	testb	$1, %cl
	je	.LBB0_11
.LBB0_10:
	movzbl	%sil, %ecx
	movzbl	(%rdi,%rcx), %edx
	addb	%dl, %al
	movzbl	%al, %r8d
	movzbl	(%rdi,%r8), %r9d
	movb	%r9b, (%rdi,%rcx)
	movb	%dl, (%rdi,%r8)
	movl	%esi, %edx
.LBB0_11:
	movb	%dl, 256(%rdi)
	movb	%al, 257(%rdi)
.LBB0_12:
	retq
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	4, 0x90
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         # @rc4_drop_crypt
	.cfi_startproc
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB1_3
# %bb.1:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	256(%rdi), %ecx
	incb	%cl
	movb	%cl, 256(%rdi)
	movzbl	%cl, %ecx
	movzbl	(%rdi,%rcx), %r8d
	movzbl	257(%rdi), %r9d
	addb	%r8b, %r9b
	movb	%r9b, 257(%rdi)
	movzbl	%r9b, %r9d
	movzbl	(%rdi,%r9), %r10d
	movb	%r10b, (%rdi,%rcx)
	movb	%r8b, (%rdi,%r9)
	addb	(%rdi,%rcx), %r8b
	movzbl	%r8b, %ecx
	movzbl	(%rdi,%rcx), %ecx
	xorb	%cl, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB1_2
.LBB1_3:
	retq
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_drop_encrypt
.LCPI2_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI2_1:
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_2:
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
.LCPI2_3:
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI2_4:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
.LCPI2_5:
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
.LCPI2_6:
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
.LCPI2_7:
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
.LCPI2_8:
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	130                             # 0x82
	.byte	131                             # 0x83
	.byte	132                             # 0x84
	.byte	133                             # 0x85
	.byte	134                             # 0x86
	.byte	135                             # 0x87
	.byte	136                             # 0x88
	.byte	137                             # 0x89
	.byte	138                             # 0x8a
	.byte	139                             # 0x8b
	.byte	140                             # 0x8c
	.byte	141                             # 0x8d
	.byte	142                             # 0x8e
	.byte	143                             # 0x8f
.LCPI2_9:
	.byte	144                             # 0x90
	.byte	145                             # 0x91
	.byte	146                             # 0x92
	.byte	147                             # 0x93
	.byte	148                             # 0x94
	.byte	149                             # 0x95
	.byte	150                             # 0x96
	.byte	151                             # 0x97
	.byte	152                             # 0x98
	.byte	153                             # 0x99
	.byte	154                             # 0x9a
	.byte	155                             # 0x9b
	.byte	156                             # 0x9c
	.byte	157                             # 0x9d
	.byte	158                             # 0x9e
	.byte	159                             # 0x9f
.LCPI2_10:
	.byte	160                             # 0xa0
	.byte	161                             # 0xa1
	.byte	162                             # 0xa2
	.byte	163                             # 0xa3
	.byte	164                             # 0xa4
	.byte	165                             # 0xa5
	.byte	166                             # 0xa6
	.byte	167                             # 0xa7
	.byte	168                             # 0xa8
	.byte	169                             # 0xa9
	.byte	170                             # 0xaa
	.byte	171                             # 0xab
	.byte	172                             # 0xac
	.byte	173                             # 0xad
	.byte	174                             # 0xae
	.byte	175                             # 0xaf
.LCPI2_11:
	.byte	176                             # 0xb0
	.byte	177                             # 0xb1
	.byte	178                             # 0xb2
	.byte	179                             # 0xb3
	.byte	180                             # 0xb4
	.byte	181                             # 0xb5
	.byte	182                             # 0xb6
	.byte	183                             # 0xb7
	.byte	184                             # 0xb8
	.byte	185                             # 0xb9
	.byte	186                             # 0xba
	.byte	187                             # 0xbb
	.byte	188                             # 0xbc
	.byte	189                             # 0xbd
	.byte	190                             # 0xbe
	.byte	191                             # 0xbf
.LCPI2_12:
	.byte	192                             # 0xc0
	.byte	193                             # 0xc1
	.byte	194                             # 0xc2
	.byte	195                             # 0xc3
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
	.byte	198                             # 0xc6
	.byte	199                             # 0xc7
	.byte	200                             # 0xc8
	.byte	201                             # 0xc9
	.byte	202                             # 0xca
	.byte	203                             # 0xcb
	.byte	204                             # 0xcc
	.byte	205                             # 0xcd
	.byte	206                             # 0xce
	.byte	207                             # 0xcf
.LCPI2_13:
	.byte	208                             # 0xd0
	.byte	209                             # 0xd1
	.byte	210                             # 0xd2
	.byte	211                             # 0xd3
	.byte	212                             # 0xd4
	.byte	213                             # 0xd5
	.byte	214                             # 0xd6
	.byte	215                             # 0xd7
	.byte	216                             # 0xd8
	.byte	217                             # 0xd9
	.byte	218                             # 0xda
	.byte	219                             # 0xdb
	.byte	220                             # 0xdc
	.byte	221                             # 0xdd
	.byte	222                             # 0xde
	.byte	223                             # 0xdf
.LCPI2_14:
	.byte	224                             # 0xe0
	.byte	225                             # 0xe1
	.byte	226                             # 0xe2
	.byte	227                             # 0xe3
	.byte	228                             # 0xe4
	.byte	229                             # 0xe5
	.byte	230                             # 0xe6
	.byte	231                             # 0xe7
	.byte	232                             # 0xe8
	.byte	233                             # 0xe9
	.byte	234                             # 0xea
	.byte	235                             # 0xeb
	.byte	236                             # 0xec
	.byte	237                             # 0xed
	.byte	238                             # 0xee
	.byte	239                             # 0xef
.LCPI2_15:
	.byte	240                             # 0xf0
	.byte	241                             # 0xf1
	.byte	242                             # 0xf2
	.byte	243                             # 0xf3
	.byte	244                             # 0xf4
	.byte	245                             # 0xf5
	.byte	246                             # 0xf6
	.byte	247                             # 0xf7
	.byte	248                             # 0xf8
	.byte	249                             # 0xf9
	.byte	250                             # 0xfa
	.byte	251                             # 0xfb
	.byte	252                             # 0xfc
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.text
	.globl	rc4_drop_encrypt
	.p2align	4, 0x90
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$272, %rsp                      # imm = 0x110
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %rcx
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movaps	%xmm0, (%rsp)
	movaps	.LCPI2_1(%rip), %xmm0           # xmm0 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	movaps	%xmm0, 16(%rsp)
	movaps	.LCPI2_2(%rip), %xmm0           # xmm0 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	movaps	%xmm0, 32(%rsp)
	movaps	.LCPI2_3(%rip), %xmm0           # xmm0 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	movaps	%xmm0, 48(%rsp)
	movaps	.LCPI2_4(%rip), %xmm0           # xmm0 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	movaps	%xmm0, 64(%rsp)
	movaps	.LCPI2_5(%rip), %xmm0           # xmm0 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	movaps	%xmm0, 80(%rsp)
	movaps	.LCPI2_6(%rip), %xmm0           # xmm0 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI2_7(%rip), %xmm0           # xmm0 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	movaps	%xmm0, 112(%rsp)
	movaps	.LCPI2_8(%rip), %xmm0           # xmm0 = [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]
	movaps	%xmm0, 128(%rsp)
	movaps	.LCPI2_9(%rip), %xmm0           # xmm0 = [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]
	movaps	%xmm0, 144(%rsp)
	movaps	.LCPI2_10(%rip), %xmm0          # xmm0 = [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]
	movaps	%xmm0, 160(%rsp)
	movaps	.LCPI2_11(%rip), %xmm0          # xmm0 = [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]
	movaps	%xmm0, 176(%rsp)
	movaps	.LCPI2_12(%rip), %xmm0          # xmm0 = [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207]
	movaps	%xmm0, 192(%rsp)
	movaps	.LCPI2_13(%rip), %xmm0          # xmm0 = [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]
	movaps	%xmm0, 208(%rsp)
	movaps	.LCPI2_14(%rip), %xmm0          # xmm0 = [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]
	movaps	%xmm0, 224(%rsp)
	movaps	.LCPI2_15(%rip), %xmm0          # xmm0 = [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]
	movaps	%xmm0, 240(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	addb	%r10b, %r9b
	addb	(%rdi,%rdx), %r9b
	movzbl	%r9b, %eax
	movzbl	(%rsp,%rax), %edx
	movb	%dl, (%rsp,%r8)
	movb	%r10b, (%rsp,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	je	.LBB2_5
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsp,%r8), %r10d
	movq	%r8, %rax
	orq	%rsi, %rax
	shrq	$32, %rax
	jne	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB2_4
.LBB2_5:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	andl	$254, %edx
	movzbl	1(%rsp,%rdx), %esi
	addb	%sil, %r15b
	movzbl	%r15b, %r15d
	movzbl	(%rsp,%r15), %edi
	movb	%dil, 1(%rsp,%rdx)
	movb	%sil, (%rsp,%r15)
	addq	$2, %rax
	movl	%eax, %edx
	andl	$254, %edx
	movzbl	(%rsp,%rdx), %esi
	addb	%sil, %r15b
	movzbl	%r15b, %edi
	movzbl	(%rsp,%rdi), %r8d
	movb	%r8b, (%rsp,%rdx)
	movb	%sil, (%rsp,%rdi)
	cmpq	$768, %rax                      # imm = 0x300
	jne	.LBB2_6
# %bb.7:
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r14, %r14
	je	.LBB2_10
# %bb.8:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	leaq	1(%rax), %rcx
	movzbl	%cl, %edx
	movzbl	(%rsp,%rdx), %esi
	addb	%sil, %r15b
	movzbl	%r15b, %edi
	movzbl	(%rsp,%rdi), %r8d
	movb	%r8b, (%rsp,%rdx)
	movb	%sil, (%rsp,%rdi)
	addb	(%rsp,%rdx), %sil
	movzbl	%sil, %edx
	movzbl	(%rsp,%rdx), %edx
	xorb	%dl, (%rbx,%rax)
	movq	%rcx, %rax
	cmpq	%rcx, %r14
	jne	.LBB2_9
.LBB2_10:
	addq	$272, %rsp                      # imm = 0x110
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
