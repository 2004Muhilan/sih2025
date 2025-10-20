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
	movl	%ecx, %r10d
	xorl	%eax, %r10d
	andl	%edx, %r10d
	xorl	%eax, %r10d
	addl	%r8d, %r10d
	addl	(%rsi), %r10d
	movl	%r10d, %r9d
	shll	$7, %r9d
	addl	%edx, %r9d
	movl	%edx, %r11d
	xorl	%ecx, %r11d
	andl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%eax, %r11d
	addl	4(%rsi), %r11d
	addl	%r10d, %r11d
	movl	%r11d, %r10d
	shll	$7, %r10d
	addl	%edx, %r10d
	movl	%r9d, %ebx
	xorl	%edx, %ebx
	andl	%r10d, %ebx
	xorl	%edx, %ebx
	addl	%ecx, %ebx
	addl	8(%rsi), %ebx
	addl	%r11d, %ebx
	movl	%ebx, %r11d
	shll	$7, %r11d
	addl	%edx, %r11d
	movl	%r10d, %ebp
	xorl	%r9d, %ebp
	andl	%r11d, %ebp
	xorl	%r9d, %ebp
	addl	%edx, %ebp
	addl	12(%rsi), %ebp
	addl	%ebx, %ebp
	movl	%ebp, %ebx
	shll	$7, %ebx
	addl	%edx, %ebx
	movl	%r11d, %r14d
	xorl	%r10d, %r14d
	andl	%ebx, %r14d
	xorl	%r10d, %r14d
	addl	%r9d, %r14d
	addl	16(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r9d
	shll	$7, %r9d
	addl	%edx, %r9d
	movl	%ebx, %ebp
	xorl	%r11d, %ebp
	andl	%r9d, %ebp
	xorl	%r11d, %ebp
	addl	%r10d, %ebp
	addl	20(%rsi), %ebp
	addl	%r14d, %ebp
	movl	%ebp, %r10d
	shll	$7, %r10d
	addl	%edx, %r10d
	movl	%r9d, %r14d
	xorl	%ebx, %r14d
	andl	%r10d, %r14d
	xorl	%ebx, %r14d
	addl	%r11d, %r14d
	addl	24(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r11d
	shll	$7, %r11d
	addl	%edx, %r11d
	movl	%r10d, %ebp
	xorl	%r9d, %ebp
	andl	%r11d, %ebp
	xorl	%r9d, %ebp
	addl	%ebx, %ebp
	addl	28(%rsi), %ebp
	addl	%r14d, %ebp
	movl	%ebp, %ebx
	shll	$7, %ebx
	addl	%edx, %ebx
	movl	%r11d, %r14d
	xorl	%r10d, %r14d
	andl	%ebx, %r14d
	xorl	%r10d, %r14d
	addl	%r9d, %r14d
	addl	32(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r9d
	shll	$7, %r9d
	addl	%edx, %r9d
	movl	%ebx, %ebp
	xorl	%r11d, %ebp
	andl	%r9d, %ebp
	xorl	%r11d, %ebp
	addl	%r10d, %ebp
	addl	36(%rsi), %ebp
	addl	%r14d, %ebp
	movl	%ebp, %r10d
	shll	$7, %r10d
	addl	%edx, %r10d
	movl	%r9d, %r14d
	xorl	%ebx, %r14d
	andl	%r10d, %r14d
	xorl	%ebx, %r14d
	addl	%r11d, %r14d
	addl	40(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r11d
	shll	$7, %r11d
	addl	%edx, %r11d
	movl	%r10d, %ebp
	xorl	%r9d, %ebp
	andl	%r11d, %ebp
	xorl	%r9d, %ebp
	addl	%ebx, %ebp
	addl	44(%rsi), %ebp
	addl	%r14d, %ebp
	movl	%ebp, %ebx
	shll	$7, %ebx
	addl	%edx, %ebx
	movl	%r11d, %r14d
	xorl	%r10d, %r14d
	andl	%ebx, %r14d
	xorl	%r10d, %r14d
	addl	%r9d, %r14d
	addl	48(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r9d
	shll	$7, %r9d
	addl	%edx, %r9d
	movl	%ebx, %ebp
	xorl	%r11d, %ebp
	andl	%r9d, %ebp
	xorl	%r11d, %ebp
	addl	%r10d, %ebp
	addl	52(%rsi), %ebp
	addl	%r14d, %ebp
	movl	%ebp, %r10d
	shll	$7, %r10d
	addl	%edx, %r10d
	movl	%r9d, %r14d
	xorl	%ebx, %r14d
	andl	%r10d, %r14d
	xorl	%ebx, %r14d
	addl	%r11d, %r14d
	addl	56(%rsi), %r14d
	addl	%ebp, %r14d
	movl	%r14d, %r11d
	shll	$7, %r11d
	addl	%edx, %r11d
	movl	%r10d, %r15d
	xorl	%r9d, %r15d
	andl	%r11d, %r15d
	xorl	%r9d, %r15d
	addl	%ebx, %r15d
	addl	60(%rsi), %r15d
	addl	%r14d, %r15d
	shll	$7, %r15d
	addl	%r8d, %r9d
	movl	%r9d, (%rdi)
	leal	(%r15,%rdx,2), %edx
	movl	%edx, 4(%rdi)
	addl	%ecx, %r11d
	movl	%r11d, 8(%rdi)
	addl	%eax, %r10d
	movl	%r10d, 12(%rdi)
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
