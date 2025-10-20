	.file	"rc4_vmpc.c"
	.text
	.p2align 4
	.globl	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movdqa	.LC0(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, (%rsp)
	movdqa	.LC1(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movdqa	.LC2(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movdqa	.LC3(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC4(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC5(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC6(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC7(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC8(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC9(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC10(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC11(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC12(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC13(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC14(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	testq	%rsi, %rsi
	je	.L1
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L3:
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	addb	(%rsp,%rdx), %al
	movq	%rdx, %rcx
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %edx
	movq	%rdx, %rax
	movzbl	(%rsp,%rdx), %edx
	movzbl	(%rsp,%rdx), %edx
	addl	$1, %edx
	movzbl	%dl, %edx
	xorb	(%rsp,%rdx), %cl
	movb	%cl, -1(%rdi)
	cmpq	%rdi, %rsi
	jne	.L3
.L1:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	addq	$280, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.align 16
.LC1:
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.align 16
.LC2:
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.align 16
.LC3:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.align 16
.LC4:
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.align 16
.LC5:
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.align 16
.LC6:
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.align 16
.LC7:
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.align 16
.LC8:
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.align 16
.LC9:
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.align 16
.LC10:
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.align 16
.LC11:
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.align 16
.LC12:
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.align 16
.LC13:
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.align 16
.LC14:
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.align 16
.LC15:
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
