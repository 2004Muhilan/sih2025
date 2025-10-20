	.file	"prng_mersenne.c"
	.text
	.globl	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rcx
	movl	$1, %edx
.L2:
	movslq	%edx, %rax
	imulq	$-770891565, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$9, %eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	imull	$624, %eax, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movslq	%esi, %rax
	movl	(%rcx,%rax,4), %esi
	andl	$2147483647, %esi
	movl	-4(%rcx,%rdx,4), %eax
	andl	$-2147483648, %eax
	orl	%eax, %esi
	leal	396(%rdx), %edi
	movslq	%edi, %rax
	imulq	$-770891565, %rax, %rax
	shrq	$32, %rax
	addl	%edi, %eax
	sarl	$9, %eax
	movl	%edi, %r8d
	sarl	$31, %r8d
	subl	%r8d, %eax
	imull	$624, %eax, %eax
	subl	%eax, %edi
	movslq	%edi, %rdi
	movl	%esi, %eax
	shrl	%eax
	xorl	(%rcx,%rdi,4), %eax
	andl	$1, %esi
	negl	%esi
	andl	$-1727483681, %esi
	xorl	%esi, %eax
	movl	%eax, -4(%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	$625, %rdx
	jne	.L2
	movl	$0, 2496(%rcx)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
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
