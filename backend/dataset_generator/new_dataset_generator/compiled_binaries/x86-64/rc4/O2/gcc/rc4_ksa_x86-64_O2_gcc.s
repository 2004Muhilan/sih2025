	.file	"rc4_ksa.c"
	.text
	.p2align 4
	.globl	rc4_ksa
	.type	rc4_ksa, @function
rc4_ksa:
.LFB0:
	.cfi_startproc
	endbr64
	movdqa	.LC0(%rip), %xmm3
	movq	%rdx, %r9
	movq	%rsi, %r10
	movdqa	.LC1(%rip), %xmm9
	movdqa	.LC2(%rip), %xmm8
	movdqa	.LC3(%rip), %xmm7
	movq	%rdi, %rax
	leaq	256(%rdi), %rdx
	movdqa	.LC4(%rip), %xmm6
	movdqa	.LC5(%rip), %xmm5
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm3, %xmm2
	addq	$16, %rax
	paddd	%xmm9, %xmm3
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm0
	paddd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm2, %xmm0
	paddd	%xmm6, %xmm2
	paddd	%xmm7, %xmm0
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm1
	punpckhwd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm4, %xmm0
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	packuswb	%xmm0, %xmm1
	movups	%xmm1, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movzbl	(%rdi,%rcx), %r8d
	divq	%r9
	movzbl	(%r10,%rdx), %eax
	movzbl	%r8b, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	addq	%rdi, %rax
	movzbl	(%rax), %edx
	movb	%dl, (%rdi,%rcx)
	addq	$1, %rcx
	movb	%r8b, (%rax)
	cmpq	$256, %rcx
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_ksa, .-rc4_ksa
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	16
	.long	16
	.long	16
	.long	16
	.align 16
.LC2:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC3:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC4:
	.long	12
	.long	12
	.long	12
	.long	12
	.align 16
.LC5:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
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
