	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	4, 0x90
	.type	md5_transform,@function
md5_transform:                          # @md5_transform
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %r8d
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %eax
	movl	%ecx, %r9d
	xorl	%eax, %r9d
	andl	%edx, %r9d
	xorl	%eax, %r9d
	addl	%r8d, %r9d
	addl	(%rsi), %r9d
	roll	$7, %r9d
	addl	%edx, %r9d
	movl	%edx, %r10d
	xorl	%ecx, %r10d
	andl	%r9d, %r10d
	xorl	%ecx, %r10d
	addl	%eax, %r10d
	addl	4(%rsi), %r10d
	roll	$7, %r10d
	addl	%r9d, %r10d
	movl	%r9d, %r11d
	xorl	%edx, %r11d
	andl	%r10d, %r11d
	xorl	%edx, %r11d
	addl	%ecx, %r11d
	addl	8(%rsi), %r11d
	roll	$7, %r11d
	addl	%r10d, %r11d
	movl	%r10d, %ebx
	xorl	%r9d, %ebx
	andl	%r11d, %ebx
	xorl	%r9d, %ebx
	addl	%edx, %ebx
	addl	12(%rsi), %ebx
	roll	$7, %ebx
	addl	%r11d, %ebx
	movl	%r11d, %ebp
	xorl	%r10d, %ebp
	andl	%ebx, %ebp
	xorl	%r10d, %ebp
	addl	%r9d, %ebp
	addl	16(%rsi), %ebp
	roll	$7, %ebp
	addl	%ebx, %ebp
	movl	%ebx, %r9d
	xorl	%r11d, %r9d
	andl	%ebp, %r9d
	xorl	%r11d, %r9d
	addl	%r10d, %r9d
	addl	20(%rsi), %r9d
	roll	$7, %r9d
	addl	%ebp, %r9d
	movl	%ebp, %r10d
	xorl	%ebx, %r10d
	andl	%r9d, %r10d
	xorl	%ebx, %r10d
	addl	%r11d, %r10d
	addl	24(%rsi), %r10d
	roll	$7, %r10d
	addl	%r9d, %r10d
	movl	%r9d, %r11d
	xorl	%ebp, %r11d
	andl	%r10d, %r11d
	xorl	%ebp, %r11d
	addl	%ebx, %r11d
	addl	28(%rsi), %r11d
	roll	$7, %r11d
	addl	%r10d, %r11d
	movl	%r10d, %ebx
	xorl	%r9d, %ebx
	andl	%r11d, %ebx
	xorl	%r9d, %ebx
	addl	%ebp, %ebx
	addl	32(%rsi), %ebx
	roll	$7, %ebx
	addl	%r11d, %ebx
	movl	%r11d, %ebp
	xorl	%r10d, %ebp
	andl	%ebx, %ebp
	xorl	%r10d, %ebp
	addl	%r9d, %ebp
	addl	36(%rsi), %ebp
	roll	$7, %ebp
	addl	%ebx, %ebp
	movl	%ebx, %r9d
	xorl	%r11d, %r9d
	andl	%ebp, %r9d
	xorl	%r11d, %r9d
	addl	%r10d, %r9d
	addl	40(%rsi), %r9d
	roll	$7, %r9d
	addl	%ebp, %r9d
	movl	%ebp, %r10d
	xorl	%ebx, %r10d
	andl	%r9d, %r10d
	xorl	%ebx, %r10d
	addl	%r11d, %r10d
	addl	44(%rsi), %r10d
	roll	$7, %r10d
	addl	%r9d, %r10d
	movl	%r9d, %r11d
	xorl	%ebp, %r11d
	andl	%r10d, %r11d
	xorl	%ebp, %r11d
	addl	%ebx, %r11d
	addl	48(%rsi), %r11d
	roll	$7, %r11d
	addl	%r10d, %r11d
	movl	%r10d, %ebx
	xorl	%r9d, %ebx
	andl	%r11d, %ebx
	xorl	%r9d, %ebx
	addl	%ebp, %ebx
	addl	52(%rsi), %ebx
	roll	$7, %ebx
	addl	%r11d, %ebx
	movl	%r11d, %ebp
	xorl	%r10d, %ebp
	andl	%ebx, %ebp
	xorl	%r10d, %ebp
	addl	%r9d, %ebp
	addl	56(%rsi), %ebp
	roll	$7, %ebp
	addl	%ebx, %ebp
	movl	%ebx, %r9d
	xorl	%r11d, %r9d
	andl	%ebp, %r9d
	xorl	%r11d, %r9d
	addl	%r10d, %r9d
	addl	60(%rsi), %r9d
	roll	$7, %r9d
	addl	%r8d, %r11d
	movl	%r11d, (%rdi)
	addl	%ebp, %edx
	addl	%r9d, %edx
	movl	%edx, 4(%rdi)
	addl	%ecx, %ebp
	movl	%ebp, 8(%rdi)
	addl	%eax, %ebx
	movl	%ebx, 12(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function md5_init
.LCPI1_0:
	.long	1732584193                      # 0x67452301
	.long	4023233417                      # 0xefcdab89
	.long	2562383102                      # 0x98badcfe
	.long	271733878                       # 0x10325476
	.text
	.globl	md5_init
	.p2align	4, 0x90
	.type	md5_init,@function
md5_init:                               # @md5_init
	.cfi_startproc
# %bb.0:
	movaps	.LCPI1_0(%rip), %xmm0           # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, (%rdi)
	retq
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
