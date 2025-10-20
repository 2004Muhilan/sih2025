	.file	"aes_mix_columns.c"
	.text
	.p2align 4
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	(%rdi), %esi
	movq	%rdi, %rax
	movzbl	1(%rdi), %r10d
	movzbl	2(%rdi), %edx
	leal	(%rsi,%rsi), %r8d
	movzbl	3(%rdi), %r9d
	movl	%r8d, %ecx
	leal	(%r10,%r10), %r11d
	xorl	$27, %ecx
	testb	%sil, %sil
	cmovs	%ecx, %r8d
	movl	%r11d, %ecx
	xorl	$27, %ecx
	testb	%r10b, %r10b
	cmovs	%ecx, %r11d
	movl	%r10d, %ecx
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	xorl	%r8d, %ecx
	xorl	%r11d, %ecx
	movb	%cl, (%rdi)
	leal	(%rdx,%rdx), %ecx
	movl	%esi, %edi
	movl	%ecx, %ebx
	xorl	%edx, %edi
	xorl	$27, %ebx
	testb	%dl, %dl
	cmovs	%ebx, %ecx
	xorl	%r9d, %edi
	xorl	%r10d, %esi
	movl	%r9d, %r10d
	xorl	%r11d, %edi
	xorl	%esi, %r10d
	xorl	%ecx, %edi
	movb	%dil, 1(%rax)
	leal	(%r9,%r9), %edi
	movl	%edi, %r11d
	xorl	$27, %r11d
	testb	%r9b, %r9b
	movzbl	7(%rax), %r9d
	cmovs	%r11d, %edi
	xorl	%r10d, %ecx
	xorl	%esi, %edx
	xorl	%r8d, %edx
	movzbl	5(%rax), %r8d
	xorl	%edi, %ecx
	xorl	%edi, %edx
	movb	%cl, 2(%rax)
	movzbl	4(%rax), %ecx
	leal	(%r8,%r8), %r11d
	movb	%dl, 3(%rax)
	movzbl	6(%rax), %edx
	leal	(%rcx,%rcx), %edi
	movl	%edi, %esi
	leal	(%rdx,%rdx), %r10d
	xorl	$27, %esi
	testb	%cl, %cl
	movl	%r10d, %ebx
	cmovs	%esi, %edi
	movl	%r11d, %esi
	xorl	$27, %esi
	testb	%r8b, %r8b
	cmovs	%esi, %r11d
	movl	%r8d, %esi
	xorl	$27, %ebx
	xorl	%edx, %esi
	xorl	%r9d, %esi
	xorl	%edi, %esi
	xorl	%r11d, %esi
	movb	%sil, 4(%rax)
	movl	%ecx, %esi
	xorl	%edx, %esi
	testb	%dl, %dl
	cmovs	%ebx, %r10d
	xorl	%r9d, %esi
	xorl	%r8d, %ecx
	movl	%r9d, %r8d
	xorl	%r11d, %esi
	xorl	%ecx, %r8d
	xorl	%r10d, %esi
	movb	%sil, 5(%rax)
	leal	(%r9,%r9), %esi
	movl	%esi, %r11d
	xorl	$27, %r11d
	testb	%r9b, %r9b
	movzbl	11(%rax), %r9d
	cmovs	%r11d, %esi
	xorl	%r10d, %r8d
	xorl	%ecx, %edx
	xorl	%edi, %edx
	movzbl	10(%rax), %edi
	xorl	%esi, %r8d
	xorl	%esi, %edx
	movb	%r8b, 6(%rax)
	movzbl	8(%rax), %r8d
	leal	(%rdi,%rdi), %r10d
	movb	%dl, 7(%rax)
	movzbl	9(%rax), %edx
	movl	%r10d, %ebx
	leal	(%r8,%r8), %esi
	movl	%esi, %ecx
	leal	(%rdx,%rdx), %r11d
	xorl	$27, %ecx
	testb	%r8b, %r8b
	cmovs	%ecx, %esi
	movl	%r11d, %ecx
	xorl	$27, %ecx
	testb	%dl, %dl
	cmovs	%ecx, %r11d
	movl	%edi, %ecx
	xorl	$27, %ebx
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	xorl	%esi, %ecx
	xorl	%r11d, %ecx
	movb	%cl, 8(%rax)
	movl	%edi, %ecx
	xorl	%r8d, %ecx
	testb	%dil, %dil
	cmovs	%ebx, %r10d
	xorl	%r9d, %ecx
	xorl	%r8d, %edx
	xorl	%r11d, %ecx
	movl	%edx, %r8d
	xorl	%r10d, %ecx
	xorl	%r9d, %r8d
	movb	%cl, 9(%rax)
	leal	(%r9,%r9), %ecx
	movl	%ecx, %r11d
	xorl	$27, %r11d
	testb	%r9b, %r9b
	movzbl	15(%rax), %r9d
	cmovs	%r11d, %ecx
	xorl	%r10d, %r8d
	movzbl	12(%rax), %r10d
	xorl	%edi, %edx
	xorl	%esi, %edx
	movzbl	13(%rax), %esi
	xorl	%ecx, %r8d
	xorl	%ecx, %edx
	movl	%r10d, %edi
	movb	%r8b, 10(%rax)
	leal	(%r10,%r10), %r8d
	leal	(%rsi,%rsi), %r11d
	movl	%r8d, %ecx
	movb	%dl, 11(%rax)
	movzbl	14(%rax), %edx
	xorl	$27, %ecx
	testb	%r10b, %r10b
	cmovs	%ecx, %r8d
	movl	%r11d, %ecx
	xorl	$27, %ecx
	testb	%sil, %sil
	cmovs	%ecx, %r11d
	movl	%esi, %ecx
	xorl	%edx, %edi
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	xorl	%r8d, %ecx
	xorl	%r11d, %ecx
	movb	%cl, 12(%rax)
	leal	(%rdx,%rdx), %ecx
	movl	%ecx, %ebx
	xorl	$27, %ebx
	testb	%dl, %dl
	cmovs	%ebx, %ecx
	xorl	%r9d, %edi
	xorl	%r10d, %esi
	xorl	%r11d, %edi
	movl	%esi, %r10d
	xorl	%ecx, %edi
	xorl	%r9d, %r10d
	movb	%dil, 13(%rax)
	leal	(%r9,%r9), %edi
	movl	%edi, %r11d
	xorl	$27, %r11d
	testb	%r9b, %r9b
	cmovs	%r11d, %edi
	xorl	%esi, %edx
	xorl	%r10d, %ecx
	xorl	%r8d, %edx
	xorl	%edi, %ecx
	xorl	%edi, %edx
	movb	%cl, 14(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	movb	%dl, 15(%rax)
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
