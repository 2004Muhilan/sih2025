	.text
	.file	"rc4_drop.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_drop_init
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
	.globl	rc4_drop_init
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r8
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
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movb	(%rdi,%r9), %r11b
	addb	%r11b, %r10b
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r8
	addb	(%rsi,%rdx), %r10b
	movzbl	%r10b, %eax
	movb	(%rdi,%rax), %dl
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
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	incq	%rdx
	movzbl	%dl, %esi
	movb	(%rdi,%rsi), %r8b
	addb	%r8b, %al
	movzbl	%al, %r9d
	movb	(%rdi,%r9), %r10b
	movb	%r10b, (%rdi,%rsi)
	movb	%r8b, (%rdi,%r9)
	cmpq	%rdx, %rcx
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
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         # @rc4_drop_crypt
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
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
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
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	6(%rsp), %r12
	movl	$768, %ecx                      # imm = 0x300
	movq	%r12, %rdi
	callq	rc4_drop_init
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	rc4_drop_crypt
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
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
