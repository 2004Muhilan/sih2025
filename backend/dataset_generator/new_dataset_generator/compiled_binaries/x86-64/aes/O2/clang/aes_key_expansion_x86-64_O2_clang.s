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
	movzbl	13(%rdi), %eax
	movb	%al, 13(%rsi)
	movzbl	14(%rdi), %eax
	movb	%al, 14(%rsi)
	movzbl	15(%rdi), %eax
	movb	%al, 15(%rsi)
	addq	$24, %rsi
	xorl	%eax, %eax
	leaq	rcon(%rip), %rcx
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255]
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [255,255,255,0,255,255,255,255,255,255,255,255,255,255,255,255]
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzwl	-10(%rsi), %edx
	movd	%edx, %xmm2
	movzbl	(%rax,%rcx), %edx
	xorb	-11(%rsi), %dl
	movzbl	%dl, %edx
	movd	%edx, %xmm3
	movdqa	%xmm0, %xmm4
	pandn	%xmm3, %xmm4
	pslld	$8, %xmm2
	por	%xmm4, %xmm2
	pand	%xmm1, %xmm2
	movzbl	-12(%rsi), %edx
	movd	%edx, %xmm3
	pslld	$24, %xmm3
	por	%xmm2, %xmm3
	pshufd	$0, %xmm3, %xmm2                # xmm2 = xmm3[0,0,0,0]
	movdqu	-24(%rsi), %xmm3
	pxor	%xmm2, %xmm3
	movdqu	%xmm3, -8(%rsi)
	incq	%rax
	addq	$16, %rsi
	cmpq	$10, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
