	.file	"aes_mix_columns.c"
	.text
	.type	gf_mul, @function
gf_mul:
.LFB0:
	.cfi_startproc
	movl	$8, %ecx
	xorl	%edx, %edx
.L3:
	movl	%esi, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%eax, %edx
	leal	(%rdi,%rdi), %eax
	testb	%dil, %dil
	jns	.L4
	xorl	$27, %eax
.L4:
	movl	%eax, %edi
	shrb	%sil
	decl	%ecx
	jne	.L3
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	gf_mul, .-gf_mul
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r8
	leaq	16(%rdi), %r10
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
.L8:
	movzbl	(%r8), %r12d
	movzbl	1(%r8), %r14d
	movl	$2, %esi
	addq	$4, %r8
	movb	-2(%r8), %r11b
	movzbl	-1(%r8), %ebp
	movl	%r12d, %edi
	movl	%r14d, %ebx
	call	gf_mul
	movl	%r14d, %edi
	movl	$3, %esi
	movl	%eax, %r9d
	call	gf_mul
	movl	%r14d, %edi
	movl	$2, %esi
	movzbl	%r11b, %r14d
	xorl	%eax, %r9d
	xorl	%r11d, %r9d
	xorl	%ebp, %r9d
	movb	%r9b, -4(%r8)
	call	gf_mul
	movl	$3, %esi
	movl	%r14d, %edi
	movl	%eax, %r9d
	call	gf_mul
	movl	$2, %esi
	movl	%r14d, %edi
	xorl	%eax, %r9d
	xorl	%r12d, %r9d
	xorl	%ebp, %r9d
	movb	%r9b, -3(%r8)
	call	gf_mul
	movl	$3, %esi
	movl	%ebp, %edi
	movl	%eax, %r9d
	call	gf_mul
	movl	$3, %esi
	movl	%r12d, %edi
	xorl	%eax, %r9d
	xorl	%r12d, %r9d
	xorl	%ebx, %r9d
	movb	%r9b, -2(%r8)
	call	gf_mul
	movl	$2, %esi
	movl	%ebp, %edi
	movl	%eax, %r9d
	call	gf_mul
	xorl	%eax, %r9d
	xorl	%ebx, %r9d
	xorl	%r11d, %r9d
	movb	%r9b, -1(%r8)
	cmpq	%r8, %r10
	jne	.L8
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
