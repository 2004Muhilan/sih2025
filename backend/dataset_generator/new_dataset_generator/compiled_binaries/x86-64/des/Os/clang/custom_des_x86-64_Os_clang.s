	.text
	.file	"custom_des.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function des_encrypt
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
	.globl	des_encrypt
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
	.cfi_startproc
# %bb.0:
	movl	$56, %ecx
	xorl	%eax, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %r8d
	shlq	%cl, %r8
	orq	%r8, %rax
	incq	%rdi
	addq	$-8, %rcx
	cmpq	$-8, %rcx
	jne	.LBB0_1
# %bb.2:
	xorl	%ecx, %ecx
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	shrq	$32, %rdi
	movl	%ecx, %r8d
	andl	$7, %r8d
	movzbl	(%rsi,%r8), %r8d
	movq	%rax, %r9
	shlq	$32, %r9
	movl	%eax, %eax
	xorq	%rdi, %rax
	xorq	%r8, %rax
	orq	%r9, %rax
	incl	%ecx
	cmpl	$16, %ecx
	jne	.LBB0_3
# %bb.4:
	movq	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm0               # xmm0 = xmm1[0,1,0,1]
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm4
	psrlq	$8, %xmm4
	punpcklqdq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0]
	psrlq	$56, %xmm1
	movdqa	%xmm0, %xmm5
	psrlq	$48, %xmm5
	movsd	%xmm1, %xmm5                    # xmm5 = xmm1[0],xmm5[1]
	psrlq	$40, %xmm2
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	movsd	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1]
	psrlq	$24, %xmm3
	psrlq	$16, %xmm0
	movsd	%xmm3, %xmm0                    # xmm0 = xmm3[0],xmm0[1]
	movdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [255,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0]
	pand	%xmm2, %xmm4
	andpd	%xmm2, %xmm0
	packuswb	%xmm4, %xmm0
	andpd	%xmm2, %xmm1
	andpd	%xmm2, %xmm5
	packuswb	%xmm1, %xmm5
	packuswb	%xmm0, %xmm5
	packuswb	%xmm5, %xmm5
	movq	%xmm5, (%rdx)
	retq
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
