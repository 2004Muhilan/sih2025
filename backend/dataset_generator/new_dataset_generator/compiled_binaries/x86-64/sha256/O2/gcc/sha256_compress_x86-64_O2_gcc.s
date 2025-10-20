	.file	"sha256_compress.c"
	.text
	.p2align 4
	.globl	sha256_compress
	.type	sha256_compress, @function
sha256_compress:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	movdqu	(%rsi), %xmm5
	movdqu	16(%rsi), %xmm6
	movq	%fs:40, %rax
	movq	%rax, 296(%rsp)
	xorl	%eax, %eax
	movdqu	32(%rsi), %xmm7
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r9
	movaps	%xmm5, 32(%rsp)
	movdqu	48(%rsi), %xmm5
	leaq	288(%rsp), %r12
	movaps	%xmm6, 48(%rsp)
	movaps	%xmm5, 80(%rsp)
	movq	88(%rsp), %xmm0
	movaps	%xmm7, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	addq	$8, %rax
	psrld	$19, %xmm3
	pslld	$13, %xmm1
	movq	-68(%rax), %xmm2
	por	%xmm3, %xmm1
	psrld	$17, %xmm4
	movdqa	%xmm0, %xmm3
	pslld	$15, %xmm3
	psrld	$10, %xmm0
	por	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	pxor	%xmm3, %xmm1
	psrld	$7, %xmm4
	movdqa	%xmm2, %xmm3
	pxor	%xmm0, %xmm1
	psrld	$18, %xmm3
	movdqa	%xmm2, %xmm0
	pslld	$14, %xmm0
	por	%xmm3, %xmm0
	movdqa	%xmm2, %xmm3
	pslld	$25, %xmm3
	psrld	$3, %xmm2
	por	%xmm4, %xmm3
	pxor	%xmm3, %xmm0
	pxor	%xmm2, %xmm0
	movq	-72(%rax), %xmm2
	paddd	%xmm0, %xmm1
	movq	-36(%rax), %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movq	%xmm0, -8(%rax)
	cmpq	%rax, %r12
	jne	.L2
	movl	0(%r13), %r14d
	movl	28(%r13), %eax
	movl	4(%r13), %r15d
	movl	8(%r13), %r8d
	movl	12(%r13), %ebp
	movl	16(%r13), %esi
	movl	%eax, 24(%rsp)
	movl	%eax, %ecx
	movl	20(%r13), %ebx
	movl	24(%r13), %r11d
	movl	%r8d, 4(%rsp)
	movl	%r15d, %r10d
	movl	%ebp, 8(%rsp)
	movl	%r14d, %edi
	movl	%esi, 12(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r11d, 20(%rsp)
	movl	%r14d, 28(%rsp)
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ebx, %r11d
	movl	%r10d, %r8d
	movl	%esi, %ebx
	movl	%edi, %r10d
	movl	%r14d, %esi
	movl	%edx, %edi
.L3:
	movl	%esi, %eax
	movl	%esi, %edx
	movl	%esi, %r14d
	addq	$4, %r9
	rorl	$11, %edx
	rorl	$6, %eax
	andl	%ebx, %r14d
	xorl	%edx, %eax
	movl	%esi, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	-4(%r9), %edx
	leal	1116352408(%rax,%rdx), %edx
	movl	%esi, %eax
	notl	%eax
	andl	%r11d, %eax
	xorl	%r14d, %eax
	movl	%r10d, %r14d
	addl	%eax, %edx
	movl	%edi, %eax
	andl	%r8d, %r14d
	addl	%ecx, %edx
	movl	%edi, %ecx
	rorl	$2, %eax
	rorl	$13, %ecx
	xorl	%ecx, %eax
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%ecx, %eax
	movl	%r10d, %ecx
	xorl	%r8d, %ecx
	andl	%edi, %ecx
	xorl	%r14d, %ecx
	leal	(%rdx,%rbp), %r14d
	movl	%r8d, %ebp
	addl	%ecx, %eax
	movl	%r11d, %ecx
	addl	%eax, %edx
	cmpq	%r9, %r12
	jne	.L5
	addl	%edi, %r15d
	movl	12(%rsp), %edi
	movl	%r14d, %eax
	movl	28(%rsp), %r14d
	movl	%r15d, 4(%r13)
	addl	%eax, %edi
	movl	16(%rsp), %eax
	addl	%edx, %r14d
	movl	4(%rsp), %edx
	movl	%r14d, 0(%r13)
	addl	%esi, %eax
	addl	%r10d, %edx
	movl	%edi, 16(%r13)
	movl	%eax, 20(%r13)
	movl	20(%rsp), %eax
	movl	%edx, 8(%r13)
	movl	8(%rsp), %edx
	addl	%ebx, %eax
	movl	%eax, 24(%r13)
	movl	24(%rsp), %eax
	addl	%r8d, %edx
	movl	%edx, 12(%r13)
	addl	%r11d, %eax
	movl	%eax, 28(%r13)
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L9
	addq	$312, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
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
