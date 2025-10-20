	.file	"sha1_compress.c"
	.text
	.globl	sha1_compress
	.type	sha1_compress, @function
sha1_compress:
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
	movl	$0, -380(%rbp)
	jmp	.L2
.L3:
	movl	-380(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-400(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-380(%rbp), %eax
	cltq
	movl	%edx, -336(%rbp,%rax,4)
	addl	$1, -380(%rbp)
.L2:
	cmpl	$15, -380(%rbp)
	jle	.L3
	movl	$16, -376(%rbp)
	jmp	.L4
.L5:
	movl	-376(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-336(%rbp,%rax,4), %edx
	movl	-376(%rbp), %eax
	subl	$8, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%eax, %edx
	movl	-376(%rbp), %eax
	subl	$14, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%eax, %edx
	movl	-376(%rbp), %eax
	subl	$16, %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	xorl	%edx, %eax
	roll	%eax
	movl	%eax, %edx
	movl	-376(%rbp), %eax
	cltq
	movl	%edx, -336(%rbp,%rax,4)
	addl	$1, -376(%rbp)
.L4:
	cmpl	$79, -376(%rbp)
	jle	.L5
	movq	-392(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-392(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -368(%rbp)
	movq	-392(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -364(%rbp)
	movq	-392(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -360(%rbp)
	movq	-392(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -356(%rbp)
	movl	$0, -352(%rbp)
	jmp	.L6
.L11:
	cmpl	$19, -352(%rbp)
	jg	.L7
	movl	-368(%rbp), %eax
	andl	-364(%rbp), %eax
	movl	%eax, %edx
	movl	-368(%rbp), %eax
	notl	%eax
	andl	-360(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -348(%rbp)
	movl	$1518500249, -344(%rbp)
	jmp	.L8
.L7:
	cmpl	$39, -352(%rbp)
	jg	.L9
	movl	-368(%rbp), %eax
	xorl	-364(%rbp), %eax
	xorl	-360(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	$1859775393, -344(%rbp)
	jmp	.L8
.L9:
	cmpl	$59, -352(%rbp)
	jg	.L10
	movl	-364(%rbp), %eax
	orl	-360(%rbp), %eax
	andl	-368(%rbp), %eax
	movl	%eax, %edx
	movl	-364(%rbp), %eax
	andl	-360(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -348(%rbp)
	movl	$-1894007588, -344(%rbp)
	jmp	.L8
.L10:
	movl	-368(%rbp), %eax
	xorl	-364(%rbp), %eax
	xorl	-360(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	$-899497514, -344(%rbp)
.L8:
	movl	-372(%rbp), %eax
	roll	$5, %eax
	movl	%eax, %edx
	movl	-348(%rbp), %eax
	addl	%eax, %edx
	movl	-356(%rbp), %eax
	addl	%eax, %edx
	movl	-344(%rbp), %eax
	addl	%eax, %edx
	movl	-352(%rbp), %eax
	cltq
	movl	-336(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -340(%rbp)
	movl	-360(%rbp), %eax
	movl	%eax, -356(%rbp)
	movl	-364(%rbp), %eax
	movl	%eax, -360(%rbp)
	movl	-368(%rbp), %eax
	rorl	$2, %eax
	movl	%eax, -364(%rbp)
	movl	-372(%rbp), %eax
	movl	%eax, -368(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, -372(%rbp)
	addl	$1, -352(%rbp)
.L6:
	cmpl	$79, -352(%rbp)
	jle	.L11
	movq	-392(%rbp), %rax
	movl	(%rax), %edx
	movl	-372(%rbp), %eax
	addl	%eax, %edx
	movq	-392(%rbp), %rax
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$4, %rax
	movl	-368(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$8, %rax
	movl	-364(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$12, %rax
	movl	-360(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-392(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-392(%rbp), %rax
	addq	$16, %rax
	movl	-356(%rbp), %edx
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
	.size	sha1_compress, .-sha1_compress
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
