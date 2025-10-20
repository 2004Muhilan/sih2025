	.text
	.file	"aes_key_expansion.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function aes_key_expansion
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_1:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	aes_key_expansion
	.p2align	4, 0x90
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi)
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi)
	movzbl	3(%rdi), %eax
	movb	%al, 3(%rsi)
	movzbl	4(%rdi), %eax
	movb	%al, 4(%rsi)
	movzbl	5(%rdi), %eax
	movb	%al, 5(%rsi)
	movzbl	6(%rdi), %eax
	movb	%al, 6(%rsi)
	movzbl	7(%rdi), %eax
	movb	%al, 7(%rsi)
	movzbl	8(%rdi), %eax
	movb	%al, 8(%rsi)
	movzbl	9(%rdi), %eax
	movb	%al, 9(%rsi)
	movzbl	10(%rdi), %eax
	movb	%al, 10(%rsi)
	movzbl	11(%rdi), %eax
	movb	%al, 11(%rsi)
	movzbl	12(%rdi), %eax
	movb	%al, 12(%rsi)
	movzbl	13(%rdi), %ecx
	movb	%cl, 13(%rsi)
	movzbl	14(%rdi), %edx
	movb	%dl, 14(%rsi)
	movzbl	15(%rdi), %edx
	movb	%dl, 15(%rsi)
	movzwl	14(%rsi), %edx
	movd	%edx, %xmm2
	xorb	$1, %cl
	movq	(%rsi), %xmm3                   # xmm3 = mem[0],zero
	movzbl	%cl, %ecx
	movd	%ecx, %xmm1
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255]
	movdqa	%xmm0, %xmm4
	pandn	%xmm1, %xmm4
	pslld	$8, %xmm2
	por	%xmm4, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [255,255,255,0,255,255,255,255,255,255,255,255,255,255,255,255]
	pand	%xmm1, %xmm2
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm2, %xmm4
	movq	8(%rsi), %xmm2                  # xmm2 = mem[0],zero
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pshufd	$0, %xmm4, %xmm2                # xmm2 = xmm4[0,0,0,0]
	pxor	%xmm3, %xmm2
	movdqu	%xmm2, 16(%rsi)
	movzbl	29(%rsi), %eax
	movzwl	30(%rsi), %ecx
	movd	%ecx, %xmm3
	xorb	$2, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm3
	por	%xmm5, %xmm3
	pand	%xmm1, %xmm3
	movzbl	28(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm3, %xmm4
	pshufd	$0, %xmm4, %xmm3                # xmm3 = xmm4[0,0,0,0]
	pxor	%xmm2, %xmm3
	movdqu	%xmm3, 32(%rsi)
	movzbl	45(%rsi), %eax
	movzwl	46(%rsi), %ecx
	movd	%ecx, %xmm2
	xorb	$4, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm2
	por	%xmm5, %xmm2
	pand	%xmm1, %xmm2
	movzbl	44(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm2, %xmm4
	pshufd	$0, %xmm4, %xmm2                # xmm2 = xmm4[0,0,0,0]
	pxor	%xmm3, %xmm2
	movdqu	%xmm2, 48(%rsi)
	movzbl	61(%rsi), %eax
	movzwl	62(%rsi), %ecx
	movd	%ecx, %xmm3
	xorb	$8, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm3
	por	%xmm5, %xmm3
	pand	%xmm1, %xmm3
	movzbl	60(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm3, %xmm4
	pshufd	$0, %xmm4, %xmm3                # xmm3 = xmm4[0,0,0,0]
	pxor	%xmm2, %xmm3
	movdqu	%xmm3, 64(%rsi)
	movzbl	77(%rsi), %eax
	movzwl	78(%rsi), %ecx
	movd	%ecx, %xmm2
	xorb	$16, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm2
	por	%xmm5, %xmm2
	pand	%xmm1, %xmm2
	movzbl	76(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm2, %xmm4
	pshufd	$0, %xmm4, %xmm2                # xmm2 = xmm4[0,0,0,0]
	pxor	%xmm3, %xmm2
	movdqu	%xmm2, 80(%rsi)
	movzbl	93(%rsi), %eax
	movzwl	94(%rsi), %ecx
	movd	%ecx, %xmm3
	xorb	$32, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm3
	por	%xmm5, %xmm3
	pand	%xmm1, %xmm3
	movzbl	92(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm3, %xmm4
	pshufd	$0, %xmm4, %xmm3                # xmm3 = xmm4[0,0,0,0]
	pxor	%xmm2, %xmm3
	movdqu	%xmm3, 96(%rsi)
	movzbl	109(%rsi), %eax
	movzwl	110(%rsi), %ecx
	movd	%ecx, %xmm2
	xorb	$64, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm2
	por	%xmm5, %xmm2
	pand	%xmm1, %xmm2
	movzbl	108(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm2, %xmm4
	pshufd	$0, %xmm4, %xmm2                # xmm2 = xmm4[0,0,0,0]
	pxor	%xmm3, %xmm2
	movdqu	%xmm2, 112(%rsi)
	movzbl	125(%rsi), %eax
	movzwl	126(%rsi), %ecx
	movd	%ecx, %xmm3
	addb	$-128, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm3
	por	%xmm5, %xmm3
	pand	%xmm1, %xmm3
	movzbl	124(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm3, %xmm4
	pshufd	$0, %xmm4, %xmm3                # xmm3 = xmm4[0,0,0,0]
	pxor	%xmm2, %xmm3
	movdqu	%xmm3, 128(%rsi)
	movzbl	141(%rsi), %eax
	movzwl	142(%rsi), %ecx
	movd	%ecx, %xmm2
	xorb	$27, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	movdqa	%xmm0, %xmm5
	pandn	%xmm4, %xmm5
	pslld	$8, %xmm2
	por	%xmm5, %xmm2
	pand	%xmm1, %xmm2
	movzbl	140(%rsi), %eax
	movd	%eax, %xmm4
	pslld	$24, %xmm4
	por	%xmm2, %xmm4
	pshufd	$0, %xmm4, %xmm2                # xmm2 = xmm4[0,0,0,0]
	pxor	%xmm3, %xmm2
	movdqu	%xmm2, 144(%rsi)
	movzbl	157(%rsi), %eax
	movzwl	158(%rsi), %ecx
	movd	%ecx, %xmm3
	xorb	$54, %al
	movzbl	%al, %eax
	movd	%eax, %xmm4
	pandn	%xmm4, %xmm0
	pslld	$8, %xmm3
	por	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movzbl	156(%rsi), %eax
	movd	%eax, %xmm0
	pslld	$24, %xmm0
	por	%xmm3, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	pxor	%xmm2, %xmm0
	movdqu	%xmm0, 160(%rsi)
	retq
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
