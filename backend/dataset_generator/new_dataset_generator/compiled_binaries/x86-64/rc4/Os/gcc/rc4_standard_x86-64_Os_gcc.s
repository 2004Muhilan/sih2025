	.file	"rc4_standard.c"
	.text
	.globl	rc4_init
	.type	rc4_init, @function
rc4_init:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rdi, %rcx
	movq	%rsi, %r9
	movq	%rdx, %r8
	xorl	%eax, %eax
.L2:
	movb	%al, (%rcx,%rax)
	incq	%rax
	cmpq	$256, %rax
	jne	.L2
	xorl	%esi, %esi
	xorl	%edi, %edi
.L3:
	movq	%rsi, %rax
	xorl	%edx, %edx
	movb	(%rcx,%rsi), %r10b
	divq	%r8
	movzbl	(%r9,%rdx), %eax
	movzbl	%r10b, %edx
	addl	%edx, %edi
	addl	%edi, %eax
	movzbl	%al, %edi
	movzbl	%al, %eax
	movb	(%rcx,%rax), %dl
	movb	%dl, (%rcx,%rsi)
	incq	%rsi
	movb	%r10b, (%rcx,%rax)
	cmpq	$256, %rsi
	jne	.L3
	movw	$0, 256(%rcx)
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.globl	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
.LFB15:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdi, %rax
	xorl	%esi, %esi
.L8:
	cmpq	%rdx, %rsi
	je	.L10
	movb	256(%rax), %cl
	movb	257(%rax), %r8b
	leal	1(%rcx), %edi
	movb	%dil, 256(%rax)
	movzbl	%dil, %edi
	movb	(%rax,%rdi), %cl
	addl	%ecx, %r8d
	movb	%r8b, 257(%rax)
	movzbl	%r8b, %r8d
	movb	(%rax,%r8), %r10b
	movb	%r10b, (%rax,%rdi)
	movb	%cl, (%rax,%r8)
	addb	(%rax,%rdi), %cl
	movzbl	%cl, %ecx
	movb	(%rax,%rcx), %cl
	xorb	%cl, (%r9,%rsi)
	incq	%rsi
	jmp	.L8
.L10:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.globl	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rcx, %r11
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%r8, %rbx
	subq	$272, %rsp
	.cfi_def_cfa_offset 304
	movq	%fs:40, %rdx
	movq	%rdx, 264(%rsp)
	xorl	%edx, %edx
	leaq	6(%rsp), %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rbp, %rdi
	call	rc4_init
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r11, %rcx
	rep movsb
	movq	%r11, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	rc4_crypt
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	addq	$272, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.globl	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	endbr64
	jmp	rc4_encrypt
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
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
