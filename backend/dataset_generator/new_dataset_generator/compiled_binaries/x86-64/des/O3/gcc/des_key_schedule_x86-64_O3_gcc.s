	.file	"des_key_schedule.c"
	.text
	.p2align 4
	.globl	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
.LFB0:
	.cfi_startproc
	endbr64
	movabsq	$281474976710655, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rdi, %rax
	andq	%rcx, %rsi
	shrq	$60, %rax
	movq	%rsi, (%rdx)
	movq	%rdi, %rsi
	shrq	$4, %rsi
	movq	%rax, 120(%rdx)
	andq	%rcx, %rsi
	movq	%rsi, 8(%rdx)
	movq	%rdi, %rsi
	shrq	$8, %rsi
	andq	%rcx, %rsi
	movq	%rsi, 16(%rdx)
	movq	%rdi, %rsi
	shrq	$12, %rsi
	andq	%rsi, %rcx
	movq	%rcx, 24(%rdx)
	movq	%rdi, %rcx
	shrq	$16, %rcx
	movq	%rcx, 32(%rdx)
	movq	%rdi, %rcx
	shrq	$20, %rcx
	movq	%rcx, 40(%rdx)
	movq	%rdi, %rcx
	shrq	$24, %rcx
	movq	%rcx, 48(%rdx)
	movq	%rdi, %rcx
	shrq	$28, %rcx
	movq	%rcx, 56(%rdx)
	movq	%rdi, %rcx
	shrq	$32, %rcx
	movq	%rcx, 64(%rdx)
	movq	%rdi, %rcx
	shrq	$36, %rcx
	movq	%rcx, 72(%rdx)
	movq	%rdi, %rcx
	shrq	$40, %rcx
	movq	%rcx, 80(%rdx)
	movq	%rdi, %rcx
	shrq	$44, %rcx
	movq	%rcx, 88(%rdx)
	movq	%rdi, %rcx
	shrq	$48, %rcx
	movq	%rcx, 96(%rdx)
	movq	%rdi, %rcx
	shrq	$52, %rcx
	movq	%rcx, 104(%rdx)
	movq	%rdi, %rcx
	shrq	$56, %rcx
	movq	%rcx, 112(%rdx)
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
