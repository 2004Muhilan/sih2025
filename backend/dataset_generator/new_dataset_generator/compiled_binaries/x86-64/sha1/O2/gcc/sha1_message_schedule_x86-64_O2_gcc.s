	.file	"sha1_message_schedule.c"
	.text
	.p2align 4
	.globl	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
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
	movq	24(%rsi), %rdx
	movq	16(%rsi), %rax
	leaq	256(%rsi), %rcx
	movq	8(%rsi), %xmm1
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%xmm2, %rdx
.L3:
	movq	(%rsi), %xmm0
	movq	32(%rsi), %xmm2
	addq	$8, %rsi
	pxor	%xmm1, %xmm0
	movq	44(%rsi), %xmm1
	pxor	%xmm2, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm0
	psrld	$31, %xmm1
	por	%xmm1, %xmm0
	movq	%rax, %xmm1
	movq	%rdx, %rax
	movq	%xmm0, 56(%rsi)
	cmpq	%rcx, %rsi
	jne	.L4
	ret
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
