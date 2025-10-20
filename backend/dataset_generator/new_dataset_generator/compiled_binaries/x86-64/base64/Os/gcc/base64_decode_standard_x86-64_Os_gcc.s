	.file	"base64_decode_standard.c"
	.text
	.globl	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
.LFB0:
	.cfi_startproc
	endbr64
	leal	-65(%rdi), %eax
	cmpb	$25, %al
	ja	.L2
	movsbl	%dil, %edi
	leal	-65(%rdi), %eax
	ret
.L2:
	leal	-97(%rdi), %eax
	cmpb	$25, %al
	ja	.L4
	movsbl	%dil, %edi
	leal	-71(%rdi), %eax
	ret
.L4:
	leal	-48(%rdi), %eax
	cmpb	$9, %al
	ja	.L5
	movsbl	%dil, %edi
	leal	4(%rdi), %eax
	ret
.L5:
	movl	$62, %eax
	cmpb	$43, %dil
	je	.L1
	cmpb	$47, %dil
	movl	$63, %eax
	movl	$-1, %edx
	cmovne	%edx, %eax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.globl	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	movq	%rdi, %r10
	movq	%rsi, %r8
	movq	%rax, (%rdx)
	movb	(%rdi,%r9), %al
	movq	%rdx, %rcx
	testb	%al, %al
	je	.L20
	cmpb	$61, %al
	jne	.L22
	ret
.L20:
	ret
.L22:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L13:
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	leaq	(%r10,%r9), %rbx
.L11:
	movsbl	(%rbx,%r11), %edi
	sall	$6, %eax
	incq	%r11
	movl	%eax, %esi
	call	base64_char_value
	orl	%esi, %eax
	cmpq	$4, %r11
	jne	.L11
	movq	(%rcx), %rdx
	movzbl	%ah, %ebx
	addq	$4, %r9
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movl	%eax, %esi
	shrl	$16, %esi
	movb	%sil, (%r8,%rdx)
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%bl, (%r8,%rdx)
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%r8,%rdx)
	movb	(%r10,%r9), %al
	testb	%al, %al
	je	.L9
	cmpb	$61, %al
	jne	.L13
.L9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
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
