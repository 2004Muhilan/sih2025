	.file	"base64_decode_standard.c"
	.text
	.globl	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$64, -4(%rbp)
	jle	.L2
	cmpb	$90, -4(%rbp)
	jg	.L2
	movsbl	-4(%rbp), %eax
	subl	$65, %eax
	jmp	.L3
.L2:
	cmpb	$96, -4(%rbp)
	jle	.L4
	cmpb	$122, -4(%rbp)
	jg	.L4
	movsbl	-4(%rbp), %eax
	subl	$71, %eax
	jmp	.L3
.L4:
	cmpb	$47, -4(%rbp)
	jle	.L5
	cmpb	$57, -4(%rbp)
	jg	.L5
	movsbl	-4(%rbp), %eax
	addl	$4, %eax
	jmp	.L3
.L5:
	cmpb	$43, -4(%rbp)
	jne	.L6
	movl	$62, %eax
	jmp	.L3
.L6:
	cmpb	$47, -4(%rbp)
	jne	.L7
	movl	$63, %eax
	jmp	.L3
.L7:
	movl	$-1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, -16(%rbp)
	jmp	.L9
.L13:
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L10
.L11:
	movl	-24(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	base64_char_value
	orl	%ebx, %eax
	movl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L10:
	cmpl	$3, -20(%rbp)
	jle	.L11
	movl	-24(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	addq	$4, -16(%rbp)
.L9:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L14
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L13
.L14:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
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
