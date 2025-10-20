	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	4, 0x90
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
	.cfi_startproc
# %bb.0:
	movl	$56, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %r8d
	shlq	%cl, %r8
	orq	%r8, %rax
	incq	%rdi
	addq	$-8, %rcx
	cmpq	$-8, %rcx
	jne	.LBB0_1
# %bb.2:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	shrq	$32, %rdi
	movl	%ecx, %r8d
	andl	$7, %r8d
	movzbl	(%rsi,%r8), %r8d
	movq	%rax, %r9
	shlq	$32, %r9
	movl	%eax, %eax
	xorq	%rdi, %rax
	xorq	%r8, %rax
	orq	%r9, %rax
	incl	%ecx
	cmpl	$16, %ecx
	jne	.LBB0_3
# %bb.4:
	movl	$56, %ecx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	shrq	%cl, %rsi
	movb	%sil, (%rdx)
	addq	$-8, %rcx
	incq	%rdx
	cmpq	$-8, %rcx
	jne	.LBB0_5
# %bb.6:
	retq
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
