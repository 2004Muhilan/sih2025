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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$624, -12(%rbp)                 # imm = 0x270
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2147483648, %eax              # imm = 0x80000000
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	$624, %esi                      # imm = 0x270
	cltd
	idivl	%esi
	movl	-28(%rbp), %eax                 # 4-byte Reload
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	andl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	addl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
	addl	$397, %eax                      # imm = 0x18D
	movl	$624, %ecx                      # imm = 0x270
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movl	-16(%rbp), %eax
	shrl	%eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-16(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	xorl	$-1727483681, %edx              # imm = 0x9908B0DF
	movl	%edx, (%rax,%rcx,4)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	$0, 2496(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
