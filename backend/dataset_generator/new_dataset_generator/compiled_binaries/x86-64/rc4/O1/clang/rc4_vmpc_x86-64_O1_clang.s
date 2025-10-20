	.text
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                # -- Begin function rc4_vmpc_variant
	.p2align	4, 0x90
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       # @rc4_vmpc_variant
	.cfi_startproc
# %bb.0:
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, -128(%rsp,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.3:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %edx
	addb	-128(%rsp,%rdx), %cl
	movzbl	%cl, %ecx
	movzbl	-128(%rsp,%rcx), %ecx
	movzbl	-128(%rsp,%rcx), %r8d
	movzbl	-128(%rsp,%r8), %r8d
	incb	%r8b
	movzbl	%r8b, %r8d
	movzbl	-128(%rsp,%r8), %r8d
	xorb	%dl, %r8b
	movb	%r8b, (%rdi,%rax)
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB0_4
.LBB0_5:
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
