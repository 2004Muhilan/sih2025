	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             # -- Begin function prng_mersenne_twist
	.p2align	4, 0x90
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    # @prng_mersenne_twist
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	leaq	1588(%rdi), %rcx
	movl	$397, %esi                      # imm = 0x18D
	xorl	%r10d, %r10d
	movabsq	$945986875574848801, %r8        # imm = 0xD20D20D20D20D21
	movl	$-2147483648, %r9d              # imm = 0x80000000
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	shrq	$4, %rax
	mulq	%r8
	shrq	%rdx
	imulq	$-2496, %rdx, %rax              # imm = 0xF640
	movl	(%rdi,%r10,4), %edx
	andl	%r9d, %edx
	leaq	1(%r10), %r11
	cmpq	$623, %r10                      # imm = 0x26F
	movl	$0, %ebx
	cmovneq	%r11, %rbx
	movl	(%rdi,%rbx,4), %ebx
	movl	%ebx, %ebp
	andl	$2147483646, %ebp               # imm = 0x7FFFFFFE
	orl	%edx, %ebp
	shrl	%ebp
	xorl	(%rcx,%rax), %ebp
	movl	%ebp, %eax
	xorl	$-1727483681, %eax              # imm = 0x9908B0DF
	testb	$1, %bl
	cmovel	%ebp, %eax
	movl	%eax, (%rdi,%r10,4)
	addq	$4, %rcx
	incq	%rsi
	movq	%r11, %r10
	cmpq	$624, %r11                      # imm = 0x270
	jne	.LBB0_1
# %bb.2:
	movl	$0, 2496(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
