	.file	"sha256_schedule.c"
	.text
	.p2align 4
	.globl	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %rcx
	leaq	4(%rdi), %rsi
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	cmpq	$8, %rdx
	jbe	.L2
	movdqu	(%rdi), %xmm5
	movups	%xmm5, (%rcx)
	movdqu	16(%rdi), %xmm6
	movups	%xmm6, 16(%rcx)
	movdqu	32(%rdi), %xmm7
	movups	%xmm7, 32(%rcx)
	movdqu	48(%rdi), %xmm5
	movups	%xmm5, 48(%rcx)
.L3:
	movq	56(%rcx), %xmm1
	leaq	64(%rcx), %rax
	leaq	256(%rcx), %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm4
	addq	$8, %rax
	psrld	$19, %xmm3
	pslld	$13, %xmm0
	movq	-68(%rax), %xmm2
	por	%xmm3, %xmm0
	psrld	$17, %xmm4
	movdqa	%xmm1, %xmm3
	pslld	$15, %xmm3
	psrld	$10, %xmm1
	por	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	pxor	%xmm3, %xmm0
	psrld	$7, %xmm4
	movdqa	%xmm2, %xmm3
	pxor	%xmm1, %xmm0
	psrld	$18, %xmm3
	movdqa	%xmm2, %xmm1
	pslld	$14, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	pslld	$25, %xmm3
	psrld	$3, %xmm2
	por	%xmm4, %xmm3
	pxor	%xmm3, %xmm1
	pxor	%xmm2, %xmm1
	movq	-36(%rax), %xmm2
	paddd	%xmm1, %xmm0
	movq	-72(%rax), %xmm1
	paddd	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movq	%xmm1, -8(%rax)
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
	.size	sha256_message_schedule, .-sha256_message_schedule
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
