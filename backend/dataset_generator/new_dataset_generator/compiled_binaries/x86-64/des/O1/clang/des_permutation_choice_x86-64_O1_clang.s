	.text
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         # -- Begin function des_pc1
	.p2align	4, 0x90
	.type	des_pc1,@function
des_pc1:                                # @des_pc1
	.cfi_startproc
# %bb.0:
	movl	$55, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	leal	9(%rcx), %edx
	movzbl	%dl, %edx
	xorl	%esi, %esi
	btq	%rdx, %rdi
	setb	%sil
	shlq	%cl, %rsi
	orq	%rsi, %rax
	addq	$-1, %rcx
	jb	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
