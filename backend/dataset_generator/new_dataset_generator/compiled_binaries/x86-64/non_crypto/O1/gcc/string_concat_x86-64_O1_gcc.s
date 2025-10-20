	.file	"string_concat.c"
	.text
	.globl	string_concat
	.type	string_concat, @function
string_concat:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	testq	%rdx, %rdx
	je	.L18
.L2:
	cmpb	$0, (%rdi,%rax)
	je	.L19
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L2
	jmp	.L4
.L19:
	leaq	-1(%rdx), %rcx
	cmpq	%rcx, %rax
	jnb	.L11
.L9:
	movq	%rax, %rdx
	subq	%rax, %rsi
.L5:
	movzbl	(%rsi,%rdx), %eax
	testb	%al, %al
	je	.L4
	movb	%al, (%rdi,%rdx)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	.L5
	movq	%rcx, %rdx
.L4:
	movb	$0, (%rdi,%rdx)
	ret
.L11:
	movq	%rax, %rdx
	jmp	.L4
.L18:
	leaq	-1(%rdx), %rcx
	movq	%rdx, %rax
	jmp	.L9
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
