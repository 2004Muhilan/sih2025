	.file	"sha1_compress.c"
	.text
	.globl	sha1_compress
	.type	sha1_compress, @function
sha1_compress:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rdx
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
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	rep movsl
	movq	%rax, %rdi
	leaq	264(%rsp), %rcx
.L2:
	movl	52(%rdi), %eax
	xorl	32(%rdi), %eax
	addq	$4, %rdi
	xorl	4(%rdi), %eax
	xorl	-4(%rdi), %eax
	roll	%eax
	movl	%eax, 60(%rdi)
	cmpq	%rcx, %rdi
	jne	.L2
	movl	(%rdx), %r12d
	movl	4(%rdx), %ebx
	xorl	%edi, %edi
	movl	8(%rdx), %r11d
	movl	12(%rdx), %r10d
	movl	16(%rdx), %r9d
	movl	%ebx, %r8d
	movl	%r12d, %ebp
	movl	%r10d, %ecx
	movl	%r11d, %esi
	movl	%r9d, %r13d
.L7:
	cmpq	$19, %rdi
	ja	.L3
	movl	%esi, %eax
	movl	$1518500249, %r14d
	xorl	%ecx, %eax
	andl	%r8d, %eax
	xorl	%ecx, %eax
	jmp	.L4
.L3:
	cmpq	$39, %rdi
	ja	.L5
	movl	%r8d, %eax
	movl	$1859775393, %r14d
	xorl	%esi, %eax
	xorl	%ecx, %eax
	jmp	.L4
.L5:
	cmpq	$59, %rdi
	ja	.L6
	movl	%esi, %eax
	movl	%esi, %r14d
	orl	%ecx, %eax
	andl	%ecx, %r14d
	andl	%r8d, %eax
	orl	%r14d, %eax
	movl	$-1894007588, %r14d
	jmp	.L4
.L6:
	movl	%r8d, %eax
	movl	$-899497514, %r14d
	xorl	%esi, %eax
	xorl	%ecx, %eax
.L4:
	movl	%ebp, %r15d
	rorl	$2, %r8d
	roll	$5, %r15d
	addl	8(%rsp,%rdi,4), %r15d
	incq	%rdi
	addl	%r15d, %eax
	addl	%r14d, %eax
	movl	%r8d, %r14d
	movl	%ebp, %r8d
	addl	%r13d, %eax
	movl	%ecx, %r13d
	cmpq	$80, %rdi
	je	.L13
	movl	%esi, %ecx
	movl	%eax, %ebp
	movl	%r14d, %esi
	jmp	.L7
.L13:
	addl	%eax, %r12d
	addl	%ebp, %ebx
	addl	%r14d, %r11d
	addl	%esi, %r10d
	addl	%ecx, %r9d
	movl	%r12d, (%rdx)
	movl	%ebx, 4(%rdx)
	movl	%r11d, 8(%rdx)
	movl	%r10d, 12(%rdx)
	movl	%r9d, 16(%rdx)
	movq	328(%rsp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	addq	$344, %rsp
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
