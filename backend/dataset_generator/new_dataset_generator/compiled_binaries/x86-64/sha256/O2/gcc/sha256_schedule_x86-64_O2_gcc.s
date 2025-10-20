	.file	"sha256_schedule.c"
	.text
	.p2align 4
	.globl	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movl	(%rdi,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.L2
	movq	56(%rsi), %xmm1
	leaq	64(%rsi), %rax
	leaq	256(%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	-60(%rax), %xmm2
	addq	$8, %rax
	movdqa	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqa	%xmm2, %xmm4
	psrld	$18, %xmm3
	pslld	$14, %xmm0
	por	%xmm3, %xmm0
	psrld	$7, %xmm4
	movdqa	%xmm2, %xmm3
	pslld	$25, %xmm3
	psrld	$3, %xmm2
	por	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	pxor	%xmm3, %xmm0
	pslld	$13, %xmm4
	movdqa	%xmm1, %xmm3
	pxor	%xmm2, %xmm0
	pslld	$15, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$17, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	psrld	$19, %xmm3
	psrld	$10, %xmm1
	por	%xmm4, %xmm3
	pxor	%xmm3, %xmm2
	pxor	%xmm2, %xmm1
	movq	-36(%rax), %xmm2
	paddd	%xmm1, %xmm0
	movq	-72(%rax), %xmm1
	paddd	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movq	%xmm1, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L3
	ret
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
