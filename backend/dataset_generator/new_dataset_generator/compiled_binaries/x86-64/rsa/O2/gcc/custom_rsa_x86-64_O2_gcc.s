	.file	"custom_rsa.c"
	.text
	.p2align 4
	.globl	mod_exp
	.type	mod_exp, @function
mod_exp:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %r8
	xorl	%edx, %edx
	movl	$1, %edi
	divq	%r8
	movq	%rdx, %rcx
	testq	%rsi, %rsi
	je	.L1
	.p2align 4,,10
	.p2align 3
.L4:
	testb	$1, %sil
	je	.L3
	movq	%rdi, %rax
	xorl	%edx, %edx
	imulq	%rcx, %rax
	divq	%r8
	movq	%rdx, %rdi
.L3:
	imulq	%rcx, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r8
	shrq	%rsi
	movq	%rdx, %rcx
	jne	.L4
.L1:
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.p2align 4
	.globl	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
.LFB1:
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
	jne	.L27
.L12:
	movq	%rdi, (%r12)
	movq	%rcx, 0(%rbp)
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L28
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
.L27:
	.cfi_restore_state
	cqto
	movl	$1, %esi
	idivq	%rdi
	movq	%rdx, %r13
	movq	%rax, %rbx
	movq	%rdx, %rcx
	testq	%rdx, %rdx
	je	.L13
	movq	%rdi, %rax
	cqto
	idivq	%r13
	movq	%rdx, %rsi
	movq	%rax, %r15
	movl	$1, %edx
	testq	%rsi, %rsi
	jne	.L29
.L14:
	movq	%rbx, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	imulq	%rdx, %rax
	subq	%rax, %rsi
.L13:
	movq	%rdi, %rax
	movq	%rsi, %rdi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r13, %rax
	cqto
	idivq	%rsi
	movq	%rax, %r13
	movq	%rdx, %r9
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.L15
	movq	%rsi, %rax
	leaq	16(%rsp), %rcx
	movq	%r9, %rsi
	cqto
	idivq	%r9
	movq	%rdx, %rdi
	leaq	8(%rsp), %rdx
	movq	%rax, %r14
	call	extended_gcd
	movq	16(%rsp), %r9
	movq	%r13, %r8
	movq	%rax, %rsi
	movq	8(%rsp), %rax
	imulq	%rax, %r14
	subq	%r14, %r9
	imulq	%r9, %r8
	subq	%r8, %rax
.L15:
	movq	%r15, %rdi
	movq	%r9, %rdx
	movq	%rsi, %rcx
	movq	%rax, %rsi
	imulq	%rax, %rdi
	subq	%rdi, %rdx
	jmp	.L14
.L28:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.p2align 4
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB5:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %r8
	xorl	%edx, %edx
	movl	$1, %edi
	divq	%r8
	movq	%rdx, %rcx
	testq	%rsi, %rsi
	je	.L30
	.p2align 4,,10
	.p2align 3
.L33:
	testb	$1, %sil
	je	.L32
	movq	%rdi, %rax
	xorl	%edx, %edx
	imulq	%rcx, %rax
	divq	%r8
	movq	%rdx, %rdi
.L32:
	imulq	%rcx, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r8
	shrq	%rsi
	movq	%rdx, %rcx
	jne	.L33
.L30:
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE5:
	.size	rsa_encrypt, .-rsa_encrypt
	.p2align 4
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB7:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %r8
	xorl	%edx, %edx
	movl	$1, %edi
	divq	%r8
	movq	%rdx, %rcx
	testq	%rsi, %rsi
	je	.L39
	.p2align 4,,10
	.p2align 3
.L42:
	testb	$1, %sil
	je	.L41
	movq	%rdi, %rax
	xorl	%edx, %edx
	imulq	%rcx, %rax
	divq	%r8
	movq	%rdx, %rdi
.L41:
	imulq	%rcx, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r8
	shrq	%rsi
	movq	%rdx, %rcx
	jne	.L42
.L39:
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE7:
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
