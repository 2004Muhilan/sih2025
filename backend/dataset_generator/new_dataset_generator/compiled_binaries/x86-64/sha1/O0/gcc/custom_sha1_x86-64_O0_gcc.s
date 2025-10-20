	.file	"custom_sha1.c"
	.text
	.globl	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-392(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -380(%rbp)
	movq	-392(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -376(%rbp)
	movq	-392(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-392(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -368(%rbp)
	movq	-392(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -364(%rbp)
	movl	$0, -360(%rbp)
	jmp	.L2
.L3:
	movl	-360(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-400(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-360(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-400(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-360(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-400(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-360(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	3(%rax), %rcx
	movq	-400(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-360(%rbp), %eax
	cltq
	movl	%edx, -336(%rbp,%rax,4)
	addl	$1, -360(%rbp)
.L2:
	cmpl	$15, -360(%rbp)
	jle	.L3
	movl	$16, -356(%rbp)
	jmp	.L4
.L5:
	movl	-356(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-336(%rbp,%rax,4), %edx
	movl	-356(%rbp), %eax
	subl	$8, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%eax, %edx
	movl	-356(%rbp), %eax
	subl	$14, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%eax, %edx
	movl	-356(%rbp), %eax
	subl	$16, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%edx, %eax
	roll	%eax
	movl	%eax, %edx
	movl	-356(%rbp), %eax
	cltq
	movl	%edx, -336(%rbp,%rax,4)
	addl	$1, -356(%rbp)
.L4:
	cmpl	$79, -356(%rbp)
	jle	.L5
	movl	$0, -352(%rbp)
	jmp	.L6
.L11:
	cmpl	$19, -352(%rbp)
	jg	.L7
	movl	-376(%rbp), %eax
	andl	-372(%rbp), %eax
	movl	%eax, %edx
	movl	-376(%rbp), %eax
	notl	%eax
	andl	-368(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -348(%rbp)
	movl	$1518500249, -344(%rbp)
	jmp	.L8
.L7:
	cmpl	$39, -352(%rbp)
	jg	.L9
	movl	-376(%rbp), %eax
	xorl	-372(%rbp), %eax
	xorl	-368(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	$1859775393, -344(%rbp)
	jmp	.L8
.L9:
	cmpl	$59, -352(%rbp)
	jg	.L10
	movl	-372(%rbp), %eax
	orl	-368(%rbp), %eax
	andl	-376(%rbp), %eax
	movl	%eax, %edx
	movl	-372(%rbp), %eax
	andl	-368(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -348(%rbp)
	movl	$-1894007588, -344(%rbp)
	jmp	.L8
.L10:
	movl	-376(%rbp), %eax
	xorl	-372(%rbp), %eax
	xorl	-368(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	$-899497514, -344(%rbp)
.L8:
	movl	-380(%rbp), %eax
	roll	$5, %eax
	movl	%eax, %edx
	movl	-348(%rbp), %eax
	addl	%eax, %edx
	movl	-364(%rbp), %eax
	addl	%eax, %edx
	movl	-344(%rbp), %eax
	addl	%eax, %edx
	movl	-352(%rbp), %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -340(%rbp)
	movl	-368(%rbp), %eax
	movl	%eax, -364(%rbp)
	movl	-372(%rbp), %eax
	movl	%eax, -368(%rbp)
	movl	-376(%rbp), %eax
	rorl	$2, %eax
	movl	%eax, -372(%rbp)
	movl	-380(%rbp), %eax
	movl	%eax, -376(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, -380(%rbp)
	addl	$1, -352(%rbp)
.L6:
	cmpl	$79, -352(%rbp)
	jle	.L11
	movq	-392(%rbp), %rax
	movl	(%rax), %edx
	movl	-380(%rbp), %eax
	addl	%eax, %edx
	movq	-392(%rbp), %rax
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$4, %rax
	movl	-376(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$8, %rax
	movl	-372(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$12, %rax
	movl	-368(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$16, %rax
	movl	-364(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_transform, .-sha1_transform
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1732584193, (%rax)
	movq	-8(%rbp), %rax
	movl	$-271733879, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$-1732584194, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$271733878, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$-1009589776, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sha1_init, .-sha1_init
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
