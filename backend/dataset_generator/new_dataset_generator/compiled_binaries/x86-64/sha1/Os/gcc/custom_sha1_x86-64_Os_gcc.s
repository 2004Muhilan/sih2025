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
	movq	%rdi, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
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
	movl	(%rdx), %r12d
	movl	4(%rdx), %ebx
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movl	8(%rdx), %r11d
	movl	12(%rdx), %r10d
	movl	16(%rdx), %r9d
.L2:
	movzbl	(%rdi,%rsi), %ecx
	movzbl	1(%rdi,%rsi), %r8d
	leaq	8(%rsp), %rax
	sall	$16, %r8d
	sall	$24, %ecx
	orl	%r8d, %ecx
	movzbl	3(%rdi,%rsi), %r8d
	orl	%r8d, %ecx
	movzbl	2(%rdi,%rsi), %r8d
	sall	$8, %r8d
	orl	%r8d, %ecx
	movl	%ecx, 8(%rsp,%rsi)
	addq	$4, %rsi
	cmpq	$64, %rsi
	jne	.L2
	leaq	264(%rsp), %rsi
.L3:
	movl	52(%rax), %ecx
	xorl	32(%rax), %ecx
	addq	$4, %rax
	xorl	4(%rax), %ecx
	xorl	-4(%rax), %ecx
	roll	%ecx
	movl	%ecx, 60(%rax)
	cmpq	%rax, %rsi
	jne	.L3
	movl	%r9d, %r13d
	movl	%r10d, %ecx
	movl	%r11d, %esi
	movl	%ebx, %r8d
	movl	%r12d, %ebp
	xorl	%edi, %edi
.L8:
	cmpq	$19, %rdi
	ja	.L4
	movl	%esi, %eax
	movl	$1518500249, %r14d
	xorl	%ecx, %eax
	andl	%r8d, %eax
	xorl	%ecx, %eax
	jmp	.L5
.L4:
	cmpq	$39, %rdi
	ja	.L6
	movl	%r8d, %eax
	movl	$1859775393, %r14d
	xorl	%esi, %eax
	xorl	%ecx, %eax
	jmp	.L5
.L6:
	cmpq	$59, %rdi
	ja	.L7
	movl	%esi, %eax
	movl	%esi, %r14d
	orl	%ecx, %eax
	andl	%ecx, %r14d
	andl	%r8d, %eax
	orl	%r14d, %eax
	movl	$-1894007588, %r14d
	jmp	.L5
.L7:
	movl	%r8d, %eax
	movl	$-899497514, %r14d
	xorl	%esi, %eax
	xorl	%ecx, %eax
.L5:
	movl	%ebp, %r15d
	roll	$5, %r15d
	addl	8(%rsp,%rdi,4), %r15d
	incq	%rdi
	addl	%r15d, %eax
	addl	%r14d, %eax
	movl	%r8d, %r14d
	movl	%ebp, %r8d
	addl	%r13d, %eax
	rorl	$2, %r14d
	movl	%ecx, %r13d
	cmpq	$80, %rdi
	je	.L15
	movl	%esi, %ecx
	movl	%eax, %ebp
	movl	%r14d, %esi
	jmp	.L8
.L15:
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
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
.LFB15:
	.cfi_startproc
	endbr64
	movabsq	$-1167088121787636991, %rax
	movl	$-1009589776, 16(%rdi)
	movq	%rax, (%rdi)
	movabsq	$1167088121787636990, %rax
	movq	%rax, 8(%rdi)
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
