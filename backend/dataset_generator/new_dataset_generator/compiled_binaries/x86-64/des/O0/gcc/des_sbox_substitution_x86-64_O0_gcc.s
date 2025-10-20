	.file	"des_sbox_substitution.c"
	.text
	.section	.rodata
	.align 32
	.type	S1, @object
	.size	S1, 64
S1:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.ascii	"\007"
	.string	""
	.ascii	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.string	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.text
	.globl	des_sbox
	.type	des_sbox, @function
des_sbox:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %eax
	sarl	$4, %eax
	andl	$2, %eax
	movl	%eax, %edx
	movzbl	-20(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movzbl	-20(%rbp), %eax
	sarl	%eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	leaq	S1(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	des_sbox, .-des_sbox
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
