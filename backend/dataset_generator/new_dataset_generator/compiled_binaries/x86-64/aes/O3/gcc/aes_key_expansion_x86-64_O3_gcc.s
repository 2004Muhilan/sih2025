	.file	"aes_key_expansion.c"
	.text
	.p2align 4
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	endbr64
	leaq	1(%rdi), %rcx
	movq	%rsi, %rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r8
	subq	%rcx, %rdx
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
	cmpq	$14, %rdx
	jbe	.L2
	movdqu	(%rdi), %xmm1
	movups	%xmm1, (%rsi)
.L3:
	movzbl	6(%r8), %eax
	movzbl	10(%r8), %r12d
	addq	$16, %r8
	leaq	rcon(%rip), %r9
	movzbl	-5(%r8), %r13d
	movzbl	-7(%r8), %ebp
	movb	%al, -21(%rsp)
	movzbl	-11(%r8), %eax
	movl	%r12d, %r14d
	movzbl	-8(%r8), %ebx
	movzbl	-9(%r8), %r11d
	movzbl	-16(%r8), %r15d
	movzbl	-1(%r8), %edi
	movb	%al, -17(%rsp)
	movzbl	-12(%r8), %eax
	movzbl	-2(%r8), %esi
	movzbl	-3(%r8), %r10d
	movzbl	-4(%r8), %ecx
	movb	%al, -18(%rsp)
	movzbl	-13(%r8), %eax
	movb	%al, -19(%rsp)
	movzbl	-14(%r8), %eax
	movb	%al, -20(%rsp)
	movzbl	-15(%r8), %eax
	movq	%r8, -16(%rsp)
	movb	%al, -22(%rsp)
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	(%r9), %eax
	xorb	%dil, -21(%rsp)
	xorl	%ecx, %r11d
	movl	%ecx, %edx
	movzbl	-21(%rsp), %r8d
	xorb	%sil, -22(%rsp)
	xorl	%esi, %ebp
	xorl	%edi, %r14d
	xorl	%r10d, %eax
	xorb	%dil, -20(%rsp)
	xorl	%esi, %r10d
	xorl	%ecx, %r13d
	xorb	%sil, -17(%rsp)
	xorl	%edi, %esi
	xorl	%edx, %edi
	movzbl	%r11b, %edx
	xorb	%cl, -19(%rsp)
	xorl	%eax, %r15d
	xorl	%eax, %ebx
	xorl	%eax, %ecx
	xorb	%al, -18(%rsp)
	salq	$8, %rdx
	movzbl	%r8b, %eax
	movzbl	-22(%rsp), %r12d
	orq	%rax, %rdx
	movzbl	-17(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-18(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-19(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-20(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	%r12b, %eax
	movzbl	%sil, %r12d
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	%r15b, %eax
	movq	%rax, %r8
	movzbl	%dil, %eax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%r12, %rax
	movzbl	%r10b, %r12d
	salq	$8, %rax
	orq	%rdx, %r8
	addq	$1, %r9
	orq	%r12, %rax
	movzbl	%cl, %r12d
	movq	%r8, -40(%rsp)
	salq	$8, %rax
	orq	%r12, %rax
	movzbl	%r13b, %r12d
	salq	$8, %rax
	orq	%r12, %rax
	movzbl	%r14b, %r12d
	salq	$8, %rax
	orq	%r12, %rax
	movzbl	%bpl, %r12d
	salq	$8, %rax
	orq	%r12, %rax
	movzbl	%bl, %r12d
	salq	$8, %rax
	orq	%r12, %rax
	movq	%rax, -32(%rsp)
	movq	-16(%rsp), %rax
	movdqa	-40(%rsp), %xmm0
	addq	$16, %rax
	movups	%xmm0, -16(%rax)
	movq	%rax, -16(%rsp)
	leaq	10+rcon(%rip), %rax
	cmpq	%r9, %rax
	jne	.L4
	popq	%rbx
	.cfi_remember_state
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
.L2:
	.cfi_restore_state
	movzbl	(%rdi), %edx
	movb	%dl, (%rsi)
	movzbl	1(%rdi), %edx
	movb	%dl, 1(%rsi)
	movzbl	2(%rdi), %edx
	movb	%dl, 2(%rsi)
	movzbl	3(%rdi), %edx
	movb	%dl, 3(%rsi)
	movzbl	4(%rdi), %edx
	movb	%dl, 4(%rsi)
	movzbl	5(%rdi), %edx
	movb	%dl, 5(%rsi)
	movzbl	6(%rdi), %edx
	movb	%dl, 6(%rsi)
	movzbl	7(%rdi), %edx
	movb	%dl, 7(%rsi)
	movzbl	8(%rdi), %edx
	movb	%dl, 8(%rsi)
	movzbl	9(%rdi), %edx
	movb	%dl, 9(%rsi)
	movzbl	10(%rdi), %edx
	movb	%dl, 10(%rsi)
	movzbl	11(%rdi), %edx
	movb	%dl, 11(%rsi)
	movzbl	12(%rdi), %edx
	movb	%dl, 12(%rsi)
	movzbl	13(%rdi), %edx
	movb	%dl, 13(%rsi)
	movzbl	14(%rdi), %edx
	movb	%dl, 14(%rsi)
	movzbl	15(%rdi), %eax
	movb	%al, 15(%rsi)
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align 8
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
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
