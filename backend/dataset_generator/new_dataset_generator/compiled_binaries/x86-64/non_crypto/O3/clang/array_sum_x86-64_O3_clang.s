	.text
	.file	"array_sum.c"
	.globl	array_sum                       # -- Begin function array_sum
	.p2align	4, 0x90
	.type	array_sum,@function
array_sum:                              # @array_sum
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	cmpq	$8, %rsi
	jae	.LBB0_4
# %bb.3:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_4:
	movq	%rsi, %rcx
	andq	$-8, %rcx
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rax,4), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	16(%rdi,%rax,4), %xmm2
	paddd	%xmm2, %xmm1
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_5
# %bb.6:
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpq	%rsi, %rcx
	je	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rcx,4), %eax
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	array_sum, .Lfunc_end0-array_sum
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
