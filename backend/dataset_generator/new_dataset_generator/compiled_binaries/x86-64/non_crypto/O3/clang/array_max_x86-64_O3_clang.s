	.text
	.file	"array_max.c"
	.globl	array_max                       # -- Begin function array_max
	.p2align	4, 0x90
	.type	array_max,@function
array_max:                              # @array_max
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movl	(%rdi), %eax
	cmpq	$1, %rsi
	je	.LBB0_8
# %bb.3:
	movl	$1, %ecx
	cmpq	$9, %rsi
	jb	.LBB0_7
# %bb.4:
	leaq	-1(%rsi), %rdx
	movq	%rdx, %r8
	andq	$-8, %r8
	leaq	1(%r8), %rcx
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%eax, %eax
	movdqa	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	4(%rdi,%rax,4), %xmm2
	movdqu	20(%rdi,%rax,4), %xmm3
	movdqa	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	por	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	por	%xmm3, %xmm1
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.LBB0_5
# %bb.6:
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$238, %xmm2, %xmm0              # xmm0 = xmm2[2,3,2,3]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movd	%xmm2, %eax
	cmpq	%r8, %rdx
	je	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %edx
	cmpl	%eax, %edx
	cmovgl	%edx, %eax
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_7
.LBB0_8:
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
