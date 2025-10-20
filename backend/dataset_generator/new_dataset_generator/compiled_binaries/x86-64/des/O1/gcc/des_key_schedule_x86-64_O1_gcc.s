	.file	"des_key_schedule.c"
	.text
	.globl	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	movabsq	$281474976710655, %r8
.L2:
	leal	0(,%rax,4), %ecx
	movq	%rdi, %rdx
	shrq	%cl, %rdx
	andq	%r8, %rdx
	movq	%rdx, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
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
