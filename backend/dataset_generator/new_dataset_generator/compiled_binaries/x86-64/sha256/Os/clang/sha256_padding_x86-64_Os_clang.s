	.text
	.file	"sha256_padding.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha256_padding
.LCPI0_0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.globl	sha256_padding
	.type	sha256_padding,@function
sha256_padding:                         # @sha256_padding
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	leaq	(%rbx,%r15), %rdi
	incq	%rdi
	addq	%r15, %rbx
	movb	$-128, -1(%rdi)
	movl	$55, %r14d
	subl	%r15d, %r14d
	andl	$63, %r14d
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm2               # xmm2 = xmm0[0,1,0,1]
	psllq	$3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm5
	movdqa	%xmm2, %xmm6
	psrlq	$8, %xmm6
	punpcklqdq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0]
	psrlq	$56, %xmm2
	psrlq	$48, %xmm0
	movsd	%xmm2, %xmm0                    # xmm0 = xmm2[0],xmm0[1]
	psrlq	$40, %xmm3
	psrlq	$32, %xmm1
	movsd	%xmm3, %xmm1                    # xmm1 = xmm3[0],xmm1[1]
	psrlq	$24, %xmm4
	psrlq	$16, %xmm5
	movsd	%xmm4, %xmm5                    # xmm5 = xmm4[0],xmm5[1]
	movdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [255,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0]
	pand	%xmm2, %xmm6
	andpd	%xmm2, %xmm5
	packuswb	%xmm6, %xmm5
	andpd	%xmm2, %xmm1
	andpd	%xmm2, %xmm0
	packuswb	%xmm1, %xmm0
	packuswb	%xmm5, %xmm0
	packuswb	%xmm0, %xmm0
	movq	%xmm0, 1(%r14,%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
