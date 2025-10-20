	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.p2align	4, 0x90
	.type	rc4_prga,@function
rc4_prga:                               # @rc4_prga
	.cfi_startproc
# %bb.0:
	movzbl	(%rsi), %eax
	incb	%al
	movb	%al, (%rsi)
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %eax
	addb	(%rdx), %al
	movb	%al, (%rdx)
	movzbl	(%rsi), %ecx
	movzbl	(%rdi,%rcx), %r8d
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %eax
	movb	%al, (%rdi,%rcx)
	movzbl	(%rdx), %eax
	movb	%r8b, (%rdi,%rax)
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	movzbl	(%rdi,%rcx), %ecx
	addb	(%rdi,%rax), %cl
	movzbl	%cl, %eax
	movzbl	(%rdi,%rax), %eax
	retq
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
