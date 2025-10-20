	.text
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 # -- Begin function rsa_crt_decrypt
	.type	rsa_crt_decrypt,@function
rsa_crt_decrypt:                        # @rsa_crt_decrypt
	.cfi_startproc
# %bb.0:
	movq	%rdx, %rsi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rdx, %r8
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	imulq	%rcx, %r8
	imulq	%rsi, %rdx
	addq	%rdx, %r8
	imulq	%rsi, %rcx
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	retq
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
