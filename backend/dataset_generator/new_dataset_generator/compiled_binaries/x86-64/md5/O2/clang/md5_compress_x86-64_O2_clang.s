	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
	.p2align	4, 0x90
	.type	md5_compress,@function
md5_compress:                           # @md5_compress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %r8d
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %eax
	xorl	%r11d, %r11d
	movl	%r8d, %r14d
	movl	%edx, %r10d
	movl	%eax, %r9d
	movl	%ecx, %ebp
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	movl	%r9d, %r15d
	movl	%r10d, %r9d
	movl	%ebp, %r12d
	xorl	%r15d, %r12d
	andl	%r10d, %r12d
	xorl	%r15d, %r12d
	addl	%r14d, %r12d
	addl	(%rsi,%r11,4), %r12d
	movl	%r12d, %ebp
	shll	$7, %ebp
	addl	%r10d, %ebp
	xorl	%ebx, %r10d
	andl	%ebp, %r10d
	xorl	%ebx, %r10d
	addl	%r15d, %r10d
	addl	4(%rsi,%r11,4), %r10d
	addl	%r12d, %r10d
	shll	$7, %r10d
	addl	%r9d, %r10d
	addq	$2, %r11
	movl	%ebx, %r14d
	cmpq	$16, %r11
	jne	.LBB0_1
# %bb.2:
	addl	%r8d, %ebx
	movl	%ebx, (%rdi)
	addl	%edx, %r10d
	movl	%r10d, 4(%rdi)
	addl	%ecx, %ebp
	movl	%ebp, 8(%rdi)
	addl	%eax, %r9d
	movl	%r9d, 12(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
