	.file	"base64_decode_standard.c"
	.text
	.p2align 4
	.globl	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
.LFB0:
	.cfi_startproc
	endbr64
	cmpb	$57, %dil
	jg	.L2
	cmpb	$47, %dil
	jg	.L3
	movl	$62, %eax
	cmpb	$43, %dil
	je	.L1
	cmpb	$47, %dil
	movl	$63, %edx
	movl	$-1, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movsbl	%dil, %edi
	leal	4(%rdi), %eax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	cmpb	$90, %dil
	jg	.L5
	movsbl	%dil, %eax
	movl	$-1, %edx
	subl	$65, %eax
	cmpb	$64, %dil
	cmovle	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	leal	-97(%rdi), %eax
	movsbl	%dil, %edi
	subl	$71, %edi
	cmpb	$26, %al
	movl	$-1, %eax
	cmovb	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.p2align 4
	.globl	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	endbr64
	movq	$0, (%rdx)
	movzbl	(%rdi), %eax
	movq	%rsi, %r9
	movq	%rdx, %r8
	testb	%al, %al
	je	.L12
	cmpb	$61, %al
	je	.L12
	leaq	4(%rdi), %rsi
	movl	$-1, %r10d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	-4(%rsi), %rcx
	xorl	%edx, %edx
.L23:
	movsbl	(%rcx), %eax
	sall	$6, %edx
	movl	%edx, %r11d
	cmpb	$57, %al
	jg	.L15
	cmpb	$47, %al
	jg	.L16
	orl	$62, %edx
	cmpb	$43, %al
	je	.L19
	movl	%r11d, %edx
	orl	$63, %edx
	cmpb	$47, %al
	cmovne	%r10d, %edx
.L19:
	addq	$1, %rcx
	cmpq	%rsi, %rcx
	jne	.L23
	leaq	1(%rdi), %rax
	addq	$4, %rsi
	movq	%rax, (%r8)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, (%r9,%rdi)
	movq	(%r8), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r8)
	movzbl	%dh, %ecx
	movb	%cl, (%r9,%rax)
	movq	(%r8), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r8)
	movb	%dl, (%r9,%rax)
	movzbl	-4(%rsi), %eax
	testb	%al, %al
	je	.L12
	cmpb	$61, %al
	je	.L12
	movq	(%r8), %rdi
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L15:
	cmpb	$90, %al
	jg	.L20
	leal	-65(%rax), %edx
	orl	%r11d, %edx
	cmpb	$64, %al
	jg	.L19
.L24:
	movl	$-1, %edx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	leal	-97(%rax), %edx
	cmpb	$25, %dl
	ja	.L24
	leal	-71(%rax), %edx
	orl	%r11d, %edx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L16:
	leal	4(%rax), %edx
	orl	%r11d, %edx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L12:
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
