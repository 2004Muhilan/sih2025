	.file	"tinycrypt_ecc_dh.c"
	.text
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB15:
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movq	%rcx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rsi
	movdqu	(%rdx), %xmm1
	movaps	%xmm1, (%rsp)
	movdqu	16(%rdx), %xmm2
	movaps	%xmm2, 16(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rdx
	call	EccPoint_compute_public_key@PLT
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	jne	.L6
.L1:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L7
	addq	$120, %rsp
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
.L6:
	.cfi_restore_state
	movq	%rsp, %r13
	movswl	2(%rbx), %eax
	leal	14(%rax), %esi
	addl	$7, %eax
	cmovns	%eax, %esi
	sarl	$3, %esi
	movq	%r13, %rdx
	movq	%r12, %rdi
	call	uECC_vli_nativeToBytes@PLT
	leaq	32(%rsp), %r12
	movsbl	1(%rbx), %esi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movzbl	1(%rbx), %eax
	movsbq	(%rbx), %rdx
	leaq	(%r12,%rdx,4), %rdx
	movsbl	%al, %esi
	movsbq	%al, %rax
	leaq	0(%rbp,%rax), %rdi
	call	uECC_vli_nativeToBytes@PLT
	pxor	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	$1, %eax
	jmp	.L1
.L7:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB16:
	.cfi_startproc
	endbr64
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	movl	$64, %ebp
	leaq	32(%rsp), %r13
.L11:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L13
	movl	$64, %esi
	movq	%r13, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L8
	movswl	2(%rbx), %eax
	leal	62(%rax), %ecx
	addl	$31, %eax
	cmovns	%eax, %ecx
	sarl	$5, %ecx
	movsbl	%cl, %ecx
	leaq	36(%rbx), %rdx
	movq	%rsp, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	uECC_vli_mmod@PLT
	leaq	96(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	jne	.L16
	subl	$1, %ebp
	jne	.L11
	movl	$0, %eax
	jmp	.L8
.L16:
	movq	%rsp, %rbp
	movswl	2(%rbx), %eax
	leal	14(%rax), %esi
	addl	$7, %eax
	cmovns	%eax, %esi
	sarl	$3, %esi
	movq	%r12, %rdx
	movq	%r15, %rdi
	call	uECC_vli_nativeToBytes@PLT
	leaq	96(%rsp), %r12
	movsbl	1(%rbx), %esi
	movq	%r12, %rdx
	movq	%r14, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movzbl	1(%rbx), %eax
	movsbq	(%rbx), %rdx
	leaq	(%r12,%rdx,4), %rdx
	movsbl	%al, %esi
	movsbq	%al, %rax
	leaq	(%r14,%rax), %rdi
	call	uECC_vli_nativeToBytes@PLT
	pxor	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	$1, %eax
	jmp	.L8
.L13:
	movl	$0, %eax
.L8:
	movq	168(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L17
	addq	$184, %rsp
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
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%rdi, 8(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rbp
	movq	%rbp, 32(%rsp)
	leaq	80(%rsp), %r14
	movq	%r14, 40(%rsp)
	movzbl	(%rcx), %r12d
	movb	%r12b, 23(%rsp)
	movzbl	1(%rcx), %r12d
	movswl	2(%rcx), %eax
	leal	14(%rax), %edx
	addl	$7, %eax
	cmovns	%eax, %edx
	sarl	$3, %edx
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	%r12b, %r13d
	leaq	112(%rsp), %r15
	movl	%r13d, %edx
	movq	8(%rsp), %rsi
	movq	%r15, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbq	%r12b, %r12
	movq	8(%rsp), %rsi
	addq	%r12, %rsi
	movzbl	23(%rsp), %r12d
	movsbq	%r12b, %rax
	leaq	(%r15,%rax,4), %rdi
	movl	%r13d, %edx
	call	uECC_vli_bytesToNative@PLT
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	regularize_k@PLT
	movl	%eax, %ebp
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L22
	movsbl	%r12b, %edx
	leaq	4(%rbx), %rsi
	movl	%ebp, %eax
	movq	32(%rsp,%rax,8), %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.L20
	movl	%ebp, %eax
	movq	32(%rsp,%rax,8), %rcx
.L19:
	movzwl	2(%rbx), %eax
	leal	1(%rax), %r8d
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %eax
	movq	32(%rsp,%rax,8), %rdx
	leaq	112(%rsp), %rbp
	movq	%rbx, %r9
	movswl	%r8w, %r8d
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	EccPoint_mult@PLT
	movq	%rbp, %rdx
	movl	%r13d, %esi
	movq	24(%rsp), %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	EccPoint_isZero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L20:
	leaq	32(%rsp), %rdx
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	80(%rsp), %rdx
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
	leaq	48(%rsp), %rdx
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	184(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L24
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
.L22:
	.cfi_restore_state
	movl	$0, %ecx
	jmp	.L19
.L24:
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
