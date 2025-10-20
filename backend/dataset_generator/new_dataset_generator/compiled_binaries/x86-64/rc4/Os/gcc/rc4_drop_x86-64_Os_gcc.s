	.file	"rc4_drop.c"
	.text
	.globl	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movq	%rdx, %r9
	movq	%rcx, %r8
	xorl	%eax, %eax
.L2:
	movb	%al, (%rdi,%rax)
	incq	%rax
	cmpq	$256, %rax
	jne	.L2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.L3:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movb	(%rdi,%rcx), %r11b
	divq	%r9
	movzbl	(%r10,%rdx), %eax
	movzbl	%r11b, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	movb	(%rdi,%rax), %dl
	movb	%dl, (%rdi,%rcx)
	incq	%rcx
	movb	%r11b, (%rdi,%rax)
	cmpq	$256, %rcx
	jne	.L3
	movw	$0, 256(%rdi)
	xorl	%ecx, %ecx
.L4:
	cmpq	%r8, %rcx
	je	.L9
	movb	256(%rdi), %al
	incq	%rcx
	leal	1(%rax), %edx
	movb	257(%rdi), %al
	movb	%dl, 256(%rdi)
	movzbl	%dl, %edx
	movb	(%rdi,%rdx), %sil
	addl	%esi, %eax
	movb	%al, 257(%rdi)
	movzbl	%al, %eax
	movb	(%rdi,%rax), %r9b
	movb	%r9b, (%rdi,%rdx)
	movb	%sil, (%rdi,%rax)
	jmp	.L4
.L9:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdi, %rax
	xorl	%esi, %esi
.L11:
	cmpq	%rdx, %rsi
	je	.L13
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
	jmp	.L11
.L13:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rcx, %rbx
	movl	$768, %ecx
	subq	$280, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	leaq	6(%rsp), %r13
	movq	%r13, %rdi
	call	rc4_drop_init
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	rep movsb
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	rc4_drop_crypt
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	addq	$280, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
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
