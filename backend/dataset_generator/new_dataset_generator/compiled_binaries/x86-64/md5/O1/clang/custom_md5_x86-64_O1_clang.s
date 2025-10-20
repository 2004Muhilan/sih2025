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
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %r8d
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %eax
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r10d
	movl	%r10d, -64(%rsp,%r9,4)
	incq	%r9
	cmpq	$16, %r9
	jne	.LBB0_1
# %bb.2:
	xorl	%r10d, %r10d
	movl	%r8d, %ebp
	movl	%edx, %r11d
	movl	%eax, %r14d
	movl	%ecx, %r9d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%r9d, %esi
	movl	%r14d, %ebx
	movl	%r11d, %r9d
	movl	%esi, %r11d
	xorl	%r14d, %r11d
	andl	%r9d, %r11d
	xorl	%r14d, %r11d
	addl	%ebp, %r11d
	addl	-64(%rsp,%r10,4), %r11d
	roll	$7, %r11d
	addl	%r9d, %r11d
	incq	%r10
	movl	%r14d, %ebp
	movl	%esi, %r14d
	cmpq	$16, %r10
	jne	.LBB0_3
# %bb.4:
	addl	%r8d, %ebx
	movl	%ebx, (%rdi)
	addl	%edx, %r11d
	movl	%r11d, 4(%rdi)
	addl	%ecx, %r9d
	movl	%r9d, 8(%rdi)
	addl	%eax, %esi
	movl	%esi, 12(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
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
