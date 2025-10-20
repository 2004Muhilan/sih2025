	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
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
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %r8d
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %eax
	xorl	%r11d, %r11d
	movl	%r8d, %r14d
	movl	%edx, %ebx
	movl	%eax, %r15d
	movl	%ecx, %r10d
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r9d
	movl	%r15d, %ebp
	movl	%ebx, %r10d
	movl	%r9d, %ebx
	xorl	%r15d, %ebx
	andl	%r10d, %ebx
	xorl	%r15d, %ebx
	addl	%r14d, %ebx
	addl	(%rsi,%r11,4), %ebx
	shll	$7, %ebx
	addl	%r10d, %ebx
	incq	%r11
	movl	%r15d, %r14d
	movl	%r9d, %r15d
	cmpq	$16, %r11
	jne	.LBB0_1
# %bb.2:
	addl	%r8d, %ebp
	movl	%ebp, (%rdi)
	addl	%edx, %ebx
	movl	%ebx, 4(%rdi)
	addl	%ecx, %r10d
	movl	%r10d, 8(%rdi)
	addl	%eax, %r9d
	movl	%r9d, 12(%rdi)
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
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
