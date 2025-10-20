	.file	"sha1_message_schedule.c"
	.text
	.globl	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L2:
	movl	(%rdi,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.L2
	leaq	256(%rsi), %rdx
.L3:
	movl	52(%rsi), %eax
	xorl	32(%rsi), %eax
	addq	$4, %rsi
	xorl	4(%rsi), %eax
	xorl	-4(%rsi), %eax
	roll	%eax
	movl	%eax, 60(%rsi)
	cmpq	%rsi, %rdx
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
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
