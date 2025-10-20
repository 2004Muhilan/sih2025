	.file	"base64_decode_urlsafe.c"
	.text
	.p2align 4
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
	.p2align 4,,10
	.p2align 3
.L3:
	movsbl	%dil, %edi
	leal	-65(%rdi), %eax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
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
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.p2align 4
	.globl	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	endbr64
	movsbl	(%rdi), %eax
	xorl	%edx, %edx
	movl	$-1, %r8d
	testb	%al, %al
	jne	.L11
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	leal	-65(%rax), %ecx
	cmpb	$64, %al
	jg	.L14
	movl	$62, %ecx
	cmpb	$45, %al
	je	.L14
	leal	-48(%rax), %ecx
	addl	$4, %eax
	cmpb	$10, %cl
	movl	%eax, %ecx
	cmovnb	%r8d, %ecx
.L14:
	movb	%cl, (%rsi,%rdx)
	addq	$1, %rdx
	movsbl	(%rdi,%rdx), %eax
	testb	%al, %al
	je	.L10
.L11:
	cmpb	$90, %al
	jle	.L25
	movl	$63, %ecx
	cmpb	$95, %al
	je	.L14
	leal	-97(%rax), %ecx
	subl	$71, %eax
	cmpb	$26, %cl
	movl	%eax, %ecx
	cmovnb	%r8d, %ecx
	movb	%cl, (%rsi,%rdx)
	addq	$1, %rdx
	movsbl	(%rdi,%rdx), %eax
	testb	%al, %al
	jne	.L11
.L10:
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
