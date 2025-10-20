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
.LBB0_11:
	retq
.LBB0_1:
	xorl	%r8d, %r8d
	testq	%rsi, %rsi
	je	.LBB0_11
.LBB0_4:
	cmpq	$1, %rsi
	jne	.LBB0_12
# %bb.5:
	xorl	%r9d, %r9d
	testb	$1, %sil
	je	.LBB0_11
	jmp	.LBB0_7
.LBB0_12:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %r11
	andq	$-2, %r11
	xorl	%r9d, %r9d
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edx, %edx
	divq	%rcx
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	xorb	(%r10,%rdx), %bl
	movzbl	1(%rdi,%r9), %r8d
	xorb	%r8b, %bl
	movb	%bl, 1(%rdi,%r9)
	addq	$2, %r9
	cmpq	%r9, %r11
	je	.LBB0_20
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	xorb	(%r10,%rdx), %r8b
	movzbl	(%rdi,%r9), %ebx
	xorb	%bl, %r8b
	movb	%r8b, (%rdi,%r9)
	leaq	1(%r9), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_19
.LBB0_20:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	testb	$1, %sil
	je	.LBB0_11
.LBB0_7:
	movq	%r9, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_8
# %bb.9:
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_10
.LBB0_8:
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_10:
	xorb	(%r10,%rdx), %r8b
	xorb	%r8b, (%rdi,%r9)
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
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movq	%r9, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	testq	%r12, %r12
	je	.LBB1_16
# %bb.1:
	cmpq	$1, %r12
	jne	.LBB1_3
# %bb.2:
	xorl	%ecx, %ecx
.LBB1_11:
	testb	$1, %r12b
	je	.LBB1_16
# %bb.12:
	movq	%rcx, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	je	.LBB1_13
# %bb.14:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r15
	jmp	.LBB1_15
.LBB1_3:
	movq	%r12, %rsi
	andq	$-2, %rsi
	xorl	%ecx, %ecx
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	xorl	%edx, %edx
	divq	%r15
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	xorb	(%r14,%rdx), %dil
	movzbl	1(%rbx,%rcx), %ebp
	xorb	%bpl, %dil
	movb	%dil, 1(%rbx,%rcx)
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB1_11
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	je	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r15
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $edx killed $edx def $rdx
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	xorb	(%r14,%rdx), %bpl
	movzbl	(%rbx,%rcx), %edi
	xorb	%dil, %bpl
	movb	%bpl, (%rbx,%rcx)
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	orq	%r15, %rdx
	shrq	$32, %rdx
	jne	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB1_10
.LBB1_13:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $edx killed $edx def $rdx
.LBB1_15:
	xorb	(%r14,%rdx), %bpl
	xorb	%bpl, (%rbx,%rcx)
.LBB1_16:
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
	je	.LBB2_8
# %bb.1:
	movq	%rdx, %r10
	cmpq	$1, %rsi
	jne	.LBB2_9
# %bb.2:
	xorl	%r11d, %r11d
	testb	$1, %sil
	jne	.LBB2_4
.LBB2_8:
	retq
.LBB2_9:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	andq	$-2, %rbx
	xorl	%r11d, %r11d
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_10 Depth=1
	xorl	%edx, %edx
	divq	%rcx
.LBB2_16:                               #   in Loop: Header=BB2_10 Depth=1
	xorb	(%r10,%rdx), %bpl
	movzbl	1(%rdi,%r11), %r8d
	xorb	%r8b, %bpl
	movb	%bpl, 1(%r9,%r11)
	addq	$2, %r11
	cmpq	%r11, %rbx
	je	.LBB2_17
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r11, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB2_11
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%r11, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_10 Depth=1
	movl	%r11d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=1
	xorb	(%r10,%rdx), %r8b
	movzbl	(%rdi,%r11), %ebp
	xorb	%bpl, %r8b
	movb	%r8b, (%r9,%r11)
	leaq	1(%r11), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_10 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB2_16
.LBB2_17:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	testb	$1, %sil
	je	.LBB2_8
.LBB2_4:
	movq	%r11, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB2_5
# %bb.6:
	movq	%r11, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB2_7
.LBB2_5:
	movl	%r11d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB2_7:
	xorb	(%r10,%rdx), %r8b
	xorb	(%rdi,%r11), %r8b
	movb	%r8b, (%r9,%r11)
	retq
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
