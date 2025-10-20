	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.p2align	4, 0x90
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.2:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	(%rsi), %eax
	bswapl	%eax
	movl	%eax, (%rdi)
	movl	4(%rsi), %eax
	bswapl	%eax
	movl	%eax, 4(%rdi)
	movl	8(%rsi), %eax
	bswapl	%eax
	movl	%eax, 8(%rdi)
	movl	12(%rsi), %ebx
	bswapl	%ebx
	movl	%ebx, 12(%rdi)
	movl	$4, %eax
	leaq	sbox(%rip), %rcx
	leaq	.L__const.tc_aes128_set_encrypt_key.rconst(%rip), %rdx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	-16(%rdi,%rax,4), %ebx
	movl	%ebx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$44, %rax
	je	.LBB0_6
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	testb	$3, %al
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	roll	$8, %ebx
	movl	%ebx, %r8d
	movzbl	%bh, %esi
	movzbl	%bl, %r9d
	movl	%ebx, %r10d
	shrl	$24, %r10d
	movzbl	(%r10,%rcx), %r10d
	shll	$24, %r10d
	shrl	$16, %r8d
	movzbl	%r8b, %r8d
	movzbl	(%r8,%rcx), %r8d
	shll	$16, %r8d
	orl	%r10d, %r8d
	movzbl	(%rsi,%rcx), %esi
	shll	$8, %esi
	orl	%r8d, %esi
	movzbl	(%r9,%rcx), %ebx
	orl	%esi, %ebx
	movl	%eax, %esi
	andl	$-4, %esi
	xorl	(%rsi,%rdx), %ebx
	jmp	.LBB0_5
