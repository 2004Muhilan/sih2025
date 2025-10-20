	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_9
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.2:
	xorl	%eax, %eax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$4, %rax
	jne	.LBB0_3
# %bb.4:
	movl	12(%rdi), %eax
	movl	$4, %ecx
	leaq	sbox(%rip), %rdx
	movl	$255, %esi
	leaq	.L__const.tc_aes128_set_encrypt_key.rconst(%rip), %r8
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	testb	$3, %cl
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	roll	$8, %eax
	movl	%eax, %r9d
	shrl	$24, %r9d
	movzbl	(%r9,%rdx), %r9d
	shll	$24, %r9d
	movl	%eax, %r10d
	shrl	$16, %r10d
	andl	%esi, %r10d
	movzbl	(%r10,%rdx), %r10d
	shll	$16, %r10d
	orl	%r9d, %r10d
	movl	%eax, %r9d
	shrl	$8, %r9d
	andl	%esi, %r9d
	movzbl	(%r9,%rdx), %r9d
	shll	$8, %r9d
	orl	%r10d, %r9d
	andl	%esi, %eax
	movzbl	(%rax,%rdx), %eax
	orl	%r9d, %eax
	movl	%ecx, %r9d
	andl	$-4, %r9d
	xorl	(%r9,%r8), %eax
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	xorl	-16(%rdi,%rcx,4), %eax
	movl	%eax, (%rdi,%rcx,4)
	incq	%rcx
	cmpq	$44, %rcx
	jne	.LBB0_5
# %bb.8:
	movl	$1, %eax
.LBB0_9:
	retq
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function tc_aes_encrypt
.LCPI1_0:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI1_1:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	0                               # 0x0
	.text
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB1_11
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB1_10
# %bb.2:
	testq	%r14, %r14
	je	.LBB1_10
