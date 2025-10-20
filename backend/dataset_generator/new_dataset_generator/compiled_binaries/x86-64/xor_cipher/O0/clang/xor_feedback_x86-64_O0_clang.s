	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             # -- Begin function xor_cipher_feedback
	.p2align	4, 0x90
	.type	xor_cipher_feedback,@function
xor_cipher_feedback:                    # @xor_cipher_feedback
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
	movq	%r8, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-64(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)
	movq	$0, -56(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rdx), %eax
	movzbl	-41(%rbp), %ecx
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -57(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -58(%rbp)
	movzbl	-57(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	xorl	%esi, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rax,%rcx)
	movb	-58(%rbp), %al
	movb	%al, -41(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	xor_cipher_feedback, .Lfunc_end0-xor_cipher_feedback
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_feedback            # -- Begin function xor_encrypt_feedback
	.p2align	4, 0x90
	.type	xor_encrypt_feedback,@function
xor_encrypt_feedback:                   # @xor_encrypt_feedback
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	memcpy@PLT
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-33(%rbp), %r8
	callq	xor_cipher_feedback
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	xor_encrypt_feedback, .Lfunc_end1-xor_encrypt_feedback
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_feedback            # -- Begin function xor_decrypt_feedback
	.p2align	4, 0x90
	.type	xor_decrypt_feedback,@function
xor_decrypt_feedback:                   # @xor_decrypt_feedback
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	%r9, -48(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -49(%rbp)
	movq	$0, -64(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rdx), %eax
	movzbl	-49(%rbp), %ecx
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -49(%rbp)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movzbl	-65(%rbp), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_feedback
