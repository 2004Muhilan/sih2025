	.file	"prng_mersenne.c"
	.text
	.p2align 4
	.globl	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rsi
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ecx, %eax
	movl	%ecx, %edx
	leal	396(%rcx), %edi
	shrl	$4, %eax
	imulq	$440509467, %rax, %rax
	shrq	$34, %rax
	imull	$624, %eax, %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movl	-4(%rsi,%rcx,4), %edx
	movl	(%rsi,%rax,4), %eax
	andl	$-2147483648, %edx
	andl	$2147483647, %eax
	orl	%edx, %eax
	movl	%edi, %edx
	shrl	$4, %edx
	imulq	$440509467, %rdx, %rdx
	shrq	$34, %rdx
	imull	$624, %edx, %edx
	subl	%edx, %edi
	movl	%eax, %edx
	andl	$1, %eax
	movslq	%edi, %rdi
	negl	%eax
	shrl	%edx
	andl	$-1727483681, %eax
	xorl	(%rsi,%rdi,4), %edx
	xorl	%edx, %eax
	movl	%eax, -4(%rsi,%rcx,4)
	addq	$1, %rcx
	cmpq	$625, %rcx
	jne	.L2
	movl	$0, 2496(%rsi)
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
