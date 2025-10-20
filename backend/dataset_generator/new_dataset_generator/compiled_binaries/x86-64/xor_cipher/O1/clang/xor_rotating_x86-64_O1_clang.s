	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             # -- Begin function xor_cipher_rotating
	.p2align	4, 0x90
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    # @xor_cipher_rotating
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%rdx, %r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	(%r8,%rdx), %eax
	xorb	%al, (%rdi,%r9)
	rolb	%al
	movb	%al, (%r8,%rdx)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	4, 0x90
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   # @xor_encrypt_rotating
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rsi
	movq	%r8, %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r15, %r15
	je	.LBB1_3
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	incq	%rcx
	cmpq	%rcx, %r15
	jne	.LBB1_2
.LBB1_3:
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	xor_encrypt_rotating, .Lfunc_end1-xor_encrypt_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	4, 0x90
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   # @xor_decrypt_rotating
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rsi
	movq	%r8, %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r15, %r15
	je	.LBB2_3
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	incq	%rcx
	cmpq	%rcx, %r15
	jne	.LBB2_2
.LBB2_3:
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	xor_decrypt_rotating, .Lfunc_end2-xor_decrypt_rotating
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
