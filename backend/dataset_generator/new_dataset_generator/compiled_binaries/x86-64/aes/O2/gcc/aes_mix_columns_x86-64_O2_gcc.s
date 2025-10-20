	.file	"aes_mix_columns.c"
	.text
	.p2align 4
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %rcx
	leaq	16(%rdi), %rsi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
.L18:
	movzbl	(%rcx), %edi
	movzbl	1(%rcx), %r8d
	movl	$8, %ebp
	xorl	%r11d, %r11d
	movzbl	2(%rcx), %r9d
	movzbl	3(%rcx), %edx
	movl	$2, %ebx
	movl	%edi, %r10d
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%ebx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %r11d
	leal	(%r10,%r10), %eax
	movl	%eax, %r12d
	xorl	$27, %r12d
	testb	%r10b, %r10b
	cmovs	%r12d, %eax
	shrb	%bl
	movl	%eax, %r10d
	subl	$1, %ebp
	jne	.L3
	movl	%r8d, %r10d
	movl	$8, %ebp
	xorl	%r12d, %r12d
	movl	$3, %ebx
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ebx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %r12d
	leal	(%r10,%r10), %eax
	movl	%eax, %r13d
	xorl	$27, %r13d
	testb	%r10b, %r10b
	cmovs	%r13d, %eax
	shrb	%bl
	movl	%eax, %r10d
	subl	$1, %ebp
	jne	.L5
	movl	%r9d, %eax
	movl	%r8d, %r10d
	movl	$8, %ebp
	movl	$2, %ebx
	xorl	%edx, %eax
	xorl	%r11d, %eax
	xorl	%r11d, %r11d
	xorl	%r12d, %eax
	movb	%al, (%rcx)
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%ebx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %r11d
	leal	(%r10,%r10), %eax
	movl	%eax, %r12d
	xorl	$27, %r12d
	testb	%r10b, %r10b
	cmovs	%r12d, %eax
	shrb	%bl
	movl	%eax, %r10d
	subl	$1, %ebp
	jne	.L7
	movl	%edi, %r13d
	movl	%r9d, %r10d
	movl	$8, %ebp
	xorl	%r12d, %r12d
	xorl	%edx, %r13d
	movl	$3, %ebx
	.p2align 4,,10
	.p2align 3
.L9:
	movl	%ebx, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %r12d
	leal	(%r10,%r10), %eax
	movl	%eax, %r14d
	xorl	$27, %r14d
	testb	%r10b, %r10b
	cmovs	%r14d, %eax
	shrb	%bl
	movl	%eax, %r10d
	subl	$1, %ebp
	jne	.L9
	xorl	%r11d, %r13d
	movl	%r9d, %r10d
	movl	$8, %ebx
	xorl	%ebp, %ebp
	xorl	%r12d, %r13d
	movl	%edi, %r12d
	movl	$2, %r11d
	movb	%r13b, 1(%rcx)
	xorl	%r8d, %r12d
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%r11d, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %ebp
	leal	(%r10,%r10), %eax
	movl	%eax, %r13d
	xorl	$27, %r13d
	testb	%r10b, %r10b
	cmovs	%r13d, %eax
	shrb	%r11b
	movl	%eax, %r10d
	subl	$1, %ebx
	jne	.L11
	xorl	%ebp, %r12d
	movl	%edx, %r10d
	movl	$8, %ebx
	xorl	%ebp, %ebp
	movl	$3, %r11d
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%r11d, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r10d, %eax
	xorl	%eax, %ebp
	leal	(%r10,%r10), %eax
	movl	%eax, %r13d
	xorl	$27, %r13d
	testb	%r10b, %r10b
	cmovs	%r13d, %eax
	shrb	%r11b
	movl	%eax, %r10d
	subl	$1, %ebx
	jne	.L13
	xorl	%ebp, %r12d
	movl	$8, %r11d
	xorl	%ebx, %ebx
	movl	$3, %r10d
	movb	%r12b, 2(%rcx)
	.p2align 4,,10
	.p2align 3
.L15:
	movl	%r10d, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%eax, %ebx
	leal	(%rdi,%rdi), %eax
	movl	%eax, %ebp
	xorl	$27, %ebp
	testb	%dil, %dil
	cmovs	%ebp, %eax
	shrb	%r10b
	movl	%eax, %edi
	subl	$1, %r11d
	jne	.L15
	xorl	%r9d, %r8d
	xorl	%r10d, %r10d
	movl	$8, %r9d
	movl	$2, %edi
	xorl	%ebx, %r8d
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%edi, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edx, %eax
	xorl	%eax, %r10d
	leal	(%rdx,%rdx), %eax
	movl	%eax, %r11d
	xorl	$27, %r11d
	testb	%dl, %dl
	cmovs	%r11d, %eax
	shrb	%dil
	movl	%eax, %edx
	subl	$1, %r9d
	jne	.L17
	xorl	%r10d, %r8d
	addq	$4, %rcx
	movb	%r8b, -1(%rcx)
	cmpq	%rcx, %rsi
	jne	.L18
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
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
