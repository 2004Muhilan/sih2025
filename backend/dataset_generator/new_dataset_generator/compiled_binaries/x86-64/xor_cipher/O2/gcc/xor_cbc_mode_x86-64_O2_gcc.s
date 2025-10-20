	.file	"xor_cbc_mode.c"
	.text
	.p2align 4
	.globl	xor_cbc_mode
	.type	xor_cbc_mode, @function
xor_cbc_mode:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %r10
	testq	%rsi, %rsi
	je	.L1
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	(%r10,%rdx), %eax
	xorb	(%rdi,%rsi), %al
	xorl	%eax, %r8d
	movb	%r8b, (%rdi,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_cbc_mode, .-xor_cbc_mode
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
