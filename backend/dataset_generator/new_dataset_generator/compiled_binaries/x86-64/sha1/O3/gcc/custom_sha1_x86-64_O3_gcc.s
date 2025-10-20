	.file	"custom_sha1.c"
	.text
	.p2align 4
	.globl	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r10
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$336, %rsp
	.cfi_def_cfa_offset 368
	movdqu	(%rsi), %xmm0
	movdqu	(%rdi), %xmm1
	movdqu	16(%rsi), %xmm5
	movl	4(%rdi), %ecx
	leaq	320(%rsp), %rdx
	movdqu	32(%rsi), %xmm4
	movdqu	48(%rsi), %xmm6
	movd	%xmm1, %r9d
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movl	8(%rdi), %r8d
	movl	16(%r10), %r11d
	leaq	64(%rsp), %rax
	movdqa	.LC0(%rip), %xmm3
	movl	12(%rdi), %edi
	movdqa	%xmm3, %xmm2
	movdqa	%xmm3, %xmm7
	pand	%xmm5, %xmm7
	psrlw	$8, %xmm5
	pand	%xmm0, %xmm2
	psrlw	$8, %xmm0
	packuswb	%xmm7, %xmm2
	movdqa	%xmm3, %xmm7
	packuswb	%xmm5, %xmm0
	movdqa	%xmm3, %xmm5
	pand	%xmm6, %xmm7
	pand	%xmm4, %xmm5
	psrlw	$8, %xmm6
	psrlw	$8, %xmm4
	packuswb	%xmm7, %xmm5
	movdqa	%xmm3, %xmm7
	packuswb	%xmm6, %xmm4
	movdqa	%xmm3, %xmm6
	pand	%xmm5, %xmm7
	pand	%xmm2, %xmm6
	psrlw	$8, %xmm5
	packuswb	%xmm7, %xmm6
	psrlw	$8, %xmm2
	movdqa	%xmm3, %xmm7
	pand	%xmm0, %xmm7
	pand	%xmm4, %xmm3
	packuswb	%xmm5, %xmm2
	packuswb	%xmm3, %xmm7
	psrlw	$8, %xmm4
	movdqa	%xmm6, %xmm3
	psrlw	$8, %xmm0
	movdqa	%xmm7, %xmm10
	movdqa	%xmm2, %xmm9
	packuswb	%xmm4, %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	punpcklbw	%xmm4, %xmm10
	punpcklbw	%xmm4, %xmm3
	movdqa	%xmm0, %xmm8
	punpckhbw	%xmm4, %xmm6
	punpckhbw	%xmm4, %xmm7
	punpcklbw	%xmm4, %xmm8
	punpckhbw	%xmm4, %xmm0
	punpcklbw	%xmm4, %xmm9
	punpckhbw	%xmm4, %xmm2
	movdqa	%xmm10, %xmm11
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm5, %xmm10
	punpcklwd	%xmm5, %xmm4
	punpcklwd	%xmm5, %xmm11
	punpckhwd	%xmm5, %xmm3
	psllw	$8, %xmm9
	pslld	$16, %xmm11
	pslld	$24, %xmm4
	pslld	$16, %xmm10
	movdqa	%xmm9, %xmm12
	por	%xmm11, %xmm4
	punpckhwd	%xmm5, %xmm9
	movdqa	%xmm8, %xmm11
	pslld	$24, %xmm3
	punpckhwd	%xmm5, %xmm8
	punpcklwd	%xmm5, %xmm12
	por	%xmm9, %xmm8
	por	%xmm10, %xmm3
	movdqa	%xmm7, %xmm9
	por	%xmm8, %xmm3
	movdqa	%xmm6, %xmm8
	punpcklwd	%xmm5, %xmm9
	punpcklwd	%xmm5, %xmm8
	psllw	$8, %xmm2
	punpckhwd	%xmm5, %xmm6
	movaps	%xmm3, 16(%rsp)
	pslld	$16, %xmm9
	pslld	$24, %xmm8
	movdqa	%xmm2, %xmm10
	por	%xmm9, %xmm8
	punpckhwd	%xmm5, %xmm7
	movdqa	%xmm0, %xmm9
	punpcklwd	%xmm5, %xmm11
	punpcklwd	%xmm5, %xmm10
	punpcklwd	%xmm5, %xmm9
	pslld	$24, %xmm6
	pslld	$16, %xmm7
	punpckhwd	%xmm5, %xmm2
	punpckhwd	%xmm5, %xmm0
	por	%xmm7, %xmm6
	por	%xmm12, %xmm11
	por	%xmm10, %xmm9
	por	%xmm2, %xmm0
	por	%xmm11, %xmm4
	por	%xmm6, %xmm0
	por	%xmm9, %xmm8
	movaps	%xmm4, (%rsp)
	movdqa	%xmm3, %xmm6
	movaps	%xmm8, 32(%rsp)
	psrldq	$8, %xmm4
	psrldq	$8, %xmm3
	movaps	%xmm0, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L2:
	movq	-32(%rax), %xmm2
	movq	-12(%rax), %xmm0
	addq	$32, %rax
	movq	-96(%rax), %xmm5
	pxor	%xmm2, %xmm0
	pxor	%xmm4, %xmm5
	pxor	%xmm5, %xmm0
	movq	-88(%rax), %xmm5
	movdqa	%xmm0, %xmm4
	psrld	$31, %xmm0
	pslld	$1, %xmm4
	pxor	%xmm6, %xmm5
	movq	-48(%rax), %xmm6
	por	%xmm4, %xmm0
	movq	-56(%rax), %xmm4
	movq	%xmm0, -32(%rax)
	movq	-36(%rax), %xmm0
	pxor	%xmm4, %xmm0
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$1, %xmm0
	psrld	$31, %xmm5
	por	%xmm5, %xmm0
	movq	-80(%rax), %xmm5
	movq	%xmm0, -24(%rax)
	movq	-28(%rax), %xmm0
	pxor	%xmm3, %xmm5
	pxor	%xmm6, %xmm0
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, %xmm3
	pslld	$1, %xmm0
	psrld	$31, %xmm3
	por	%xmm3, %xmm0
	movq	-40(%rax), %xmm3
	movq	%xmm0, -16(%rax)
	movq	-72(%rax), %xmm0
	movq	-20(%rax), %xmm5
	pxor	%xmm3, %xmm0
	pxor	%xmm2, %xmm5
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, %xmm2
	pslld	$1, %xmm0
	psrld	$31, %xmm2
	por	%xmm2, %xmm0
	movq	%xmm0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L2
	movl	%r11d, %esi
	xorl	%edx, %edx
	movq	%rsp, %rbx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%edi, %ebp
	movl	$1859775393, %r12d
	xorl	%r8d, %ebp
	xorl	%ecx, %ebp
