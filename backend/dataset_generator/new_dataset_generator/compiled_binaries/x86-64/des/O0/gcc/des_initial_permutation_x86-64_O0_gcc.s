	.file	"des_initial_permutation.c"
	.text
	.section	.rodata
	.align 32
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.text
	.globl	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L4:
	movl	-12(%rbp), %eax
	cltq
	leaq	IP(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	$64, %edx
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L3
	movl	-12(%rbp), %eax
	movabsq	$-9223372036854775808, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -8(%rbp)
.L3:
	addl	$1, -12(%rbp)
.L2:
	cmpl	$63, -12(%rbp)
	jle	.L4
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
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
