	.file	"rc4_drop.c"
	.text
	.p2align 4
	.globl	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	endbr64
	movdqa	.LC0(%rip), %xmm3
	movq	%rdx, %r9
	movq	%rsi, %r10
	movdqa	.LC1(%rip), %xmm9
	movdqa	.LC2(%rip), %xmm8
	movq	%rcx, %r11
	movq	%rdi, %rax
	movdqa	.LC3(%rip), %xmm7
	movdqa	.LC4(%rip), %xmm6
	movdqa	.LC5(%rip), %xmm5
	leaq	256(%rdi), %rdx
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
	cmpq	%rdx, %rax
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
	testq	%r11, %r11
	je	.L1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L5:
	leal	1(%rdx), %eax
	addq	$1, %rdx
	movzbl	%al, %eax
	movzbl	(%rdi,%rax), %r8d
	addl	%r8d, %ecx
	movzbl	%cl, %esi
	movzbl	(%rdi,%rsi), %r9d
	movb	%r9b, (%rdi,%rax)
	movb	%r8b, (%rdi,%rsi)
	cmpq	%rdx, %r11
	jne	.L5
	movb	%r11b, 256(%rdi)
	movb	%cl, 257(%rdi)
	movb	%r9b, (%rdi,%rax)
	movb	%r8b, (%rdi,%rsi)
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.p2align 4
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L21
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rcx
	leaq	(%rsi,%rdx), %r9
	.p2align 4,,10
	.p2align 3
.L15:
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
	jne	.L15
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.p2align 4
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
	movq	%rcx, %rbp
	movl	$768, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%r8, %rbx
	subq	$280, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
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
	jne	.L27
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
.L27:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
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
