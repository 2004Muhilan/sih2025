	.file	"tinycrypt_ecc_dsa.c"
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
	.type	bits2int, @function
bits2int:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jnb	.L2
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear@PLT
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	cmpl	%edx, %eax
	jnb	.L7
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	orl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$32, %eax
	subl	-16(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
.L5:
	movq	-8(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, -8(%rbp)
	cmpq	%rax, -40(%rbp)
	jb	.L6
	movl	-20(%rbp), %eax
	movsbl	%al, %edx
	movq	-64(%rbp), %rax
	leaq	36(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.L1
	movl	-20(%rbp), %eax
	movsbl	%al, %edx
	movq	-64(%rbp), %rax
	leaq	36(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_sub@PLT
	jmp	.L1
.L7:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.globl	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -168(%rbp)
	movq	-224(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movb	%al, -167(%rbp)
	movq	-224(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, -166(%rbp)
	movsbl	-168(%rbp), %edx
	movq	-208(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L9
	movsbl	-167(%rbp), %edx
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp@PLT
	cmpb	$1, %al
	je	.L10
.L9:
	movl	$0, %eax
	jmp	.L16
.L10:
	movq	-224(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	regularize_k@PLT
	movl	%eax, -164(%rbp)
	movzwl	-166(%rbp), %eax
	addl	$1, %eax
	movswl	%ax, %ecx
	cmpl	$0, -164(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movq	-160(%rbp,%rax,8), %rdx
	movq	-224(%rbp), %rax
	leaq	68(%rax), %rsi
	movq	-224(%rbp), %rdi
	leaq	-80(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EccPoint_mult@PLT
	movsbl	-168(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L12
	movl	$0, %eax
	jmp	.L16
.L12:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	jne	.L13
	movsbl	-167(%rbp), %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear@PLT
	movl	$1, -144(%rbp)
	jmp	.L14
.L13:
	movsbl	-167(%rbp), %edx
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L16
.L14:
	movsbl	-167(%rbp), %edi
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-144(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-208(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	-167(%rbp), %edx
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rdi
	movq	-208(%rbp), %rsi
	movq	-208(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modInv@PLT
	movsbl	-167(%rbp), %edi
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-144(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-208(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movq	-224(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %ecx
	leaq	-80(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movq	-224(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	-167(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -112(%rbp,%rax,4)
	movsbl	-168(%rbp), %edx
	leaq	-80(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-167(%rbp), %edi
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movq	-224(%rbp), %rcx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	bits2int
	movsbl	-167(%rbp), %edi
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd@PLT
	movsbl	-167(%rbp), %edi
	movq	-224(%rbp), %rax
	leaq	36(%rax), %rcx
	movq	-208(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	-167(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_numBits@PLT
	movswl	%ax, %edx
	movq	-224(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	sall	$3, %eax
	cmpl	%eax, %edx
	jle	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-224(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-224(%rbp), %rdx
	movzbl	1(%rdx), %edx
	movsbq	%dl, %rcx
	movq	-216(%rbp), %rdx
	addq	%rdx, %rcx
	leaq	-112(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movl	$1, %eax
.L16:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -124(%rbp)
	jmp	.L19
.L24:
	call	uECC_get_rng@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L20
	leaq	-80(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L21
.L20:
	movl	$0, %eax
	jmp	.L25
.L21:
	movq	-168(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movsbl	%al, %edx
	movq	-168(%rbp), %rax
	leaq	36(%rax), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_mmod@PLT
	movq	-168(%rbp), %r8
	movq	-160(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movl	-148(%rbp), %edx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	uECC_sign_with_k
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L25
.L23:
	addl	$1, -124(%rbp)
.L19:
	cmpl	$63, -124(%rbp)
	jbe	.L24
	movl	$0, %eax
.L25:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.type	smax, @function
smax:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	movzwl	-8(%rbp), %edx
	movzwl	-4(%rbp), %eax
	cmpw	%ax, %dx
	cmovge	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	smax, .-smax
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$584, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movl	%edx, -564(%rbp)
	movq	%rcx, -576(%rbp)
	movq	%r8, -584(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-584(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -530(%rbp)
	movq	-584(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movb	%al, -529(%rbp)
	movsbl	-529(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -416(%rbp,%rax,4)
	movsbl	-529(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -224(%rbp,%rax,4)
	movsbl	-529(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -192(%rbp,%rax,4)
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %edx
	movq	-552(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-584(%rbp), %rdx
	movzbl	1(%rdx), %edx
	movsbq	%dl, %rcx
	movq	-552(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movsbq	-530(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-96(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_bytesToNative@PLT
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %edx
	movq	-576(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %edx
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbq	%al, %rcx
	movq	-576(%rbp), %rax
	addq	%rax, %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	-530(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L30
	movsbl	-530(%rbp), %edx
	leaq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L31
.L30:
	movl	$0, %eax
	jmp	.L43
.L31:
	movsbl	-529(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L33
	movsbl	-529(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.L34
.L33:
	movl	$0, %eax
	jmp	.L43
.L34:
	movsbl	-529(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rdi
	leaq	-192(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modInv@PLT
	movsbl	-529(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -512(%rbp,%rax,4)
	movq	-584(%rbp), %rcx
	movl	-564(%rbp), %edx
	movq	-560(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	bits2int
	movsbl	-529(%rbp), %edi
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-512(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	-529(%rbp), %edi
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-480(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	-530(%rbp), %edx
	leaq	-96(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %eax
	movsbq	-530(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-96(%rbp), %rdx
	leaq	(%rdx,%rcx), %rsi
	movsbq	-530(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	68(%rax), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	68(%rax), %rcx
	movsbq	-530(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edi
	movq	-584(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-352(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub@PLT
	movsbq	-530(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	-160(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	movq	-584(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_add@PLT
	movsbl	-530(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	4(%rax), %rdi
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modInv@PLT
	movsbq	-530(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	-160(%rbp), %rax
	leaq	(%rax,%rdx), %rsi
	movq	-584(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z@PLT
	movq	$0, -256(%rbp)
	movq	-584(%rbp), %rax
	addq	$68, %rax
	movq	%rax, -248(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -232(%rbp)
	movsbl	-529(%rbp), %edx
	leaq	-480(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_numBits@PLT
	movswl	%ax, %ebx
	movsbl	-529(%rbp), %edx
	leaq	-512(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_numBits@PLT
	cwtl
	movl	%ebx, %esi
	movl	%eax, %edi
	call	smax
	movw	%ax, -526(%rbp)
	movzwl	-526(%rbp), %eax
	subl	$1, %eax
	movswl	%ax, %edx
	leaq	-512(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movzwl	-526(%rbp), %eax
	subl	$1, %eax
	movswl	%ax, %edx
	leaq	-480(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	je	.L35
	movl	$2, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	orl	%ebx, %eax
	cltq
	movq	-256(%rbp,%rax,8), %rax
	movq	%rax, -520(%rbp)
	movsbl	-530(%rbp), %edx
	movq	-520(%rbp), %rcx
	leaq	-416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edx
	movsbq	-530(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-520(%rbp), %rax
	addq	%rax, %rcx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edx
	leaq	-448(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear@PLT
	movl	$1, -448(%rbp)
	movzwl	-526(%rbp), %eax
	subl	$2, %eax
	movw	%ax, -528(%rbp)
	jmp	.L37
.L41:
	movq	-584(%rbp), %rax
	movq	168(%rax), %r8
	movq	-584(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movswl	-528(%rbp), %edx
	leaq	-512(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movswl	-528(%rbp), %edx
	leaq	-480(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	je	.L38
	movl	$2, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	orl	%ebx, %eax
	movl	%eax, -524(%rbp)
	movl	-524(%rbp), %eax
	movq	-256(%rbp,%rax,8), %rax
	movq	%rax, -520(%rbp)
	cmpq	$0, -520(%rbp)
	je	.L40
	movsbl	-530(%rbp), %edx
	movq	-520(%rbp), %rcx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movsbl	-530(%rbp), %edx
	movsbq	-530(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-520(%rbp), %rax
	addq	%rax, %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set@PLT
	movq	-584(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z@PLT
	movsbl	-530(%rbp), %edi
	movq	-584(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-352(%rbp), %rdx
	leaq	-416(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub@PLT
	movq	-584(%rbp), %rdi
	leaq	-384(%rbp), %rcx
	leaq	-416(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_add@PLT
	movq	-584(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast@PLT
.L40:
	movzwl	-528(%rbp), %eax
	subl	$1, %eax
	movw	%ax, -528(%rbp)
.L37:
	cmpw	$0, -528(%rbp)
	jns	.L41
	movsbl	-530(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	4(%rax), %rdi
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modInv@PLT
	movq	-584(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z@PLT
	movsbl	-529(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-416(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.L42
	movsbl	-529(%rbp), %edx
	movq	-584(%rbp), %rax
	leaq	36(%rax), %rdi
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_sub@PLT
.L42:
	movsbl	-530(%rbp), %edx
	leaq	-224(%rbp), %rcx
	leaq	-416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_equal@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L43:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
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
