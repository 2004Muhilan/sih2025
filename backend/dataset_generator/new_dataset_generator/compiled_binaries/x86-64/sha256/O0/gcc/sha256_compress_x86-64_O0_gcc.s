	.file	"sha256_compress.c"
	.text
	.globl	sha256_compress
	.type	sha256_compress, @function
sha256_compress:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -340(%rbp)
	jmp	.L2
.L3:
	movl	-340(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-340(%rbp), %eax
	cltq
	movl	%edx, -272(%rbp,%rax,4)
	addl	$1, -340(%rbp)
.L2:
	cmpl	$15, -340(%rbp)
	jle	.L3
	movl	$16, -336(%rbp)
	jmp	.L4
.L5:
	movl	-336(%rbp), %eax
	subl	$15, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	rorl	$7, %eax
	movl	%eax, %edx
	movl	-336(%rbp), %eax
	subl	$15, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	roll	$14, %eax
	xorl	%eax, %edx
	movl	-336(%rbp), %eax
	subl	$15, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	shrl	$3, %eax
	xorl	%edx, %eax
	movl	%eax, -280(%rbp)
	movl	-336(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	roll	$15, %eax
	movl	%eax, %edx
	movl	-336(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	roll	$13, %eax
	xorl	%eax, %edx
	movl	-336(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	shrl	$10, %eax
	xorl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-336(%rbp), %eax
	subl	$16, %eax
	cltq
	movl	-272(%rbp,%rax,4), %edx
	movl	-280(%rbp), %eax
	addl	%eax, %edx
	movl	-336(%rbp), %eax
	subl	$7, %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%eax, %edx
	movl	-336(%rbp), %eax
	cltq
	movl	%edx, -272(%rbp,%rax,4)
	addl	$1, -336(%rbp)
.L4:
	cmpl	$63, -336(%rbp)
	jle	.L5
	movq	-360(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -332(%rbp)
	movq	-360(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -328(%rbp)
	movq	-360(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -324(%rbp)
	movq	-360(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -320(%rbp)
	movq	-360(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -316(%rbp)
	movq	-360(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -312(%rbp)
	movq	-360(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -308(%rbp)
	movq	-360(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -304(%rbp)
	movl	$0, -300(%rbp)
	jmp	.L6
.L7:
	movl	-316(%rbp), %eax
	rorl	$6, %eax
	movl	%eax, %edx
	movl	-316(%rbp), %eax
	rorl	$11, %eax
	xorl	%eax, %edx
	movl	-316(%rbp), %eax
	roll	$7, %eax
	xorl	%edx, %eax
	movl	%eax, -296(%rbp)
	movl	-304(%rbp), %edx
	movl	-296(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-316(%rbp), %eax
	andl	-312(%rbp), %eax
	movl	%eax, %edx
	movl	-316(%rbp), %eax
	notl	%eax
	andl	-308(%rbp), %eax
	xorl	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	-300(%rbp), %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	addl	%edx, %eax
	addl	$1116352408, %eax
	movl	%eax, -292(%rbp)
	movl	-332(%rbp), %eax
	rorl	$2, %eax
	movl	%eax, %edx
	movl	-332(%rbp), %eax
	rorl	$13, %eax
	xorl	%eax, %edx
	movl	-332(%rbp), %eax
	roll	$10, %eax
	xorl	%edx, %eax
	movl	%eax, -288(%rbp)
	movl	-328(%rbp), %eax
	xorl	-324(%rbp), %eax
	andl	-332(%rbp), %eax
	movl	%eax, %edx
	movl	-328(%rbp), %eax
	andl	-324(%rbp), %eax
	xorl	%eax, %edx
	movl	-288(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -284(%rbp)
	movl	-308(%rbp), %eax
	movl	%eax, -304(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-320(%rbp), %edx
	movl	-292(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -316(%rbp)
	movl	-324(%rbp), %eax
	movl	%eax, -320(%rbp)
	movl	-328(%rbp), %eax
	movl	%eax, -324(%rbp)
	movl	-332(%rbp), %eax
	movl	%eax, -328(%rbp)
	movl	-292(%rbp), %edx
	movl	-284(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -332(%rbp)
	addl	$1, -300(%rbp)
.L6:
	cmpl	$63, -300(%rbp)
	jle	.L7
	movq	-360(%rbp), %rax
	movl	(%rax), %edx
	movl	-332(%rbp), %eax
	addl	%eax, %edx
	movq	-360(%rbp), %rax
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$4, %rax
	movl	-328(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$8, %rax
	movl	-324(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$12, %rax
	movl	-320(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$16, %rax
	movl	-316(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$20, %rax
	movl	-312(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$24, %rax
	movl	-308(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %ecx
	movq	-360(%rbp), %rax
	addq	$28, %rax
	movl	-304(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
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
