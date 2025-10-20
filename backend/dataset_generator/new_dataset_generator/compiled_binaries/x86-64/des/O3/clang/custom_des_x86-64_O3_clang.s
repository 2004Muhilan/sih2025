	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	4, 0x90
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	(%rdi), %eax
	shlq	$56, %rax
	movzbl	1(%rdi), %ecx
	shlq	$48, %rcx
	orq	%rax, %rcx
	movzbl	2(%rdi), %eax
	shlq	$40, %rax
	orq	%rcx, %rax
	movzbl	3(%rdi), %r11d
	shlq	$32, %r11
	orq	%rax, %r11
	movl	4(%rdi), %r15d
	bswapl	%r15d
	shrq	$32, %r11
	movzbl	(%rsi), %edi
	movzbl	1(%rsi), %r10d
	movzbl	2(%rsi), %r14d
	movzbl	3(%rsi), %r8d
	movzbl	4(%rsi), %r9d
	movzbl	5(%rsi), %ebx
	movzbl	6(%rsi), %eax
	movzbl	7(%rsi), %ecx
	movq	%rcx, %r12
	xorq	%r10, %r12
	xorq	%r15, %r12
	xorq	%rax, %r15
	xorq	%rdi, %r15
	xorq	%r14, %r15
	xorq	%r8, %r15
	xorq	%r11, %r15
	movq	%rbx, %rsi
	xorq	%rdi, %rsi
	xorq	%r14, %rdi
	xorq	%r9, %r14
	xorq	%rbx, %r14
	xorq	%r12, %r14
	xorq	%r10, %rsi
	xorq	%r8, %rdi
	xorq	%r14, %rdi
	xorq	%r8, %rsi
	xorq	%r9, %rsi
	xorq	%r15, %rsi
	movq	%rsi, %r8
	shlq	$32, %r8
	xorq	%rdi, %rsi
	xorl	%esi, %ebx
	orq	%r8, %rsi
	movq	%rsi, %rdi
	shrq	$32, %rdi
	xorl	%edi, %ebx
	movl	%ebx, %r8d
	shrl	$24, %r8d
	movb	%r8b, (%rdx)
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movb	%r8b, 1(%rdx)
	movb	%bh, 2(%rdx)
	xorl	%eax, %ebx
	movb	%bl, 3(%rdx)
	movq	%rsi, %r8
	shrq	$56, %r8
	movb	%r8b, 4(%rdx)
	movq	%rsi, %r8
	shrq	$48, %r8
	movb	%r8b, 5(%rdx)
	shrq	$40, %rsi
	movb	%sil, 6(%rdx)
	xorl	%edi, %eax
	xorb	%cl, %al
	movb	%al, 7(%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
