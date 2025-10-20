	.file	"tinycrypt_ecc_dh.c"
	.text
	.section	.data.rel.ro,"aw"
	.align 32
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 192
curve_secp256r1:
	.byte	8
	.byte	32
	.value	256
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	-60611247
	.long	-205927742
	.long	-1491624316
	.long	-1125713235
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	-661077354
	.long	-190760635
	.long	770388896
	.long	1996717441
	.long	1671708914
	.long	-121837851
	.long	-517193145
	.long	1796723186
	.long	935285237
	.long	-877248408
	.long	1798397646
	.long	734933847
	.long	2081398294
	.long	-1897403574
	.long	-31817829
	.long	1340293858
	.long	668098635
	.long	1003371582
	.long	-866930442
	.long	1696401072
	.long	1989707452
	.long	-1276396203
	.long	-1439001625
	.long	1522939352
	.zero	4
	.quad	double_jacobian_default
	.quad	x_side_default
	.quad	vli_mmod_fast_secp256r1
	.text
	.type	_set_secure, @function
_set_secure:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movl	%edx, -16(%rbp)
	movb	%al, -12(%rbp)
	movl	-16(%rbp), %edx
	movzbl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_set_secure, .-_set_secure
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	je	.L3
	movq	-144(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %ecx
	leaq	-80(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-144(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	movsbq	%cl, %rsi
	movq	-120(%rbp), %rcx
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	uECC_vli_nativeToBytes@PLT
	leaq	-112(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set_secure
	movl	$1, %eax
	jmp	.L5
.L3:
	movl	$0, %eax
.L5:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -188(%rbp)
	jmp	.L8
.L13:
	call	uECC_get_rng@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L9
	leaq	-144(%rbp), %rax
	movq	-184(%rbp), %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L10
.L9:
	movl	$0, %eax
	jmp	.L14
.L10:
	movq	-216(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movsbl	%al, %edx
	movq	-216(%rbp), %rax
	leaq	36(%rax), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_mmod@PLT
	movq	-216(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	je	.L12
	movq	-216(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	leaq	-176(%rbp), %rdx
	movq	-208(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-216(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %ecx
	leaq	-80(%rbp), %rdx
	movq	-200(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-216(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-216(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	movsbq	%cl, %rsi
	movq	-200(%rbp), %rcx
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	uECC_vli_nativeToBytes@PLT
	leaq	-176(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set_secure
	movl	$1, %eax
	jmp	.L14
.L12:
	addl	$1, -188(%rbp)
.L8:
	cmpl	$63, -188(%rbp)
	jbe	.L13
	movl	$0, %eax
.L14:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_make_key, .-uECC_make_key
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -168(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -178(%rbp)
	movq	-224(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -177(%rbp)
	movq	-224(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	-177(%rbp), %edx
	movq	-200(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	-177(%rbp), %eax
	movsbq	-177(%rbp), %rcx
	movq	-200(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movsbq	-178(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-80(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_bytesToNative@PLT
	movq	-224(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	regularize_k@PLT
	movl	%eax, -172(%rbp)
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L17
	movsbl	-178(%rbp), %edx
	movq	-224(%rbp), %rax
	leaq	4(%rax), %rcx
	movl	-172(%rbp), %eax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, -176(%rbp)
	jmp	.L19
.L18:
	movl	-172(%rbp), %eax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -168(%rbp)
.L17:
	movq	-224(%rbp), %rax
	movzwl	2(%rax), %eax
	addl	$1, %eax
	movswl	%ax, %edi
	cmpl	$0, -172(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movq	-160(%rbp,%rax,8), %rdx
	movq	-224(%rbp), %r8
	movq	-168(%rbp), %rcx
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EccPoint_mult@PLT
	movsbl	-177(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-224(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EccPoint_isZero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -176(%rbp)
.L19:
	leaq	-160(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set_secure
	leaq	-112(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set_secure
	leaq	-144(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set_secure
	movl	-176(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
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
