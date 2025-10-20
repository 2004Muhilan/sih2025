	.text
	.file	"des_permutation_choice.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function des_pc1
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI0_1:
	.quad	64                              # 0x40
	.quad	64                              # 0x40
.LCPI0_2:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI0_3:
	.quad	55                              # 0x37
	.quad	55                              # 0x37
.LCPI0_4:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.text
	.globl	des_pc1
	.type	des_pc1,@function
des_pc1:                                # @des_pc1
	.cfi_startproc
# %bb.0:
	movq	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm1               # xmm1 = xmm0[0,1,0,1]
	pxor	%xmm0, %xmm0
	movdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movl	$56, %eax
	movdqa	.LCPI0_1(%rip), %xmm3           # xmm3 = [64,64]
	movapd	.LCPI0_2(%rip), %xmm4           # xmm4 = [1,1]
	movdqa	.LCPI0_3(%rip), %xmm5           # xmm5 = [55,55]
	movdqa	.LCPI0_4(%rip), %xmm6           # xmm6 = [2,2]
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm7
	psubq	%xmm2, %xmm7
	movdqa	%xmm1, %xmm8
	psrlq	%xmm7, %xmm8
	pshufd	$238, %xmm7, %xmm7              # xmm7 = xmm7[2,3,2,3]
	movdqa	%xmm1, %xmm9
	psrlq	%xmm7, %xmm9
	movsd	%xmm8, %xmm9                    # xmm9 = xmm8[0],xmm9[1]
	andpd	%xmm4, %xmm9
	movdqa	%xmm5, %xmm7
	psubq	%xmm2, %xmm7
	movapd	%xmm9, %xmm8
	psllq	%xmm7, %xmm8
	pshufd	$238, %xmm7, %xmm7              # xmm7 = xmm7[2,3,2,3]
	psllq	%xmm7, %xmm9
	movsd	%xmm8, %xmm9                    # xmm9 = xmm8[0],xmm9[1]
	por	%xmm9, %xmm0
	paddq	%xmm6, %xmm2
	addq	$-2, %rax
	jne	.LBB0_1
# %bb.2:
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	por	%xmm0, %xmm1
	movq	%xmm1, %rax
	retq
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
