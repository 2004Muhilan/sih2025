	.file	"rc4_standard.c"
	.text
	.globl	rc4_init
	.type	rc4_init, @function
rc4_init:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movq	%rdx, %r9
	movl	$0, %eax
.L2:
	movb	%al, (%rdi,%rax)
	addq	$1, %rax
	cmpq	$256, %rax
	jne	.L2
	movl	$0, %ecx
	movl	$0, %esi
.L3:
	movzbl	(%rdi,%rcx), %r8d
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%r9
	addb	(%r10,%rdx), %sil
	addl	%r8d, %esi
	movzbl	%sil, %eax
	movl	%eax, %esi
	cltq
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%rcx)
	movb	%r8b, (%rdi,%rax)
	addq	$1, %rcx
	cmpq	$256, %rcx
	jne	.L3
	movb	$0, 256(%rdi)
	movb	$0, 257(%rdi)
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
	movq	%rdi, %rcx
	testq	%rdx, %rdx
	je	.L6
	movq	%rsi, %r8
	addq	%rdx, %rsi
.L8:
	movzbl	256(%rcx), %eax
	addl	$1, %eax
	movzbl	%al, %eax
	movb	%al, 256(%rcx)
	cltq
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %edi
	addb	257(%rcx), %dil
	movb	%dil, 257(%rcx)
	movzbl	%dil, %edi
	movzbl	(%rcx,%rdi), %r9d
	movb	%r9b, (%rcx,%rax)
	movb	%dl, (%rcx,%rdi)
	addb	(%rcx,%rax), %dl
	movzbl	%dl, %edx
	movzbl	(%rcx,%rdx), %eax
	xorb	%al, (%r8)
	addq	$1, %r8
	cmpq	%rsi, %r8
	jne	.L8
.L6:
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$280, %rsp
	.cfi_def_cfa_offset 320
	movq	%rdx, %r12
	movq	%rcx, %rbp
	movq	%r8, %rbx
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r13, %rdi
	call	rc4_init
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	rc4_crypt
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$280, %rsp
	.cfi_remember_state
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
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.globl	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	rc4_encrypt
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
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
