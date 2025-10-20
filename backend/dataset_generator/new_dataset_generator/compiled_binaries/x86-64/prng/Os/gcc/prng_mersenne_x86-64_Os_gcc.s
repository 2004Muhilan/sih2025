	.file	"prng_mersenne.c"
	.text
	.globl	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$1, %esi
	movl	$624, %r8d
.L2:
	movl	%esi, %eax
	cltd
	idivl	%r8d
	movl	-4(%rdi,%rsi,4), %eax
	andl	$-2147483648, %eax
	movslq	%edx, %rdx
	movl	(%rdi,%rdx,4), %ecx
	andl	$2147483647, %ecx
	orl	%eax, %ecx
	leal	396(%rsi), %eax
	cltd
	idivl	%r8d
	movl	%ecx, %eax
	andl	$1, %ecx
	negl	%ecx
	shrl	%eax
	andl	$-1727483681, %ecx
	movslq	%edx, %rdx
	xorl	(%rdi,%rdx,4), %eax
	xorl	%ecx, %eax
	movl	%eax, -4(%rdi,%rsi,4)
	incq	%rsi
	cmpq	$625, %rsi
	jne	.L2
	xorl	%eax, %eax
	movl	%eax, 2496(%rdi)
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
