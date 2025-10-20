	.file	"hmac_verify.c"
	.text
	.globl	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.L2:
	cmpq	%rdx, %rax
	je	.L5
	movb	(%rdi,%rax), %r8b
	xorb	(%rsi,%rax), %r8b
	incq	%rax
	orl	%r8d, %ecx
	jmp	.L2
.L5:
	testb	%cl, %cl
	sete	%al
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
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
