	.file	"md5_compress.c"
	.text
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	(%rdi), %r11d
	xorl	%ebx, %ebx
	movl	4(%rdi), %r10d
	movl	8(%rdi), %r9d
	movl	12(%rdi), %edi
	movl	%r11d, %r12d
	movl	%r9d, %r8d
	movl	%r10d, %ecx
	movl	%edi, %esi
.L2:
	movl	%r8d, %eax
	xorl	%esi, %eax
	andl	%ecx, %eax
	xorl	%esi, %eax
	addl	0(%rbp,%rbx,4), %eax
	incq	%rbx
	addl	%r12d, %eax
	movl	%esi, %r12d
	sall	$7, %eax
	addl	%ecx, %eax
	cmpq	$16, %rbx
	je	.L6
	movl	%r8d, %esi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	jmp	.L2
.L6:
	addl	%esi, %r11d
	addl	%eax, %r10d
	addl	%ecx, %r9d
	addl	%r8d, %edi
	popq	%rbx
	.cfi_def_cfa_offset 24
	movl	%r11d, (%rdx)
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	movl	%r10d, 4(%rdx)
	movl	%r9d, 8(%rdx)
	movl	%edi, 12(%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
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
