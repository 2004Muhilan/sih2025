	.text
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	4, 0x90
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
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
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)                 # imm = 0x100
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, -37(%rbp)
	movl	$0, -44(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)                 # imm = 0x100
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movzbl	-37(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-24(%rbp)
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %al
	movb	%al, -37(%rbp)
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -45(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-37(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movb	-45(%rbp), %dl
	movq	-8(%rbp), %rax
	movzbl	-37(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-8(%rbp), %rax
	movb	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 257(%rax)
	movq	$0, -56(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	addl	$1, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 256(%rax)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	256(%rdx), %edx
                                        # kill: def $rdx killed $edx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 257(%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	256(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %al
	movb	%al, -57(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	257(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	256(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movb	-57(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	257(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	4, 0x90
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         # @rc4_drop_crypt
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
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	addl	$1, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 256(%rax)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	256(%rdx), %edx
                                        # kill: def $rdx killed $edx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 257(%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	256(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %al
	movb	%al, -33(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	257(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	256(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movb	-33(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	257(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	256(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	257(%rdx), %edx
                                        # kill: def $rdx killed $edx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -34(%rbp)
	movzbl	-34(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	xorl	%esi, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	4, 0x90
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-298(%rbp), %rdi
	movl	$768, %ecx                      # imm = 0x300
	callq	rc4_drop_init
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-298(%rbp), %rdi
	callq	rc4_drop_crypt
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rc4_drop_init
	.addrsig_sym rc4_drop_crypt
