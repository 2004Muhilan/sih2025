	.file	"prng_fortuna.c"
	.text
	.globl	prng_fortuna_reseed
	.type	prng_fortuna_reseed, @function
prng_fortuna_reseed:
.LFB0:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L2
	movl	$0, %eax
.L3:
	movzbl	(%rsi,%rax), %ecx
	xorb	%cl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L2
	cmpq	$31, %rax
	jbe	.L3
.L2:
	movl	$0, 32(%rdi)
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
	movl	32(%rdi), %edx
	leal	4(%rdx), %esi
	movl	$0, %eax
.L7:
	sall	$8, %eax
	movl	%edx, %ecx
	andl	$31, %ecx
	movzbl	(%rdi,%rcx), %ecx
	orl	%ecx, %eax
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L7
	movl	%esi, 32(%rdi)
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
