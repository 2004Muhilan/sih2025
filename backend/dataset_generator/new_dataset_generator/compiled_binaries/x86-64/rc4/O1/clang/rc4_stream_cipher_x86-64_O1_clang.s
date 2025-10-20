	.text
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      # -- Begin function rc4_stream
	.p2align	4, 0x90
	.type	rc4_stream,@function
rc4_stream:                             # @rc4_stream
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
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	incl	%edx
	movzbl	%dl, %edx
	movzbl	-128(%rsp,%rdx), %r8d
	addb	%r8b, %cl
	movzbl	%cl, %r9d
	movzbl	-128(%rsp,%r9), %r10d
	movb	%r10b, -128(%rsp,%rdx)
	movb	%r8b, -128(%rsp,%r9)
	addb	-128(%rsp,%rdx), %r8b
	movzbl	%r8b, %r8d
	movzbl	-128(%rsp,%r8), %r8d
	xorb	%r8b, (%rdi,%rax)
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB0_4
.LBB0_5:
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rc4_stream, .Lfunc_end0-rc4_stream
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
