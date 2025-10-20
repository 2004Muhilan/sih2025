	.text
	.file	"rc4_drop3072.c"
	.globl	rc4_drop3072_init               # -- Begin function rc4_drop3072_init
	.p2align	4, 0x90
	.type	rc4_drop3072_init,@function
rc4_drop3072_init:                      # @rc4_drop3072_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, (%rdi,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r10d
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	addb	(%rsi,%rdx), %r9b
	movzbl	%r9b, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%r8)
	movb	%r10b, (%rdi,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB0_3
# %bb.4:
	retq
.Lfunc_end0:
	.size	rc4_drop3072_init, .Lfunc_end0-rc4_drop3072_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
