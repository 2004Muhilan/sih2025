	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             # -- Begin function prng_mersenne_twist
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    # @prng_mersenne_twist
	.cfi_startproc
# %bb.0:
	xorl	%ecx, %ecx
	movl	$-2147483648, %eax              # imm = 0x80000000
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %esi
	andl	%eax, %esi
	leaq	1(%rcx), %rdx
	cmpq	$623, %rcx                      # imm = 0x26F
	movl	$0, %r8d
	cmovneq	%rdx, %r8
	movl	(%rdi,%r8,4), %r8d
	movl	%r8d, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	orl	%esi, %r9d
	leal	-227(%rcx), %esi
	leal	397(%rcx), %r10d
	cmpq	$227, %rcx
	cmovael	%esi, %r10d
	shrl	%r9d
	xorl	(%rdi,%r10,4), %r9d
	movl	%r9d, %esi
	xorl	$-1727483681, %esi              # imm = 0x9908B0DF
	testb	$1, %r8b
	cmovel	%r9d, %esi
	movl	%esi, (%rdi,%rcx,4)
	movq	%rdx, %rcx
	cmpq	$624, %rdx                      # imm = 0x270
	jne	.LBB0_1
# %bb.2:
	movl	$0, 2496(%rdi)
	retq
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
