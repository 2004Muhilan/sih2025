	.file	"custom_sha1.c"
	.text
	.globl	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
.LFB14:
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$360, %rsp
	.cfi_def_cfa_offset 416
	movq	%rdi, %r13
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, 344(%rsp)
	xorl	%eax, %eax
	movl	(%rdi), %r15d
	movl	4(%rdi), %r14d
	movl	8(%rdi), %r11d
	movl	12(%rdi), %eax
	movl	%eax, 4(%rsp)
	movl	16(%rdi), %esi
	leaq	16(%rsp), %rdx
	leaq	80(%rsp), %r8
	movq	%rdx, %rdi
.L2:
	movzbl	(%rcx), %eax
	sall	$24, %eax
	movzbl	1(%rcx), %r9d
	sall	$16, %r9d
	orl	%r9d, %eax
	movzbl	3(%rcx), %r9d
	orl	%r9d, %eax
	movzbl	2(%rcx), %r9d
	sall	$8, %r9d
	orl	%r9d, %eax
	movl	%eax, (%rdi)
	addq	$4, %rcx
	addq	$4, %rdi
	cmpq	%r8, %rdi
	jne	.L2
	leaq	256(%rdx), %rcx
.L3:
	movl	52(%rdx), %eax
	xorl	32(%rdx), %eax
	xorl	8(%rdx), %eax
	xorl	(%rdx), %eax
	roll	%eax
	movl	%eax, 64(%rdx)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L3
	movl	%esi, %r10d
	movl	4(%rsp), %edi
	movl	%r11d, %r8d
	movl	%r14d, %ecx
	movl	%r15d, %r9d
	movl	$0, %edx
	movl	$-1894007588, %ebp
	movl	$1859775393, %ebx
	movl	$1518500249, %r12d
	movl	%r15d, 8(%rsp)
	movl	%r14d, 12(%rsp)
	jmp	.L9
.L16:
	movl	%r8d, %r14d
	xorl	%edi, %r14d
	andl	%ecx, %r14d
	xorl	%edi, %r14d
	movl	%r12d, %r15d
	jmp	.L5
.L6:
	cmpl	$59, %edx
	jg	.L7
	movl	%r8d, %r14d
	orl	%edi, %r14d
	andl	%ecx, %r14d
	movl	%r8d, %eax
	andl	%edi, %eax
	orl	%eax, %r14d
	movl	%ebp, %r15d
.L5:
	movl	%r9d, %eax
	roll	$5, %eax
	addl	16(%rsp,%rdx,4), %eax
	addl	%r14d, %eax
	addl	%r15d, %eax
	addl	%r10d, %eax
	rorl	$2, %ecx
	addq	$1, %rdx
.L10:
	movl	%edi, %r10d
	movl	%r8d, %edi
	movl	%ecx, %r8d
	movl	%r9d, %ecx
	movl	%eax, %r9d
.L9:
	cmpl	$19, %edx
	jle	.L16
	cmpl	$39, %edx
	jg	.L6
	movl	%ecx, %r14d
	xorl	%r8d, %r14d
	xorl	%edi, %r14d
	movl	%ebx, %r15d
	jmp	.L5
.L7:
	movl	%r9d, %r14d
	roll	$5, %r14d
	addl	16(%rsp,%rdx,4), %r14d
	movl	%ecx, %eax
	xorl	%r8d, %eax
	xorl	%edi, %eax
	leal	-899497514(%r14,%rax), %eax
	addl	%r10d, %eax
	rorl	$2, %ecx
	addq	$1, %rdx
	cmpq	$80, %rdx
	jne	.L10
	movl	8(%rsp), %r15d
	movl	12(%rsp), %r14d
	addl	%eax, %r15d
	movl	%r15d, 0(%r13)
	addl	%r9d, %r14d
	movl	%r14d, 4(%r13)
	addl	%ecx, %r11d
	movl	%r11d, 8(%r13)
	movl	4(%rsp), %eax
	addl	%r8d, %eax
	movl	%eax, 12(%r13)
	addl	%edi, %esi
	movl	%esi, 16(%r13)
	movq	344(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L17
	addq	$360, %rsp
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
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
.LFB15:
	.cfi_startproc
	endbr64
	movl	$1732584193, (%rdi)
	movl	$-271733879, 4(%rdi)
	movl	$-1732584194, 8(%rdi)
	movl	$271733878, 12(%rdi)
	movl	$-1009589776, 16(%rdi)
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
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
