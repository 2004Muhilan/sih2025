	.text
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 # -- Begin function rsa_crt_decrypt
	.p2align	4, 0x90
	.type	rsa_crt_decrypt,@function
rsa_crt_decrypt:                        # @rsa_crt_decrypt
	.cfi_startproc
# %bb.0:
	movq	%rdx, %rsi
	movq	%rdi, %r8
	movq	%rdi, %rax
	orq	%rdx, %rax
	shrq	$32, %rax
	je	.LBB0_1
# %bb.2:
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rdx, %rdi
	jmp	.LBB0_3
.LBB0_1:
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, %edi
.LBB0_3:
	movq	%r8, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_4
# %bb.5:
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	jmp	.LBB0_6
.LBB0_4:
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
.LBB0_6:
	imulq	%rcx, %rdi
	imulq	%rsi, %rax
	addq	%rdi, %rax
	imulq	%rsi, %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB0_7
# %bb.8:
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	retq
.LBB0_7:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	retq
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
