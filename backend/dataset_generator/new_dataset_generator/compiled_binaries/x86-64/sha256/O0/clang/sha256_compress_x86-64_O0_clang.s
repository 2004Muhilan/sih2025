	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.p2align	4, 0x90
	.type	sha256_compress,@function
sha256_compress:                        # @sha256_compress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -276(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -276(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-276(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movslq	-276(%rbp), %rax
	movl	%ecx, -272(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$16, -280(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -280(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-280(%rbp), %eax
	subl	$15, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	shrl	$7, %eax
	movl	-280(%rbp), %ecx
	subl	$15, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shll	$25, %ecx
	orl	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$15, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shrl	$18, %ecx
	movl	-280(%rbp), %edx
	subl	$15, %edx
	movslq	%edx, %rdx
	movl	-272(%rbp,%rdx,4), %edx
	shll	$14, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$15, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shrl	$3, %ecx
	xorl	%ecx, %eax
	movl	%eax, -284(%rbp)
	movl	-280(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	shrl	$17, %eax
	movl	-280(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shll	$15, %ecx
	orl	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shrl	$19, %ecx
	movl	-280(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movl	-272(%rbp,%rdx,4), %edx
	shll	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movl	-272(%rbp,%rcx,4), %ecx
	shrl	$10, %ecx
	xorl	%ecx, %eax
	movl	%eax, -288(%rbp)
	movl	-280(%rbp), %eax
	subl	$16, %eax
	cltq
	movl	-272(%rbp,%rax,4), %ecx
	addl	-284(%rbp), %ecx
	movl	-280(%rbp), %eax
	subl	$7, %eax
	cltq
	addl	-272(%rbp,%rax,4), %ecx
	addl	-288(%rbp), %ecx
	movslq	-280(%rbp), %rax
	movl	%ecx, -272(%rbp,%rax,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -292(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -300(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -304(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -308(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -312(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -316(%rbp)
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -320(%rbp)
	movl	$0, -324(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -324(%rbp)
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-308(%rbp), %eax
	shrl	$6, %eax
	movl	-308(%rbp), %ecx
	shll	$26, %ecx
	orl	%ecx, %eax
	movl	-308(%rbp), %ecx
	shrl	$11, %ecx
	movl	-308(%rbp), %edx
	shll	$21, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-308(%rbp), %ecx
	shrl	$25, %ecx
	movl	-308(%rbp), %edx
	shll	$7, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -328(%rbp)
	movl	-320(%rbp), %eax
	addl	-328(%rbp), %eax
	movl	-308(%rbp), %ecx
	andl	-312(%rbp), %ecx
	movl	-308(%rbp), %edx
	xorl	$-1, %edx
	andl	-316(%rbp), %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1116352408, %eax               # imm = 0x428A2F98
	movslq	-324(%rbp), %rcx
	addl	-272(%rbp,%rcx,4), %eax
	movl	%eax, -332(%rbp)
	movl	-292(%rbp), %eax
	shrl	$2, %eax
	movl	-292(%rbp), %ecx
	shll	$30, %ecx
	orl	%ecx, %eax
	movl	-292(%rbp), %ecx
	shrl	$13, %ecx
	movl	-292(%rbp), %edx
	shll	$19, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-292(%rbp), %ecx
	shrl	$22, %ecx
	movl	-292(%rbp), %edx
	shll	$10, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -336(%rbp)
	movl	-336(%rbp), %eax
	movl	-292(%rbp), %ecx
	andl	-296(%rbp), %ecx
	movl	-292(%rbp), %edx
	andl	-300(%rbp), %edx
	xorl	%edx, %ecx
	movl	-296(%rbp), %edx
	andl	-300(%rbp), %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -340(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -320(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	addl	-332(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	movl	-296(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
	movl	-332(%rbp), %eax
	addl	-340(%rbp), %eax
	movl	%eax, -292(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movl	-292(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-296(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-300(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-304(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-308(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	-312(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, 20(%rax)
	movl	-316(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	movl	-320(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	28(%rax), %ecx
	movl	%ecx, 28(%rax)
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
