	.file	"base64_decode_urlsafe.c"
	.text
	.globl	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
.LFB0:
	.cfi_startproc
	endbr64
	cmpb	$90, %dil
	jg	.L2
	cmpb	$64, %dil
	jg	.L3
	movl	$62, %eax
	cmpb	$45, %dil
	je	.L1
	leal	-48(%rdi), %eax
	movsbl	%dil, %edi
	addl	$4, %edi
	cmpb	$10, %al
	movl	$-1, %eax
	cmovb	%edi, %eax
	ret
.L2:
	movl	$63, %eax
	cmpb	$95, %dil
	je	.L1
	leal	-97(%rdi), %eax
	movsbl	%dil, %edi
	subl	$71, %edi
	cmpb	$26, %al
	movl	$-1, %eax
	cmovb	%edi, %eax
	ret
.L3:
	movsbl	%dil, %edi
	leal	-65(%rdi), %eax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.globl	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
.LFB1:
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
	movq	%rdi, %rbp
	movzbl	(%rdi), %edi
	testb	%dil, %dil
	je	.L9
	movq	%rsi, %r12
	movl	$0, %ebx
.L11:
	movsbl	%dil, %edi
	call	base64_url_char_value
	movb	%al, (%r12,%rbx)
	addq	$1, %rbx
	movzbl	0(%rbp,%rbx), %edi
	testb	%dil, %dil
	jne	.L11
.L9:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
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
