	.file	"hmac_sha256.c"
	.text
	.globl	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movl	$54, %r10d
	movl	$92, %r9d
	jmp	.L3
.L6:
	movl	%r10d, %ecx
	movl	%r9d, %edx
.L2:
	movb	%cl, (%rsp,%rax)
	movb	%dl, 64(%rsp,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	je	.L10
.L3:
	cmpq	%rsi, %rax
	jnb	.L6
	movzbl	(%rdi,%rax), %edx
	movl	%edx, %ecx
	xorl	$54, %ecx
	xorl	$92, %edx
	jmp	.L2
.L10:
	movl	$0, %eax
	leaq	64(%rsp), %rcx
.L4:
	movzbl	(%rsp,%rax), %edx
	xorb	(%rax,%rcx), %dl
	movb	%dl, (%r8,%rax)
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.L4
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
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
