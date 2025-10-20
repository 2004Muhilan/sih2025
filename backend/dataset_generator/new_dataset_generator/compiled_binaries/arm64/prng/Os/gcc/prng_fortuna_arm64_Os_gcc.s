	.file	"prng_fortuna.c"
	.text
	.globl	prng_fortuna_reseed
	.type	prng_fortuna_reseed, @function
prng_fortuna_reseed:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L2:
	cmpq	%rdx, %rax
	jnb	.L5
	cmpq	$31, %rax
	ja	.L5
	movb	(%rsi,%rax), %cl
	xorb	%cl, (%rdi,%rax)
	incq	%rax
	jmp	.L2
.L5:
	xorl	%eax, %eax
	movl	%eax, 32(%rdi)
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
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.L11:
	leal	(%rcx,%rdx), %esi
	sall	$8, %eax
	incl	%ecx
	andl	$31, %esi
	movzbl	(%rdi,%rsi), %esi
	orl	%esi, %eax
	cmpl	$4, %ecx
	jne	.L11
	addl	$4, %edx
	movl	%edx, 32(%rdi)
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
