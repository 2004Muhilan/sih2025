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
	movq	%rsp, %r9
	leaq	64(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L5:
	cmpq	%rsi, %rax
	jnb	.L2
	movzbl	(%rdi,%rax), %edx
	movl	%edx, %r10d
	xorl	$92, %edx
	xorl	$54, %r10d
	movb	%dl, (%rcx,%rax)
	movb	%r10b, (%r9,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L5
.L4:
	movdqa	(%rsp), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, (%r8)
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L12
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	movb	$54, (%r9,%rax)
	movb	$92, (%rcx,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L5
	jmp	.L4
.L12:
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
