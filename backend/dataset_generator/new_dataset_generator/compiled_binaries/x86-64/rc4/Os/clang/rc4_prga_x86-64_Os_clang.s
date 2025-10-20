	.text
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.type	rc4_prga,@function
rc4_prga:                               # @rc4_prga
	.cfi_startproc
# %bb.0:
	movb	(%rsi), %al
	incb	%al
	movb	%al, (%rsi)
	movzbl	%al, %eax
	movb	(%rdi,%rax), %al
	addb	(%rdx), %al
	movb	%al, (%rdx)
	movzbl	(%rsi), %ecx
	movb	(%rdi,%rcx), %r8b
	movzbl	%al, %eax
	movb	(%rdi,%rax), %al
	movb	%al, (%rdi,%rcx)
	movzbl	(%rdx), %eax
	movb	%r8b, (%rdi,%rax)
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	movb	(%rdi,%rcx), %cl
	addb	(%rdi,%rax), %cl
	movzbl	%cl, %eax
	movb	(%rdi,%rax), %al
	retq
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
