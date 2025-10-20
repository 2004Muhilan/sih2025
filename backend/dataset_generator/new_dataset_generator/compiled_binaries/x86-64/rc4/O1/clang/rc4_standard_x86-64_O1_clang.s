	.text
	.file	"rc4_standard.c"
	.globl	rc4_init                        # -- Begin function rc4_init
	.p2align	4, 0x90
	.type	rc4_init,@function
rc4_init:                               # @rc4_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, (%rdi,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r10d
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	addb	(%rsi,%rdx), %r9b
	movzbl	%r9b, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%r8)
	movb	%r10b, (%rdi,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB0_3
# %bb.4:
	movw	$0, 256(%rdi)
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
	testq	%rdx, %rdx
	je	.LBB1_3
# %bb.1:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	256(%rdi), %ecx
	incb	%cl
	movb	%cl, 256(%rdi)
	movzbl	%cl, %ecx
	movzbl	(%rdi,%rcx), %r8d
	movzbl	257(%rdi), %r9d
	addb	%r8b, %r9b
	movb	%r9b, 257(%rdi)
	movzbl	%r9b, %r9d
	movzbl	(%rdi,%r9), %r10d
	movb	%r10b, (%rdi,%rcx)
	movb	%r8b, (%rdi,%r9)
	addb	(%rdi,%rcx), %r8b
	movzbl	%r8b, %ecx
	movzbl	(%rdi,%rcx), %ecx
	xorb	%cl, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB1_2
.LBB1_3:
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, 6(%rsp,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB2_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	6(%rsp,%r8), %r10d
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	addb	(%rdi,%rdx), %r9b
	movzbl	%r9b, %eax
	movzbl	6(%rsp,%rax), %edx
	movb	%dl, 6(%rsp,%r8)
	movb	%r10b, 6(%rsp,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB2_3
# %bb.4:
	movw	$0, 262(%rsp)
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r14, %r14
	je	.LBB2_8
# %bb.5:
	movzbl	262(%rsp), %ecx
	movzbl	263(%rsp), %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	incb	%cl
	movzbl	%cl, %esi
	movzbl	6(%rsp,%rsi), %edi
	addb	%dil, %al
	movzbl	%al, %r8d
	movzbl	6(%rsp,%r8), %r9d
	movb	%r9b, 6(%rsp,%rsi)
	movb	%dil, 6(%rsp,%r8)
	addb	6(%rsp,%rsi), %dil
	movzbl	%dil, %esi
	movzbl	6(%rsp,%rsi), %esi
	xorb	%sil, (%rbx,%rdx)
	incq	%rdx
	cmpq	%rdx, %r14
	jne	.LBB2_6
# %bb.7:
	movb	%cl, 262(%rsp)
	movb	%al, 263(%rsp)
.LBB2_8:
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, 6(%rsp,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB3_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	6(%rsp,%r8), %r10d
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	addb	(%rdi,%rdx), %r9b
	movzbl	%r9b, %eax
	movzbl	6(%rsp,%rax), %edx
	movb	%dl, 6(%rsp,%r8)
	movb	%r10b, 6(%rsp,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB3_3
# %bb.4:
	movw	$0, 262(%rsp)
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r14, %r14
	je	.LBB3_8
# %bb.5:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	incq	%rcx
	movzbl	%cl, %esi
	movzbl	6(%rsp,%rsi), %edi
	addb	%dil, %al
	movzbl	%al, %r8d
	movzbl	6(%rsp,%r8), %r9d
	movb	%r9b, 6(%rsp,%rsi)
	movb	%dil, 6(%rsp,%r8)
	addb	6(%rsp,%rsi), %dil
	movzbl	%dil, %esi
	movzbl	6(%rsp,%rsi), %esi
	xorb	%sil, (%rbx,%rdx)
	cmpq	%rcx, %r14
	jne	.LBB3_6
# %bb.7:
	movb	%cl, 262(%rsp)
	movb	%al, 263(%rsp)
.LBB3_8:
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
