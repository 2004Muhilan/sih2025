	.file	"sha1_round3.c"
	.text
	.globl	sha1_round3
	.type	sha1_round3, @function
sha1_round3:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edx, %eax
	orl	%ecx, %eax
	andl	%esi, %eax
	andl	%ecx, %edx
	orl	%edx, %eax
	leal	-1894007588(%r8,%r9), %edx
	roll	$5, %edi
	addl	%edi, %edx
	addl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round3, .-sha1_round3
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
