	.text
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	4, 0x90
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r8
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	%al, (%rdi,%rax)
	incq	%rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r9), %r11d
	addb	%r11b, %r10b
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r8
	addb	(%rsi,%rdx), %r10b
	movzbl	%r10b, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%r9)
	movb	%r11b, (%rdi,%rax)
	incq	%r9
	cmpq	$256, %r9                       # imm = 0x100
	jne	.LBB0_3
# %bb.4:
	movw	$0, 256(%rdi)
	testq	%rcx, %rcx
	je	.LBB0_8
# %bb.5:
	movzbl	256(%rdi), %edx
	movzbl	257(%rdi), %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	incb	%dl
	movzbl	%dl, %esi
	movzbl	(%rdi,%rsi), %r8d
	addb	%r8b, %al
	movzbl	%al, %r9d
	movzbl	(%rdi,%r9), %r10d
	movb	%r10b, (%rdi,%rsi)
	movb	%r8b, (%rdi,%r9)
	decq	%rcx
	jne	.LBB0_6
# %bb.7:
	movb	%dl, 256(%rdi)
	movb	%al, 257(%rdi)
.LBB0_8:
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
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	4, 0x90
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
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
	movl	$1, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	%dl, %esi
	movzbl	6(%rsp,%rsi), %edi
	addb	%dil, %al
	movzbl	%al, %r8d
	movzbl	6(%rsp,%r8), %r9d
	movb	%r9b, 6(%rsp,%rsi)
	movb	%dil, 6(%rsp,%r8)
	incq	%rdx
	cmpq	$769, %rdx                      # imm = 0x301
	jne	.LBB2_5
# %bb.6:
	movb	$0, 262(%rsp)
	movb	%al, 263(%rsp)
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	testq	%r14, %r14
	je	.LBB2_10
# %bb.7:
	movzbl	262(%rsp), %ecx
	movzbl	263(%rsp), %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
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
	jne	.LBB2_8
# %bb.9:
	movb	%cl, 262(%rsp)
	movb	%al, 263(%rsp)
.LBB2_10:
	addq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
