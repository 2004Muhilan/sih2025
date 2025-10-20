	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       # -- Begin function tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key,@function
tc_aes128_set_decrypt_key:              # @tc_aes128_set_decrypt_key
	.cfi_startproc
# %bb.0:
	jmp	tc_aes128_set_encrypt_key@PLT   # TAILCALL
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function tc_aes_decrypt
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
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.text
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         # @tc_aes_decrypt
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
	movq	%rsp, %r15
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
	leaq	12(%rsp), %rdi
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
	pxor	-12(%rdi), %xmm0
	movdqa	%xmm0, -12(%rdi)
	movl	$9, %r12d
	leaq	28(%rsp), %r13
	leaq	16(%rsp), %rbp
	leaq	inv_sbox(%rip), %rbx
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movdqa	(%rsp), %xmm0
	movdqa	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	movdqa	.LCPI1_1(%rip), %xmm4           # xmm4 = [65535,65535,0,0,65535,0,0,65535]
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
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	xorl	%eax, %eax
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsp,%rax), %ecx
	movb	(%rcx,%rbx), %cl
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %rsi
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
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	mult_row_column
	leaq	20(%rsp), %rdi
	leaq	4(%rsp), %rsi
	callq	mult_row_column
	leaq	24(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	mult_row_column
	movq	%r13, %rdi
	leaq	12(%rsp), %rsi
	callq	mult_row_column
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%rbp, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	decq	%r12
	jne	.LBB1_4
# %bb.7:
	movq	%rsp, %rdi
	movdqa	(%rdi), %xmm0
	pxor	%xmm1, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movdqa	.LCPI1_1(%rip), %xmm4           # xmm4 = [65535,65535,0,0,65535,0,0,65535]
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
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	xorl	%eax, %eax
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsp,%rax), %ecx
	movb	(%rcx,%rbx), %cl
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_8
# %bb.9:
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
	movq	%rsp, %rbx
	pxor	(%rbx), %xmm0
	movdqa	%xmm0, (%rbx)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rbx, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	%rbx, %rdi
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
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        # -- End function
	.type	mult_row_column,@function       # -- Begin function mult_row_column
mult_row_column:                        # @mult_row_column
	.cfi_startproc
# %bb.0:
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movzbl	(%rsi), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r12d
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	1(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	1(%r14), %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	2(%r14), %edi
	xorb	%r12b, %r13b
	xorb	%bpl, %r13b
	xorb	%bl, %r15b
	xorb	%r13b, %r15b
	xorb	1(%r14), %r15b
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	2(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	3(%r14), %edi
	xorb	%bl, %bpl
	xorb	%r15b, %bpl
	xorb	2(%r14), %bpl
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	3(%r14), %al
	movq	(%rsp), %rcx                    # 8-byte Reload
	movb	%al, (%rcx)
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	1(%r14), %edi
	xorb	(%r14), %r15b
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r12d
	movzbl	1(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	1(%r14), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	2(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	2(%r14), %edi
	callq	_double_byte@PLT
	movzbl	3(%r14), %edi
	xorb	%r12b, %bpl
	xorb	%bl, %bpl
	xorb	%r13b, %bpl
	xorb	%al, %bpl
	xorb	%r15b, %bpl
	xorb	2(%r14), %bpl
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	3(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	xorb	%bl, %al
	xorb	%bpl, %al
	xorb	3(%r14), %al
	movq	(%rsp), %rcx                    # 8-byte Reload
	movb	%al, 1(%rcx)
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	1(%r14), %edi
	xorb	%bl, %r15b
	xorb	(%r14), %r15b
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	2(%r14), %edi
	xorb	%r15b, %bpl
	xorb	1(%r14), %bpl
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	2(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r12d
	movzbl	2(%r14), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	3(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	3(%r14), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %r12b
	xorb	%bl, %r12b
	xorb	%r13b, %r12b
	xorb	%al, %r12b
	xorb	%bpl, %r12b
	xorb	3(%r14), %r12b
	movq	(%rsp), %r13                    # 8-byte Reload
	movb	%r12b, 2(%r13)
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	(%r14), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	1(%r14), %edi
	xorb	%bl, %bpl
	xorb	(%r14), %bpl
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	1(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	2(%r14), %edi
	xorb	%bl, %r15b
	xorb	%bpl, %r15b
	xorb	1(%r14), %r15b
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	3(%r14), %edi
	xorb	%r15b, %bpl
	xorb	2(%r14), %bpl
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %ebx
	movzbl	3(%r14), %edi
	callq	_double_byte@PLT
	movzbl	%al, %edi
	callq	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	3(%r14), %edi
	callq	_double_byte@PLT
	xorb	%bl, %r15b
	xorb	%al, %r15b
	xorb	%bpl, %r15b
	movb	%r15b, 3(%r13)
	addq	$8, %rsp
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
	retq
.Lfunc_end2:
	.size	mult_row_column, .Lfunc_end2-mult_row_column
	.cfi_endproc
                                        # -- End function
	.type	inv_sbox,@object                # @inv_sbox
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
