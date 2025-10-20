	.file	"rc4_drop.c"
	.text
	.p2align 4
	.globl	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	endbr64
	movdqa	.LC0(%rip), %xmm0
	movq	%rsi, %r10
	movq	%rcx, %r11
	movq	%rdx, %r9
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movups	%xmm0, (%rdi)
	movdqa	.LC1(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqa	.LC2(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqa	.LC3(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movdqa	.LC4(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movdqa	.LC5(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movdqa	.LC6(%rip), %xmm0
	movups	%xmm0, 96(%rdi)
	movdqa	.LC7(%rip), %xmm0
	movups	%xmm0, 112(%rdi)
	movdqa	.LC8(%rip), %xmm0
	movups	%xmm0, 128(%rdi)
	movdqa	.LC9(%rip), %xmm0
	movups	%xmm0, 144(%rdi)
	movdqa	.LC10(%rip), %xmm0
	movups	%xmm0, 160(%rdi)
	movdqa	.LC11(%rip), %xmm0
	movups	%xmm0, 176(%rdi)
	movdqa	.LC12(%rip), %xmm0
	movups	%xmm0, 192(%rdi)
	movdqa	.LC13(%rip), %xmm0
	movups	%xmm0, 208(%rdi)
	movdqa	.LC14(%rip), %xmm0
	movups	%xmm0, 224(%rdi)
	movdqa	.LC15(%rip), %xmm0
	movups	%xmm0, 240(%rdi)
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movzbl	(%rdi,%rcx), %r8d
	divq	%r9
	movzbl	(%r10,%rdx), %eax
	movzbl	%r8b, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%rcx)
	addq	$1, %rcx
	movb	%r8b, (%rdi,%rax)
	cmpq	$256, %rcx
	jne	.L2
	xorl	%eax, %eax
	movw	%ax, 256(%rdi)
	testq	%r11, %r11
	je	.L1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L4:
	leal	1(%rdx), %eax
	addq	$1, %rdx
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %r8d
	addl	%r8d, %ecx
	movzbl	%cl, %esi
	movzbl	(%rdi,%rsi), %r9d
	movb	%r9b, (%rdi,%rax)
	movb	%r8b, (%rdi,%rsi)
	cmpq	%rdx, %r11
	jne	.L4
	movb	%r11b, 256(%rdi)
	movb	%cl, 257(%rdi)
	movb	%r9b, (%rdi,%rax)
	movb	%r8b, (%rdi,%rsi)
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.p2align 4
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L19
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rcx
	leaq	(%rsi,%rdx), %r9
	.p2align 4,,10
	.p2align 3
.L13:
	movzbl	256(%rcx), %edi
	xorl	%eax, %eax
	movzwl	256(%rcx), %ebx
	movb	$1, %al
	addl	$1, %edi
	movzbl	%dil, %edi
	movzbl	(%rcx,%rdi), %edx
	movb	%dl, %ah
	addb	%bl, %al
	addb	%bh, %ah
	movw	%ax, 256(%rcx)
	movzbl	%ah, %eax
	movzbl	(%rcx,%rax), %r8d
	movb	%r8b, (%rcx,%rdi)
	movb	%dl, (%rcx,%rax)
	addb	(%rcx,%rdi), %dl
	movzbl	%dl, %edx
	movzbl	(%rcx,%rdx), %eax
	xorb	%al, (%rsi)
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jne	.L13
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.p2align 4
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r9
	movq	%rdi, %r10
	movq	%rdx, %r11
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%esi, %esi
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	subq	$280, %rsp
	.cfi_def_cfa_offset 304
	movdqa	.LC0(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
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
	.p2align 4,,10
	.p2align 3
.L23:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movzbl	0(%rbp,%rcx), %edi
	divq	%r9
	movzbl	(%r10,%rdx), %eax
	movzbl	%dil, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %edx
	movb	%dl, 0(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dil, (%rsp,%rax)
	cmpq	$256, %rcx
	jne	.L23
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L24:
	leal	1(%rdx), %eax
	addl	$1, %edx
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %esi
	addl	%esi, %ebp
	movzbl	%bpl, %ecx
	movzbl	(%rsp,%rcx), %edi
	movb	%dil, (%rsp,%rax)
	movb	%sil, (%rsp,%rcx)
	cmpl	$768, %edx
	jne	.L24
	movq	%r8, %rdi
	movq	%rbx, %rdx
	movq	%r11, %rsi
	call	memcpy@PLT
	movq	%rax, %r8
	testq	%rbx, %rbx
	je	.L22
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L26:
	leal	1(%rdx), %ecx
	movzbl	%cl, %ecx
	movzbl	(%rsp,%rcx), %eax
	addl	%eax, %ebp
	movzbl	%bpl, %esi
	movzbl	(%rsp,%rsi), %edi
	movb	%dil, (%rsp,%rcx)
	movb	%al, (%rsp,%rsi)
	addb	(%rsp,%rcx), %al
	movzbl	%al, %eax
	movzbl	(%rsp,%rax), %eax
	xorb	%al, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L26
.L22:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$280, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
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
