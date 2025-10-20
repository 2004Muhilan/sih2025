	.text
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   # -- Begin function xor_multi_key
	.p2align	4, 0x90
	.type	xor_multi_key,@function
xor_multi_key:                          # @xor_multi_key
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.1:
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r8
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rdi,%r10), %eax
	xorb	(%r9,%rdx), %al
	movb	%al, (%rdi,%r10)
	xorb	(%rcx,%rdx), %al
	movb	%al, (%rdi,%r10)
	incq	%r10
	cmpq	%r10, %rsi
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_5
.LBB0_6:
	retq
.Lfunc_end0:
	.size	xor_multi_key, .Lfunc_end0-xor_multi_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
