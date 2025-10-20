	.file	"custom_md5.c"
	.text
	.p2align 4
	.globl	md5_transform
	.type	md5_transform, @function
md5_transform:
.LFB14:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm2
	movq	%rdi, %r8
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movdqu	32(%rsi), %xmm5
	movdqu	(%rdi), %xmm4
	leaq	64(%rsp), %r10
	movdqa	.LC0(%rip), %xmm3
	movdqu	48(%rsi), %xmm6
	movq	%rsp, %rsi
	movl	4(%rdi), %ecx
	movl	12(%r8), %edx
	movd	%xmm4, %r9d
	movdqa	%xmm3, %xmm1
	movdqa	%xmm3, %xmm7
	movl	8(%rdi), %edi
	pand	%xmm2, %xmm7
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm0
	packuswb	%xmm7, %xmm1
	movdqa	%xmm3, %xmm7
	packuswb	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm6, %xmm7
	pand	%xmm5, %xmm2
	psrlw	$8, %xmm6
	psrlw	$8, %xmm5
	packuswb	%xmm7, %xmm2
	movdqa	%xmm3, %xmm7
	packuswb	%xmm6, %xmm5
	movdqa	%xmm3, %xmm6
	pand	%xmm2, %xmm7
	pand	%xmm1, %xmm6
	psrlw	$8, %xmm2
	psrlw	$8, %xmm1
	packuswb	%xmm7, %xmm6
	packuswb	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	pand	%xmm5, %xmm3
	pand	%xmm0, %xmm2
	psrlw	$8, %xmm5
	movdqa	%xmm6, %xmm10
	psrlw	$8, %xmm0
	packuswb	%xmm3, %xmm2
	movdqa	%xmm1, %xmm7
	packuswb	%xmm5, %xmm0
	pxor	%xmm5, %xmm5
	movdqa	%xmm2, %xmm9
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm5, %xmm10
	punpckhbw	%xmm5, %xmm6
	punpcklbw	%xmm5, %xmm3
	punpcklbw	%xmm5, %xmm7
	punpckhbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm0
	punpcklbw	%xmm5, %xmm9
	punpckhbw	%xmm5, %xmm2
	movdqa	%xmm3, %xmm8
	pxor	%xmm5, %xmm5
	movdqa	%xmm10, %xmm11
	punpcklwd	%xmm5, %xmm8
	punpcklwd	%xmm5, %xmm11
	punpckhwd	%xmm5, %xmm3
	pslld	$24, %xmm8
	psllw	$8, %xmm9
	punpckhwd	%xmm5, %xmm10
	por	%xmm11, %xmm8
	movdqa	%xmm7, %xmm11
	punpckhwd	%xmm5, %xmm7
	movdqa	%xmm9, %xmm12
	pslld	$24, %xmm3
	punpckhwd	%xmm5, %xmm9
	pslld	$16, %xmm7
	por	%xmm10, %xmm3
	punpcklwd	%xmm5, %xmm11
	por	%xmm9, %xmm7
	pslld	$16, %xmm11
	punpcklwd	%xmm5, %xmm12
	por	%xmm7, %xmm3
	movdqa	%xmm6, %xmm7
	por	%xmm12, %xmm11
	movaps	%xmm3, 16(%rsp)
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm5, %xmm7
	por	%xmm11, %xmm8
	punpcklwd	%xmm5, %xmm3
	psllw	$8, %xmm2
	movaps	%xmm8, (%rsp)
	punpckhwd	%xmm5, %xmm0
	pslld	$24, %xmm3
	movdqa	%xmm2, %xmm8
	punpckhwd	%xmm5, %xmm6
	por	%xmm7, %xmm3
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm5, %xmm1
	punpcklwd	%xmm5, %xmm7
	punpcklwd	%xmm5, %xmm8
	punpckhwd	%xmm5, %xmm2
	pslld	$16, %xmm7
	pslld	$16, %xmm1
	pslld	$24, %xmm0
	por	%xmm8, %xmm7
	por	%xmm2, %xmm1
	por	%xmm6, %xmm0
	por	%xmm7, %xmm3
	por	%xmm0, %xmm1
	movaps	%xmm3, 32(%rsp)
	movaps	%xmm1, 48(%rsp)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%edi, %edx
	movl	%ecx, %edi
	movl	%eax, %ecx
.L2:
	movl	%edi, %eax
	addq	$4, %rsi
	xorl	%edx, %eax
	andl	%ecx, %eax
	xorl	%edx, %eax
	addl	-4(%rsi), %eax
	addl	%r9d, %eax
	movl	%edx, %r9d
	roll	$7, %eax
	addl	%ecx, %eax
	cmpq	%rsi, %r10
	jne	.L4
	movd	%edi, %xmm6
	movd	%ecx, %xmm1
	movd	%edx, %xmm0
	punpckldq	%xmm6, %xmm1
	movd	%eax, %xmm6
	punpckldq	%xmm6, %xmm0
	punpcklqdq	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	movups	%xmm0, (%r8)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L7
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.p2align 4
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB15:
	.cfi_startproc
	endbr64
	movdqa	.LC1(%rip), %xmm0
	movups	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC1:
	.long	1732584193
	.long	-271733879
	.long	-1732584194
	.long	271733878
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
