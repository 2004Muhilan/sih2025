	.file	"rc4_standard.c"
	.text
	.p2align 4
	.globl	rc4_init
	.type	rc4_init, @function
rc4_init:
.LFB14:
	.cfi_startproc
	endbr64
	movdqa	.LC0(%rip), %xmm3
	movq	%rdx, %r9
	movq	%rsi, %r10
	movdqa	.LC1(%rip), %xmm9
	movdqa	.LC2(%rip), %xmm8
	movdqa	.LC3(%rip), %xmm7
	movq	%rdi, %rax
	leaq	256(%rdi), %rdx
	movdqa	.LC4(%rip), %xmm6
	movdqa	.LC5(%rip), %xmm5
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm3, %xmm2
	addq	$16, %rax
	paddd	%xmm9, %xmm3
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm0
	paddd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm2, %xmm0
	paddd	%xmm6, %xmm2
	paddd	%xmm7, %xmm0
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm1
	punpckhwd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm4, %xmm0
	punpcklwd	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	packuswb	%xmm0, %xmm1
	movups	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movzbl	(%rdi,%rcx), %r8d
	divq	%r9
	movzbl	(%r10,%rdx), %eax
	movzbl	%r8b, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rdi,%rcx)
	addq	$1, %rcx
	movb	%r8b, (%rdi,%rax)
	cmpq	$256, %rcx
	jne	.L3
	xorl	%eax, %eax
	movw	%ax, 256(%rdi)
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.p2align 4
	.globl	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
.LFB15:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L15
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rcx
	leaq	(%rsi,%rdx), %r9
	.p2align 4,,10
	.p2align 3
.L9:
	movzbl	256(%rcx), %edi
	xorl	%eax, %eax
	movzwl	256(%rcx), %ebx
	movb	$1, %al
	addl	$1, %edi
	movzbl	%dil, %edi
	movzbl	(%rcx,%rdi), %edx
	movb	%dl, %ah
	addb	%bl, %al
	addb	%bh, %ah
	movw	%ax, 256(%rcx)
	movzbl	%ah, %eax
	movzbl	(%rcx,%rax), %r8d
	movb	%r8b, (%rcx,%rdi)
	movb	%dl, (%rcx,%rax)
	addb	(%rcx,%rdi), %dl
	movzbl	%dl, %edx
	movzbl	(%rcx,%rdx), %eax
	xorb	%al, (%rsi)
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jne	.L9
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.p2align 4
	.globl	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r11
	movq	%rcx, %r12
	movq	%rsi, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%r8, %rbx
	subq	$272, %rsp
	.cfi_def_cfa_offset 304
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	call	rc4_init
	movq	%r12, %rdx
	movq	%r11, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	rc4_crypt
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$272, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.p2align 4
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	16
	.long	16
	.long	16
	.long	16
	.align 16
.LC2:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC3:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC4:
	.long	12
	.long	12
	.long	12
	.long	12
	.align 16
.LC5:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
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
