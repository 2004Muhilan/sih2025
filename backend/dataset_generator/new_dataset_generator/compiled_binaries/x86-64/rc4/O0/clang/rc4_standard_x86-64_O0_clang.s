	.text
	.file	"rc4_standard.c"
	.globl	rc4_init                        # -- Begin function rc4_init
	.p2align	4, 0x90
	.type	rc4_init,@function
rc4_init:                               # @rc4_init
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
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, -29(%rbp)
	movl	$0, -36(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)                 # imm = 0x100
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movzbl	-29(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-24(%rbp)
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %al
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -37(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-29(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movb	-37(%rbp), %dl
	movq	-8(%rbp), %rax
	movzbl	-29(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-8(%rbp), %rax
	movb	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 257(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rc4_init, .Lfunc_end0-rc4_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_crypt                       # -- Begin function rc4_crypt
	.p2align	4, 0x90
	.type	rc4_crypt,@function
rc4_crypt:                              # @rc4_crypt
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
	.size	rc4_crypt, .Lfunc_end1-rc4_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_encrypt                     # -- Begin function rc4_encrypt
	.p2align	4, 0x90
	.type	rc4_encrypt,@function
rc4_encrypt:                            # @rc4_encrypt
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
	callq	rc4_init
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-298(%rbp), %rdi
	callq	rc4_crypt
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	rc4_encrypt, .Lfunc_end2-rc4_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_decrypt                     # -- Begin function rc4_decrypt
	.p2align	4, 0x90
	.type	rc4_decrypt,@function
rc4_decrypt:                            # @rc4_decrypt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	rc4_encrypt
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rc4_init
	.addrsig_sym rc4_crypt
	.addrsig_sym rc4_encrypt
