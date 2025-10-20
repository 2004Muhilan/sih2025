	.file	"rsa_miller_rabin.c"
	.text
	.globl	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$1, -24(%rbp)
	ja	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpq	$2, -24(%rbp)
	je	.L4
	cmpq	$3, -24(%rbp)
	jne	.L5
.L4:
	movl	$1, %eax
	jmp	.L3
.L5:
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L3
.L6:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
.L7:
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L8
	movl	$1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
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
