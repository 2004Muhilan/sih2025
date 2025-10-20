	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             # -- Begin function xor_cipher_rotating
	.p2align	4, 0x90
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    # @xor_cipher_rotating
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_8
# %bb.1:
	movq	%rdx, %r8
	cmpq	$1, %rsi
	jne	.LBB0_9
# %bb.2:
	xorl	%r9d, %r9d
.LBB0_3:
	testb	$1, %sil
	je	.LBB0_8
# %bb.4:
	movq	%r9, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_5
# %bb.6:
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_7
.LBB0_9:
	movq	%rsi, %r10
	andq	$-2, %r10
	xorl	%r9d, %r9d
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	xorl	%edx, %edx
	divq	%rcx
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	movzbl	(%r8,%rdx), %eax
	xorb	%al, 1(%rdi,%r9)
	rolb	%al
	movb	%al, (%r8,%rdx)
	addq	$2, %r9
	cmpq	%r9, %r10
	je	.LBB0_3
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	movzbl	(%r8,%rdx), %eax
	xorb	%al, (%rdi,%r9)
	rolb	%al
	movb	%al, (%r8,%rdx)
	leaq	1(%r9), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB0_16
.LBB0_5:
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB0_7:
	movzbl	(%r8,%rdx), %eax
	xorb	%al, (%rdi,%r9)
	rolb	%al
	movb	%al, (%r8,%rdx)
.LBB0_8:
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
	je	.LBB1_16
# %bb.1:
	cmpq	$1, %r15
	jne	.LBB1_3
# %bb.2:
	xorl	%ecx, %ecx
.LBB1_11:
	testb	$1, %r15b
	je	.LBB1_16
# %bb.12:
	movq	%rcx, %rax
	orq	%r14, %rax
	shrq	$32, %rax
	je	.LBB1_13
# %bb.14:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	jmp	.LBB1_15
.LBB1_3:
	movq	%r15, %rsi
	andq	$-2, %rsi
	xorl	%ecx, %ecx
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	xorl	%edx, %edx
	divq	%r14
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, 1(%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB1_11
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	orq	%r14, %rax
	shrq	$32, %rax
	je	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	orq	%r14, %rdx
	shrq	$32, %rdx
	jne	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB1_10
.LBB1_13:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
.LBB1_15:
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
.LBB1_16:
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
	je	.LBB2_16
# %bb.1:
	cmpq	$1, %r15
	jne	.LBB2_3
# %bb.2:
	xorl	%ecx, %ecx
.LBB2_11:
	testb	$1, %r15b
	je	.LBB2_16
# %bb.12:
	movq	%rcx, %rax
	orq	%r14, %rax
	shrq	$32, %rax
	je	.LBB2_13
# %bb.14:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	jmp	.LBB2_15
.LBB2_3:
	movq	%r15, %rsi
	andq	$-2, %rsi
	xorl	%ecx, %ecx
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	xorl	%edx, %edx
	divq	%r14
.LBB2_10:                               #   in Loop: Header=BB2_4 Depth=1
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, 1(%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB2_11
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	orq	%r14, %rax
	shrq	$32, %rax
	je	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r14
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	orq	%r14, %rdx
	shrq	$32, %rdx
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB2_10
.LBB2_13:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r14d
                                        # kill: def $edx killed $edx def $rdx
.LBB2_15:
	movzbl	(%rsp,%rdx), %eax
	xorb	%al, (%rbx,%rcx)
	rolb	%al
	movb	%al, (%rsp,%rdx)
.LBB2_16:
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
