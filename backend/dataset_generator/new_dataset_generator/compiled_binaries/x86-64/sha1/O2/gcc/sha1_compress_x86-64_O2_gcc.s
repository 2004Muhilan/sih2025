	.file	"sha1_compress.c"
	.text
	.p2align 4
	.globl	sha1_compress
	.type	sha1_compress, @function
sha1_compress:
.LFB0:
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
	movdqu	(%rsi), %xmm3
	movq	16(%rsi), %rdx
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movdqu	16(%rsi), %xmm4
	movdqu	32(%rsi), %xmm5
	leaq	52(%rsp), %rax
	movdqu	48(%rsi), %xmm6
	movaps	%xmm3, (%rsp)
	movq	8(%rsp), %xmm0
	leaq	308(%rsp), %rsi
	movaps	%xmm4, 16(%rsp)
	movq	24(%rsp), %xmm2
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L2:
	movq	-52(%rax), %xmm1
	movq	%xmm2, %rcx
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
	movq	%rdx, %xmm0
	movq	%rcx, %rdx
	cmpq	%rax, %rsi
	jne	.L2
	movdqu	(%r10), %xmm1
	movl	16(%r10), %r11d
	xorl	%edx, %edx
	movq	%rsp, %rbx
	movl	4(%r10), %ecx
	movl	8(%r10), %edi
	movl	12(%r10), %esi
	movd	%xmm1, %r8d
	movl	%r11d, %r9d
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%esi, %ebp
	movl	$1859775393, %r12d
	xorl	%edi, %ebp
	xorl	%ecx, %ebp
.L4:
	movl	%r8d, %eax
	rorl	$2, %ecx
	roll	$5, %eax
	addl	(%rbx,%rdx,4), %eax
	addq	$1, %rdx
	addl	%r12d, %eax
	addl	%ebp, %eax
	addl	%r9d, %eax
.L9:
	movl	%esi, %r9d
	movl	%edi, %esi
	movl	%ecx, %edi
	movl	%r8d, %ecx
	movl	%eax, %r8d
.L8:
	cmpq	$19, %rdx
	jbe	.L15
	cmpq	$39, %rdx
	jbe	.L16
	cmpq	$59, %rdx
	ja	.L6
	movl	%esi, %ebp
	movl	%esi, %eax
	movl	$-1894007588, %r12d
	orl	%edi, %ebp
	andl	%edi, %eax
	andl	%ecx, %ebp
	orl	%eax, %ebp
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L15:
	movl	%esi, %ebp
	movl	$1518500249, %r12d
	xorl	%edi, %ebp
	andl	%ecx, %ebp
	xorl	%esi, %ebp
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%esi, %eax
	movl	%r8d, %ebp
	xorl	%edi, %eax
	roll	$5, %ebp
	addl	(%rbx,%rdx,4), %ebp
	addq	$1, %rdx
	xorl	%ecx, %eax
	rorl	$2, %ecx
	leal	-899497514(%rbp,%rax), %eax
	addl	%r9d, %eax
	cmpq	$80, %rdx
	jne	.L9
	movd	%ecx, %xmm2
	movd	%edi, %xmm7
	movd	%eax, %xmm0
	addl	%esi, %r11d
	movd	%r8d, %xmm3
	punpckldq	%xmm7, %xmm2
	movl	%r11d, 16(%r10)
	punpckldq	%xmm3, %xmm0
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
.LFE0:
	.size	sha1_compress, .-sha1_compress
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