.LBB0_6:
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_7:
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
	.text
	.globl	tc_aes_encrypt
	.p2align	4, 0x90
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
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
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movq	%rsp, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	(%rbx), %eax
	movl	%eax, %edi
	shrl	$24, %edi
	xorb	(%rsp), %dil
	movb	%dil, (%rsp)
	movl	%eax, %r8d
	shrl	$16, %r8d
	xorb	1(%rsp), %r8b
	movb	%r8b, 1(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	2(%rsp), %cl
	movb	%cl, 2(%rsp)
	xorb	3(%rsp), %al
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movb	%al, 3(%rsp)
	movl	4(%rbx), %eax
	movl	%eax, %r10d
	shrl	$24, %r10d
	xorb	4(%rsp), %r10b
	movb	%r10b, 4(%rsp)
	movl	%eax, %r11d
	shrl	$16, %r11d
	xorb	5(%rsp), %r11b
	movl	%eax, %ebp
	shrl	$8, %ebp
	xorb	6(%rsp), %bpl
	xorb	7(%rsp), %al
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movl	8(%rbx), %r14d
	movl	12(%rbx), %eax
	movl	%r14d, %esi
	shrl	$24, %esi
	xorb	8(%rsp), %sil
	movl	%r14d, %r15d
	shrl	$16, %r15d
	xorb	9(%rsp), %r15b
	movl	%r14d, %r12d
	shrl	$8, %r12d
	xorb	10(%rsp), %r12b
	xorb	11(%rsp), %r14b
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	12(%rsp), %dl
	movl	%eax, %r13d
	shrl	$16, %r13d
	xorb	13(%rsp), %r13b
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movl	%eax, %ebx
	shrl	$8, %ebx
	xorb	14(%rsp), %bl
	xorb	15(%rsp), %al
	movl	$28, %r9d
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movzbl	%dil, %edi
	leaq	sbox(%rip), %r9
	movzbl	(%rdi,%r9), %edi
	movzbl	%r8b, %r8d
	movzbl	(%r8,%r9), %r8d
	movb	%r8b, 31(%rsp)                  # 1-byte Spill
	movzbl	%cl, %r8d
	movzbl	(%r8,%r9), %ecx
	movb	%cl, 59(%rsp)                   # 1-byte Spill
	movzbl	52(%rsp), %r8d                  # 1-byte Folded Reload
	movzbl	(%r8,%r9), %ecx
	movb	%cl, 52(%rsp)                   # 1-byte Spill
	movzbl	%r10b, %r8d
	movzbl	(%r8,%r9), %r8d
	movzbl	%r11b, %r10d
	movzbl	(%r10,%r9), %r11d
	movzbl	%bpl, %r10d
	movzbl	(%r10,%r9), %r10d
	movzbl	60(%rsp), %ecx                  # 1-byte Folded Reload
	movzbl	(%rcx,%r9), %ecx
	movzbl	%sil, %esi
	movzbl	(%rsi,%r9), %esi
	movzbl	%r15b, %r15d
	movzbl	(%r15,%r9), %r15d
	movzbl	%r12b, %r12d
	movzbl	(%r12,%r9), %r12d
	movzbl	%r14b, %r14d
	movzbl	(%r14,%r9), %ebp
	movzbl	%dl, %edx
	movzbl	(%rdx,%r9), %edx
	movzbl	%r13b, %r14d
	movzbl	(%r14,%r9), %r14d
	movzbl	%bl, %ebx
	movzbl	(%rbx,%r9), %ebx
	movzbl	%al, %eax
	movzbl	(%rax,%r9), %eax
	movb	%dil, (%rsp)
	movb	%dil, 32(%rsp)
	movzbl	31(%rsp), %edi                  # 1-byte Folded Reload
	movb	%dil, 1(%rsp)
	movzbl	59(%rsp), %r9d                  # 1-byte Folded Reload
	movb	%r9b, 2(%rsp)
	movzbl	52(%rsp), %r13d                 # 1-byte Folded Reload
	movb	%r13b, 3(%rsp)
	movb	%r8b, 4(%rsp)
	movb	%r11b, 5(%rsp)
	movb	%r11b, 33(%rsp)
	movb	%r10b, 6(%rsp)
	movb	%cl, 7(%rsp)
	movb	%sil, 8(%rsp)
	movb	%r15b, 9(%rsp)
	movb	%r12b, 10(%rsp)
	movb	%r12b, 34(%rsp)
	movb	%bpl, 11(%rsp)
	movb	%dl, 12(%rsp)
	movb	%r14b, 13(%rsp)
	movb	%bl, 14(%rsp)
	movb	%al, 15(%rsp)
	movb	%al, 35(%rsp)
	movb	%r8b, 36(%rsp)
	movb	%r15b, 37(%rsp)
	movb	%bl, 38(%rsp)
	movb	%r13b, 39(%rsp)
	movb	%sil, 40(%rsp)
	movb	%r14b, 41(%rsp)
	movb	%r9b, 42(%rsp)
	movb	%cl, 43(%rsp)
	movb	%dl, 44(%rsp)
	movb	%dil, 45(%rsp)
	movb	%r10b, 46(%rsp)
	movb	%bpl, 47(%rsp)
	movq	%rsp, %r14
	movq	%r14, %rdi
	movl	$16, %esi
	leaq	32(%rsp), %r15
	movq	%r15, %rdx
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
	movb	%al, 32(%rsp)
	movzbl	(%rsp), %ebx
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	2(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	2(%rsp), %edi
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 33(%rsp)
	movzbl	1(%rsp), %ebx
	xorb	(%rsp), %bl
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	movb	%bpl, 34(%rsp)
	movzbl	(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	(%rsp), %bpl
	xorb	1(%rsp), %bpl
	xorb	2(%rsp), %bpl
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 35(%rsp)
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
	movb	%al, 36(%rsp)
	movzbl	4(%rsp), %ebx
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	6(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	6(%rsp), %edi
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 37(%rsp)
	movzbl	5(%rsp), %ebx
	xorb	4(%rsp), %bl
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	movb	%bpl, 38(%rsp)
	movzbl	4(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	4(%rsp), %bpl
	xorb	5(%rsp), %bpl
	xorb	6(%rsp), %bpl
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 39(%rsp)
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
	movb	%al, 40(%rsp)
	movzbl	8(%rsp), %ebx
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	10(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	10(%rsp), %edi
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 41(%rsp)
	movzbl	9(%rsp), %ebx
	xorb	8(%rsp), %bl
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	movb	%bpl, 42(%rsp)
	movzbl	8(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	8(%rsp), %bpl
	xorb	9(%rsp), %bpl
	xorb	10(%rsp), %bpl
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 43(%rsp)
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
	movb	%al, 44(%rsp)
	movzbl	12(%rsp), %ebx
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	14(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	14(%rsp), %edi
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 45(%rsp)
	movzbl	13(%rsp), %ebx
	xorb	12(%rsp), %bl
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bl, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	movb	%bpl, 46(%rsp)
	movzbl	12(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	12(%rsp), %bpl
	xorb	13(%rsp), %bpl
	xorb	14(%rsp), %bpl
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 47(%rsp)
	movq	%r14, %rdi
	movl	$16, %esi
	movq	%r15, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	-12(%rax,%r9), %edx
	movl	%edx, %edi
	shrl	$24, %edi
	xorb	(%rsp), %dil
	movb	%dil, (%rsp)
	movl	%edx, %r8d
	shrl	$16, %r8d
	xorb	1(%rsp), %r8b
	movb	%r8b, 1(%rsp)
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorb	2(%rsp), %cl
	movb	%cl, 2(%rsp)
	xorb	3(%rsp), %dl
	movl	%edx, 52(%rsp)                  # 4-byte Spill
	movb	%dl, 3(%rsp)
	movl	-8(%rax,%r9), %edx
	movl	%edx, %r10d
	shrl	$24, %r10d
	xorb	4(%rsp), %r10b
	movb	%r10b, 4(%rsp)
	movl	%edx, %r11d
	shrl	$16, %r11d
	xorb	5(%rsp), %r11b
	movb	%r11b, 5(%rsp)
	movl	%edx, %ebp
	shrl	$8, %ebp
	xorb	6(%rsp), %bpl
	movb	%bpl, 6(%rsp)
	xorb	7(%rsp), %dl
	movl	%edx, 60(%rsp)                  # 4-byte Spill
	movb	%dl, 7(%rsp)
	movl	-4(%rax,%r9), %r14d
	movl	%r14d, %esi
	shrl	$24, %esi
	xorb	8(%rsp), %sil
	movb	%sil, 8(%rsp)
	movl	%r14d, %r15d
	shrl	$16, %r15d
	xorb	9(%rsp), %r15b
	movb	%r15b, 9(%rsp)
	movl	%r14d, %r12d
	shrl	$8, %r12d
	xorb	10(%rsp), %r12b
	movb	%r12b, 10(%rsp)
	xorb	11(%rsp), %r14b
	movb	%r14b, 11(%rsp)
	movl	(%rax,%r9), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	12(%rsp), %dl
	movb	%dl, 12(%rsp)
	movl	%eax, %r13d
	shrl	$16, %r13d
	xorb	13(%rsp), %r13b
	movb	%r13b, 13(%rsp)
	movl	%eax, %ebx
	shrl	$8, %ebx
	xorb	14(%rsp), %bl
	movb	%bl, 14(%rsp)
	xorb	15(%rsp), %al
	movb	%al, 15(%rsp)
	addq	$16, %r9
	cmpq	$172, %r9
	jne	.LBB1_4
# %bb.5:
	movzbl	%dil, %edi
	leaq	sbox(%rip), %r9
	movzbl	(%rdi,%r9), %edi
	movzbl	%r8b, %r8d
	movzbl	(%r8,%r9), %r8d
	movb	%r8b, 64(%rsp)                  # 1-byte Spill
	movzbl	%cl, %r8d
	movzbl	(%r8,%r9), %ecx
	movb	%cl, 31(%rsp)                   # 1-byte Spill
	movzbl	52(%rsp), %r8d                  # 1-byte Folded Reload
	movzbl	(%r8,%r9), %ecx
	movb	%cl, 52(%rsp)                   # 1-byte Spill
	movzbl	%r10b, %r8d
	movzbl	(%r8,%r9), %r8d
	movzbl	%r11b, %r10d
	movzbl	(%r10,%r9), %r11d
	movzbl	%bpl, %r10d
	movzbl	(%r10,%r9), %r10d
	movzbl	60(%rsp), %ecx                  # 1-byte Folded Reload
	movzbl	(%rcx,%r9), %ecx
	movzbl	%sil, %esi
	movzbl	(%rsi,%r9), %esi
	movzbl	%r15b, %r15d
	movzbl	(%r15,%r9), %r15d
	movzbl	%r12b, %r12d
	movzbl	(%r12,%r9), %r12d
	movzbl	%r14b, %r14d
	movzbl	(%r14,%r9), %ebp
	movzbl	%dl, %edx
	movzbl	(%rdx,%r9), %edx
	movzbl	%r13b, %r14d
	movzbl	(%r14,%r9), %r14d
	movzbl	%bl, %ebx
	movzbl	(%rbx,%r9), %ebx
	movzbl	%al, %eax
	movzbl	(%rax,%r9), %eax
	movb	%dil, (%rsp)
	movb	%dil, 32(%rsp)
	movzbl	64(%rsp), %edi                  # 1-byte Folded Reload
	movb	%dil, 1(%rsp)
	movzbl	31(%rsp), %r9d                  # 1-byte Folded Reload
	movb	%r9b, 2(%rsp)
	movzbl	52(%rsp), %r13d                 # 1-byte Folded Reload
	movb	%r13b, 3(%rsp)
	movb	%r8b, 4(%rsp)
	movb	%r11b, 5(%rsp)
	movb	%r11b, 33(%rsp)
	movb	%r10b, 6(%rsp)
	movb	%cl, 7(%rsp)
	movb	%sil, 8(%rsp)
	movb	%r15b, 9(%rsp)
	movb	%r12b, 10(%rsp)
	movb	%r12b, 34(%rsp)
	movb	%bpl, 11(%rsp)
	movb	%dl, 12(%rsp)
	movb	%r14b, 13(%rsp)
	movb	%bl, 14(%rsp)
	movb	%al, 15(%rsp)
	movb	%al, 35(%rsp)
	movb	%r8b, 36(%rsp)
	movb	%r15b, 37(%rsp)
	movb	%bl, 38(%rsp)
	movb	%r13b, 39(%rsp)
	movb	%sil, 40(%rsp)
	movb	%r14b, 41(%rsp)
	movb	%r9b, 42(%rsp)
	movb	%cl, 43(%rsp)
	movb	%dl, 44(%rsp)
	movb	%dil, 45(%rsp)
	movb	%r10b, 46(%rsp)
	movb	%bpl, 47(%rsp)
	movq	%rsp, %r15
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movl	160(%rsi), %ecx
	movl	164(%rsi), %eax
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
	movl	168(%rsi), %edx
	movd	%edx, %xmm6
	movdqa	%xmm6, %xmm7
	psrld	$16, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$24, %xmm2
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	shrl	$8, %edx
	movl	172(%rsi), %esi
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
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r15, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, %eax
.LBB1_6:
	addq	$88, %rsp
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
