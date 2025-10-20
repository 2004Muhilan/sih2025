	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.type	sha256_compress,@function
sha256_compress:                        # @sha256_compress
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
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
	movaps	%xmm0, -96(%rsp)
	movaps	%xmm3, -48(%rsp)
	movaps	%xmm2, -64(%rsp)
	movaps	%xmm1, -80(%rsp)
	movl	$16, %eax
	movl	-96(%rsp), %edx
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-156(%rsp,%rax,4), %ecx
	movl	-104(%rsp,%rax,4), %esi
	movl	%ecx, %r8d
	roll	$25, %r8d
	movl	%ecx, %r9d
	roll	$14, %r9d
	xorl	%r8d, %r9d
	movl	%ecx, %r8d
	shrl	$3, %r8d
	xorl	%r9d, %r8d
	addl	%edx, %r8d
	movl	%esi, %edx
	roll	$15, %edx
	movl	%esi, %r9d
	roll	$13, %r9d
	xorl	%edx, %r9d
	shrl	$10, %esi
	xorl	%r9d, %esi
	addl	-124(%rsp,%rax,4), %r8d
	addl	%esi, %r8d
	movl	%r8d, -96(%rsp,%rax,4)
	incq	%rax
	movl	%ecx, %edx
	cmpq	$64, %rax
	jne	.LBB0_1
# %bb.2:
	movl	(%rdi), %r11d
	movl	4(%rdi), %r13d
	movl	8(%rdi), %edx
	movl	12(%rdi), %eax
	movl	16(%rdi), %r10d
	movl	20(%rdi), %r14d
	movl	24(%rdi), %ebp
	movl	28(%rdi), %ebx
	xorl	%r15d, %r15d
	movl	%r11d, %r12d
	movl	%r13d, -124(%rsp)               # 4-byte Spill
	movl	%ebx, -100(%rsp)                # 4-byte Spill
	movl	%ebp, -104(%rsp)                # 4-byte Spill
	movl	%r14d, -108(%rsp)               # 4-byte Spill
	movl	%r10d, -112(%rsp)               # 4-byte Spill
	movl	%eax, -116(%rsp)                # 4-byte Spill
	movl	%eax, %ecx
	movl	%edx, -120(%rsp)                # 4-byte Spill
	movl	%edx, %eax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	movl	%r10d, %r8d
	movl	%r14d, %r9d
	movl	%ebp, %esi
	roll	$26, %r10d
	movl	%r13d, %eax
	movl	%r8d, %ebp
	roll	$21, %ebp
	movl	%r12d, %r13d
	movl	%r8d, %r14d
	roll	$7, %r14d
	xorl	%r10d, %ebp
	xorl	%ebp, %r14d
	movl	%r9d, %r10d
	andl	%r8d, %r10d
	addl	%ebx, %r10d
	movl	%r8d, %ebx
	notl	%ebx
	andl	%esi, %ebx
	addl	%r10d, %ebx
	addl	%r14d, %ebx
	movl	-96(%rsp,%r15,4), %r10d
	leal	(%r10,%rbx), %ebp
	addl	$1116352408, %ebp               # imm = 0x428A2F98
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	movl	%r12d, %r14d
	roll	$30, %r14d
	addl	%r10d, %ebx
	movl	%r12d, %r10d
	roll	$19, %r10d
	xorl	%r14d, %r10d
	movl	%r12d, %r14d
	roll	$10, %r14d
	xorl	%r10d, %r14d
	movl	%eax, %r10d
	xorl	%edx, %r10d
	andl	%r12d, %r10d
	movl	%eax, %r12d
	andl	%edx, %r12d
	xorl	%r10d, %r12d
	addl	%r14d, %r12d
	addl	%ebp, %r12d
	leal	(%rcx,%rbx), %r10d
	addl	$1116352408, %r10d              # imm = 0x428A2F98
	incq	%r15
	movl	%esi, %ebx
	movl	%r9d, %ebp
	movl	%r8d, %r14d
	movl	%edx, %ecx
	cmpq	$64, %r15
	jne	.LBB0_3
# %bb.4:
	addl	%r11d, %r12d
	movl	%r12d, (%rdi)
	addl	-124(%rsp), %r13d               # 4-byte Folded Reload
	movl	%r13d, 4(%rdi)
	addl	-120(%rsp), %eax                # 4-byte Folded Reload
	movl	%eax, 8(%rdi)
	addl	-116(%rsp), %edx                # 4-byte Folded Reload
	movl	%edx, 12(%rdi)
	addl	-112(%rsp), %r10d               # 4-byte Folded Reload
	movl	%r10d, 16(%rdi)
	addl	-108(%rsp), %r8d                # 4-byte Folded Reload
	movl	%r8d, 20(%rdi)
	addl	-104(%rsp), %r9d                # 4-byte Folded Reload
	movl	%r9d, 24(%rdi)
	addl	-100(%rsp), %esi                # 4-byte Folded Reload
	movl	%esi, 28(%rdi)
	addq	$168, %rsp
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
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
