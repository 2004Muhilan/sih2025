	.text
	.file	"string_concat.c"
	.globl	string_concat                   # -- Begin function string_concat
	.type	string_concat,@function
string_concat:                          # @string_concat
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_4
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi,%rax)
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB0_1
# %bb.3:
	movq	%rdx, %rax
.LBB0_4:
	decq	%rdx
	cmpq	%rdx, %rax
	jae	.LBB0_7
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movb	%cl, (%rdi,%rax)
	incq	%rax
	incq	%rsi
	cmpq	%rax, %rdx
	jne	.LBB0_5
.LBB0_7:
	movb	$0, (%rdi,%rax)
	retq
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
