	.file	"aes_sub_bytes.c"
	.text
	.p2align 4
	.globl	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rdx
	leaq	sbox(%rip), %rcx
	movzbl	9(%rdx), %esi
	movzbl	10(%rdx), %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzbl	13(%rdx), %r8d
	movzbl	14(%rdx), %r9d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movzbl	7(%rdi), %eax
	movzbl	(%rdi), %r11d
	movzbl	1(%rdi), %ebx
	movzbl	2(%rdi), %ebp
	movzbl	3(%rdi), %r12d
	movzbl	4(%rdi), %r13d
	movzbl	5(%rdi), %r14d
	movq	%rsi, -24(%rsp)
	movzbl	6(%rdi), %r15d
	movzbl	8(%rdi), %edi
	movq	%r10, -16(%rsp)
	movzbl	(%rcx,%rax), %eax
	movzbl	15(%rdx), %r10d
	movq	%rdi, -40(%rsp)
	movzbl	11(%rdx), %esi
	movzbl	12(%rdx), %edi
	movzbl	(%rcx,%r15), %r15d
	salq	$8, %rax
	movzbl	(%rcx,%r14), %r14d
	movzbl	(%rcx,%r13), %r13d
	orq	%r15, %rax
	movzbl	(%rcx,%r12), %r12d
	movzbl	(%rcx,%rbp), %ebp
	salq	$8, %rax
	movzbl	(%rcx,%rbx), %ebx
	movzbl	(%rcx,%r9), %r9d
	orq	%r14, %rax
	movzbl	(%rcx,%r8), %r8d
	movzbl	(%rcx,%rdi), %edi
	salq	$8, %rax
	movzbl	(%rcx,%rsi), %esi
	orq	%r13, %rax
	salq	$8, %rax
	orq	%r12, %rax
	salq	$8, %rax
	orq	%rbp, %rax
	salq	$8, %rax
	orq	%rbx, %rax
	movzbl	(%rcx,%r11), %ebx
	salq	$8, %rax
	movq	%rax, %r11
	movzbl	(%rcx,%r10), %eax
	movq	-16(%rsp), %r10
	orq	%rbx, %r11
	salq	$8, %rax
	orq	%r9, %rax
	salq	$8, %rax
	orq	%r8, %rax
	salq	$8, %rax
	orq	%rdi, %rax
	movq	-40(%rsp), %rdi
	movq	%r11, -40(%rsp)
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	(%rcx,%r10), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movq	-24(%rsp), %rsi
	salq	$8, %rax
	movzbl	(%rcx,%rsi), %esi
	movzbl	(%rcx,%rdi), %ecx
	orq	%rsi, %rax
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rax, -32(%rsp)
	movdqa	-40(%rsp), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movups	%xmm0, (%rdx)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	aes_sub_bytes, .-aes_sub_bytes
	.p2align 4
	.globl	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rdx
	leaq	inv_sbox.0(%rip), %rcx
	movzbl	9(%rdx), %esi
	movzbl	10(%rdx), %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzbl	13(%rdx), %r8d
	movzbl	14(%rdx), %r9d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movzbl	7(%rdi), %eax
	movzbl	(%rdi), %r11d
	movzbl	1(%rdi), %ebx
	movzbl	2(%rdi), %ebp
	movzbl	3(%rdi), %r12d
	movzbl	4(%rdi), %r13d
	movzbl	5(%rdi), %r14d
	movq	%rsi, -24(%rsp)
	movzbl	6(%rdi), %r15d
	movzbl	8(%rdi), %edi
	movq	%r10, -16(%rsp)
	movzbl	(%rcx,%rax), %eax
	movzbl	15(%rdx), %r10d
	movq	%rdi, -40(%rsp)
	movzbl	11(%rdx), %esi
	movzbl	12(%rdx), %edi
	movzbl	(%rcx,%r15), %r15d
	salq	$8, %rax
	movzbl	(%rcx,%r14), %r14d
	movzbl	(%rcx,%r13), %r13d
	orq	%r15, %rax
	movzbl	(%rcx,%r12), %r12d
	movzbl	(%rcx,%rbp), %ebp
	salq	$8, %rax
	movzbl	(%rcx,%rbx), %ebx
	movzbl	(%rcx,%r9), %r9d
	orq	%r14, %rax
	movzbl	(%rcx,%r8), %r8d
	movzbl	(%rcx,%rdi), %edi
	salq	$8, %rax
	movzbl	(%rcx,%rsi), %esi
	orq	%r13, %rax
	salq	$8, %rax
	orq	%r12, %rax
	salq	$8, %rax
	orq	%rbp, %rax
	salq	$8, %rax
	orq	%rbx, %rax
	movzbl	(%rcx,%r11), %ebx
	salq	$8, %rax
	movq	%rax, %r11
	movzbl	(%rcx,%r10), %eax
	movq	-16(%rsp), %r10
	orq	%rbx, %r11
	salq	$8, %rax
	orq	%r9, %rax
	salq	$8, %rax
	orq	%r8, %rax
	salq	$8, %rax
	orq	%rdi, %rax
	movq	-40(%rsp), %rdi
	movq	%r11, -40(%rsp)
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	(%rcx,%r10), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movq	-24(%rsp), %rsi
	salq	$8, %rax
	movzbl	(%rcx,%rsi), %esi
	movzbl	(%rcx,%rdi), %ecx
	orq	%rsi, %rax
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rax, -32(%rsp)
	movdqa	-40(%rsp), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movups	%xmm0, (%rdx)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align 32
	.type	inv_sbox.0, @object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.string	"R\tj\32506\2458"
	.zero	247
	.align 32
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	239
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
