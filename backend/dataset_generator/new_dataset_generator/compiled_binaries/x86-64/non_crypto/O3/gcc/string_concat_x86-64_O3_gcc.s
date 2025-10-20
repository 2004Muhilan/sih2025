	.file	"string_concat.c"
	.text
	.p2align 4
	.globl	string_concat
	.type	string_concat, @function
string_concat:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.L2
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L14
.L2:
	cmpb	$0, (%rdi,%rax)
	jne	.L5
	leaq	-1(%rdx), %rcx
	cmpq	%rcx, %rax
	jnb	.L12
.L3:
	subq	%rax, %rsi
	subq	$1, %rdx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	movb	%cl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L12
.L6:
	movzbl	(%rsi,%rax), %ecx
	testb	%cl, %cl
	jne	.L7
.L12:
	addq	%rax, %rdi
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	addq	%rdx, %rdi
	movb	$0, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
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
