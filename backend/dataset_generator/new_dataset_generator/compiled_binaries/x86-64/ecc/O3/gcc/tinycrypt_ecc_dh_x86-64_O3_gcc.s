	.file	"tinycrypt_ecc_dh.c"
	.text
	.p2align 4
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rcx, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 160
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%rcx, %rdx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
	leaq	32(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
	movaps	%xmm1, (%rsp)
	movaps	%xmm2, 16(%rsp)
	call	EccPoint_compute_public_key@PLT
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.L9
.L1:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L10
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	movswl	2(%rbx), %eax
	movq	%r13, %rdx
	movq	%r12, %rdi
	leal	14(%rax), %esi
	addl	$7, %eax
	cmovns	%eax, %esi
	sarl	$3, %esi
	call	uECC_vli_nativeToBytes@PLT
	movsbl	1(%rbx), %esi
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movsbq	1(%rbx), %rsi
	movsbq	(%rbx), %rdx
	leaq	0(%rbp,%rsi), %rdi
	leaq	(%r14,%rdx,4), %rdx
	call	uECC_vli_nativeToBytes@PLT
	pxor	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	$1, %eax
	jmp	.L1
.L10:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.p2align 4
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$64, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%rsi, 8(%rsp)
	leaq	48(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$64, %esi
	movq	%r13, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L12
	movswl	2(%rbx), %eax
	leaq	16(%rsp), %rbp
	leaq	36(%rbx), %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	leaq	112(%rsp), %r14
	leal	62(%rax), %ecx
	addl	$31, %eax
	cmovns	%eax, %ecx
	sarl	$5, %ecx
	movsbl	%cl, %ecx
	call	uECC_vli_mmod@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	jne	.L25
	subl	$1, %r12d
	je	.L12
.L15:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	jne	.L26
.L12:
	xorl	%eax, %eax
.L11:
	movq	184(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L27
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	movswl	2(%rbx), %eax
	movq	8(%rsp), %rdi
	movq	%rbp, %rdx
	leal	14(%rax), %esi
	addl	$7, %eax
	cmovns	%eax, %esi
	sarl	$3, %esi
	call	uECC_vli_nativeToBytes@PLT
	movsbl	1(%rbx), %esi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movsbq	1(%rbx), %rsi
	movsbq	(%rbx), %rdx
	leaq	(%r15,%rsi), %rdi
	leaq	(%r14,%rdx,4), %rdx
	call	uECC_vli_nativeToBytes@PLT
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	$1, %eax
	jmp	.L11
.L27:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.p2align 4
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
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
	movq	%rdi, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movsbq	1(%rcx), %r15
	movzbl	(%rcx), %r13d
	movq	%rdx, 24(%rsp)
	leaq	48(%rsp), %r12
	leaq	112(%rsp), %rbp
	movq	%r12, %xmm0
	movq	%r12, %rdi
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	leaq	80(%rsp), %rax
	movb	%r13b, 23(%rsp)
	movq	%rax, 8(%rsp)
	movswl	2(%rcx), %eax
	leal	14(%rax), %edx
	addl	$7, %eax
	cmovns	%eax, %edx
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	sarl	$3, %edx
	call	uECC_vli_bytesToNative@PLT
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbq	23(%rsp), %rax
	leaq	(%rbx,%r15), %rsi
	movl	%r15d, %edx
	leaq	0(%rbp,%rax,4), %rdi
	movq	%rax, %r13
	call	uECC_vli_bytesToNative@PLT
	movq	8(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	regularize_k@PLT
	movl	%eax, %ebx
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L32
	movsbl	%r13b, %edx
	movl	%ebx, %r13d
	leaq	4(%r14), %rsi
	movq	32(%rsp,%r13,8), %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.L30
	movq	32(%rsp,%r13,8), %rcx
.L29:
	movzwl	2(%r14), %eax
	movq	%r14, %r9
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	leal	1(%rax), %r8d
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	movswl	%r8w, %r8d
	movq	32(%rsp,%rax,8), %rdx
	call	EccPoint_mult@PLT
	movq	24(%rsp), %rdi
	movq	%rbp, %rdx
	movl	%r15d, %esi
	call	uECC_vli_nativeToBytes@PLT
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	EccPoint_isZero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L30:
	pxor	%xmm0, %xmm0
	leaq	32(%rsp), %rdx
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	184(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L37
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	xorl	%ecx, %ecx
	jmp	.L29
.L37:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
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
