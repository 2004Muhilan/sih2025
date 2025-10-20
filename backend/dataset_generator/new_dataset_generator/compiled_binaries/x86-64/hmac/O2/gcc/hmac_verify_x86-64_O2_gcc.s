	.file	"hmac_verify.c"
	.text
	.p2align 4
	.globl	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
.LFB0:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L4
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3:
	movzbl	(%rdi,%rax), %ecx
	xorb	(%rsi,%rax), %cl
	addq	$1, %rax
	orl	%ecx, %r8d
	cmpq	%rax, %rdx
	jne	.L3
	testb	%r8b, %r8b
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$1, %eax
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
