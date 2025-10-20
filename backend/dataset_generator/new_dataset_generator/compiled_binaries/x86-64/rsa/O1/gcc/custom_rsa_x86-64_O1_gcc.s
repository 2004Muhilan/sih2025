	.file	"custom_rsa.c"
	.text
	.globl	mod_exp
	.type	mod_exp, @function
mod_exp:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %r8
	movl	$0, %edx
	divq	%r8
	movq	%rdx, %rcx
	testq	%rsi, %rsi
	je	.L5
	movl	$1, %edi
	jmp	.L4
.L3:
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%r8
	movq	%rdx, %rcx
	shrq	%rsi
	je	.L1
.L4:
	testb	$1, %sil
	je	.L3
	movq	%rdi, %rax
	imulq	%rcx, %rax
	movl	$0, %edx
	divq	%r8
	movq	%rdx, %rdi
	jmp	.L3
.L5:
	movl	$1, %edi
.L1:
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.globl	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
.LFB1:
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %r8
	movq	%rsi, %rax
	movq	%rdx, %r12
	movq	%rcx, %rbp
	movq	%fs:40, %rdx
	movq	%rdx, 24(%rsp)
	xorl	%edx, %edx
	movl	$1, %edx
	testq	%rdi, %rdi
	jne	.L12
.L8:
	movq	%r8, (%r12)
	movq	%rdx, 0(%rbp)
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L13
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %rsi
	cqto
	idivq	%rdi
	movq	%rdx, %rdi
	movq	%rax, %rbx
	movq	%rsi, %rdx
	movq	%r8, %rsi
	call	extended_gcd
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rbx, %rax
	imulq	%rdx, %rax
	movq	16(%rsp), %r8
	subq	%rax, %r8
	movq	%rcx, %rax
	jmp	.L8
.L13:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB2:
	.cfi_startproc
	endbr64
	call	mod_exp
	ret
	.cfi_endproc
.LFE2:
	.size	rsa_encrypt, .-rsa_encrypt
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB3:
	.cfi_startproc
	endbr64
	call	mod_exp
	ret
	.cfi_endproc
.LFE3:
	.size	rsa_decrypt, .-rsa_decrypt
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
