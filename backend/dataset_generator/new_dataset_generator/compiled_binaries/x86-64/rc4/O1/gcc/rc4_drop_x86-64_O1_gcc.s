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
	movq	%rcx, %r11
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
	testq	%r11, %r11
	je	.L10
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$0, %eax
	movl	$0, %edx
	movl	$0, %r8d
.L5:
	addl	$1, %edx
	movzbl	%dl, %ecx
	movl	%ecx, %edx
	movslq	%ecx, %r10
	movzbl	(%rdi,%r10), %esi
	addl	%esi, %eax
	movzbl	%al, %ebp
	movzbl	%al, %r9d
	movzbl	(%rdi,%r9), %ebx
	movb	%bl, (%rdi,%r10)
	movb	%sil, (%rdi,%r9)
	addq	$1, %r8
	cmpq	%r8, %r11
	jne	.L5
	movb	%cl, 256(%rdi)
	movb	%al, 257(%rdi)
	movb	%bl, (%rdi,%r10)
	movslq	%ebp, %rbp
	movb	%sil, (%rdi,%rbp)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore 3
	.cfi_restore 6
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
	movq	%rdi, %rcx
	testq	%rdx, %rdx
	je	.L13
	movq	%rsi, %r8
	addq	%rdx, %rsi
.L15:
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
	jne	.L15
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
	movl	$768, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r13, %rdi
	call	rc4_drop_init
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	rc4_drop_crypt
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
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
.L20:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
