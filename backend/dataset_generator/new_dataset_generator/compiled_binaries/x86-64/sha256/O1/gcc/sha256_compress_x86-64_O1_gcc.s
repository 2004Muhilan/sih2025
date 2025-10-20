	.file	"sha256_compress.c"
	.text
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
	movq	%rdi, %r13
	movq	%fs:40, %rax
	movq	%rax, 296(%rsp)
	xorl	%eax, %eax
.L2:
	movl	(%rsi,%rax), %edx
	movl	%edx, 32(%rsp,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.L2
	leaq	32(%rsp), %r8
	leaq	224(%rsp), %rdi
	movq	%r8, %rdx
.L3:
	movl	4(%rdx), %ecx
	movl	56(%rdx), %esi
	movl	%ecx, %eax
	rorl	$7, %eax
	movl	%ecx, %r9d
	roll	$14, %r9d
	xorl	%r9d, %eax
	shrl	$3, %ecx
	xorl	%ecx, %eax
	movl	36(%rdx), %ecx
	addl	(%rdx), %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	roll	$15, %ecx
	movl	%esi, %r9d
	roll	$13, %r9d
	xorl	%r9d, %ecx
	shrl	$10, %esi
	xorl	%esi, %ecx
	addl	%ecx, %eax
	movl	%eax, 64(%rdx)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
	jne	.L3
	movl	0(%r13), %r14d
	movl	4(%r13), %r15d
	movl	8(%r13), %r9d
	movl	%r9d, 4(%rsp)
	movl	12(%r13), %ebp
	movl	%ebp, 8(%rsp)
	movl	16(%r13), %esi
	movl	%esi, 12(%rsp)
	movl	20(%r13), %ebx
	movl	%ebx, 16(%rsp)
	movl	24(%r13), %r11d
	movl	%r11d, 20(%rsp)
	movl	28(%r13), %eax
	movl	%eax, 24(%rsp)
	leaq	256(%r8), %r12
	movl	%eax, %ecx
	movl	%r15d, %r10d
	movl	%r14d, %edi
	movl	%r14d, 28(%rsp)
	jmp	.L4
.L6:
	movl	%ebx, %r11d
	movl	%esi, %ebx
	movl	%r14d, %esi
	movl	%r10d, %r9d
	movl	%edi, %r10d
	movl	%edx, %edi
.L4:
	movl	%esi, %eax
	rorl	$6, %eax
	movl	%esi, %edx
	rorl	$11, %edx
	xorl	%edx, %eax
	movl	%esi, %edx
	roll	$7, %edx
	xorl	%edx, %eax
	movl	(%r8), %edx
	leal	1116352408(%rax,%rdx), %edx
	movl	%esi, %eax
	notl	%eax
	andl	%r11d, %eax
	movl	%esi, %r14d
	andl	%ebx, %r14d
	xorl	%r14d, %eax
	addl	%eax, %edx
	addl	%ecx, %edx
	movl	%edi, %eax
	rorl	$2, %eax
	movl	%edi, %ecx
	rorl	$13, %ecx
	xorl	%ecx, %eax
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%ecx, %eax
	movl	%r10d, %ecx
	xorl	%r9d, %ecx
	andl	%edi, %ecx
	movl	%r10d, %r14d
	andl	%r9d, %r14d
	xorl	%r14d, %ecx
	addl	%ecx, %eax
	leal	(%rdx,%rbp), %r14d
	addl	%eax, %edx
	addq	$4, %r8
	movl	%r9d, %ebp
	movl	%r11d, %ecx
	cmpq	%r12, %r8
	jne	.L6
	movl	%r14d, %eax
	movl	28(%rsp), %r14d
	addl	%edx, %r14d
	movl	%r14d, 0(%r13)
	addl	%edi, %r15d
	movl	%r15d, 4(%r13)
	movl	4(%rsp), %edx
	addl	%r10d, %edx
	movl	%edx, 8(%r13)
	movl	8(%rsp), %edx
	addl	%r9d, %edx
	movl	%edx, 12(%r13)
	movl	12(%rsp), %edi
	addl	%eax, %edi
	movl	%edi, 16(%r13)
	movl	16(%rsp), %eax
	addl	%esi, %eax
	movl	%eax, 20(%r13)
	movl	20(%rsp), %eax
	addl	%ebx, %eax
	movl	%eax, 24(%r13)
	movl	24(%rsp), %eax
	addl	%r11d, %eax
	movl	%eax, 28(%r13)
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L10
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
.L10:
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
