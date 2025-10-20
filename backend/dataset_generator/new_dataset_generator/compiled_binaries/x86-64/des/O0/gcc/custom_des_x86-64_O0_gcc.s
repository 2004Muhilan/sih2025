	.file	"custom_des.c"
	.text
	.section	.rodata
	.align 32
	.type	sbox, @object
	.size	sbox, 512
sbox:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.string	"\007"
	.string	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.zero	448
	.text
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L2
.L3:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$7, %eax
	subl	-32(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -8(%rbp)
	addl	$1, -32(%rbp)
.L2:
	cmpl	$7, -32(%rbp)
	jle	.L3
	movl	$0, -28(%rbp)
	jmp	.L4
.L5:
	movq	-8(%rbp), %rax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	xorl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -28(%rbp)
.L4:
	cmpl	$15, -28(%rbp)
	jle	.L5
	movl	$0, -24(%rbp)
	jmp	.L6
.L7:
	movl	$7, %eax
	subl	-24(%rbp), %eax
	sall	$3, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -24(%rbp)
.L6:
	cmpl	$7, -24(%rbp)
	jle	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	des_encrypt, .-des_encrypt
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