.L4:
	movl	%r9d, %eax
	rorl	$2, %ecx
	roll	$5, %eax
	addl	(%rbx,%rdx,4), %eax
	addq	$1, %rdx
	addl	%r12d, %eax
	addl	%ebp, %eax
	addl	%esi, %eax
.L9:
	movl	%edi, %esi
	movl	%r8d, %edi
	movl	%ecx, %r8d
	movl	%r9d, %ecx
	movl	%eax, %r9d
.L8:
	cmpq	$19, %rdx
	jbe	.L15
	cmpq	$39, %rdx
	jbe	.L16
	cmpq	$59, %rdx
	ja	.L6
	movl	%edi, %ebp
	movl	%edi, %eax
	movl	$-1894007588, %r12d
	orl	%r8d, %ebp
	andl	%r8d, %eax
	andl	%ecx, %ebp
	orl	%eax, %ebp
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L15:
	movl	%edi, %ebp
	movl	$1518500249, %r12d
	xorl	%r8d, %ebp
	andl	%ecx, %ebp
	xorl	%edi, %ebp
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%edi, %eax
	movl	%r9d, %ebp
	xorl	%r8d, %eax
	roll	$5, %ebp
	addl	(%rbx,%rdx,4), %ebp
	addq	$1, %rdx
	xorl	%ecx, %eax
	rorl	$2, %ecx
	leal	-899497514(%rbp,%rax), %eax
	addl	%esi, %eax
	cmpq	$80, %rdx
	jne	.L9
	movd	%r8d, %xmm7
	movd	%ecx, %xmm2
	movd	%eax, %xmm0
	addl	%edi, %r11d
	punpckldq	%xmm7, %xmm2
	movd	%r9d, %xmm7
	movl	%r11d, 16(%r10)
	punpckldq	%xmm7, %xmm0
	punpcklqdq	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%r10)
	movq	328(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L17
	addq	$336, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.p2align 4
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
.LFB15:
	.cfi_startproc
	endbr64
	movdqa	.LC1(%rip), %xmm0
	movl	$-1009589776, 16(%rdi)
	movups	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
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
