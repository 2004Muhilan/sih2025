	.file	"rsa_extended_gcd.c"
	.text
	.p2align 4
	.globl	rsa_extended_gcd
	.type	rsa_extended_gcd, @function
rsa_extended_gcd:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	movl	$1, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rdx
	movq	%rdx, 24(%rsp)
	xorl	%edx, %edx
	testq	%rdi, %rdi
	jne	.L18
.L2:
	movq	%rdi, (%r12)
	movq	%rcx, 0(%rbp)
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L19
	addq	$40, %rsp
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
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	cqto
	movl	$1, %esi
	idivq	%rdi
	movq	%rdx, %r13
	movq	%rax, %rbx
	movq	%rdx, %rcx
	testq	%rdx, %rdx
	je	.L3
	movq	%rdi, %rax
	cqto
	idivq	%r13
	movq	%rdx, %rsi
	movq	%rax, %r15
	movl	$1, %edx
	testq	%rsi, %rsi
	jne	.L20
.L4:
	movq	%rbx, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	imulq	%rdx, %rax
	subq	%rax, %rsi
.L3:
	movq	%rdi, %rax
	movq	%rsi, %rdi
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L20:
	movq	%r13, %rax
	cqto
	idivq	%rsi
	movq	%rax, %r13
	movq	%rdx, %r9
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.L5
	movq	%rsi, %rax
	leaq	16(%rsp), %rcx
	movq	%r9, %rsi
	cqto
	idivq	%r9
	movq	%rdx, %rdi
	leaq	8(%rsp), %rdx
	movq	%rax, %r14
	call	rsa_extended_gcd
	movq	16(%rsp), %r9
	movq	%r13, %r8
	movq	%rax, %rsi
	movq	8(%rsp), %rax
	imulq	%rax, %r14
	subq	%r14, %r9
	imulq	%r9, %r8
	subq	%r8, %rax
.L5:
	movq	%r15, %rdi
	movq	%r9, %rdx
	movq	%rsi, %rcx
	movq	%rax, %rsi
	imulq	%rax, %rdi
	subq	%rdi, %rdx
	jmp	.L4
.L19:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
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
