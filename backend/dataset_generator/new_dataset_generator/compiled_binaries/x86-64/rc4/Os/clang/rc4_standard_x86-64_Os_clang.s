	.text
	.file	"rc4_standard.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_init
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI0_1:
	.zero	16,16
	.text
	.globl	rc4_init
	.type	rc4_init,@function
rc4_init:                               # @rc4_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %rcx
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	xorl	%eax, %eax
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	paddb	%xmm1, %xmm0
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movb	(%rdi,%r8), %r10b
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	addb	(%rsi,%rdx), %r9b
	movzbl	%r9b, %eax
	movb	(%rdi,%rax), %dl
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
	.type	rc4_crypt,@function
rc4_crypt:                              # @rc4_crypt
	.cfi_startproc
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB1_3
# %bb.1:
	xorl	%eax, %eax
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movb	256(%rdi), %cl
	incb	%cl
	movb	%cl, 256(%rdi)
	movzbl	%cl, %ecx
	movb	(%rdi,%rcx), %r8b
	movb	257(%rdi), %r9b
	addb	%r8b, %r9b
	movb	%r9b, 257(%rdi)
	movzbl	%r9b, %r9d
	movb	(%rdi,%r9), %r10b
	movb	%r10b, (%rdi,%rcx)
	movb	%r8b, (%rdi,%r9)
	addb	(%rdi,%rcx), %r8b
	movzbl	%r8b, %ecx
	movb	(%rdi,%rcx), %cl
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_encrypt
.LCPI2_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI2_1:
	.zero	16,16
	.text
	.globl	rc4_encrypt
	.type	rc4_encrypt,@function
rc4_encrypt:                            # @rc4_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$272, %rsp                      # imm = 0x110
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movdqa	.LCPI2_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	xorl	%eax, %eax
	movdqa	.LCPI2_1(%rip), %xmm1           # xmm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, 14(%rsp,%rax)
	addq	$16, %rax
	paddb	%xmm1, %xmm0
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB2_1
# %bb.2:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movb	14(%rsp,%r8), %r10b
	addb	%r10b, %r9b
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	addb	(%rdi,%rdx), %r9b
	movzbl	%r9b, %eax
	movb	14(%rsp,%rax), %dl
	movb	%dl, 14(%rsp,%r8)
	movb	%r10b, 14(%rsp,%rax)
	incq	%r8
	cmpq	$256, %r8                       # imm = 0x100
	jne	.LBB2_3
# %bb.4:
	leaq	14(%rsp), %r15
	movw	$0, 256(%r15)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	rc4_crypt
	addq	$272, %rsp                      # imm = 0x110
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	rc4_encrypt, .Lfunc_end2-rc4_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_decrypt                     # -- Begin function rc4_decrypt
	.type	rc4_decrypt,@function
rc4_decrypt:                            # @rc4_decrypt
	.cfi_startproc
# %bb.0:
	jmp	rc4_encrypt                     # TAILCALL
.Lfunc_end3:
	.size	rc4_decrypt, .Lfunc_end3-rc4_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
