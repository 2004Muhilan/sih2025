	.file	"rc4_ksa.c"
	.text
	.globl	rc4_ksa
	.type	rc4_ksa, @function
rc4_ksa:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movq	%rdx, %r9
	movl	$0, %eax
.L2:
	movb	%al, (%rdi,%rax)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L2
	movl	$0, %ecx
	movl	$0, %esi
.L3:
	movzbl	(%rdi,%rcx), %r8d
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%r9
	addb	(%r10,%rdx), %sil
	addl	%r8d, %esi
	movzbl	%sil, %eax
	movl	%eax, %esi
	movzbl	%al, %eax
	addq	%rdi, %rax
	movzbl	(%rax), %edx
	movb	%dl, (%rdi,%rcx)
	movb	%r8b, (%rax)
	addq	$1, %rcx
	cmpq	$256, %rcx
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_ksa, .-rc4_ksa
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
