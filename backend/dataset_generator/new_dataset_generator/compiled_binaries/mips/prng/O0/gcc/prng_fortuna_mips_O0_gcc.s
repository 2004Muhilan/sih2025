	.file	"prng_fortuna.c"
	.text
	.globl	prng_fortuna_reseed
	.type	prng_fortuna_reseed, @function
prng_fortuna_reseed:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L3
	cmpq	$31, -8(%rbp)
	jbe	.L4
.L3:
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	prng_fortuna_reseed, .-prng_fortuna_reseed
	.globl	prng_fortuna_generate
	.type	prng_fortuna_generate, @function
prng_fortuna_generate:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movl	-8(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L6:
	cmpl	$3, -4(%rbp)
	jle	.L7
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	leal	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	prng_fortuna_generate, .-prng_fortuna_generate
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
