	.file	"sha256_schedule.c"
	.text
	.globl	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
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
	leaq	192(%rsi), %rdi
.L3:
	movl	4(%rsi), %edx
	movl	56(%rsi), %ecx
	addq	$4, %rsi
	movl	%edx, %eax
	movl	%edx, %r8d
	shrl	$3, %edx
	roll	$14, %r8d
	rorl	$7, %eax
	xorl	%r8d, %eax
	movl	%ecx, %r8d
	xorl	%edx, %eax
	movl	32(%rsi), %edx
	addl	-4(%rsi), %edx
	roll	$13, %r8d
	addl	%edx, %eax
	movl	%ecx, %edx
	shrl	$10, %ecx
	roll	$15, %edx
	xorl	%r8d, %edx
	xorl	%ecx, %edx
	addl	%edx, %eax
	movl	%eax, 60(%rsi)
	cmpq	%rsi, %rdi
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
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
