	.file	"tinycrypt_ecc.c"
	.text
	.section	.data.rel.ro.local,"aw"
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
	.section	.data.rel,"aw"
	.align 8
	.type	g_rng_function, @object
	.size	g_rng_function, 8
g_rng_function:
	.quad	default_CSPRNG
	.text
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, g_rng_function(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	uECC_set_rng, .-uECC_set_rng
	.globl	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	g_rng_function(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_get_rng, .-uECC_get_rng
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.globl	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	addl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movb	$0, -1(%rbp)
	jmp	.L9
.L10:
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L9:
	movzbl	-1(%rbp), %eax
	cmpb	-28(%rbp), %al
	jl	.L10
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -5(%rbp)
	jmp	.L12
.L13:
	movsbq	-5(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	orl	%eax, -4(%rbp)
	movzbl	-5(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5(%rbp)
.L12:
	movzbl	-5(%rbp), %eax
	cmpb	-28(%rbp), %al
	jl	.L13
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	sarw	$5, %ax
	movswq	%ax, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movswl	-12(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.type	vli_numDigits, @function
vli_numDigits:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %eax
	subl	$1, %eax
	movb	%al, -1(%rbp)
	jmp	.L18
.L20:
	movzbl	-1(%rbp), %eax
	subl	$1, %eax
	movb	%al, -1(%rbp)
.L18:
	cmpb	$0, -1(%rbp)
	js	.L19
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L20
.L19:
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	vli_numDigits, .-vli_numDigits
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	vli_numDigits
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movsbq	-9(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L25
.L26:
	shrl	-4(%rbp)
	addl	$1, -8(%rbp)
.L25:
	cmpl	$0, -4(%rbp)
	jne	.L26
	movsbw	-9(%rbp), %ax
	subl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movb	$0, -1(%rbp)
	jmp	.L28
.L29:
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movsbq	-1(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L28:
	movzbl	-1(%rbp), %eax
	cmpb	-36(%rbp), %al
	jl	.L29
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	uECC_vli_set, .-uECC_vli_set
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-36(%rbp), %eax
	subl	$1, %eax
	movb	%al, -1(%rbp)
	jmp	.L31
.L35:
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movsbq	-1(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-1(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L34
	movl	$-1, %eax
	jmp	.L33
.L34:
	movzbl	-1(%rbp), %eax
	subl	$1, %eax
	movb	%al, -1(%rbp)
.L31:
	cmpb	$0, -1(%rbp)
	jns	.L35
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movl	$0, -4(%rbp)
	movzbl	-36(%rbp), %eax
	subl	$1, %eax
	movb	%al, -5(%rbp)
	jmp	.L37
.L38:
	movsbq	-5(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-5(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	xorl	%edx, %eax
	orl	%eax, -4(%rbp)
	movzbl	-5(%rbp), %eax
	subl	$1, %eax
	movb	%al, -5(%rbp)
.L37:
	cmpb	$0, -5(%rbp)
	jns	.L38
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	imull	-8(%rbp), %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	cond_set, .-cond_set
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movb	%al, -44(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, -13(%rbp)
	jmp	.L43
.L44:
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	cond_set
	movl	%eax, -12(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movzbl	-13(%rbp), %eax
	addl	$1, %eax
	movb	%al, -13(%rbp)
.L43:
	movzbl	-13(%rbp), %eax
	cmpb	-44(%rbp), %al
	jl	.L44
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movb	%al, -44(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, -13(%rbp)
	jmp	.L47
.L48:
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	cond_set
	movl	%eax, -12(%rbp)
	movsbq	-13(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movzbl	-13(%rbp), %eax
	addl	$1, %eax
	movb	%al, -13(%rbp)
.L47:
	movzbl	-13(%rbp), %eax
	cmpb	-44(%rbp), %al
	jl	.L48
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_vli_add, .-uECC_vli_add
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movb	%al, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsbl	-84(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movsbl	-84(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	sete	%al
	movl	%eax, %ecx
	movl	-56(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	movsbq	-28(%rbp), %rax
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	jmp	.L54
.L55:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	%eax
	orl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	sall	$31, %eax
	movl	%eax, -16(%rbp)
.L54:
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, -24(%rbp)
	cmpq	%rax, -8(%rbp)
	jb	.L55
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.type	muladd, @function
muladd:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	muladd, .-muladd
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB18:
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
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, -21(%rbp)
	jmp	.L58
.L61:
	movb	$0, -22(%rbp)
	jmp	.L59
.L60:
	movsbl	-21(%rbp), %edx
	movsbl	-22(%rbp), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movsbq	-22(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	%rdi, %r8
	movl	%eax, %edi
	call	muladd
	movzbl	-22(%rbp), %eax
	addl	$1, %eax
	movb	%al, -22(%rbp)
.L59:
	movzbl	-22(%rbp), %eax
	cmpb	-21(%rbp), %al
	jle	.L60
	movsbq	-21(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	movzbl	-21(%rbp), %eax
	addl	$1, %eax
	movb	%al, -21(%rbp)
.L58:
	movzbl	-21(%rbp), %eax
	cmpb	-60(%rbp), %al
	jl	.L61
	movzbl	-60(%rbp), %eax
	movb	%al, -21(%rbp)
	jmp	.L62
.L65:
	movzbl	-21(%rbp), %eax
	movzbl	-60(%rbp), %edx
	subl	%edx, %eax
	addl	$1, %eax
	movb	%al, -22(%rbp)
	jmp	.L63
.L64:
	movsbl	-21(%rbp), %edx
	movsbl	-22(%rbp), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movsbq	-22(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	%rdi, %r8
	movl	%eax, %edi
	call	muladd
	movzbl	-22(%rbp), %eax
	addl	$1, %eax
	movb	%al, -22(%rbp)
.L63:
	movzbl	-22(%rbp), %eax
	cmpb	-60(%rbp), %al
	jl	.L64
	movsbq	-21(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	movzbl	-21(%rbp), %eax
	addl	$1, %eax
	movb	%al, -21(%rbp)
.L62:
	movsbl	-21(%rbp), %edx
	movsbl	-60(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jl	.L65
	movsbl	-60(%rbp), %eax
	addl	%eax, %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -52(%rbp)
	movsbl	-52(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movsbl	-52(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	je	.L70
.L68:
	movsbl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -52(%rbp)
	movsbl	-52(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L73
	movsbl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_add
.L73:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movl	%ecx, %eax
	movb	%al, -236(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -168(%rbp)
	movsbw	-236(%rbp), %ax
	sall	$6, %eax
	movl	%eax, %ebx
	movsbl	-236(%rbp), %edx
	movq	-232(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_numBits
	movl	%eax, %edx
	movl	%ebx, %eax
	subl	%edx, %eax
	movw	%ax, -194(%rbp)
	movzwl	-194(%rbp), %eax
	leal	31(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$5, %ax
	movb	%al, -196(%rbp)
	movzwl	-194(%rbp), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$11, %dx
	addl	%edx, %eax
	andl	$31, %eax
	subl	%edx, %eax
	movb	%al, -195(%rbp)
	movl	$0, -188(%rbp)
	movsbl	-196(%rbp), %edx
	leaq	-160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	cmpb	$0, -195(%rbp)
	jle	.L75
	movl	$0, -192(%rbp)
	jmp	.L76
.L77:
	movl	-192(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbl	-195(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movsbl	-196(%rbp), %ecx
	movl	-192(%rbp), %edx
	addl	%ecx, %edx
	orl	-188(%rbp), %eax
	movl	%edx, %edx
	movl	%eax, -160(%rbp,%rdx,4)
	movl	-192(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movsbl	-195(%rbp), %eax
	movl	$32, %edx
	subl	%eax, %edx
	movl	%esi, %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	movl	%eax, -188(%rbp)
	addl	$1, -192(%rbp)
.L76:
	movsbl	-236(%rbp), %eax
	cmpl	%eax, -192(%rbp)
	jb	.L77
	jmp	.L78
.L75:
	movsbl	-236(%rbp), %edx
	movsbq	-196(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	leaq	-160(%rbp), %rax
	addq	%rax, %rcx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_set
.L78:
	movl	$1, -192(%rbp)
	jmp	.L79
.L83:
	movl	$0, -184(%rbp)
	movb	$0, -197(%rbp)
	jmp	.L80
.L82:
	movl	-192(%rbp), %eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-197(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbl	-197(%rbp), %eax
	cltq
	movl	-160(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	-184(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-192(%rbp), %eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-197(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -180(%rbp)
	je	.L81
	movl	-192(%rbp), %eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-197(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-180(%rbp), %eax
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
.L81:
	movl	$1, %eax
	subl	-192(%rbp), %eax
	movl	%eax, %eax
	movq	-176(%rbp,%rax,8), %rax
	movsbq	-197(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-180(%rbp), %eax
	movl	%eax, (%rdx)
	movzbl	-197(%rbp), %eax
	addl	$1, %eax
	movb	%al, -197(%rbp)
.L80:
	movsbl	-197(%rbp), %edx
	movsbl	-236(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	jl	.L82
	movl	-192(%rbp), %eax
	cmpl	-184(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -192(%rbp)
	movsbl	-236(%rbp), %edx
	leaq	-160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbl	-236(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-160(%rbp,%rax,4), %edx
	movsbl	-236(%rbp), %eax
	cltq
	movl	-160(%rbp,%rax,4), %eax
	sall	$31, %eax
	movl	%eax, %ecx
	movsbl	-236(%rbp), %eax
	subl	$1, %eax
	orl	%ecx, %edx
	cltq
	movl	%edx, -160(%rbp,%rax,4)
	movsbl	-236(%rbp), %eax
	movsbq	-236(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	uECC_vli_rshift1
	movzwl	-194(%rbp), %eax
	subl	$1, %eax
	movw	%ax, -194(%rbp)
.L79:
	cmpw	$0, -194(%rbp)
	jns	.L83
	movsbl	-236(%rbp), %edx
	movl	-192(%rbp), %eax
	movq	-176(%rbp,%rax,8), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, %eax
	movb	%al, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsbl	-116(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_mult
	movsbl	-116(%rbp), %ecx
	movq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_mmod
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L86
	call	__stack_chk_fail@PLT
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_mult
	movq	-112(%rbp), %rax
	movq	184(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L91
	movsbl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	%eax, -4(%rbp)
.L91:
	movsbl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	cmpl	$0, -4(%rbp)
	je	.L93
	movsbq	-36(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-36(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	orl	$-2147483648, %edx
	movl	%edx, (%rax)
.L93:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	vli_modInv_update, .-vli_modInv_update
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movl	%ecx, %eax
	movb	%al, -188(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsbl	-188(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	je	.L95
	movsbl	-188(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	jmp	.L94
.L95:
	movsbl	-188(%rbp), %edx
	movq	-176(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-188(%rbp), %edx
	movq	-184(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-188(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	movl	$1, -80(%rbp)
	movsbl	-188(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	jmp	.L97
.L104:
	movl	-144(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L98
	movsbl	-188(%rbp), %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbl	-188(%rbp), %edx
	movq	-184(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vli_modInv_update
	jmp	.L97
.L98:
	movl	-112(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L100
	movsbl	-188(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbl	-188(%rbp), %edx
	movq	-184(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vli_modInv_update
	jmp	.L97
.L100:
	cmpb	$0, -145(%rbp)
	jle	.L101
	movsbl	-188(%rbp), %ecx
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	movsbl	-188(%rbp), %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbl	-188(%rbp), %edx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	jns	.L102
	movsbl	-188(%rbp), %ecx
	movq	-184(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_add
.L102:
	movsbl	-188(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	movsbl	-188(%rbp), %edx
	movq	-184(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vli_modInv_update
	jmp	.L97
.L101:
	movsbl	-188(%rbp), %ecx
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	movsbl	-188(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbl	-188(%rbp), %edx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	jns	.L103
	movsbl	-188(%rbp), %ecx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_add
.L103:
	movsbl	-188(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_sub
	movsbl	-188(%rbp), %edx
	movq	-184(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vli_modInv_update
.L97:
	movsbl	-188(%rbp), %edx
	leaq	-112(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	movb	%al, -145(%rbp)
	cmpb	$0, -145(%rbp)
	jne	.L104
	movsbl	-188(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
.L94:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L105
	call	__stack_chk_fail@PLT
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -85(%rbp)
	movsbl	-85(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L112
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-128(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-128(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	je	.L109
	movsbl	-85(%rbp), %edx
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rdi
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	%eax, -84(%rbp)
	movsbl	-85(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
	movsbq	-85(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-84(%rbp), %eax
	sall	$31, %eax
	movl	%eax, %ecx
	movsbq	-85(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rsi
	movq	-104(%rbp), %rax
	addq	%rsi, %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L110
.L109:
	movsbl	-85(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_rshift1
.L110:
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-128(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-85(%rbp), %edi
	movq	-128(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-85(%rbp), %edx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-85(%rbp), %edx
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-85(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	jmp	.L106
.L112:
	nop
.L106:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L111
	call	__stack_chk_fail@PLT
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	double_jacobian_default, .-double_jacobian_default
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movl	$3, -48(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-49(%rbp), %edi
	movq	-88(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-49(%rbp), %edi
	movq	-88(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-88(%rbp), %rax
	leaq	132(%rax), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	x_side_default, .-x_side_default
	.globl	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	curve_secp256r1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movl	$0, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	%eax, -52(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L121
.L119:
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	leaq	4+curve_secp256r1(%rip), %rdx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L119
	jmp	.L124
.L122:
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$8, %ecx
	leaq	4+curve_secp256r1(%rip), %rdx
	movq	%rax, %rdi
	call	uECC_vli_sub
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
.L121:
	cmpl	$0, -52(%rbp)
	jne	.L122
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	leaq	4+curve_secp256r1(%rip), %rax
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	jne	.L122
.L124:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	addl	%eax, %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	apply_z, .-apply_z
	.type	XYcZ_initial_double, @function
XYcZ_initial_double:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L130
	movsbl	-49(%rbp), %edx
	movq	-104(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	jmp	.L131
.L130:
	movsbl	-49(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	movl	$1, -48(%rbp)
.L131:
	movsbl	-49(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-49(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z
	movq	-112(%rbp), %rax
	movq	168(%rax), %r8
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	XYcZ_initial_double, .-XYcZ_initial_double
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-104(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-104(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-88(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-49(%rbp), %edi
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-49(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	XYcZ_add, .-XYcZ_add
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB35:
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
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -113(%rbp)
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-168(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-168(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-168(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-160(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-168(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modAdd
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-168(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-160(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-168(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-136(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	-168(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-113(%rbp), %edi
	movq	-168(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movsbl	-113(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	XYcZ_addC, .-XYcZ_addC
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movl	%r8d, %eax
	movq	%r9, -240(%rbp)
	movw	%ax, -228(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-240(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -183(%rbp)
	movsbl	-183(%rbp), %edx
	movq	-208(%rbp), %rax
	leaq	-144(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_set
	movsbl	-183(%rbp), %eax
	movsbq	-183(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-208(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	leaq	-80(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_set
	movq	-240(%rbp), %r9
	movq	-224(%rbp), %r8
	leaq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rax
	leaq	-80(%rbp), %rcx
	leaq	32(%rcx), %rsi
	leaq	-144(%rbp), %rcx
	leaq	32(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	XYcZ_initial_double
	movzwl	-228(%rbp), %eax
	subl	$2, %eax
	movw	%ax, -182(%rbp)
	jmp	.L138
.L139:
	movswl	-182(%rbp), %edx
	movq	-216(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -180(%rbp)
	leaq	-80(%rbp), %rax
	movl	-180(%rbp), %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-144(%rbp), %rax
	movl	-180(%rbp), %edx
	salq	$5, %rdx
	addq	%rax, %rdx
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %esi
	leaq	-80(%rbp), %rax
	movl	%esi, %esi
	salq	$5, %rsi
	addq	%rax, %rsi
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edi
	leaq	-144(%rbp), %rax
	movl	%edi, %edi
	salq	$5, %rdi
	addq	%rdi, %rax
	movq	-240(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_addC
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	-180(%rbp), %esi
	salq	$5, %rsi
	addq	%rax, %rsi
	leaq	-144(%rbp), %rax
	movl	-180(%rbp), %edi
	salq	$5, %rdi
	addq	%rdi, %rax
	movq	-240(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_add
	movzwl	-182(%rbp), %eax
	subl	$1, %eax
	movw	%ax, -182(%rbp)
.L138:
	cmpw	$0, -182(%rbp)
	jg	.L139
	movq	-216(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -180(%rbp)
	leaq	-80(%rbp), %rax
	movl	-180(%rbp), %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-144(%rbp), %rax
	movl	-180(%rbp), %edx
	salq	$5, %rdx
	addq	%rax, %rdx
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %esi
	leaq	-80(%rbp), %rax
	movl	%esi, %esi
	salq	$5, %rsi
	addq	%rax, %rsi
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edi
	leaq	-144(%rbp), %rax
	movl	%edi, %edi
	salq	$5, %rdi
	addq	%rdi, %rax
	movq	-240(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_addC
	movsbl	-183(%rbp), %edi
	movq	-240(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	leaq	32(%rax), %rsi
	leaq	-176(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-240(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movq	-240(%rbp), %rcx
	movq	-208(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movsbl	-183(%rbp), %edx
	movq	-240(%rbp), %rax
	leaq	4(%rax), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modInv
	movsbq	-183(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-240(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-240(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	$1, %eax
	subl	-180(%rbp), %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %edx
	salq	$5, %rdx
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	-180(%rbp), %esi
	salq	$5, %rsi
	addq	%rax, %rsi
	leaq	-144(%rbp), %rax
	movl	-180(%rbp), %edi
	salq	$5, %rdi
	addq	%rdi, %rax
	movq	-240(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	XYcZ_add
	movq	-240(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	apply_z
	movsbl	-183(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_set
	movsbl	-183(%rbp), %edx
	movsbq	-183(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-200(%rbp), %rax
	addq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_set
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L140
	call	__stack_chk_fail@PLT
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	EccPoint_mult, .-EccPoint_mult
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movb	%al, -7(%rbp)
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, -6(%rbp)
	movsbl	-7(%rbp), %edx
	movq	-48(%rbp), %rax
	leaq	36(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_add
	testl	%eax, %eax
	jne	.L142
	movswl	-6(%rbp), %edx
	movsbl	-7(%rbp), %eax
	sall	$5, %eax
	cmpl	%eax, %edx
	jge	.L143
	movswl	-6(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	je	.L143
.L142:
	movl	$1, %eax
	jmp	.L144
.L143:
	movl	$0, %eax
.L144:
	movl	%eax, -4(%rbp)
	movsbl	-7(%rbp), %edx
	movq	-48(%rbp), %rax
	leaq	36(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	uECC_vli_add
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	regularize_k, .-regularize_k
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB38:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	regularize_k
	movl	%eax, -100(%rbp)
	movq	-136(%rbp), %rax
	movzwl	2(%rax), %eax
	addl	$1, %eax
	movswl	%ax, %ecx
	cmpl	$0, -100(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movq	-136(%rbp), %rax
	leaq	68(%rax), %rsi
	movq	-136(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EccPoint_mult
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EccPoint_isZero
	testl	%eax, %eax
	je	.L147
	movl	$0, %eax
	jmp	.L149
.L147:
	movl	$1, %eax
.L149:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L150
	call	__stack_chk_fail@PLT
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -5(%rbp)
	jmp	.L152
.L153:
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movsbl	-5(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	andl	$3, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movsbq	-5(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movzbl	-5(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5(%rbp)
.L152:
	movsbl	-5(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L153
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$3, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_clear
	movb	$0, -5(%rbp)
	jmp	.L155
.L156:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movsbl	-5(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, %edi
	movl	%edi, %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbq	-5(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movl	-4(%rbp), %eax
	andl	$3, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %ecx
	movl	%edi, %eax
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movzbl	-5(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5(%rbp)
.L155:
	movsbl	-5(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L156
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movl	$-1, -4(%rbp)
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_numBits
	movw	%ax, -10(%rbp)
	movq	g_rng_function(%rip), %rax
	testq	%rax, %rax
	jne	.L158
	movl	$0, %eax
	jmp	.L159
.L158:
	movl	$0, -8(%rbp)
	jmp	.L160
.L163:
	movq	g_rng_function(%rip), %rdx
	movsbl	-36(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L161
	movl	$0, %eax
	jmp	.L159
.L161:
	movsbq	-36(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movsbw	-36(%rbp), %ax
	sall	$5, %eax
	movzwl	-10(%rbp), %ecx
	subl	%ecx, %eax
	cwtl
	movl	-4(%rbp), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movsbq	-36(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	andl	%ecx, %edx
	movl	%edx, (%rax)
	movsbl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L162
	movsbl	-36(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp
	cmpb	$1, %al
	jne	.L162
	movl	$1, %eax
	jmp	.L159
.L162:
	addl	$1, -8(%rbp)
.L160:
	cmpl	$63, -8(%rbp)
	jbe	.L163
	movl	$0, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -81(%rbp)
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EccPoint_isZero
	testl	%eax, %eax
	je	.L165
	movl	$-1, %eax
	jmp	.L170
.L165:
	movsbl	-81(%rbp), %edx
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	jne	.L167
	movsbl	-81(%rbp), %eax
	movsbq	-81(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-104(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-112(%rbp), %rdx
	leaq	4(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	je	.L168
.L167:
	movl	$-2, %eax
	jmp	.L170
.L168:
	movsbq	-81(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSquare_fast
	movq	-112(%rbp), %rax
	movq	176(%rax), %r8
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movsbl	-81(%rbp), %edx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_equal
	testl	%eax, %eax
	je	.L169
	movl	$-3, %eax
	jmp	.L170
.L169:
	movl	$0, %eax
.L170:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	uECC_valid_point, .-uECC_valid_point
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %edx
	movq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-96(%rbp), %rdx
	movzbl	1(%rdx), %edx
	movsbq	%dl, %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-80(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	uECC_vli_bytesToNative
	movq	-96(%rbp), %rax
	leaq	68(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	jne	.L173
	movl	$-4, %eax
	jmp	.L175
.L173:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uECC_valid_point
.L175:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L176
	call	__stack_chk_fail@PLT
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB44:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	uECC_vli_bytesToNative
	movq	-136(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movsbl	%al, %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	je	.L178
	movl	$0, %eax
	jmp	.L182
.L178:
	movq	-136(%rbp), %rax
	movzwl	2(%rax), %eax
	cwtl
	addl	$31, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movsbl	%al, %edx
	movq	-136(%rbp), %rax
	leaq	36(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	uECC_vli_cmp
	cmpb	$1, %al
	je	.L180
	movl	$0, %eax
	jmp	.L182
.L180:
	movq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EccPoint_compute_public_key
	testl	%eax, %eax
	jne	.L181
	movl	$0, %eax
	jmp	.L182
.L181:
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %ecx
	leaq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uECC_vli_nativeToBytes
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	movq	-136(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	movsbq	%cl, %rsi
	movq	-128(%rbp), %rcx
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	uECC_vli_nativeToBytes
	movl	$1, %eax
.L182:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
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
