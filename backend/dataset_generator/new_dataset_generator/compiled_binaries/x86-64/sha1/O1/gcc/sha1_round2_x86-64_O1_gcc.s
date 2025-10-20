	.file	"sha1_round2.c"
	.text
	.globl	sha1_round2
	.type	sha1_round2, @function
sha1_round2:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%ecx, %edx
	xorl	%esi, %edx
	leal	1859775393(%r8,%r9), %eax
	addl	%eax, %edx
	roll	$5, %edi
	leal	(%rdx,%rdi), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round2, .-sha1_round2
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
