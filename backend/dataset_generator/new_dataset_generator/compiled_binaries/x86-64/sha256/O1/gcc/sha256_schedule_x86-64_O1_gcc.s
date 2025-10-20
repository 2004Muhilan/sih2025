	.file	"sha256_schedule.c"
	.text
	.globl	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
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
	leaq	192(%rsi), %rdi
.L3:
	movl	4(%rdx), %ecx
	movl	56(%rdx), %esi
	movl	%ecx, %eax
	rorl	$7, %eax
	movl	%ecx, %r8d
	roll	$14, %r8d
	xorl	%r8d, %eax
	shrl	$3, %ecx
	xorl	%ecx, %eax
	movl	36(%rdx), %ecx
	addl	(%rdx), %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	roll	$15, %ecx
	movl	%esi, %r8d
	roll	$13, %r8d
	xorl	%r8d, %ecx
	shrl	$10, %esi
	xorl	%esi, %ecx
	addl	%ecx, %eax
	movl	%eax, 64(%rdx)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
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
