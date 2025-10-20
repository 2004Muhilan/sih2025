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
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r9
	movl	(%rdi), %ebp
	movl	4(%rdi), %ebx
	movl	8(%rdi), %r11d
	movl	12(%rdi), %r10d
	movq	%rsi, %rcx
	leaq	64(%rsi), %r8
	movl	%r10d, %edx
	movl	%r11d, %edi
	movl	%ebx, %esi
	movl	%ebp, %r12d
	jmp	.L2
.L3:
	movl	%edi, %edx
	movl	%esi, %edi
	movl	%eax, %esi
.L2:
	movl	%edi, %eax
	xorl	%edx, %eax
	andl	%esi, %eax
	xorl	%edx, %eax
	addl	(%rcx), %eax
	addl	%r12d, %eax
	sall	$7, %eax
	addl	%esi, %eax
	addq	$4, %rcx
	movl	%edx, %r12d
	cmpq	%r8, %rcx
	jne	.L3
	addl	%edx, %ebp
	movl	%ebp, (%r9)
	addl	%eax, %ebx
	movl	%ebx, 4(%r9)
	addl	%esi, %r11d
	movl	%r11d, 8(%r9)
	addl	%edi, %r10d
	movl	%r10d, 12(%r9)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
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
