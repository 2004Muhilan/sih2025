	.text
	.file	"aes_mix_columns.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function aes_mix_columns
.LCPI0_0:
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
.LCPI0_1:
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
.LCPI0_2:
	.byte	27                              # 0x1b
	.byte	27                              # 0x1b
	.byte	27                              # 0x1b
	.byte	27                              # 0x1b
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_3:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.text
	.globl	aes_mix_columns
	.p2align	4, 0x90
	.type	aes_mix_columns,@function
aes_mix_columns:                        # @aes_mix_columns
	.cfi_startproc
# %bb.0:
	movdqu	(%rdi), %xmm1
	movdqa	.LCPI0_0(%rip), %xmm3           # xmm3 = [255,0,255,0,255,0,255,0]
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	pxor	%xmm0, %xmm0
	movdqa	%xmm1, %xmm5
	punpckhbw	%xmm0, %xmm5            # xmm5 = xmm5[8],xmm0[8],xmm5[9],xmm0[9],xmm5[10],xmm0[10],xmm5[11],xmm0[11],xmm5[12],xmm0[12],xmm5[13],xmm0[13],xmm5[14],xmm0[14],xmm5[15],xmm0[15]
	pshufd	$232, %xmm5, %xmm2              # xmm2 = xmm5[0,2,2,3]
	pshuflw	$237, %xmm2, %xmm4              # xmm4 = xmm2[1,3,2,3,4,5,6,7]
	pshuflw	$231, %xmm1, %xmm6              # xmm6 = xmm1[3,1,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshufd	$232, %xmm1, %xmm2              # xmm2 = xmm1[0,2,2,3]
	pshuflw	$237, %xmm2, %xmm2              # xmm2 = xmm2[1,3,2,3,4,5,6,7]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	packuswb	%xmm2, %xmm2
	pshufhw	$231, %xmm6, %xmm4              # xmm4 = xmm6[0,1,2,3,7,5,6,7]
	pand	.LCPI0_1(%rip), %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$177, %xmm4, %xmm4              # xmm4 = xmm4[1,0,3,2,4,5,6,7]
	packuswb	%xmm4, %xmm4
	pshufd	$231, %xmm5, %xmm5              # xmm5 = xmm5[3,1,2,3]
	pshuflw	$231, %xmm5, %xmm5              # xmm5 = xmm5[3,1,2,3,4,5,6,7]
	pshufd	$231, %xmm1, %xmm1              # xmm1 = xmm1[3,1,2,3]
	pshuflw	$231, %xmm1, %xmm1              # xmm1 = xmm1[3,1,2,3,4,5,6,7]
	punpckldq	%xmm5, %xmm1            # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	packuswb	%xmm1, %xmm1
	movdqa	%xmm3, %xmm7
	paddb	%xmm3, %xmm7
	movdqa	.LCPI0_2(%rip), %xmm6           # xmm6 = [27,27,27,27,u,u,u,u,u,u,u,u,u,u,u,u]
	movdqa	%xmm7, %xmm8
	pxor	%xmm6, %xmm8
	pxor	%xmm5, %xmm5
	pcmpgtb	%xmm3, %xmm5
	pand	%xmm5, %xmm8
	pandn	%xmm7, %xmm5
	por	%xmm8, %xmm5
	movdqa	%xmm2, %xmm9
	paddb	%xmm2, %xmm9
	pxor	%xmm7, %xmm7
	pcmpgtb	%xmm2, %xmm7
	movdqa	%xmm7, %xmm8
	pandn	%xmm9, %xmm8
	pxor	%xmm6, %xmm9
	pand	%xmm7, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm2, %xmm7
	pxor	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pxor	%xmm9, %xmm7
	pxor	%xmm4, %xmm7
	movdqa	%xmm4, %xmm8
	paddb	%xmm4, %xmm8
	pxor	%xmm10, %xmm10
	pcmpgtb	%xmm4, %xmm10
	movdqa	%xmm10, %xmm11
	pandn	%xmm8, %xmm11
	pxor	%xmm6, %xmm8
	pand	%xmm10, %xmm8
	por	%xmm11, %xmm8
	pxor	%xmm3, %xmm2
	pxor	%xmm1, %xmm3
	pxor	%xmm9, %xmm3
	pxor	%xmm4, %xmm3
	pxor	%xmm8, %xmm3
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	movdqa	%xmm1, %xmm3
	paddb	%xmm1, %xmm3
	pxor	%xmm3, %xmm6
	pxor	%xmm9, %xmm9
	pcmpgtb	%xmm1, %xmm9
	pand	%xmm9, %xmm6
	pandn	%xmm3, %xmm9
	por	%xmm6, %xmm9
	pxor	%xmm2, %xmm1
	pxor	%xmm9, %xmm1
	pxor	%xmm8, %xmm1
	pxor	%xmm5, %xmm2
	pxor	%xmm9, %xmm2
	pxor	%xmm4, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	pshufd	$215, %xmm7, %xmm2              # xmm2 = xmm7[3,1,1,3]
	pshuflw	$226, %xmm2, %xmm2              # xmm2 = xmm2[2,0,2,3,4,5,6,7]
	pshufhw	$237, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,5,7,6,7]
	pshufd	$40, %xmm7, %xmm3               # xmm3 = xmm7[0,2,2,0]
	pshuflw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$231, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,7,5,6,7]
	packuswb	%xmm2, %xmm3
	movdqa	.LCPI0_3(%rip), %xmm2           # xmm2 = [65535,0,65535,0,65535,0,65535,0]
	pand	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshufd	$215, %xmm1, %xmm0              # xmm0 = xmm1[3,1,1,3]
	pshuflw	$36, %xmm0, %xmm0               # xmm0 = xmm0[0,1,2,0,4,5,6,7]
	pshufhw	$212, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,5,5,7]
	pshufd	$40, %xmm1, %xmm1               # xmm1 = xmm1[0,2,2,0]
	pshuflw	$132, %xmm1, %xmm1              # xmm1 = xmm1[0,1,0,2,4,5,6,7]
	pshufhw	$116, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,5,7,5]
	packuswb	%xmm0, %xmm1
	pandn	%xmm1, %xmm2
	por	%xmm3, %xmm2
	movdqu	%xmm2, (%rdi)
	retq
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
