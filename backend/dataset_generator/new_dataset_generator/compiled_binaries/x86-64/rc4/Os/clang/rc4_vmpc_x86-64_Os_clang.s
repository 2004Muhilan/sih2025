	.text
	.file	"rc4_vmpc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rc4_vmpc_variant
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
	.globl	rc4_vmpc_variant
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       # @rc4_vmpc_variant
	.cfi_startproc
# %bb.0:
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	xorl	%eax, %eax
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -128(%rsp,%rax)
	addq	$16, %rax
	paddb	%xmm1, %xmm0
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB0_1
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.3:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %edx
	addb	-128(%rsp,%rdx), %cl
	movzbl	%cl, %ecx
	movzbl	-128(%rsp,%rcx), %ecx
	movzbl	-128(%rsp,%rcx), %r8d
	movb	-128(%rsp,%r8), %r8b
	incb	%r8b
	movzbl	%r8b, %r8d
	movb	-128(%rsp,%r8), %r8b
	xorb	%dl, %r8b
	movb	%r8b, (%rdi,%rax)
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB0_4
.LBB0_5:
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
