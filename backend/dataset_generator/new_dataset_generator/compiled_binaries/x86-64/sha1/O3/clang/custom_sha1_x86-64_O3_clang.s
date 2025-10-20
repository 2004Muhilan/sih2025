	.text
	.file	"custom_sha1.c"
	.globl	sha1_transform                  # -- Begin function sha1_transform
	.p2align	4, 0x90
	.type	sha1_transform,@function
sha1_transform:                         # @sha1_transform
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %r9d
	movl	4(%rdi), %r8d
	movl	8(%rdi), %edx
	movl	12(%rdi), %ecx
	movl	16(%rdi), %eax
	movl	(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -128(%rsp)
	movl	4(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -124(%rsp)
	movl	8(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -120(%rsp)
	movl	12(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -116(%rsp)
	movl	16(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -112(%rsp)
	movl	20(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -108(%rsp)
	movl	24(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -104(%rsp)
	movl	28(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -100(%rsp)
	movl	32(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -96(%rsp)
	movl	36(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -92(%rsp)
	movl	40(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -88(%rsp)
	movl	44(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -84(%rsp)
	movl	48(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -80(%rsp)
	movl	52(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -76(%rsp)
	movl	56(%rsi), %r10d
	bswapl	%r10d
	movl	%r10d, -72(%rsp)
	movl	60(%rsi), %esi
	bswapl	%esi
	movl	%esi, -68(%rsp)
	movl	$16, %esi
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-160(%rsp,%rsi,4), %r10d
	xorl	-140(%rsp,%rsi,4), %r10d
	xorl	-184(%rsp,%rsi,4), %r10d
	xorl	-192(%rsp,%rsi,4), %r10d
	roll	%r10d
	movl	%r10d, -128(%rsp,%rsi,4)
	incq	%rsi
	cmpq	$80, %rsi
	jne	.LBB0_1
# %bb.2:
	xorl	%r11d, %r11d
	movl	%r9d, %r15d
	movl	%eax, %r14d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%r8d, %ebp
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%esi, %r15d
	andl	%ebx, %r15d
	xorl	%esi, %r15d
	movl	$1518500249, %r12d              # imm = 0x5A827999
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	addl	%r15d, %r14d
	movl	%ebp, %r15d
	roll	$5, %r15d
	addl	%r12d, %r15d
	addl	%r14d, %r15d
	addl	-128(%rsp,%r11,4), %r15d
	roll	$30, %ebx
	incq	%r11
	movl	%esi, %r14d
	movl	%r10d, %r12d
	movl	%ebx, %r13d
	cmpq	$80, %r11
	je	.LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	movl	%r13d, %r10d
	movl	%r12d, %esi
	movl	%r15d, %ebp
	cmpq	$19, %r11
	jbe	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$39, %r11
	ja	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%ebx, %r15d
	xorl	%esi, %r15d
	movl	$1859775393, %r12d              # imm = 0x6ED9EBA1
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$59, %r11
	ja	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%esi, %r12d
	orl	%r10d, %r12d
	andl	%ebx, %r12d
	movl	%esi, %r15d
	andl	%r10d, %r15d
	orl	%r12d, %r15d
	movl	$-1894007588, %r12d             # imm = 0x8F1BBCDC
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r15d
	xorl	%ebx, %r15d
	xorl	%esi, %r15d
	movl	$-899497514, %r12d              # imm = 0xCA62C1D6
	jmp	.LBB0_10
.LBB0_11:
	addl	%r9d, %r15d
	movl	%r15d, (%rdi)
	addl	%r8d, %ebp
	movl	%ebp, 4(%rdi)
	addl	%edx, %ebx
	movl	%ebx, 8(%rdi)
	addl	%ecx, %r10d
	movl	%r10d, 12(%rdi)
	addl	%eax, %esi
	movl	%esi, 16(%rdi)
	addq	$200, %rsp
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
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha1_init
.LCPI1_0:
	.long	1732584193                      # 0x67452301
	.long	4023233417                      # 0xefcdab89
	.long	2562383102                      # 0x98badcfe
	.long	271733878                       # 0x10325476
	.text
	.globl	sha1_init
	.p2align	4, 0x90
	.type	sha1_init,@function
sha1_init:                              # @sha1_init
	.cfi_startproc
# %bb.0:
	movaps	.LCPI1_0(%rip), %xmm0           # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, (%rdi)
	movl	$-1009589776, 16(%rdi)          # imm = 0xC3D2E1F0
	retq
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
