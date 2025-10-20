	.text
	.file	"string_reverse.c"
	.globl	string_reverse                  # -- Begin function string_reverse
	.type	string_reverse,@function
string_reverse:                         # @string_reverse
	.cfi_startproc
# %bb.0:
	decq	%rsi
	je	.LBB0_3
# %bb.1:
	movl	$1, %eax
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movb	-1(%rdi,%rax), %cl
	movb	(%rdi,%rsi), %dl
	movb	%dl, -1(%rdi,%rax)
	movb	%cl, (%rdi,%rsi)
	decq	%rsi
	leaq	1(%rax), %rcx
	cmpq	%rsi, %rax
	movq	%rcx, %rax
	jb	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	string_reverse, .Lfunc_end0-string_reverse
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
