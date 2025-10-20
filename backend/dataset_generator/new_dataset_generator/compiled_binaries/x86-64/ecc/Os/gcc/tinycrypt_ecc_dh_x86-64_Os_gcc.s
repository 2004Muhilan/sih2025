	.file	"tinycrypt_ecc_dh.c"
	.text
	.type	_set_secure.constprop.0, @function
_set_secure.constprop.0:
.LFB18:
	.cfi_startproc
	movl	%esi, %ecx
	xorl	%eax, %eax
	movq	%rdi, %rdx
	rep stosb
	ret
	.cfi_endproc
.LFE18:
	.size	_set_secure.constprop.0, .-_set_secure.constprop.0
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
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
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movq	%rcx, %rdx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %r12
	leaq	40(%rsp), %r13
	movq	%r12, %rsi
	movq	%r13, %rdi
	movups	%xmm0, 8(%rsp)
	movups	%xmm1, 24(%rsp)
	call	EccPoint_compute_public_key@PLT
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L2
	movswl	2(%rbx), %eax
	movl	$8, %ecx
	movq	%r14, %rdi
	addl	$7, %eax
	cltd
	idivl	%ecx
	movq	%r12, %rdx
	movl	%eax, %esi
	call	uECC_vli_nativeToBytes@PLT
	movsbl	1(%rbx), %esi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movsbq	1(%rbx), %rsi
	movsbq	(%rbx), %rdx
	leaq	0(%rbp,%rsi), %rdi
	leaq	0(%r13,%rdx,4), %rdx
	call	uECC_vli_nativeToBytes@PLT
	movl	$32, %esi
	movq	%r12, %rdi
	call	_set_secure.constprop.0
	movl	$1, %eax
.L2:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	addq	$112, %rsp
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
	movl	$64, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%rsi, 8(%rsp)
	leaq	56(%rsp), %r15
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
.L14:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L11
	movl	$64, %esi
	movq	%r15, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L11
	movswl	2(%rbx), %eax
	movl	$32, %ecx
	leaq	24(%rsp), %r12
	movq	%r15, %rsi
	movq	%r12, %rdi
	leaq	120(%rsp), %r14
	addl	$31, %eax
	cltd
	idivl	%ecx
	leaq	36(%rbx), %rdx
	movsbl	%al, %ecx
	call	uECC_vli_mmod@PLT
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	je	.L12
	movswl	2(%rbx), %eax
	movl	$8, %ecx
	movq	8(%rsp), %rdi
	addl	$7, %eax
	cltd
	idivl	%ecx
	movq	%r12, %rdx
	movl	%eax, %esi
	call	uECC_vli_nativeToBytes@PLT
	movsbl	1(%rbx), %esi
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movsbq	1(%rbx), %rsi
	movsbq	(%rbx), %rax
	movq	%rsi, %rdi
	leaq	(%r14,%rax,4), %rdx
	addq	%rbp, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movl	$32, %esi
	movq	%r12, %rdi
	call	_set_secure.constprop.0
	movl	$1, %eax
	jmp	.L10
.L12:
	decl	%r13d
	jne	.L14
.L11:
	xorl	%eax, %eax
.L10:
	movq	184(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	addq	$200, %rsp
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movsbq	1(%rcx), %r14
	movb	(%rcx), %r13b
	movq	%rdx, 24(%rsp)
	leaq	56(%rsp), %r12
	leaq	88(%rsp), %r15
	movq	%r12, %rdi
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	movswl	2(%rcx), %eax
	movl	$8, %ecx
	movq	%r12, 40(%rsp)
	movq	%r15, 48(%rsp)
	addl	$7, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	call	uECC_vli_bytesToNative@PLT
	movsbl	%r14b, %eax
	movq	%rbp, %rsi
	movsbl	%r14b, %edx
	movl	%eax, 20(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	uECC_vli_bytesToNative@PLT
	movq	8(%rsp), %rcx
	movsbq	%r13b, %rax
	movl	20(%rsp), %edx
	leaq	0(%rbp,%r14), %rsi
	leaq	(%rcx,%rax,4), %rdi
	call	uECC_vli_bytesToNative@PLT
	movq	%rbx, %rcx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	regularize_k@PLT
	movl	%eax, %ebp
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L28
	movsbl	%r13b, %edx
	movl	%ebp, %r13d
	leaq	4(%rbx), %rsi
	movq	40(%rsp,%r13,8), %rdi
	call	uECC_generate_random_int@PLT
	movl	%eax, %r8d
	testl	%eax, %eax
	je	.L26
	movq	40(%rsp,%r13,8), %rcx
	jmp	.L25
.L28:
	xorl	%ecx, %ecx
.L25:
	movw	2(%rbx), %ax
	movq	8(%rsp), %rsi
	movq	%rbx, %r9
	leal	1(%rax), %r8d
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movq	%rsi, %rdi
	sete	%al
	movswl	%r8w, %r8d
	movq	40(%rsp,%rax,8), %rdx
	call	EccPoint_mult@PLT
	movq	8(%rsp), %rdx
	movl	20(%rsp), %esi
	movq	24(%rsp), %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	8(%rsp), %rdi
	movq	%rbx, %rsi
	call	EccPoint_isZero@PLT
	xorl	%r8d, %r8d
	testl	%eax, %eax
	sete	%r8b
.L26:
	leaq	40(%rsp), %rdi
	movl	$16, %esi
	call	_set_secure.constprop.0
	movq	%r15, %rdi
	movl	$32, %esi
	call	_set_secure.constprop.0
	movq	%r12, %rdi
	call	_set_secure.constprop.0
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	movl	%r8d, %eax
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
