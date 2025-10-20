	.file	"base64_decode_standard.c"
	.text
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
	movl	$63, %eax
	movl	$-1, %edx
	cmovne	%edx, %eax
	ret
.L2:
	cmpb	$90, %dil
	jle	.L11
	leal	-97(%rdi), %eax
	movsbl	%dil, %edi
	subl	$71, %edi
	cmpb	$26, %al
	movl	$-1, %eax
	cmovb	%edi, %eax
	ret
.L11:
	movsbl	%dil, %eax
	subl	$65, %eax
	cmpb	$64, %dil
	movl	$-1, %edx
	cmovle	%edx, %eax
	ret
.L3:
	movsbl	%dil, %edi
	leal	4(%rdi), %eax
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
	movq	$0, (%rdx)
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	.L18
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r13
	movq	%rdx, %r12
	cmpb	$61, %al
	je	.L12
	leaq	4(%rdi), %rbp
	movl	$0, %r14d
	jmp	.L14
.L21:
	movq	(%r12), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, (%r12)
	movl	%r15d, %ecx
	shrl	$16, %ecx
	movb	%cl, 0(%r13,%rdx)
	movq	(%r12), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, (%r12)
	movl	%r15d, %eax
	movzbl	%ah, %eax
	movb	%al, 0(%r13,%rdx)
	movq	(%r12), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, (%r12)
	movb	%r15b, 0(%r13,%rdx)
	movzbl	0(%rbp), %eax
	addq	$4, %rbp
	testb	%al, %al
	je	.L12
	cmpb	$61, %al
	je	.L12
.L14:
	leaq	-4(%rbp), %rbx
	movl	%r14d, %r15d
.L15:
	sall	$6, %r15d
	movsbl	(%rbx), %edi
	call	base64_char_value
	orl	%eax, %r15d
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L15
	jmp	.L21
.L12:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
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
