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
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, %r9
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	(%rdi), %ebp
	movl	4(%rdi), %ebx
	movl	8(%rdi), %r11d
	movl	12(%rdi), %r10d
	movq	%rsi, %rcx
	movq	%rsp, %rdx
	leaq	64(%rsp), %r8
	movq	%rdx, %rsi
.L2:
	movzbl	1(%rcx), %eax
	sall	$8, %eax
	movzbl	2(%rcx), %edi
	sall	$16, %edi
	orl	%edi, %eax
	movzbl	(%rcx), %edi
	orl	%edi, %eax
	movzbl	3(%rcx), %edi
	sall	$24, %edi
	orl	%edi, %eax
	movl	%eax, (%rsi)
	addq	$4, %rcx
	addq	$4, %rsi
	cmpq	%r8, %rsi
	jne	.L2
	movl	%r10d, %ecx
	movl	%r11d, %edi
	movl	%ebx, %esi
	movl	%ebp, %r12d
	jmp	.L3
.L5:
	movl	%edi, %ecx
	movl	%esi, %edi
	movl	%eax, %esi
.L3:
	movl	%edi, %eax
	xorl	%ecx, %eax
	andl	%esi, %eax
	xorl	%ecx, %eax
	addl	(%rdx), %eax
	addl	%r12d, %eax
	roll	$7, %eax
	addl	%esi, %eax
	addq	$4, %rdx
	movl	%ecx, %r12d
	cmpq	%r8, %rdx
	jne	.L5
	addl	%ecx, %ebp
	movl	%ebp, (%r9)
	addl	%eax, %ebx
	movl	%ebx, 4(%r9)
	addl	%esi, %r11d
	movl	%r11d, 8(%r9)
	addl	%edi, %r10d
	movl	%r10d, 12(%r9)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L8
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB15:
	.cfi_startproc
	endbr64
	movl	$1732584193, (%rdi)
	movl	$-271733879, 4(%rdi)
	movl	$-1732584194, 8(%rdi)
	movl	$271733878, 12(%rdi)
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
