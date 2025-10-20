	.file	"hmac_key_derivation.c"
	.text
	.p2align 4
	.globl	hmac_key_derive
	.type	hmac_key_derive, @function
hmac_key_derive:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %r10
	movq	%rdx, %r11
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rcx, %rax
	movq	%rdx, %r9
	xorl	%edx, %edx
	divq	%rsi
	movzbl	(%r10,%r9), %eax
	xorb	(%r11,%rdx), %al
	movb	%al, (%r8,%rcx)
	addq	$1, %rcx
	cmpq	$32, %rcx
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
