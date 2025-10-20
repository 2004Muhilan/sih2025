	.text
	.file	"sha1_compress.c"
	.globl	sha1_compress                   # -- Begin function sha1_compress
	.type	sha1_compress,@function
sha1_compress:                          # @sha1_compress
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movaps	%xmm3, -64(%rsp)
	movaps	%xmm2, -80(%rsp)
	movaps	%xmm1, -96(%rsp)
	movaps	%xmm0, -112(%rsp)
	movl	$16, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-144(%rsp,%rax,4), %ecx
	xorl	-124(%rsp,%rax,4), %ecx
	xorl	-168(%rsp,%rax,4), %ecx
	xorl	-176(%rsp,%rax,4), %ecx
	roll	%ecx
	movl	%ecx, -112(%rsp,%rax,4)
	incq	%rax
	cmpq	$80, %rax
	jne	.LBB0_1
# %bb.2:
	movl	(%rdi), %r8d
	movl	4(%rdi), %esi
	movl	8(%rdi), %edx
	movl	12(%rdi), %ecx
	movl	16(%rdi), %r14d
	xorl	%r11d, %r11d
	movl	%r14d, -116(%rsp)               # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebp
	movl	%r8d, %r15d
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	movl	%ebp, %ebx
	movl	%r13d, %r10d
	movl	%r12d, %r9d
	cmpq	$19, %r11
	ja	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%r9d, %r15d
	andl	%ebx, %r15d
	xorl	%r9d, %r15d
	movl	$1518500249, %r12d              # imm = 0x5A827999
	jmp	.LBB0_10
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$39, %r11
	ja	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%ebx, %r15d
	xorl	%r9d, %r15d
	movl	$1859775393, %r12d              # imm = 0x6ED9EBA1
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$59, %r11
	ja	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r9d, %ebp
	orl	%r10d, %ebp
	andl	%ebx, %ebp
	movl	%r9d, %r15d
	andl	%r10d, %r15d
	orl	%ebp, %r15d
	movl	$-1894007588, %r12d             # imm = 0x8F1BBCDC
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%ebx, %r15d
	xorl	%r9d, %r15d
	movl	$-899497514, %r12d              # imm = 0xCA62C1D6
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	addl	%r15d, %r14d
	movl	%eax, %r15d
	roll	$5, %r15d
	addl	%r12d, %r15d
	addl	%r14d, %r15d
	addl	-112(%rsp,%r11,4), %r15d
	roll	$30, %ebx
	incq	%r11
	movl	%r9d, %r14d
	movl	%r10d, %r12d
	movl	%ebx, %r13d
	movl	%eax, %ebp
	cmpq	$80, %r11
	jne	.LBB0_3
# %bb.11:
	addl	%r8d, %r15d
	movl	%r15d, (%rdi)
	addl	%esi, %eax
	movl	%eax, 4(%rdi)
	addl	%edx, %ebx
	movl	%ebx, 8(%rdi)
	addl	%ecx, %r10d
	movl	%r10d, 12(%rdi)
	addl	-116(%rsp), %r9d                # 4-byte Folded Reload
	movl	%r9d, 16(%rdi)
	addq	$216, %rsp
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
.Lfunc_end0:
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
