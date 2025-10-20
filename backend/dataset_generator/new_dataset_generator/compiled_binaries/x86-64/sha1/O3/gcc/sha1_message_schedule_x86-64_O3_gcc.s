	.file	"sha1_message_schedule.c"
	.text
	.p2align 4
	.globl	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %rcx
	leaq	4(%rdi), %rsi
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	cmpq	$8, %rdx
	jbe	.L2
	movdqu	(%rdi), %xmm6
	movups	%xmm6, (%rcx)
	movdqu	16(%rdi), %xmm7
	movups	%xmm7, 16(%rcx)
	movdqu	32(%rdi), %xmm6
	movups	%xmm6, 32(%rcx)
	movdqu	48(%rdi), %xmm7
	movups	%xmm7, 48(%rcx)
.L3:
	movq	24(%rcx), %xmm4
	movq	16(%rcx), %xmm3
	leaq	64(%rcx), %rax
	leaq	320(%rcx), %rdx
	movq	8(%rcx), %xmm1
	.p2align 4,,10
	.p2align 3
.L4:
	movq	-32(%rax), %xmm2
	movq	-12(%rax), %xmm0
	addq	$32, %rax
	movq	-96(%rax), %xmm5
	pxor	%xmm2, %xmm0
	pxor	%xmm1, %xmm5
	pxor	%xmm5, %xmm0
	movq	-88(%rax), %xmm5
	movdqa	%xmm0, %xmm1
	psrld	$31, %xmm0
	pslld	$1, %xmm1
	pxor	%xmm3, %xmm5
	por	%xmm1, %xmm0
	movq	-56(%rax), %xmm1
	movq	%xmm0, -32(%rax)
	movq	-36(%rax), %xmm0
	pxor	%xmm1, %xmm0
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, %xmm3
	pslld	$1, %xmm0
	psrld	$31, %xmm3
	por	%xmm3, %xmm0
	movq	-48(%rax), %xmm3
	movq	%xmm0, -24(%rax)
	movq	-80(%rax), %xmm0
	pxor	%xmm4, %xmm0
	movq	-28(%rax), %xmm4
	pxor	%xmm3, %xmm4
	pxor	%xmm4, %xmm0
	movdqa	%xmm0, %xmm4
	pslld	$1, %xmm0
	psrld	$31, %xmm4
	por	%xmm4, %xmm0
	movq	-40(%rax), %xmm4
	movq	%xmm0, -16(%rax)
	movq	-72(%rax), %xmm0
	movq	-20(%rax), %xmm5
	pxor	%xmm4, %xmm0
	pxor	%xmm2, %xmm5
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, %xmm2
	pslld	$1, %xmm0
	psrld	$31, %xmm2
	por	%xmm2, %xmm0
	movq	%xmm0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L4
	ret
.L2:
	movl	(%rdi), %edx
	movl	%edx, (%rcx)
	movl	4(%rdi), %edx
	movl	%edx, 4(%rcx)
	movl	8(%rdi), %edx
	movl	%edx, 8(%rcx)
	movl	12(%rdi), %edx
	movl	%edx, 12(%rcx)
	movl	16(%rdi), %edx
	movl	%edx, 16(%rcx)
	movl	20(%rdi), %edx
	movl	%edx, 20(%rcx)
	movl	24(%rdi), %edx
	movl	%edx, 24(%rcx)
	movl	28(%rdi), %edx
	movl	%edx, 28(%rcx)
	movl	32(%rdi), %edx
	movl	%edx, 32(%rcx)
	movl	36(%rdi), %edx
	movl	%edx, 36(%rcx)
	movl	40(%rdi), %edx
	movl	%edx, 40(%rcx)
	movl	44(%rdi), %edx
	movl	%edx, 44(%rcx)
	movl	48(%rdi), %edx
	movl	%edx, 48(%rcx)
	movl	52(%rdi), %edx
	movl	%edx, 52(%rcx)
	movl	56(%rdi), %edx
	movl	%edx, 56(%rcx)
	movl	60(%rdi), %eax
	movl	%eax, 60(%rcx)
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
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
