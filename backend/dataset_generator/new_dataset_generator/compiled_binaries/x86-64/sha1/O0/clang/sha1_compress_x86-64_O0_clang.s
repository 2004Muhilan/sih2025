	.text
	.file	"sha1_compress.c"
	.globl	sha1_compress                   # -- Begin function sha1_compress
	.p2align	4, 0x90
	.type	sha1_compress,@function
sha1_compress:                          # @sha1_compress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -340(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -340(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-340(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movslq	-340(%rbp), %rax
	movl	%ecx, -336(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$16, -344(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, -344(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-344(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-336(%rbp,%rax,4), %ecx
	movl	-344(%rbp), %eax
	subl	$8, %eax
	cltq
	xorl	-336(%rbp,%rax,4), %ecx
	movl	-344(%rbp), %eax
	subl	$14, %eax
	cltq
	xorl	-336(%rbp,%rax,4), %ecx
	movl	-344(%rbp), %eax
	subl	$16, %eax
	cltq
	xorl	-336(%rbp,%rax,4), %ecx
	shll	%ecx
	movl	-344(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	movl	-344(%rbp), %edx
	subl	$8, %edx
	movslq	%edx, %rdx
	xorl	-336(%rbp,%rdx,4), %eax
	movl	-344(%rbp), %edx
	subl	$14, %edx
	movslq	%edx, %rdx
	xorl	-336(%rbp,%rdx,4), %eax
	movl	-344(%rbp), %edx
	subl	$16, %edx
	movslq	%edx, %rdx
	xorl	-336(%rbp,%rdx,4), %eax
	shrl	$31, %eax
	orl	%eax, %ecx
	movslq	-344(%rbp), %rax
	movl	%ecx, -336(%rbp,%rax,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-344(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -344(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -348(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -352(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -356(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -360(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -364(%rbp)
	movl	$0, -368(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, -368(%rbp)
	jge	.LBB0_21
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$20, -368(%rbp)
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-352(%rbp), %eax
	andl	-356(%rbp), %eax
	movl	-352(%rbp), %ecx
	xorl	$-1, %ecx
	andl	-360(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -372(%rbp)
	movl	$1518500249, -376(%rbp)         # imm = 0x5A827999
	jmp	.LBB0_19
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, -368(%rbp)
	jge	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-352(%rbp), %eax
	xorl	-356(%rbp), %eax
	xorl	-360(%rbp), %eax
	movl	%eax, -372(%rbp)
	movl	$1859775393, -376(%rbp)         # imm = 0x6ED9EBA1
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$60, -368(%rbp)
	jge	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-352(%rbp), %eax
	andl	-356(%rbp), %eax
	movl	-352(%rbp), %ecx
	andl	-360(%rbp), %ecx
	orl	%ecx, %eax
	movl	-356(%rbp), %ecx
	andl	-360(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -372(%rbp)
	movl	$-1894007588, -376(%rbp)        # imm = 0x8F1BBCDC
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-352(%rbp), %eax
	xorl	-356(%rbp), %eax
	xorl	-360(%rbp), %eax
	movl	%eax, -372(%rbp)
	movl	$-899497514, -376(%rbp)         # imm = 0xCA62C1D6
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-348(%rbp), %eax
	shll	$5, %eax
	movl	-348(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	addl	-372(%rbp), %eax
	addl	-364(%rbp), %eax
	addl	-376(%rbp), %eax
	movslq	-368(%rbp), %rcx
	addl	-336(%rbp,%rcx,4), %eax
	movl	%eax, -380(%rbp)
	movl	-360(%rbp), %eax
	movl	%eax, -364(%rbp)
	movl	-356(%rbp), %eax
	movl	%eax, -360(%rbp)
	movl	-352(%rbp), %eax
	shll	$30, %eax
	movl	-352(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -356(%rbp)
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	movl	-380(%rbp), %eax
	movl	%eax, -348(%rbp)
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-368(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -368(%rbp)
	jmp	.LBB0_9
.LBB0_21:
	movl	-348(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-352(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-356(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-360(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-364(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	addq	$256, %rsp                      # imm = 0x100
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
