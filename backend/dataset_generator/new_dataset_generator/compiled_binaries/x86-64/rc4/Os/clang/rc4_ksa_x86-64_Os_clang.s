	.text
	.file	"rc4_ksa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_ksa
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
	.globl	rc4_ksa
	.type	rc4_ksa,@function
rc4_ksa:                                # @rc4_ksa
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
	retq
.Lfunc_end0:
	.size	rc4_ksa, .Lfunc_end0-rc4_ksa
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
