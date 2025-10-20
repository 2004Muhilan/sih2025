	.text
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        # -- Begin function base64_encode_no_padding
	.type	base64_encode_no_padding,@function
base64_encode_no_padding:               # @base64_encode_no_padding
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$2, %ecx
	xorl	%eax, %eax
	leaq	b64(%rip), %r8
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	-2(%rdi,%rcx), %r9d
	shll	$16, %r9d
	leaq	-1(%rcx), %r10
	cmpq	%rsi, %r10
	jae	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movzbl	-1(%rdi,%rcx), %r11d
	shll	$8, %r11d
	orl	%r11d, %r9d
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movzbl	(%rdi,%rcx), %r11d
	orl	%r11d, %r9d
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%r9d, %r11d
	shrl	$18, %r11d
	movl	%r9d, %ebx
	shrl	$12, %ebx
	andl	$63, %ebx
	movb	(%r11,%r8), %r11b
	movb	%r11b, (%rdx,%rax)
	movb	(%rbx,%r8), %r11b
	movb	%r11b, 1(%rdx,%rax)
	cmpq	%rsi, %r10
	jae	.LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	movl	%r9d, %r10d
	shrl	$6, %r10d
	andl	$63, %r10d
	movb	(%r10,%r8), %r10b
	movb	%r10b, 2(%rdx,%rax)
	addq	$3, %rax
	jmp	.LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$2, %rax
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	andl	$63, %r9d
	movb	(%r9,%r8), %r9b
	movb	%r9b, (%rdx,%rax)
	incq	%rax
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	leaq	3(%rcx), %r9
	incq	%rcx
	cmpq	%rsi, %rcx
	movq	%r9, %rcx
	jb	.LBB0_4
# %bb.14:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	jmp	.LBB0_2
.LBB0_1:
	xorl	%eax, %eax
.LBB0_2:
	movb	$0, (%rdx,%rax)
	retq
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
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
