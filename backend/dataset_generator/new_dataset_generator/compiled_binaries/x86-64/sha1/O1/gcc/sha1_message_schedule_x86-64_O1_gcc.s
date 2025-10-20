	.file	"sha1_message_schedule.c"
	.text
	.globl	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
.L2:
	movl	(%rdi,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.L2
	movq	%rsi, %rdx
	leaq	256(%rsi), %rcx
.L3:
	movl	52(%rdx), %eax
	xorl	32(%rdx), %eax
	xorl	8(%rdx), %eax
	xorl	(%rdx), %eax
	roll	%eax
	movl	%eax, 64(%rdx)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
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