# %bb.3:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	(%r14), %ecx
	movl	4(%r14), %eax
	movd	%ecx, %xmm3
	shrl	$24, %ecx
	movdqa	%xmm3, %xmm5
	psrld	$8, %xmm5
	movdqa	%xmm3, %xmm0
	psrld	$16, %xmm0
	movd	%eax, %xmm4
	movdqa	%xmm4, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm4, %xmm1
	psrld	$24, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	shrl	$8, %eax
	movl	8(%r14), %edx
	movd	%edx, %xmm6
	movdqa	%xmm6, %xmm7
	psrld	$16, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$24, %xmm2
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	shrl	$8, %edx
	movl	12(%r14), %esi
	movd	%esi, %xmm8
	movdqa	%xmm8, %xmm9
	psrld	$16, %xmm9
	movdqa	%xmm8, %xmm7
	psrld	$24, %xmm7
	punpckldq	%xmm9, %xmm7            # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1]
	shrl	$8, %esi
	movd	%ecx, %xmm9
	punpckldq	%xmm9, %xmm0            # xmm0 = xmm0[0],xmm9[0],xmm0[1],xmm9[1]
	punpcklqdq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0]
	shufps	$33, %xmm3, %xmm0               # xmm0 = xmm0[1,0],xmm3[2,0]
	movd	%eax, %xmm3
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	shufps	$36, %xmm4, %xmm1               # xmm1 = xmm1[0,1],xmm4[2,0]
	movd	%edx, %xmm3
	punpcklqdq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0]
	shufps	$36, %xmm6, %xmm2               # xmm2 = xmm2[0,1],xmm6[2,0]
	movd	%esi, %xmm3
	punpcklqdq	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0]
	shufps	$36, %xmm8, %xmm7               # xmm7 = xmm7[0,1],xmm8[2,0]
	movaps	.LCPI1_0(%rip), %xmm3           # xmm3 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	andps	%xmm3, %xmm7
	andps	%xmm3, %xmm2
	packuswb	%xmm7, %xmm2
	andps	%xmm3, %xmm1
	andps	%xmm3, %xmm0
	packuswb	%xmm1, %xmm0
	packuswb	%xmm2, %xmm0
	pxor	(%rbx), %xmm0
	movdqa	%xmm0, (%rbx)
	xorl	%ebx, %ebx
	leaq	sbox(%rip), %r13
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	xorl	%eax, %eax
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsp,%rax), %ecx
	movb	(%rcx,%r13), %cl
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movdqa	(%rsp), %xmm0
	movdqa	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	movdqa	.LCPI1_1(%rip), %xmm4           # xmm4 = [65535,0,0,65535,65535,65535,0,0]
	movdqa	%xmm4, %xmm2
	pandn	%xmm1, %xmm2
	punpckhbw	%xmm3, %xmm0            # xmm0 = xmm0[8],xmm3[8],xmm0[9],xmm3[9],xmm0[10],xmm3[10],xmm0[11],xmm3[11],xmm0[12],xmm3[12],xmm0[13],xmm3[13],xmm0[14],xmm3[14],xmm0[15],xmm3[15]
	movdqa	%xmm4, %xmm3
	pandn	%xmm0, %xmm3
	pand	%xmm4, %xmm0
	por	%xmm2, %xmm0
	pshuflw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,5,7]
	pshufd	$108, %xmm0, %xmm0              # xmm0 = xmm0[0,3,2,1]
	pshuflw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,5,7]
	pand	%xmm4, %xmm1
	por	%xmm3, %xmm1
	pshuflw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,5,7]
	pshufd	$108, %xmm1, %xmm1              # xmm1 = xmm1[0,3,2,1]
	pshuflw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,5,7]
	packuswb	%xmm0, %xmm1
	movdqa	%xmm1, 16(%rsp)
	movq	%rsp, %r12
	movq	%r12, %rdi
	movl	$16, %esi
	leaq	16(%rsp), %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movzbl	(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	1(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	2(%rsp), %al
	xorb	3(%rsp), %al
	movzbl	1(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 16(%rsp)
	movb	(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	2(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	2(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 17(%rsp)
	movb	1(%rsp), %r15b
	xorb	(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	movb	%bpl, 18(%rsp)
	movzbl	(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	(%rsp), %bpl
	xorb	1(%rsp), %bpl
	xorb	2(%rsp), %bpl
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 19(%rsp)
	movzbl	4(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	5(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	6(%rsp), %al
	xorb	7(%rsp), %al
	movzbl	5(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 20(%rsp)
	movb	4(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	6(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	6(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 21(%rsp)
	movb	5(%rsp), %r15b
	xorb	4(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	movb	%bpl, 22(%rsp)
	movzbl	4(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	4(%rsp), %bpl
	xorb	5(%rsp), %bpl
	xorb	6(%rsp), %bpl
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 23(%rsp)
	movzbl	8(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	9(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	10(%rsp), %al
	xorb	11(%rsp), %al
	movzbl	9(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 24(%rsp)
	movb	8(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	10(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	10(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 25(%rsp)
	movb	9(%rsp), %r15b
	xorb	8(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	movb	%bpl, 26(%rsp)
	movzbl	8(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	8(%rsp), %bpl
	xorb	9(%rsp), %bpl
	xorb	10(%rsp), %bpl
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 27(%rsp)
	movzbl	12(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	13(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	movzbl	13(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 28(%rsp)
	movb	12(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	14(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	14(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 29(%rsp)
	movb	13(%rsp), %r15b
	xorb	12(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	movb	%bpl, 30(%rsp)
	movzbl	12(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	12(%rsp), %bpl
	xorb	13(%rsp), %bpl
	xorb	14(%rsp), %bpl
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 31(%rsp)
	movq	%r12, %rdi
	movl	$16, %esi
	leaq	16(%rsp), %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	incq	%rbx
	movq	%rbx, %rsi
	shlq	$4, %rsi
	movl	(%r14,%rsi), %ecx
	movl	4(%r14,%rsi), %eax
	movd	%ecx, %xmm3
	shrl	$24, %ecx
	movdqa	%xmm3, %xmm5
	psrld	$8, %xmm5
	movdqa	%xmm3, %xmm0
	psrld	$16, %xmm0
	movd	%eax, %xmm4
	movdqa	%xmm4, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm4, %xmm1
	psrld	$24, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	shrl	$8, %eax
	movl	8(%r14,%rsi), %edx
	movd	%edx, %xmm6
	movdqa	%xmm6, %xmm7
	psrld	$16, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$24, %xmm2
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	shrl	$8, %edx
	movl	12(%r14,%rsi), %esi
	movd	%esi, %xmm8
	movdqa	%xmm8, %xmm9
	psrld	$16, %xmm9
	movdqa	%xmm8, %xmm7
	psrld	$24, %xmm7
	punpckldq	%xmm9, %xmm7            # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1]
	shrl	$8, %esi
	movd	%ecx, %xmm9
	punpckldq	%xmm9, %xmm0            # xmm0 = xmm0[0],xmm9[0],xmm0[1],xmm9[1]
	punpcklqdq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0]
	shufps	$33, %xmm3, %xmm0               # xmm0 = xmm0[1,0],xmm3[2,0]
	movd	%eax, %xmm3
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	shufps	$36, %xmm4, %xmm1               # xmm1 = xmm1[0,1],xmm4[2,0]
	movd	%edx, %xmm3
	punpcklqdq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0]
	shufps	$36, %xmm6, %xmm2               # xmm2 = xmm2[0,1],xmm6[2,0]
	movd	%esi, %xmm3
	punpcklqdq	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0]
	shufps	$36, %xmm8, %xmm7               # xmm7 = xmm7[0,1],xmm8[2,0]
	movaps	.LCPI1_0(%rip), %xmm3           # xmm3 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	andps	%xmm3, %xmm7
	andps	%xmm3, %xmm2
	packuswb	%xmm7, %xmm2
	andps	%xmm3, %xmm1
	andps	%xmm3, %xmm0
	packuswb	%xmm1, %xmm0
	packuswb	%xmm2, %xmm0
	pxor	(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
	cmpq	$9, %rbx
	jne	.LBB1_4
# %bb.7:
	xorl	%eax, %eax
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsp,%rax), %ecx
	movb	(%rcx,%r13), %cl
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_8
# %bb.9:
	movq	%rsp, %r15
	movdqa	(%r15), %xmm0
	pxor	%xmm1, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movdqa	.LCPI1_1(%rip), %xmm4           # xmm4 = [65535,0,0,65535,65535,65535,0,0]
	movdqa	%xmm4, %xmm3
	pandn	%xmm2, %xmm3
	punpckhbw	%xmm1, %xmm0            # xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movdqa	%xmm4, %xmm1
	pandn	%xmm0, %xmm1
	pand	%xmm4, %xmm0
	por	%xmm3, %xmm0
	pshuflw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,5,7]
	pshufd	$108, %xmm0, %xmm0              # xmm0 = xmm0[0,3,2,1]
	pshuflw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,5,7]
	pand	%xmm4, %xmm2
	por	%xmm1, %xmm2
	pshuflw	$216, %xmm2, %xmm1              # xmm1 = xmm2[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,5,7]
	pshufd	$108, %xmm1, %xmm1              # xmm1 = xmm1[0,3,2,1]
	pshuflw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,2,1,3,4,5,6,7]
	pshufhw	$216, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,5,7]
	packuswb	%xmm0, %xmm1
	leaq	16(%rsp), %rdx
	movdqa	%xmm1, (%rdx)
	movq	%r15, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	160(%r14), %ecx
	movl	164(%r14), %eax
	movd	%ecx, %xmm3
	shrl	$24, %ecx
	movdqa	%xmm3, %xmm5
	psrld	$8, %xmm5
	movdqa	%xmm3, %xmm0
	psrld	$16, %xmm0
	movd	%eax, %xmm4
	movdqa	%xmm4, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm4, %xmm1
	psrld	$24, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	shrl	$8, %eax
	movl	168(%r14), %edx
	movd	%edx, %xmm6
	movdqa	%xmm6, %xmm7
	psrld	$16, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$24, %xmm2
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	shrl	$8, %edx
	movl	172(%r14), %esi
	movd	%esi, %xmm8
	movdqa	%xmm8, %xmm9
	psrld	$16, %xmm9
	movdqa	%xmm8, %xmm7
	psrld	$24, %xmm7
	punpckldq	%xmm9, %xmm7            # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1]
	shrl	$8, %esi
	movd	%ecx, %xmm9
	punpckldq	%xmm9, %xmm0            # xmm0 = xmm0[0],xmm9[0],xmm0[1],xmm9[1]
	punpcklqdq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0]
	shufps	$33, %xmm3, %xmm0               # xmm0 = xmm0[1,0],xmm3[2,0]
	movd	%eax, %xmm3
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	shufps	$36, %xmm4, %xmm1               # xmm1 = xmm1[0,1],xmm4[2,0]
	movd	%edx, %xmm3
	punpcklqdq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0]
	shufps	$36, %xmm6, %xmm2               # xmm2 = xmm2[0,1],xmm6[2,0]
	movd	%esi, %xmm3
	punpcklqdq	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0]
	shufps	$36, %xmm8, %xmm7               # xmm7 = xmm7[0,1],xmm8[2,0]
	movaps	.LCPI1_0(%rip), %xmm3           # xmm3 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	andps	%xmm3, %xmm7
	andps	%xmm3, %xmm2
	packuswb	%xmm7, %xmm2
	andps	%xmm3, %xmm1
	andps	%xmm3, %xmm0
	packuswb	%xmm1, %xmm0
	packuswb	%xmm2, %xmm0
	pxor	(%r15), %xmm0
	movdqa	%xmm0, (%r15)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r15, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, %eax
.LBB1_10:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB1_11:
	retq
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cfi_endproc
                                        # -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,@object # @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.long	0                               # 0x0
	.long	16777216                        # 0x1000000
	.long	33554432                        # 0x2000000
	.long	67108864                        # 0x4000000
	.long	134217728                       # 0x8000000
	.long	268435456                       # 0x10000000
	.long	536870912                       # 0x20000000
	.long	1073741824                      # 0x40000000
	.long	2147483648                      # 0x80000000
	.long	452984832                       # 0x1b000000
	.long	905969664                       # 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    # @sbox
	.p2align	4, 0x0
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
