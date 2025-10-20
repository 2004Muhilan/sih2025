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
	movdqu	(%rsi), %xmm4
	movdqu	(%rdi), %xmm3
	movdqu	16(%rsi), %xmm6
	movl	4(%rdi), %ecx
	leaq	308(%rsp), %rdx
	movdqu	32(%rsi), %xmm2
	movdqu	48(%rsi), %xmm1
	movd	%xmm3, %r9d
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movl	8(%rdi), %r8d
	movl	16(%r10), %r11d
	leaq	52(%rsp), %rax
	movdqa	.LC0(%rip), %xmm0
	movl	12(%rdi), %edi
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm7
	pand	%xmm6, %xmm7
	psrlw	$8, %xmm6
	pand	%xmm4, %xmm5
	psrlw	$8, %xmm4
	packuswb	%xmm7, %xmm5
	movdqa	%xmm0, %xmm7
	packuswb	%xmm6, %xmm4
	movdqa	%xmm0, %xmm6
	pand	%xmm1, %xmm7
	pand	%xmm2, %xmm6
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	packuswb	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	packuswb	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	pand	%xmm6, %xmm7
	pand	%xmm5, %xmm1
	psrlw	$8, %xmm6
	packuswb	%xmm7, %xmm1
	psrlw	$8, %xmm5
	movdqa	%xmm0, %xmm7
	pand	%xmm4, %xmm7
	pand	%xmm2, %xmm0
	packuswb	%xmm6, %xmm5
	packuswb	%xmm0, %xmm7
	psrlw	$8, %xmm2
	pxor	%xmm0, %xmm0
	psrlw	$8, %xmm4
	movdqa	%xmm7, %xmm10
	movdqa	%xmm5, %xmm9
	packuswb	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm10
	punpcklbw	%xmm0, %xmm2
	movdqa	%xmm4, %xmm8
	pxor	%xmm6, %xmm6
	punpckhbw	%xmm0, %xmm1
	punpckhbw	%xmm0, %xmm7
	punpcklbw	%xmm0, %xmm8
	punpckhbw	%xmm0, %xmm4
	punpcklbw	%xmm0, %xmm9
	punpckhbw	%xmm0, %xmm5
	movdqa	%xmm10, %xmm11
	movdqa	%xmm2, %xmm0
	punpckhwd	%xmm6, %xmm10
	punpcklwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm11
	punpckhwd	%xmm6, %xmm2
	psllw	$8, %xmm9
	pslld	$16, %xmm11
	pslld	$24, %xmm0
	pslld	$16, %xmm10
	movdqa	%xmm9, %xmm12
	por	%xmm11, %xmm0
	punpckhwd	%xmm6, %xmm9
	movdqa	%xmm8, %xmm11
	pslld	$24, %xmm2
	punpckhwd	%xmm6, %xmm8
	punpcklwd	%xmm6, %xmm12
	por	%xmm9, %xmm8
	por	%xmm10, %xmm2
	movdqa	%xmm7, %xmm9
	por	%xmm8, %xmm2
	movdqa	%xmm1, %xmm8
	punpcklwd	%xmm6, %xmm9
	punpcklwd	%xmm6, %xmm8
	psllw	$8, %xmm5
	punpckhwd	%xmm6, %xmm1
	movaps	%xmm2, 16(%rsp)
	pslld	$16, %xmm9
	pslld	$24, %xmm8
	movdqa	%xmm5, %xmm10
	por	%xmm9, %xmm8
	punpckhwd	%xmm6, %xmm7
	movdqa	%xmm4, %xmm9
	punpcklwd	%xmm6, %xmm11
	punpcklwd	%xmm6, %xmm10
	punpcklwd	%xmm6, %xmm9
	pslld	$24, %xmm1
	pslld	$16, %xmm7
	punpckhwd	%xmm6, %xmm5
	punpckhwd	%xmm6, %xmm4
	por	%xmm12, %xmm11
	por	%xmm10, %xmm9
	por	%xmm7, %xmm1
	por	%xmm5, %xmm4
	por	%xmm11, %xmm0
	por	%xmm9, %xmm8
	por	%xmm4, %xmm1
	movaps	%xmm0, (%rsp)
	movq	%xmm2, %rsi
	movaps	%xmm8, 32(%rsp)
	psrldq	$8, %xmm0
	psrldq	$8, %xmm2
	movaps	%xmm1, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L2:
	movq	-52(%rax), %xmm1
	movq	%xmm2, %rbx
	addq	$8, %rax
	movq	-28(%rax), %xmm2
	pxor	%xmm1, %xmm0
	movq	-8(%rax), %xmm1
	pxor	%xmm2, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm0
	psrld	$31, %xmm1
	por	%xmm1, %xmm0
	movq	%xmm0, 4(%rax)
	movq	%rsi, %xmm0
	movq	%rbx, %rsi
	cmpq	%rax, %rdx
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
	movd	%ecx, %xmm1
	movd	%r8d, %xmm4
	movd	%eax, %xmm0
	addl	%edi, %r11d
	movd	%r9d, %xmm5
	punpckldq	%xmm4, %xmm1
	movl	%r11d, 16(%r10)
	punpckldq	%xmm5, %xmm0
	punpcklqdq	%xmm1, %xmm0
	paddd	%xmm3, %xmm0
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
