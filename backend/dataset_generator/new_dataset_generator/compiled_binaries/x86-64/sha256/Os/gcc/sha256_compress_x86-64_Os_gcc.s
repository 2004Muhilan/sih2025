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
	movq	%rdi, %rax
	movl	$16, %ecx
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
	movq	%fs:40, %rdx
	movq	%rdx, 296(%rsp)
	xorl	%edx, %edx
	leaq	40(%rsp), %rdx
	leaq	232(%rsp), %r8
	movq	%rdx, %rdi
	rep movsl
	movq	%rdx, %rdi
.L2:
	movl	4(%rdi), %ecx
	movl	56(%rdi), %esi
	addq	$4, %rdi
	movl	%ecx, %edx
	movl	%ecx, %r9d
	shrl	$3, %ecx
	roll	$14, %r9d
	rorl	$7, %edx
	xorl	%r9d, %edx
	movl	%esi, %r9d
	xorl	%ecx, %edx
	movl	32(%rdi), %ecx
	addl	-4(%rdi), %ecx
	roll	$13, %r9d
	addl	%ecx, %edx
	movl	%esi, %ecx
	shrl	$10, %esi
	roll	$15, %ecx
	xorl	%r9d, %ecx
	xorl	%esi, %ecx
	addl	%ecx, %edx
	movl	%edx, 60(%rdi)
	cmpq	%r8, %rdi
	jne	.L2
	movl	8(%rax), %ebx
	movl	(%rax), %r12d
	xorl	%r13d, %r13d
	movl	4(%rax), %ebp
	movl	%ebx, 8(%rsp)
	movl	12(%rax), %ebx
	movl	%r12d, %esi
	movl	8(%rsp), %r8d
	movl	%ebp, %r9d
	movl	%ebx, 12(%rsp)
	movl	16(%rax), %ebx
	movl	12(%rsp), %r14d
	movl	%ebx, 16(%rsp)
	movl	20(%rax), %ebx
	movl	16(%rsp), %ecx
	movl	%ebx, 20(%rsp)
	movl	24(%rax), %ebx
	movl	%ebx, 24(%rsp)
	movl	28(%rax), %ebx
	movl	24(%rsp), %r11d
	movl	%ebx, 28(%rsp)
	movl	%ebx, %r10d
	movl	20(%rsp), %ebx
.L3:
	movl	%ecx, %edx
	movl	%ecx, %edi
	movl	%ecx, %r15d
	rorl	$6, %edx
	rorl	$11, %edi
	andl	%ebx, %r15d
	xorl	%edx, %edi
	movl	%ecx, %edx
	roll	$7, %edx
	xorl	%edi, %edx
	movl	40(%rsp,%r13,4), %edi
	incq	%r13
	leal	1116352408(%rdx,%rdi), %edi
	movl	%ecx, %edx
	notl	%edx
	andl	%r11d, %edx
	xorl	%r15d, %edx
	movl	%r9d, %r15d
	addl	%edx, %edi
	movl	%esi, %edx
	andl	%r8d, %r15d
	addl	%r10d, %edi
	movl	%esi, %r10d
	rorl	$2, %edx
	rorl	$13, %r10d
	xorl	%edx, %r10d
	movl	%esi, %edx
	roll	$10, %edx
	xorl	%edx, %r10d
	movl	%r9d, %edx
	xorl	%r8d, %edx
	andl	%esi, %edx
	xorl	%r15d, %edx
	leal	(%rdi,%r14), %r15d
	movl	%r8d, %r14d
	addl	%r10d, %edx
	movl	%r11d, %r10d
	addl	%edi, %edx
	cmpq	$64, %r13
	je	.L9
	movl	%ebx, %r11d
	movl	%r9d, %r8d
	movl	%ecx, %ebx
	movl	%esi, %r9d
	movl	%r15d, %ecx
	movl	%edx, %esi
	jmp	.L3
.L9:
	addl	%edx, %r12d
	movl	8(%rsp), %edx
	addl	%esi, %ebp
	movl	%r12d, (%rax)
	addl	%r9d, %edx
	movl	%ebp, 4(%rax)
	movl	%edx, 8(%rax)
	movl	12(%rsp), %edx
	addl	%r8d, %edx
	movl	%edx, 12(%rax)
	movl	16(%rsp), %edx
	addl	%r15d, %edx
	movl	%edx, 16(%rax)
	movl	20(%rsp), %edx
	addl	%ecx, %edx
	movl	%edx, 20(%rax)
	movl	24(%rsp), %edx
	addl	%ebx, %edx
	movl	%edx, 24(%rax)
	movl	28(%rsp), %edx
	addl	%r11d, %edx
	movl	%edx, 28(%rax)
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	addq	$312, %rsp
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
