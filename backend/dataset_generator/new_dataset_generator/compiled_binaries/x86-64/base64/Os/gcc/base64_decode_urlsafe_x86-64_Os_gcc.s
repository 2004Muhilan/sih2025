	.file	"base64_decode_urlsafe.c"
	.text
	.globl	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
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
	cmpb	$45, %dil
	je	.L1
	cmpb	$95, %dil
	movl	$63, %eax
	movl	$-1, %edx
	cmovne	%edx, %eax
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
	movq	%rdi, %rcx
.L10:
	movsbl	(%rcx), %edi
	incq	%rcx
	testb	%dil, %dil
	je	.L12
	call	base64_url_char_value
	incq	%rsi
	movb	%al, -1(%rsi)
	jmp	.L10
.L12:
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
