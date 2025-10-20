	.text
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# %bb.0:
	movl	$1, %eax
	cmpl	$2, %edi
	jb	.LBB0_9
# %bb.1:
	incl	%edi
	cmpl	$4, %edi
	movl	$3, %eax
	cmovael	%edi, %eax
	leaq	-2(%rax), %rsi
	addq	$-3, %rax
	movl	%esi, %ecx
	andl	$7, %ecx
	cmpq	$7, %rax
	jae	.LBB0_3
# %bb.2:
	movl	$1, %eax
	movl	$2, %edx
	testq	%rcx, %rcx
	jne	.LBB0_7
	jmp	.LBB0_9
.LBB0_3:
	andq	$-8, %rsi
	negq	%rsi
	movl	$1, %eax
	movl	$9, %edx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	leaq	-7(%rdx), %rdi
	imulq	%rax, %rdi
	leaq	-6(%rdx), %rax
	leaq	-5(%rdx), %r8
	imulq	%r8, %rax
	imulq	%rdi, %rax
	leaq	-4(%rdx), %rdi
	leaq	-3(%rdx), %r8
	imulq	%r8, %rdi
	leaq	-2(%rdx), %r8
	imulq	%rdi, %r8
	imulq	%rax, %r8
	leaq	-1(%rdx), %rax
	imulq	%rdx, %rax
	imulq	%r8, %rax
	leaq	(%rsi,%rdx), %rdi
	addq	$8, %rdi
	addq	$8, %rdx
	cmpq	$9, %rdi
	jne	.LBB0_4
# %bb.5:
	addq	$-7, %rdx
	testq	%rcx, %rcx
	je	.LBB0_9
.LBB0_7:
	negq	%rcx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	imulq	%rdx, %rax
	incq	%rdx
	incq	%rcx
	jne	.LBB0_8
.LBB0_9:
	retq
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
