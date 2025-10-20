	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             # -- Begin function xor_cipher_feedback
	.p2align	4, 0x90
	.type	xor_cipher_feedback,@function
xor_cipher_feedback:                    # @xor_cipher_feedback
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r10
	testq	%r8, %r8
	je	.LBB0_1
# %bb.2:
	movzbl	(%r8), %r8d
	testq	%rsi, %rsi
	jne	.LBB0_4
	jmp	.LBB0_6
.LBB0_1:
	xorl	%r8d, %r8d
	testq	%rsi, %rsi
	je	.LBB0_6
.LBB0_4:
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	xorb	(%r10,%rdx), %r8b
	movzbl	(%rdi,%r9), %eax
	xorb	%al, %r8b
	movb	%r8b, (%rdi,%r9)
	incq	%r9
	movl	%eax, %r8d
	cmpq	%r9, %rsi
	jne	.LBB0_5
.LBB0_6:
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movq	%r9, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	testq	%r12, %r12
	je	.LBB1_3
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	xorb	(%r15,%rdx), %bpl
	movzbl	(%rbx,%rcx), %eax
	xorb	%al, %bpl
	movb	%bpl, (%rbx,%rcx)
	incq	%rcx
	movl	%eax, %ebp
	cmpq	%rcx, %r12
	jne	.LBB1_2
.LBB1_3:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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
	testq	%rsi, %rsi
	je	.LBB2_3
# %bb.1:
	movq	%rdx, %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r11, %rax
	xorl	%edx, %edx
	divq	%rcx
	xorb	(%r10,%rdx), %r8b
	movzbl	(%rdi,%r11), %eax
	xorb	%al, %r8b
	movb	%r8b, (%r9,%r11)
	incq	%r11
	movl	%eax, %r8d
	cmpq	%r11, %rsi
	jne	.LBB2_2
.LBB2_3:
	retq
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
