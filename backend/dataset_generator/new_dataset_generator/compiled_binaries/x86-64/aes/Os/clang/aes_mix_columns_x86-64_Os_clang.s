	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.type	aes_mix_columns,@function
aes_mix_columns:                        # @aes_mix_columns
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	movb	(%rdi,%rax,4), %r8b
	movb	1(%rdi,%rax,4), %dl
	movb	2(%rdi,%rax,4), %cl
	movb	3(%rdi,%rax,4), %sil
	movb	$2, %r10b
	movl	$8, %r11d
	xorl	%r9d, %r9d
	movl	%r8d, %ebx
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%bl, %bpl
	xorb	%bpl, %r9b
	leal	(%rbx,%rbx), %ebp
	movzbl	%bpl, %r14d
	xorb	$27, %bpl
	testb	%bl, %bl
	movzbl	%bpl, %ebx
	cmovnsl	%r14d, %ebx
	shrb	%r10b
	decl	%r11d
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$3, %r11b
	movl	$8, %ebx
	xorl	%r10d, %r10d
	movl	%edx, %r14d
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%r14b, %bpl
	xorb	%bpl, %r10b
	leal	(%r14,%r14), %ebp
	movzbl	%bpl, %r15d
	xorb	$27, %bpl
	testb	%r14b, %r14b
	movzbl	%bpl, %r14d
	cmovnsl	%r15d, %r14d
	shrb	%r11b
	decl	%ebx
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%esi, %r11d
	xorb	%cl, %r11b
	xorb	%r9b, %r11b
	xorb	%r10b, %r11b
	movb	%r11b, (%rdi,%rax,4)
	movb	$2, %r10b
	movl	$8, %r11d
	xorl	%r9d, %r9d
	movl	%edx, %ebx
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%bl, %bpl
	xorb	%bpl, %r9b
	leal	(%rbx,%rbx), %ebp
	movzbl	%bpl, %r14d
	xorb	$27, %bpl
	testb	%bl, %bl
	movzbl	%bpl, %ebx
	cmovnsl	%r14d, %ebx
	shrb	%r10b
	decl	%r11d
	jne	.LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$3, %r11b
	movl	$8, %ebx
	xorl	%r10d, %r10d
	movl	%ecx, %r14d
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%r14b, %bpl
	xorb	%bpl, %r10b
	leal	(%r14,%r14), %ebp
	movzbl	%bpl, %r15d
	xorb	$27, %bpl
	testb	%r14b, %r14b
	movzbl	%bpl, %r14d
	cmovnsl	%r15d, %r14d
	shrb	%r11b
	decl	%ebx
	jne	.LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%esi, %r11d
	xorb	%r8b, %r11b
	xorb	%r9b, %r11b
	xorb	%r10b, %r11b
	movb	%r11b, 1(%rdi,%rax,4)
	movb	$2, %r10b
	movl	$8, %r11d
	xorl	%r9d, %r9d
	movl	%ecx, %ebx
.LBB0_10:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%bl, %bpl
	xorb	%bpl, %r9b
	leal	(%rbx,%rbx), %ebp
	movzbl	%bpl, %r14d
	xorb	$27, %bpl
	testb	%bl, %bl
	movzbl	%bpl, %ebx
	cmovnsl	%r14d, %ebx
	shrb	%r10b
	decl	%r11d
	jne	.LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$3, %r11b
	movl	$8, %ebx
	xorl	%r10d, %r10d
	movl	%esi, %r14d
.LBB0_12:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %ebp
	andb	$1, %bpl
	negb	%bpl
	andb	%r14b, %bpl
	xorb	%bpl, %r10b
	leal	(%r14,%r14), %ebp
	movzbl	%bpl, %r15d
	xorb	$27, %bpl
	testb	%r14b, %r14b
	movzbl	%bpl, %r14d
	cmovnsl	%r15d, %r14d
	shrb	%r11b
	decl	%ebx
	jne	.LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	%edx, %r11d
	xorb	%r8b, %r11b
	xorb	%r9b, %r11b
	xorb	%r10b, %r11b
	movb	%r11b, 2(%rdi,%rax,4)
	movb	$3, %r10b
	movl	$8, %r11d
	xorl	%r9d, %r9d
.LBB0_14:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ebx
	andb	$1, %bl
	negb	%bl
	andb	%r8b, %bl
	xorb	%bl, %r9b
	leal	(%r8,%r8), %ebx
	movzbl	%bl, %ebp
	xorb	$27, %bl
	testb	%r8b, %r8b
	movzbl	%bl, %r8d
	cmovnsl	%ebp, %r8d
	shrb	%r10b
	decl	%r11d
	jne	.LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$2, %r10b
	movl	$8, %r11d
	xorl	%r8d, %r8d
.LBB0_16:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ebx
	andb	$1, %bl
	negb	%bl
	andb	%sil, %bl
	xorb	%bl, %r8b
	leal	(%rsi,%rsi), %ebx
	movzbl	%bl, %ebp
	xorb	$27, %bl
	testb	%sil, %sil
	movzbl	%bl, %esi
	cmovnsl	%ebp, %esi
	shrb	%r10b
	decl	%r11d
	jne	.LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	xorb	%dl, %cl
	xorb	%r9b, %cl
	xorb	%r8b, %cl
	movb	%cl, 3(%rdi,%rax,4)
	incq	%rax
	cmpq	$4, %rax
	jne	.LBB0_1
# %bb.18:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
