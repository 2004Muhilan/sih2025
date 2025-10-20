	.text
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.p2align	4, 0x90
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -20(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$1, -24(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	cmpl	$10, -24(%rbp)
	jg	.LBB0_16
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -32(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -32(%rbp)
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	shll	$4, %ecx
	addl	$12, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-32(%rbp), %rax
	movb	%cl, -28(%rbp,%rax)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movb	-28(%rbp), %al
	movb	%al, -33(%rbp)
	movb	-27(%rbp), %al
	movb	%al, -28(%rbp)
	movb	-26(%rbp), %al
	movb	%al, -27(%rbp)
	movb	-25(%rbp), %al
	movb	%al, -26(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -25(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	leaq	rcon(%rip), %rax
	movzbl	(%rax,%rcx), %ecx
	movzbl	-28(%rbp), %eax
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -28(%rbp)
	movl	$0, -40(%rbp)
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -40(%rbp)
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	shll	$4, %ecx
	addl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-40(%rbp), %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movslq	%edx, %rcx
	movzbl	-28(%rbp,%rcx), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	shll	$4, %ecx
	addl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_16:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rcon
