	.file	"rsa_crt.c"
	.text
	.globl	rsa_crt_decrypt
	.type	rsa_crt_decrypt, @function
rsa_crt_decrypt:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %rsi
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rsi
	imulq	%rcx, %rdx
	movq	%rdx, %r8
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	imulq	%rsi, %rdx
	leaq	(%r8,%rdx), %rax
	imulq	%rcx, %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
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
