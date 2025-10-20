	.file	"hmac_md5.c"
	.text
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
	leaq	8(%rsp), %r9
	leaq	72(%rsp), %rcx
.L4:
	movb	$54, %dl
	cmpq	%rsi, %rax
	jnb	.L2
	movb	(%rdi,%rax), %dl
	xorl	$54, %edx
.L2:
	movb	%dl, (%rax,%r9)
	movb	$92, %dl
	cmpq	%rsi, %rax
	jnb	.L3
	movb	(%rdi,%rax), %dl
	xorl	$92, %edx
.L3:
	movb	%dl, (%rax,%rcx)
	incq	%rax
	cmpq	$64, %rax
	jne	.L4
	xorl	%eax, %eax
.L5:
	movb	(%r9,%rax), %dl
	xorb	(%rcx,%rax), %dl
	movb	%dl, (%r8,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L5
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	ret
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
