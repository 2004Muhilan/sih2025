	.text
	.file	"custom_base64.c"
	.globl	base64_encode                   # -- Begin function base64_encode
	.p2align	4, 0x90
	.type	base64_encode,@function
base64_encode:                          # @base64_encode
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_8
# %bb.1:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	addq	$3, %rdx
	xorl	%r10d, %r10d
	leaq	b64(%rip), %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rdi,%r10), %r10d
	movl	%r10d, %r11d
	shll	$16, %r11d
	shll	$8, %r9d
	leal	(%r8,%r9), %ebx
	orl	%r11d, %r9d
	shrl	$2, %r10d
	movzbl	(%r10,%rax), %r10d
	movb	%r10b, -3(%rdx)
	shrl	$12, %r9d
	andl	$63, %r9d
	movzbl	(%r9,%rax), %r9d
	movb	%r9b, -2(%rdx)
	shrl	$6, %ebx
	andl	$63, %ebx
	movzbl	(%rbx,%rax), %r9d
	movb	%r9b, -1(%rdx)
	andl	$63, %r8d
	movzbl	(%r8,%rax), %r8d
	movb	%r8b, (%rdx)
	addq	$4, %rdx
	movq	%rcx, %r10
	cmpq	%rsi, %rcx
	jae	.LBB0_7
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	leaq	1(%r10), %rcx
	movl	$0, %r9d
	cmpq	%rsi, %rcx
	jae	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	2(%r10), %rcx
	movzbl	1(%rdi,%r10), %r9d
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r8d, %r8d
	cmpq	%rsi, %rcx
	jae	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rdi,%rcx), %r8d
	incq	%rcx
	jmp	.LBB0_6
.LBB0_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_8:
	retq
.Lfunc_end0:
	.size	base64_encode, .Lfunc_end0-base64_encode
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode                   # -- Begin function base64_decode
	.p2align	4, 0x90
	.type	base64_decode,@function
base64_decode:                          # @base64_decode
	.cfi_startproc
# %bb.0:
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	movzbl	1(%rdi), %eax
	movb	%al, 1(%rsi)
	movzbl	2(%rdi), %eax
	movb	%al, 2(%rsi)
	movzbl	3(%rdi), %eax
	movb	%al, 3(%rsi)
	retq
.Lfunc_end1:
	.size	base64_decode, .Lfunc_end1-base64_decode
	.cfi_endproc
                                        # -- End function
	.type	b64,@object                     # @b64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
