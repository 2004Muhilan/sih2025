	.file	"hmac_sha256.c"
	.text
	.globl	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -152(%rbp)
	jmp	.L2
.L7:
	movq	-152(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jnb	.L3
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$54, %eax
	jmp	.L4
.L3:
	movl	$54, %eax
.L4:
	leaq	-144(%rbp), %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	movq	-152(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jnb	.L5
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$92, %eax
	jmp	.L6
.L5:
	movl	$92, %eax
.L6:
	leaq	-80(%rbp), %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -152(%rbp)
.L2:
	cmpq	$63, -152(%rbp)
	jbe	.L7
	movl	$0, -156(%rbp)
	jmp	.L8
.L9:
	movl	-156(%rbp), %eax
	cltq
	movzbl	-144(%rbp,%rax), %esi
	movl	-156(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %ecx
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -156(%rbp)
.L8:
	cmpl	$31, -156(%rbp)
	jle	.L9
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
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
