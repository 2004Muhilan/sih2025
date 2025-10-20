	.file	"custom_md5.c"
	.text
	.globl	md5_transform
	.type	md5_transform, @function
md5_transform:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %rdx
	xorl	%ecx, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movl	(%rdi), %r11d
	movl	4(%rdi), %r10d
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	8(%rdi), %r9d
	movl	12(%rdi), %edi
	leaq	8(%rsp), %rbp
.L2:
	movzbl	1(%rsi,%rcx), %eax
	movzbl	2(%rsi,%rcx), %r8d
	sall	$8, %eax
	sall	$16, %r8d
	orl	%r8d, %eax
	movzbl	(%rsi,%rcx), %r8d
	orl	%r8d, %eax
	movzbl	3(%rsi,%rcx), %r8d
	addq	$4, %rcx
	sall	$24, %r8d
	orl	%r8d, %eax
	movl	%eax, -4(%rcx,%rbp)
	cmpq	$64, %rcx
	jne	.L2
	movl	%edi, %esi
	movl	%r9d, %r8d
	movl	%r10d, %ecx
	movl	%r11d, %r12d
	xorl	%ebx, %ebx
.L3:
	movl	%r8d, %eax
	xorl	%esi, %eax
	andl	%ecx, %eax
	xorl	%esi, %eax
	addl	0(%rbp,%rbx,4), %eax
	incq	%rbx
	addl	%r12d, %eax
	movl	%esi, %r12d
	roll	$7, %eax
	addl	%ecx, %eax
	cmpq	$16, %rbx
	je	.L9
	movl	%r8d, %esi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	jmp	.L3
.L9:
	addl	%esi, %r11d
	addl	%eax, %r10d
	addl	%ecx, %r9d
	addl	%r8d, %edi
	movl	%r11d, (%rdx)
	movl	%r10d, 4(%rdx)
	movl	%r9d, 8(%rdx)
	movl	%edi, 12(%rdx)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB15:
	.cfi_startproc
	endbr64
	movabsq	$-1167088121787636991, %rax
	movq	%rax, (%rdi)
	movabsq	$1167088121787636990, %rax
	movq	%rax, 8(%rdi)
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
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
