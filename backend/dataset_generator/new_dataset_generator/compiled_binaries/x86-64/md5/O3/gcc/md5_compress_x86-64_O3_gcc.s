	.file	"md5_compress.c"
	.text
	.p2align 4
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	movq	%rsi, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	8(%rdi), %r10d
	movl	12(%rdi), %r11d
	movl	4(%rdi), %r8d
	movl	(%rdi), %ebx
	movl	%r10d, %edi
	movl	(%rsi), %eax
	xorl	%r11d, %edi
	movl	%r8d, %esi
	movl	%r8d, %ecx
	movl	12(%rdx), %ebp
	andl	%r8d, %edi
	addl	%ebx, %eax
	xorl	%r10d, %esi
	xorl	%r11d, %edi
	addl	%r8d, %ebp
	addl	%eax, %edi
	movl	4(%rdx), %eax
	sall	$7, %edi
	addl	%r8d, %edi
	addl	%r11d, %eax
	andl	%edi, %esi
	xorl	%edi, %ecx
	xorl	%r10d, %esi
	addl	%eax, %esi
	movl	8(%rdx), %eax
	sall	$7, %esi
	addl	%edi, %esi
	addl	%r10d, %eax
	andl	%esi, %ecx
	xorl	%r8d, %ecx
	addl	%eax, %ecx
	movl	%edi, %eax
	sall	$7, %ecx
	xorl	%esi, %eax
	addl	%esi, %ecx
	andl	%ecx, %eax
	xorl	%edi, %eax
	addl	16(%rdx), %edi
	addl	%ebp, %eax
	movl	%esi, %ebp
	sall	$7, %eax
	xorl	%ecx, %ebp
	addl	%ecx, %eax
	andl	%eax, %ebp
	xorl	%esi, %ebp
	addl	%ebp, %edi
	movl	%ecx, %ebp
	addl	20(%rdx), %esi
	sall	$7, %edi
	xorl	%eax, %ebp
	addl	%eax, %edi
	andl	%edi, %ebp
	xorl	%ecx, %ebp
	addl	24(%rdx), %ecx
	addl	%ebp, %esi
	movl	%eax, %ebp
	sall	$7, %esi
	xorl	%edi, %ebp
	addl	%edi, %esi
	andl	%esi, %ebp
	xorl	%eax, %ebp
	addl	28(%rdx), %eax
	addl	%ebp, %ecx
	movl	%edi, %ebp
	sall	$7, %ecx
	xorl	%esi, %ebp
	addl	%esi, %ecx
	andl	%ecx, %ebp
	xorl	%edi, %ebp
	addl	32(%rdx), %edi
	addl	%ebp, %eax
	movl	%esi, %ebp
	sall	$7, %eax
	xorl	%ecx, %ebp
	addl	%ecx, %eax
	andl	%eax, %ebp
	xorl	%esi, %ebp
	addl	%ebp, %edi
	movl	%ecx, %ebp
	sall	$7, %edi
	xorl	%eax, %ebp
	addl	%eax, %edi
	andl	%edi, %ebp
	addl	36(%rdx), %esi
	xorl	%ecx, %ebp
	addl	40(%rdx), %ecx
	addl	%ebp, %esi
	movl	%eax, %ebp
	sall	$7, %esi
	xorl	%edi, %ebp
	addl	%edi, %esi
	andl	%esi, %ebp
	xorl	%eax, %ebp
	addl	44(%rdx), %eax
	addl	%ebp, %ecx
	movl	%edi, %ebp
	sall	$7, %ecx
	xorl	%esi, %ebp
	addl	%esi, %ecx
	andl	%ecx, %ebp
	xorl	%edi, %ebp
	addl	48(%rdx), %edi
	addl	%ebp, %eax
	movl	%esi, %ebp
	sall	$7, %eax
	xorl	%ecx, %ebp
	addl	%ecx, %eax
	andl	%eax, %ebp
	xorl	%esi, %ebp
	addl	52(%rdx), %esi
	addl	%ebp, %edi
	movl	%ecx, %ebp
	sall	$7, %edi
	xorl	%eax, %ebp
	addl	%eax, %edi
	andl	%edi, %ebp
	xorl	%ecx, %ebp
	addl	%ebp, %esi
	movl	%eax, %ebp
	sall	$7, %esi
	xorl	%edi, %ebp
	addl	56(%rdx), %ecx
	addl	%edi, %ebx
	addl	%edi, %esi
	andl	%esi, %ebp
	addl	%esi, %r11d
	xorl	%eax, %ebp
	addl	60(%rdx), %eax
	movl	%ebx, (%r9)
	addl	%ebp, %ecx
	movl	%edi, %ebp
	popq	%rbx
	.cfi_def_cfa_offset 16
	movl	%r11d, 12(%r9)
	sall	$7, %ecx
	xorl	%esi, %ebp
	addl	%esi, %ecx
	andl	%ecx, %ebp
	addl	%ecx, %r8d
	addl	%ecx, %r10d
	xorl	%edi, %ebp
	movl	%r10d, 8(%r9)
	addl	%ebp, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	sall	$7, %eax
	addl	%eax, %r8d
	movl	%r8d, 4(%r9)
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
