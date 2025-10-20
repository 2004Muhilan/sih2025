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
	movsbl	(%rdi), %eax
	cmpb	$61, %al
	je	.L69
	testb	%al, %al
	je	.L69
	movq	%rdx, %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	1(%rdi), %rdx
	movl	$-64, %r8d
	xorl	%edi, %edi
	movl	$4032, %r9d
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L73:
	cmpb	$47, %al
	jg	.L15
	movl	$3968, %r11d
	cmpb	$43, %al
	je	.L16
	cmpb	$47, %al
	movl	%r9d, %r11d
	cmovne	%r8d, %r11d
.L16:
	movsbl	(%rdx), %eax
	cmpb	$57, %al
	jg	.L20
.L74:
	cmpb	$47, %al
	jg	.L21
	sall	$6, %r11d
	movl	%r11d, %r10d
	cmpb	$43, %al
	je	.L22
	orl	$4032, %r10d
	cmpb	$47, %al
	cmovne	%r8d, %r10d
.L24:
	movsbl	1(%rdx), %eax
	cmpb	$57, %al
	jg	.L28
.L75:
	cmpb	$47, %al
	jg	.L29
	sall	$6, %r10d
	cmpb	$43, %al
	je	.L30
	orl	$4032, %r10d
	cmpb	$47, %al
	movl	%r10d, %ebx
	cmovne	%r8d, %ebx
.L32:
	movsbl	2(%rdx), %eax
	cmpb	$57, %al
	jg	.L36
.L76:
	cmpb	$47, %al
	jg	.L37
	cmpb	$43, %al
	je	.L38
	cmpb	$47, %al
	jne	.L50
	movl	%ebx, %r10d
	movzbl	%bh, %eax
	orl	$63, %ebx
	shrl	$16, %r10d
	movl	%eax, %r11d
	.p2align 4,,10
	.p2align 3
.L40:
	leaq	1(%rdi), %rax
	addq	$4, %rdx
	movq	%rax, (%rcx)
	movb	%r10b, (%rsi,%rdi)
	movq	(%rcx), %rax
	leaq	1(%rax), %rdi
	movq	%rdi, (%rcx)
	movb	%r11b, (%rsi,%rax)
	movq	(%rcx), %rax
	leaq	1(%rax), %rdi
	movq	%rdi, (%rcx)
	movb	%bl, (%rsi,%rax)
	movsbl	-1(%rdx), %eax
	testb	%al, %al
	je	.L12
	cmpb	$61, %al
	je	.L12
	movq	(%rcx), %rdi
.L44:
	cmpb	$57, %al
	jle	.L73
	cmpb	$90, %al
	jg	.L17
	cmpb	$64, %al
	jle	.L47
	subl	$65, %eax
	sall	$6, %eax
	movl	%eax, %r11d
	movsbl	(%rdx), %eax
	cmpb	$57, %al
	jle	.L74
	.p2align 4,,10
	.p2align 3
.L20:
	cmpb	$90, %al
	jg	.L25
	cmpb	$64, %al
	jle	.L48
	leal	-65(%rax), %r10d
	movsbl	1(%rdx), %eax
	orl	%r11d, %r10d
	sall	$6, %r10d
	cmpb	$57, %al
	jle	.L75
	.p2align 4,,10
	.p2align 3
.L28:
	cmpb	$90, %al
	jg	.L33
	cmpb	$64, %al
	jle	.L49
	leal	-65(%rax), %ebx
	movsbl	2(%rdx), %eax
	orl	%r10d, %ebx
	sall	$6, %ebx
	cmpb	$57, %al
	jle	.L76
	.p2align 4,,10
	.p2align 3
.L36:
	cmpb	$90, %al
	jg	.L41
	cmpb	$64, %al
	jle	.L50
	subl	$65, %eax
.L72:
	orl	%eax, %ebx
	movl	%ebx, %r10d
	movzbl	%bh, %eax
	shrl	$16, %r10d
	movl	%eax, %r11d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L17:
	leal	-97(%rax), %r10d
	cmpb	$25, %r10b
	ja	.L47
	subl	$71, %eax
	sall	$6, %eax
	movl	%eax, %r11d
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L41:
	leal	-97(%rax), %r10d
	subl	$71, %eax
	cmpb	$25, %r10b
	jbe	.L72
.L50:
	movl	$-1, %ebx
	movl	$-1, %r11d
	movl	$-1, %r10d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L33:
	leal	-97(%rax), %r11d
	cmpb	$25, %r11b
	ja	.L49
	movsbl	%al, %ebx
	subl	$71, %ebx
	orl	%r10d, %ebx
	sall	$6, %ebx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L25:
	leal	-97(%rax), %r10d
	cmpb	$25, %r10b
	ja	.L48
	leal	-71(%rax), %r10d
	orl	%r11d, %r10d
	sall	$6, %r10d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%r10d, %ebx
	orl	$3968, %ebx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L29:
	movsbl	%al, %ebx
	addl	$4, %ebx
	orl	%r10d, %ebx
	sall	$6, %ebx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$4, %eax
	sall	$6, %eax
	movl	%eax, %r11d
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L37:
	addl	$4, %eax
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L21:
	leal	4(%rax), %r10d
	orl	%r11d, %r10d
	sall	$6, %r10d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L38:
	movl	%ebx, %r10d
	movzbl	%bh, %eax
	orl	$62, %ebx
	shrl	$16, %r10d
	movl	%eax, %r11d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L22:
	orl	$3968, %r10d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L12:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movl	$-64, %r10d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L49:
	movl	$-64, %ebx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$-64, %r11d
	jmp	.L16
.L69:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
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
