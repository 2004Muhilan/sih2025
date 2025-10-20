	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                # -- Begin function rsa_extended_gcd
	.p2align	4, 0x90
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       # @rsa_extended_gcd
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %rax
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %rsi
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB0_3
# %bb.4:
	cqto
	idivq	%rsi
	movq	%rdx, %rdi
	movq	%rax, %r15
	jmp	.LBB0_5
.LBB0_1:
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB0_6
.LBB0_3:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, %edi
	movl	%eax, %r15d
.LBB0_5:
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	rsa_extended_gcd
	movq	(%rsp), %rdx
	movq	8(%rsp), %rcx
	imulq	%rcx, %r15
	subq	%r15, %rdx
.LBB0_6:
	movq	%rdx, (%r14)
	movq	%rcx, (%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
