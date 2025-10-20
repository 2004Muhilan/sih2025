	.text
	.file	"custom_sha1.c"
	.globl	sha1_transform                  # -- Begin function sha1_transform
	.p2align	4, 0x90
	.type	sha1_transform,@function
sha1_transform:                         # @sha1_transform
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -372(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -372(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-372(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %ecx
	shll	$24, %ecx
	movq	-16(%rbp), %rax
	movl	-372(%rbp), %edx
	shll	$2, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	shll	$16, %eax
	orl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-372(%rbp), %edx
	shll	$2, %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	shll	$8, %eax
	orl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-372(%rbp), %edx
	shll	$2, %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	orl	%eax, %ecx
	movslq	-372(%rbp), %rax
	movl	%ecx, -368(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-372(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -372(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$16, -376(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, -376(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-376(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %ecx
	movl	-376(%rbp), %eax
	subl	$8, %eax
	cltq
	xorl	-368(%rbp,%rax,4), %ecx
	movl	-376(%rbp), %eax
	subl	$14, %eax
	cltq
	xorl	-368(%rbp,%rax,4), %ecx
	movl	-376(%rbp), %eax
	subl	$16, %eax
	cltq
	xorl	-368(%rbp,%rax,4), %ecx
	shll	%ecx
	movl	-376(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %eax
	movl	-376(%rbp), %edx
	subl	$8, %edx
	movslq	%edx, %rdx
	xorl	-368(%rbp,%rdx,4), %eax
	movl	-376(%rbp), %edx
	subl	$14, %edx
	movslq	%edx, %rdx
	xorl	-368(%rbp,%rdx,4), %eax
	movl	-376(%rbp), %edx
	subl	$16, %edx
	movslq	%edx, %rdx
	xorl	-368(%rbp,%rdx,4), %eax
	shrl	$31, %eax
	orl	%eax, %ecx
	movslq	-376(%rbp), %rax
	movl	%ecx, -368(%rbp,%rax,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-376(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -376(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -380(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, -380(%rbp)
	jge	.LBB0_21
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$20, -380(%rbp)
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-24(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	xorl	$-1, %ecx
	andl	-32(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -384(%rbp)
	movl	$1518500249, -388(%rbp)         # imm = 0x5A827999
	jmp	.LBB0_19
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, -380(%rbp)
	jge	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-24(%rbp), %eax
	xorl	-28(%rbp), %eax
	xorl	-32(%rbp), %eax
	movl	%eax, -384(%rbp)
	movl	$1859775393, -388(%rbp)         # imm = 0x6ED9EBA1
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$60, -380(%rbp)
	jge	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-24(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	andl	-32(%rbp), %ecx
	orl	%ecx, %eax
	movl	-28(%rbp), %ecx
	andl	-32(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -384(%rbp)
	movl	$-1894007588, -388(%rbp)        # imm = 0x8F1BBCDC
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-24(%rbp), %eax
	xorl	-28(%rbp), %eax
	xorl	-32(%rbp), %eax
	movl	%eax, -384(%rbp)
	movl	$-899497514, -388(%rbp)         # imm = 0xCA62C1D6
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	shll	$5, %eax
	movl	-20(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	addl	-384(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-388(%rbp), %eax
	movslq	-380(%rbp), %rcx
	addl	-368(%rbp,%rcx,4), %eax
	movl	%eax, -392(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	shll	$30, %eax
	movl	-24(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	jmp	.LBB0_9
.LBB0_21:
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha1_init                       # -- Begin function sha1_init
	.p2align	4, 0x90
	.type	sha1_init,@function
sha1_init:                              # @sha1_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1732584193, (%rax)             # imm = 0x67452301
	movq	-8(%rbp), %rax
	movl	$-271733879, 4(%rax)            # imm = 0xEFCDAB89
	movq	-8(%rbp), %rax
	movl	$-1732584194, 8(%rax)           # imm = 0x98BADCFE
	movq	-8(%rbp), %rax
	movl	$271733878, 12(%rax)            # imm = 0x10325476
	movq	-8(%rbp), %rax
	movl	$-1009589776, 16(%rax)          # imm = 0xC3D2E1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
