	.file	"prng_mersenne.c"
	.text
	.globl	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$-2147483648, %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	imulq	$-770891565, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$9, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$624, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$2147483647, %eax
	orl	%esi, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	$397, %eax
	movslq	%eax, %rdx
	imulq	$-770891565, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$9, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$624, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	-4(%rbp), %edx
	shrl	%edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	xorl	$-1727483681, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
.L3:
	addl	$1, -8(%rbp)
.L2:
	cmpl	$623, -8(%rbp)
	jle	.L4
	movq	-24(%rbp), %rax
	movl	$0, 2496(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
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
