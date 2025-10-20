	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             # -- Begin function xor_cipher_rotating
	.p2align	4, 0x90
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    # @xor_cipher_rotating
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movb	(%rax,%rdx), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	xorl	%esi, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rax,%rcx)
	movl	$1, %esi
	movzbl	-41(%rbp), %edi
	callq	rotate_left
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-32(%rbp)
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movb	%cl, (%rax,%rdx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function rotate_left
	.type	rotate_left,@function
rotate_left:                            # @rotate_left
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movzbl	-1(%rbp), %edx
	movl	$8, %ecx
	subl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	orl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	rotate_left, .Lfunc_end1-rotate_left
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	4, 0x90
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   # @xor_encrypt_rotating
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
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	memcpy@PLT
	leaq	-304(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	xor_cipher_rotating
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	xor_encrypt_rotating, .Lfunc_end2-xor_encrypt_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	4, 0x90
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   # @xor_decrypt_rotating
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
	callq	xor_encrypt_rotating
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	xor_decrypt_rotating, .Lfunc_end3-xor_decrypt_rotating
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_rotating
	.addrsig_sym rotate_left
	.addrsig_sym xor_encrypt_rotating
