	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.p2align	4, 0x90
	.type	aes_mix_columns,@function
aes_mix_columns:                        # @aes_mix_columns
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -26(%rbp)
	movq	-24(%rbp), %rax
	movb	2(%rax), %al
	movb	%al, -27(%rbp)
	movq	-24(%rbp), %rax
	movb	3(%rax), %al
	movb	%al, -28(%rbp)
	movl	$2, %esi
	movzbl	-25(%rbp), %edi
	callq	gf_mul
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movl	$3, %esi
	movzbl	-26(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movzbl	-27(%rbp), %ecx
	xorl	%ecx, %eax
	movzbl	-28(%rbp), %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movzbl	-25(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	$2, %esi
	movzbl	-26(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-48(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	$3, %esi
	movzbl	-27(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movzbl	-28(%rbp), %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, 1(%rax)
	movzbl	-25(%rbp), %eax
	movzbl	-26(%rbp), %ecx
	xorl	%ecx, %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	$2, %esi
	movzbl	-27(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-40(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	$3, %esi
	movzbl	-28(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, 2(%rax)
	movl	$3, %esi
	movzbl	-25(%rbp), %edi
	callq	gf_mul
	movzbl	%al, %eax
	movzbl	-26(%rbp), %ecx
	xorl	%ecx, %eax
	movzbl	-27(%rbp), %ecx
	xorl	%ecx, %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	$2, %esi
	movzbl	-28(%rbp), %edi
	callq	gf_mul
	movb	%al, %cl
	movl	-32(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, 3(%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function gf_mul
	.type	gf_mul,@function
gf_mul:                                 # @gf_mul
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movb	$0, -3(%rbp)
	movl	$0, -8(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -8(%rbp)
	jge	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	-2(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	-1(%rbp), %ecx
	movzbl	-3(%rbp), %eax
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -3(%rbp)
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	-1(%rbp), %eax
	andl	$128, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -9(%rbp)
	movzbl	-1(%rbp), %eax
	shll	%eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
	cmpb	$0, -9(%rbp)
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	-1(%rbp), %eax
	xorl	$27, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movzbl	-2(%rbp), %eax
	sarl	%eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2(%rbp)
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movzbl	-3(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	gf_mul, .Lfunc_end1-gf_mul
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gf_mul
