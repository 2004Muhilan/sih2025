	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	4, 0x90
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -36(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
                                        # kill: def $rax killed $eax
	movl	-36(%rbp), %edx
	shll	$3, %edx
	movl	$56, %ecx
	subl	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rax
	orq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -40(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -40(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	movl	-40(%rbp), %eax
	movl	$8, %esi
	cltd
	idivl	%esi
	movl	-60(%rbp), %eax                 # 4-byte Reload
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	xorl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
                                        # kill: def $rax killed $eax
	shlq	$32, %rax
	movl	-48(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -56(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -56(%rbp)
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %edx
	shll	$3, %edx
	movl	$56, %ecx
	subl	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movb	%al, %dl
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
