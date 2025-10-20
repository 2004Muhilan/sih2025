	.file	"prng_fortuna.c"
	.text
	.p2align 4
	.globl	prng_fortuna_reseed
	.type	prng_fortuna_reseed, @function
prng_fortuna_reseed:
.LFB0:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
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
	.p2align 4
	.globl	prng_fortuna_generate
	.type	prng_fortuna_generate, @function
prng_fortuna_generate:
.LFB1:
	.cfi_startproc
	endbr64
	movl	32(%rdi), %ecx
	movl	%ecx, %eax
	leal	1(%rcx), %esi
	andl	$31, %eax
	andl	$31, %esi
	movzbl	(%rdi,%rax), %eax
	movzbl	(%rdi,%rsi), %esi
	sall	$8, %eax
	orl	%esi, %eax
	leal	2(%rcx), %esi
	andl	$31, %esi
	sall	$8, %eax
	movzbl	(%rdi,%rsi), %esi
	orl	%eax, %esi
	leal	3(%rcx), %eax
	addl	$4, %ecx
	andl	$31, %eax
	sall	$8, %esi
	movzbl	(%rdi,%rax), %eax
	movl	%ecx, 32(%rdi)
	orl	%esi, %eax
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
