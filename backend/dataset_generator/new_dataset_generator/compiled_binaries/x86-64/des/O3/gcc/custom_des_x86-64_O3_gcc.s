	.file	"custom_des.c"
	.text
	.p2align 4
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %rcx
	movq	%rdx, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movzbl	(%rdi), %eax
	movzbl	7(%rdi), %edx
	movzbl	(%rcx), %r11d
	salq	$56, %rax
	movzbl	1(%rcx), %ebx
	movzbl	2(%rcx), %r10d
	orq	%rdx, %rax
	movzbl	1(%rdi), %edx
	movzbl	3(%rcx), %r9d
	salq	$48, %rdx
	orq	%rdx, %rax
	movzbl	2(%rdi), %edx
	salq	$40, %rdx
	orq	%rdx, %rax
	movzbl	3(%rdi), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movzbl	4(%rdi), %edx
	salq	$24, %rdx
	orq	%rdx, %rax
	movzbl	5(%rdi), %edx
	salq	$16, %rdx
	orq	%rdx, %rax
	movzbl	6(%rdi), %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	shrq	$32, %rax
	movq	%rdx, %r8
	xorl	%r11d, %edx
	salq	$32, %r8
	xorl	%edx, %eax
	movq	%r8, %rdi
	shrq	$32, %r8
	orq	%rax, %rdi
	salq	$32, %rax
	xorl	%ebx, %edi
	movq	%rax, %rdx
	shrq	$32, %rax
	xorl	%r8d, %edi
	orq	%rdi, %rdx
	salq	$32, %rdi
	xorl	%r10d, %edx
	xorl	%eax, %edx
	movq	%rdi, %rax
	shrq	$32, %rdi
	orq	%rdx, %rax
	salq	$32, %rdx
	xorl	%r9d, %eax
	movq	%rdx, %r8
	xorl	%edi, %eax
	movq	%rdx, %rdi
	movzbl	4(%rcx), %edx
	orq	%rax, %r8
	shrq	$32, %rdi
	salq	$32, %rax
	xorl	%edx, %r8d
	xorl	%edi, %r8d
	movq	%rax, %rdi
	shrq	$32, %rax
	movq	%rax, %rbp
	movzbl	5(%rcx), %eax
	orq	%r8, %rdi
	salq	$32, %r8
	movq	%r8, %r12
	shrq	$32, %r8
	xorl	%eax, %edi
	xorl	%ebp, %edi
	movq	%r8, %rbp
	movzbl	6(%rcx), %r8d
	orq	%rdi, %r12
	salq	$32, %rdi
	xorl	%r8d, %r12d
	xorl	%ebp, %r12d
	movq	%rdi, %rbp
	shrq	$32, %rdi
	orq	%r12, %rbp
	movq	%rdi, %r13
	movzbl	7(%rcx), %edi
	salq	$32, %r12
	movl	%ebp, %ecx
	movq	%r12, %rbp
	shrq	$32, %r12
	xorl	%edi, %ecx
	xorl	%r13d, %ecx
	orq	%rcx, %rbp
	salq	$32, %rcx
	xorl	%ebp, %r11d
	xorl	%r12d, %r11d
	movq	%rcx, %r12
	shrq	$32, %rcx
	orq	%r11, %r12
	movq	%rcx, %rbp
	salq	$32, %r11
	xorl	%r12d, %ebx
	movl	%ebx, %ecx
	movq	%r11, %rbx
	xorl	%ebp, %ecx
	orq	%rcx, %rbx
	shrq	$32, %r11
	salq	$32, %rcx
	xorl	%ebx, %r10d
	xorl	%r11d, %r10d
	movq	%rcx, %rbx
	shrq	$32, %rcx
	orq	%r10, %rbx
	movq	%rcx, %r11
	movl	%r9d, %ecx
	salq	$32, %r10
	xorl	%ebx, %ecx
	movq	%r10, %r9
	shrq	$32, %r10
	popq	%rbx
	.cfi_def_cfa_offset 32
	xorl	%r11d, %ecx
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	orq	%rcx, %r9
	salq	$32, %rcx
	xorl	%r9d, %edx
	movq	%rcx, %r9
	shrq	$32, %rcx
	xorl	%r10d, %edx
	orq	%rdx, %r9
	salq	$32, %rdx
	xorl	%r9d, %eax
	xorl	%ecx, %eax
	movq	%rdx, %rcx
	shrq	$32, %rdx
	orq	%rax, %rcx
	salq	$32, %rax
	xorl	%ecx, %r8d
	xorl	%edx, %r8d
	movq	%rax, %rdx
	shrq	$32, %rax
	orq	%r8, %rdx
	salq	$32, %r8
	xorl	%edx, %edi
	xorl	%eax, %edi
	orq	%r8, %rdi
	bswap	%rdi
	movq	%rdi, (%rsi)
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
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
