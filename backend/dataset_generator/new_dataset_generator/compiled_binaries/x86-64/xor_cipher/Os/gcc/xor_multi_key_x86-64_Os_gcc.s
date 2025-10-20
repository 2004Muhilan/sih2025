	.file	"xor_multi_key.c"
	.text
	.globl	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %r10
	xorl	%esi, %esi
.L2:
	cmpq	%r9, %rsi
	je	.L5
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%r8
	movb	(%r10,%rdx), %al
	xorb	(%rdi,%rsi), %al
	movb	%al, (%rdi,%rsi)
	xorb	(%rcx,%rdx), %al
	movb	%al, (%rdi,%rsi)
	incq	%rsi
	jmp	.L2
.L5:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_multi_key, .-xor_multi_key
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
