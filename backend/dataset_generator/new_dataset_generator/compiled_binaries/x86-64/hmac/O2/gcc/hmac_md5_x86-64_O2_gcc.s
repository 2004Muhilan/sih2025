	.file	"hmac_md5.c"
	.text
	.p2align 4
	.globl	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r10
	leaq	64(%rsp), %r9
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%rdi,%rax), %edx
	movl	%edx, %ecx
	xorl	$92, %edx
	xorl	$54, %ecx
.L2:
	movb	%cl, (%r10,%rax)
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	je	.L9
.L3:
	cmpq	%rsi, %rax
	jb	.L10
	movl	$54, %ecx
	movl	$92, %edx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	movdqa	(%rsp), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, (%r8)
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
	.size	hmac_md5, .-hmac_md5
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
