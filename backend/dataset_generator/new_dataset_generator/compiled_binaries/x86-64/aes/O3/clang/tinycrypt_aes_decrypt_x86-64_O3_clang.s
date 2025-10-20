	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       # -- Begin function tc_aes128_set_decrypt_key
	.p2align	4, 0x90
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
	.p2align	4, 0x90
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         # @tc_aes_decrypt
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB1_7
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.2:
	testq	%rbx, %rbx
	je	.LBB1_6
# %bb.3:
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	%rsp, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	160(%rbx), %ecx
	movl	164(%rbx), %eax
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
	movl	168(%rbx), %edx
	movd	%edx, %xmm6
	movdqa	%xmm6, %xmm7
	psrld	$16, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$24, %xmm2
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	shrl	$8, %edx
	movl	172(%rbx), %esi
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
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	movl	$144, %r12d
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
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
	movq	%rsp, %rdi
	movl	$16, %esi
	leaq	16(%rsp), %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movzbl	(%rsp), %r8d
	movzbl	1(%rsp), %ebx
	movzbl	2(%rsp), %edx
	movzbl	3(%rsp), %r14d
	movzbl	4(%rsp), %ebp
	movzbl	5(%rsp), %r15d
	movzbl	6(%rsp), %r13d
	movzbl	7(%rsp), %r11d
	movzbl	8(%rsp), %r10d
	movzbl	9(%rsp), %r9d
	movzbl	10(%rsp), %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movzbl	11(%rsp), %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movzbl	12(%rsp), %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	(%rdi,%r12), %ecx
	movl	%ecx, %eax
	shrl	$24, %eax
	leaq	inv_sbox(%rip), %rsi
	xorb	(%r8,%rsi), %al
	movzbl	13(%rsp), %r8d
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movzbl	14(%rsp), %r8d
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movzbl	15(%rsp), %r8d
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movb	%al, (%rsp)
	movl	%ecx, %eax
	shrl	$16, %eax
	xorb	(%rbx,%rsi), %al
	movb	%al, 1(%rsp)
	movl	%ecx, %eax
	shrl	$8, %eax
	xorb	(%rdx,%rsi), %al
	movb	%al, 2(%rsp)
	xorb	(%r14,%rsi), %cl
	movb	%cl, 3(%rsp)
	movl	4(%rdi,%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	(%rbp,%rsi), %cl
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	(%r15,%rsi), %dl
	movb	%cl, 4(%rsp)
	movb	%dl, 5(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	(%r13,%rsi), %cl
	xorb	(%r11,%rsi), %al
	movb	%cl, 6(%rsp)
	movb	%al, 7(%rsp)
	movl	8(%rdi,%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	(%r10,%rsi), %cl
	movb	%cl, 8(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	(%r9,%rsi), %cl
	movl	%eax, %edx
	shrl	$8, %edx
	movq	40(%rsp), %r8                   # 8-byte Reload
	xorb	(%r8,%rsi), %dl
	movb	%cl, 9(%rsp)
	movb	%dl, 10(%rsp)
	movq	48(%rsp), %rcx                  # 8-byte Reload
	xorb	(%rcx,%rsi), %al
	movb	%al, 11(%rsp)
	movl	12(%rdi,%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	72(%rsp), %rdx                  # 8-byte Reload
	xorb	(%rdx,%rsi), %cl
	movb	%cl, 12(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	xorb	(%rdx,%rsi), %cl
	movb	%cl, 13(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	movq	56(%rsp), %rdx                  # 8-byte Reload
	xorb	(%rdx,%rsi), %cl
	movb	%cl, 14(%rsp)
	movq	64(%rsp), %rcx                  # 8-byte Reload
	xorb	(%rcx,%rsi), %al
	movb	%al, 15(%rsp)
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	movq	%rsp, %rbx
	movq	%rbx, %rsi
	callq	mult_row_column
	leaq	20(%rsp), %rdi
	leaq	4(%rsp), %rsi
	callq	mult_row_column
	leaq	24(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	mult_row_column
	leaq	28(%rsp), %rdi
	leaq	12(%rsp), %rsi
	callq	mult_row_column
	movq	%rbx, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	addq	$-16, %r12
	jne	.LBB1_4
# %bb.5:
	movdqa	(%rsp), %xmm0
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
	movdqa	%xmm1, 16(%rsp)
	movq	%rsp, %rdi
	leaq	16(%rsp), %rdx
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movzbl	(%rsp), %r8d
	movzbl	1(%rsp), %ecx
	movzbl	2(%rsp), %r14d
	movzbl	3(%rsp), %edx
	movzbl	4(%rsp), %ebp
	movzbl	5(%rsp), %r13d
	movzbl	6(%rsp), %r12d
	movzbl	7(%rsp), %r11d
	movzbl	8(%rsp), %r9d
	movzbl	9(%rsp), %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movzbl	10(%rsp), %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	(%rsi), %eax
	movl	%eax, %ebx
	shrl	$24, %ebx
	leaq	inv_sbox(%rip), %rdi
	xorb	(%r8,%rdi), %bl
	movzbl	11(%rsp), %r10d
	movzbl	12(%rsp), %r8d
	movzbl	13(%rsp), %r15d
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movzbl	14(%rsp), %r15d
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movzbl	15(%rsp), %r15d
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	movb	%bl, (%rsp)
	movl	%eax, %ebx
	shrl	$16, %ebx
	xorb	(%rcx,%rdi), %bl
	movb	%bl, 1(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	(%r14,%rdi), %cl
	movb	%cl, 2(%rsp)
	xorb	(%rdx,%rdi), %al
	movb	%al, 3(%rsp)
	movl	4(%rsi), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	(%rbp,%rdi), %cl
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	(%r13,%rdi), %dl
	movb	%cl, 4(%rsp)
	movb	%dl, 5(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	(%r12,%rdi), %cl
	xorb	(%r11,%rdi), %al
	movb	%cl, 6(%rsp)
	movb	%al, 7(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	(%r9,%rdi), %cl
	movb	%cl, 8(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	xorb	(%rdx,%rdi), %cl
	movl	%eax, %edx
	shrl	$8, %edx
	movq	56(%rsp), %r9                   # 8-byte Reload
	xorb	(%r9,%rdi), %dl
	movb	%cl, 9(%rsp)
	movb	%dl, 10(%rsp)
	xorb	(%r10,%rdi), %al
	movb	%al, 11(%rsp)
	movl	12(%rsi), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	(%r8,%rdi), %cl
	movl	%eax, %edx
	shrl	$16, %edx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	xorb	(%rsi,%rdi), %dl
	movl	%eax, %esi
	shrl	$8, %esi
	movq	64(%rsp), %r8                   # 8-byte Reload
	xorb	(%r8,%rdi), %sil
	movq	72(%rsp), %r8                   # 8-byte Reload
	xorb	(%r8,%rdi), %al
	movb	%cl, 12(%rsp)
	movb	%dl, 13(%rsp)
	movb	%sil, 14(%rsp)
	movb	%al, 15(%rsp)
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%rsp, %rbx
	movq	%rbx, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, %eax
.LBB1_6:
	addq	$104, %rsp
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
.LBB1_7:
	retq
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mult_row_column
	.type	mult_row_column,@function
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
