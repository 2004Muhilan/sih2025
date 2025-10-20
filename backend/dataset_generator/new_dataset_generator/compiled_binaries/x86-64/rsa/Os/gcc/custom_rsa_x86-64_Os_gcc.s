	.file	"custom_rsa.c"
	.text
	.globl	mod_exp
	.type	mod_exp, @function
mod_exp:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	movl	$1, %edi
	divq	%rcx
	movq	%rdx, %r8
.L2:
	testq	%rsi, %rsi
	je	.L9
	testl	$1, %esi
	je	.L3
	movq	%rdi, %rax
	xorl	%edx, %edx
	imulq	%r8, %rax
	divq	%rcx
	movq	%rdx, %rdi
.L3:
	imulq	%r8, %r8
	xorl	%edx, %edx
	shrq	%rsi
	movq	%r8, %rax
	divq	%rcx
	movq	%rdx, %r8
	jmp	.L2
.L9:
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
	movq	%rdi, %r8
	movq	%rdx, %r12
	movq	%rsi, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rdx
	movq	%rdx, 24(%rsp)
	xorl	%edx, %edx
	movl	$1, %edx
	testq	%rdi, %rdi
	je	.L11
	cqto
	movq	%r8, %rsi
	leaq	16(%rsp), %rcx
	idivq	%rdi
	movq	%rdx, %rdi
	leaq	8(%rsp), %rdx
	movq	%rax, %rbp
	call	extended_gcd
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	imulq	%rdx, %rbp
	subq	%rbp, %r8
.L11:
	movq	%r8, (%r12)
	movq	%rdx, (%rbx)
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB2:
	.cfi_startproc
	endbr64
	jmp	mod_exp
	.cfi_endproc
.LFE2:
	.size	rsa_encrypt, .-rsa_encrypt
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB5:
	.cfi_startproc
	endbr64
	jmp	mod_exp
	.cfi_endproc
.LFE5:
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
