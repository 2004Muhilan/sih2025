	.file	"linked_list_insert.c"
	.text
	.globl	linked_list_insert
	.type	linked_list_insert, @function
linked_list_insert:
.LFB0:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L1
.L3:
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	linked_list_insert, .-linked_list_insert
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
