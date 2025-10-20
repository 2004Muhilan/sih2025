	.text
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               # -- Begin function xor_cipher_simple
	.type	xor_cipher_simple,@function
xor_cipher_simple:                      # @xor_cipher_simple
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%rdx, %r8
	xorl	%r9d, %r9d
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	movb	(%r8,%rdx), %al
	xorb	%al, (%rdi,%r9)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	xor_cipher_simple, .Lfunc_end0-xor_cipher_simple
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_simple              # -- Begin function xor_encrypt_simple
	.type	xor_encrypt_simple,@function
xor_encrypt_simple:                     # @xor_encrypt_simple
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movq	%r8, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	testq	%r12, %r12
	je	.LBB1_3
# %bb.1:
	xorl	%ecx, %ecx
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	movb	(%r15,%rdx), %al
	xorb	%al, (%rbx,%rcx)
	incq	%rcx
	cmpq	%rcx, %r12
	jne	.LBB1_2
.LBB1_3:
	addq	$8, %rsp
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
	.size	xor_encrypt_simple, .Lfunc_end1-xor_encrypt_simple
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_simple              # -- Begin function xor_decrypt_simple
	.type	xor_decrypt_simple,@function
xor_decrypt_simple:                     # @xor_decrypt_simple
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movq	%r8, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	testq	%r12, %r12
	je	.LBB2_3
# %bb.1:
	xorl	%ecx, %ecx
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	movb	(%r15,%rdx), %al
	xorb	%al, (%rbx,%rcx)
	incq	%rcx
	cmpq	%rcx, %r12
	jne	.LBB2_2
.LBB2_3:
	addq	$8, %rsp
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
	.size	xor_decrypt_simple, .Lfunc_end2-xor_decrypt_simple
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
