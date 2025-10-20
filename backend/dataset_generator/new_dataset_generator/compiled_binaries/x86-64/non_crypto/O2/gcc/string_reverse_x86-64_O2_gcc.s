	.file	"string_reverse.c"
	.text
	.p2align 4
	.globl	string_reverse
	.type	string_reverse, @function
string_reverse:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$1, %rsi
	je	.L1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	movzbl	(%rdi,%rax), %edx
	movzbl	(%rdi,%rsi), %ecx
	movb	%cl, (%rdi,%rax)
	addq	$1, %rax
	movb	%dl, (%rdi,%rsi)
	subq	$1, %rsi
	cmpq	%rsi, %rax
	jb	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	string_reverse, .-string_reverse
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
