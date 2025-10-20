	.file	"custom_md5.c"
	.text
	.p2align 4
	.globl	md5_transform
	.type	md5_transform, @function
md5_transform:
.LFB14:
	.cfi_startproc
	endbr64
	movdqa	.LC0(%rip), %xmm3
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movdqu	(%rsi), %xmm2
	movdqu	16(%rsi), %xmm0
	movdqa	%xmm3, %xmm1
	movdqa	%xmm3, %xmm6
	movl	(%rdi), %r10d
	pand	%xmm2, %xmm1
	movdqa	%xmm3, %xmm7
	movl	4(%rdi), %r9d
	movl	8(%rdi), %edi
	movdqu	32(%rsi), %xmm4
	movdqu	48(%rsi), %xmm5
	pand	%xmm0, %xmm6
	psrlw	$8, %xmm2
	psrlw	$8, %xmm0
	packuswb	%xmm6, %xmm1
	movdqa	%xmm3, %xmm6
	movl	%edi, %eax
	packuswb	%xmm0, %xmm2
	movdqa	%xmm3, %xmm0
	pand	%xmm5, %xmm6
	movl	12(%rcx), %r8d
	pand	%xmm4, %xmm0
	psrlw	$8, %xmm5
	pand	%xmm1, %xmm7
	movl	%r9d, %esi
	psrlw	$8, %xmm4
	packuswb	%xmm6, %xmm0
	pxor	%xmm6, %xmm6
	xorl	%r8d, %eax
	packuswb	%xmm5, %xmm4
	movdqa	%xmm3, %xmm5
	andl	%r9d, %eax
	xorl	%edi, %esi
	pand	%xmm0, %xmm5
	psrlw	$8, %xmm1
	xorl	%r8d, %eax
	psrlw	$8, %xmm0
	packuswb	%xmm5, %xmm7
	pxor	%xmm5, %xmm5
	addl	%r10d, %eax
	packuswb	%xmm0, %xmm1
	movdqa	%xmm3, %xmm0
	pand	%xmm4, %xmm3
	pand	%xmm2, %xmm0
	psrlw	$8, %xmm4
	movdqa	%xmm7, %xmm8
	packuswb	%xmm3, %xmm0
	psrlw	$8, %xmm2
	movdqa	%xmm1, %xmm3
	packuswb	%xmm4, %xmm2
	movdqa	%xmm0, %xmm9
	movdqa	%xmm0, %xmm4
	punpcklbw	%xmm5, %xmm9
	punpcklbw	%xmm5, %xmm3
	movdqa	%xmm2, %xmm0
	punpckhbw	%xmm5, %xmm1
	punpckhbw	%xmm5, %xmm2
	punpcklbw	%xmm5, %xmm8
	punpckhbw	%xmm5, %xmm7
	punpcklbw	%xmm5, %xmm0
	punpckhbw	%xmm5, %xmm4
	psllw	$8, %xmm9
	movdqa	%xmm3, %xmm5
	punpckhwd	%xmm6, %xmm3
	movdqa	%xmm9, %xmm10
	punpcklwd	%xmm6, %xmm5
	movdqa	%xmm8, %xmm11
	punpcklwd	%xmm6, %xmm10
	pslld	$16, %xmm5
	punpckhwd	%xmm6, %xmm9
	por	%xmm10, %xmm5
	movdqa	%xmm0, %xmm10
	punpckhwd	%xmm6, %xmm0
	punpckhwd	%xmm6, %xmm8
	pslld	$16, %xmm3
	punpcklwd	%xmm6, %xmm10
	pslld	$24, %xmm0
	psllw	$8, %xmm4
	por	%xmm9, %xmm3
	por	%xmm8, %xmm0
	movdqa	%xmm1, %xmm8
	punpcklwd	%xmm6, %xmm11
	por	%xmm0, %xmm3
	pslld	$24, %xmm10
	movdqa	%xmm4, %xmm0
	punpcklwd	%xmm6, %xmm8
	punpcklwd	%xmm6, %xmm0
	por	%xmm11, %xmm10
	pslld	$16, %xmm8
	por	%xmm10, %xmm5
	movdqa	%xmm7, %xmm9
	por	%xmm0, %xmm8
	movdqa	%xmm2, %xmm0
	movd	%xmm5, %edx
	punpcklwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm9
	punpckhwd	%xmm6, %xmm4
	addl	%edx, %eax
	pslld	$24, %xmm0
	roll	$7, %eax
	movd	%xmm3, %ebp
	punpckhwd	%xmm6, %xmm7
	por	%xmm9, %xmm0
	addl	%r9d, %eax
	por	%xmm0, %xmm8
	movdqa	%xmm1, %xmm0
	pshufd	$85, %xmm5, %xmm1
	andl	%eax, %esi
	movd	%xmm1, %edx
	xorl	%edi, %esi
	movl	%eax, %r11d
	movl	%eax, %ebx
	addl	%r8d, %edx
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm6, %xmm0
	xorl	%r9d, %r11d
	addl	%edx, %esi
	pslld	$16, %xmm0
	punpckhdq	%xmm5, %xmm1
	roll	$7, %esi
	movd	%xmm1, %edx
	por	%xmm4, %xmm0
	addl	%eax, %esi
	movdqa	%xmm2, %xmm4
	pshufd	$255, %xmm5, %xmm2
	addl	%edi, %edx
	andl	%esi, %r11d
	pshufd	$85, %xmm3, %xmm1
	punpckhwd	%xmm6, %xmm4
	xorl	%esi, %ebx
	xorl	%r9d, %r11d
	pslld	$24, %xmm4
	addl	%edx, %r11d
	movd	%xmm2, %edx
	por	%xmm7, %xmm4
	roll	$7, %r11d
	addl	%r9d, %edx
	por	%xmm4, %xmm0
	addl	%esi, %r11d
	andl	%r11d, %ebx
	xorl	%eax, %ebx
	addl	%ebp, %eax
	movd	%xmm1, %ebp
	addl	%edx, %ebx
	movl	%esi, %edx
	movdqa	%xmm3, %xmm1
	roll	$7, %ebx
	xorl	%r11d, %edx
	punpckhdq	%xmm3, %xmm1
	addl	%r11d, %ebx
	pshufd	$255, %xmm3, %xmm3
	andl	%ebx, %edx
	xorl	%esi, %edx
	addl	%eax, %edx
	movl	%r11d, %eax
	addl	%ebp, %esi
	roll	$7, %edx
	xorl	%ebx, %eax
	movd	%xmm1, %ebp
	addl	%ebx, %edx
	pshufd	$85, %xmm8, %xmm1
	andl	%edx, %eax
	xorl	%r11d, %eax
	addl	%ebp, %r11d
	movl	%edx, %ebp
	addl	%eax, %esi
	movl	%ebx, %eax
	roll	$7, %esi
	xorl	%edx, %eax
	addl	%edx, %esi
	andl	%esi, %eax
	xorl	%esi, %ebp
	xorl	%ebx, %eax
	addl	%eax, %r11d
	movd	%xmm3, %eax
	roll	$7, %r11d
	addl	%ebx, %eax
	addl	%esi, %r11d
	andl	%r11d, %ebp
	xorl	%edx, %ebp
	leal	0(%rbp,%rax), %ebx
	movl	%esi, %eax
	movd	%xmm8, %ebp
	roll	$7, %ebx
	xorl	%r11d, %eax
	addl	%ebp, %edx
	addl	%r11d, %ebx
	movd	%xmm1, %ebp
	movdqa	%xmm8, %xmm1
	andl	%ebx, %eax
	punpckhdq	%xmm8, %xmm1
	xorl	%esi, %eax
	addl	%eax, %edx
	movl	%r11d, %eax
	roll	$7, %edx
	xorl	%ebx, %eax
	addl	%ebx, %edx
	andl	%edx, %eax
	xorl	%r11d, %eax
	addl	%ebp, %esi
	movd	%xmm1, %ebp
	addl	%eax, %esi
	movl	%ebx, %eax
	pshufd	$255, %xmm8, %xmm1
	addl	%ebp, %r11d
	roll	$7, %esi
	xorl	%edx, %eax
	movl	%edx, %ebp
	addl	%edx, %esi
	andl	%esi, %eax
	xorl	%esi, %ebp
	xorl	%ebx, %eax
	addl	%eax, %r11d
	movd	%xmm1, %eax
	pshufd	$85, %xmm0, %xmm1
	roll	$7, %r11d
	addl	%ebx, %eax
	addl	%esi, %r11d
	andl	%r11d, %ebp
	xorl	%edx, %ebp
	leal	0(%rbp,%rax), %ebx
	movl	%esi, %eax
	movd	%xmm0, %ebp
	roll	$7, %ebx
	xorl	%r11d, %eax
	addl	%ebp, %edx
	addl	%r11d, %ebx
	movd	%xmm1, %ebp
	movdqa	%xmm0, %xmm1
	andl	%ebx, %eax
	punpckhdq	%xmm0, %xmm1
	pshufd	$255, %xmm0, %xmm0
	xorl	%esi, %eax
	addl	%ebp, %esi
	movd	%xmm1, %ebp
	addl	%eax, %edx
	movl	%r11d, %eax
	roll	$7, %edx
	xorl	%ebx, %eax
	addl	%ebx, %edx
	andl	%edx, %eax
	xorl	%r11d, %eax
	addl	%eax, %esi
	movl	%ebx, %eax
	roll	$7, %esi
	addl	%edx, %esi
	xorl	%edx, %eax
	addl	%ebp, %r11d
	addl	%edx, %r10d
	andl	%esi, %eax
	addl	%esi, %r8d
	movl	%r10d, (%rcx)
	xorl	%ebx, %eax
	movl	%r8d, 12(%rcx)
	addl	%eax, %r11d
	movl	%edx, %eax
	roll	$7, %r11d
	xorl	%esi, %eax
	addl	%esi, %r11d
	andl	%r11d, %eax
	addl	%r11d, %r9d
	addl	%r11d, %edi
	xorl	%eax, %edx
	movd	%xmm0, %eax
	movl	%edi, 8(%rcx)
	addl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	addl	%edx, %eax
	roll	$7, %eax
	addl	%r9d, %eax
	movl	%eax, 4(%rcx)
	ret
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
