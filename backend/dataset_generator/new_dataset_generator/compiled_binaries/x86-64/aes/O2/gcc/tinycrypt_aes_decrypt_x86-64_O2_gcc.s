	.file	"tinycrypt_aes_decrypt.c"
	.text
	.p2align 4
	.type	mult_row_column, @function
mult_row_column:
.LFB16:
	.cfi_startproc
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
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movzbl	(%rsi), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	(%rbx), %edi
	movl	%eax, %r15d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	(%rbx), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %r12d
	call	_double_byte@PLT
	movzbl	1(%rbx), %edx
	movzbl	2(%rbx), %edi
	movb	%al, 12(%rsp)
	movb	%dl, 15(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movb	%al, 13(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movzbl	15(%rsp), %edx
	xorb	2(%rbx), %dl
	movb	%al, 14(%rsp)
	movb	%dl, 15(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	15(%rsp), %edx
	xorb	3(%rbx), %dl
	movl	%eax, %ecx
	movl	%edx, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorl	%r12d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorl	%ecx, %eax
	movb	%al, 0(%rbp)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %edi
	movl	%eax, %r15d
	movb	%dl, 14(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movl	%eax, %r12d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movb	%al, 12(%rsp)
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movzbl	14(%rsp), %edx
	xorb	2(%rbx), %dl
	movb	%al, 13(%rsp)
	movb	%dl, 15(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movb	%al, 14(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	15(%rsp), %edx
	xorb	3(%rbx), %dl
	movl	%eax, %ecx
	movl	%edx, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorl	%r12d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorl	%ecx, %eax
	movb	%al, 1(%rbp)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	(%rbx), %edi
	movl	%eax, %r15d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movzbl	(%rbx), %r12d
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	xorb	1(%rbx), %r12b
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movb	%al, 12(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movb	%al, 13(%rsp)
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movb	%al, 14(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movb	%al, 15(%rsp)
	call	_double_byte@PLT
	xorb	3(%rbx), %r12b
	movl	%eax, %ecx
	movl	%r12d, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	xorl	%ecx, %eax
	movb	%al, 2(%rbp)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	(%rbx), %edi
	movl	%eax, %r12d
	call	_double_byte@PLT
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %edi
	movl	%eax, %r15d
	movb	%dl, 12(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movzbl	12(%rsp), %edx
	xorb	1(%rbx), %dl
	movl	%eax, %r13d
	movb	%dl, 12(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	12(%rsp), %edx
	xorb	2(%rbx), %dl
	xorl	%edx, %r12d
	movzbl	3(%rbx), %edi
	xorl	%r15d, %r12d
	xorl	%r14d, %r12d
	xorl	%r13d, %r12d
	xorl	%eax, %r12d
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorl	%r12d, %r13d
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	xorl	%r14d, %r13d
	xorl	%eax, %r13d
	movb	%r13b, 3(%rbp)
	addq	$24, %rsp
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
	.size	mult_row_column, .-mult_row_column
	.p2align 4
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB15:
	.cfi_startproc
	endbr64
	jmp	tc_aes128_set_encrypt_key@PLT
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.p2align 4
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB21:
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
	movq	%rdx, %rbx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, 120(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L12
	testq	%rdi, %rdi
	je	.L12
	leaq	128(%rsp), %r15
	movq	%rsi, %rdx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%r15, %rdi
	call	_copy@PLT
	movq	%rbx, %rax
	movl	160(%rbx), %r10d
	movl	164(%rbx), %ecx
	movq	%rax, 56(%rsp)
	movl	172(%rax), %eax
	movl	168(%rbx), %ebx
	movl	%r10d, %esi
	movl	%r10d, %r8d
	movl	%ecx, %r9d
	shrl	$24, %esi
	movl	%eax, %r11d
	movl	%ecx, %r13d
	shrl	$16, %r8d
	shrl	$24, %r11d
	movl	%ebx, %edx
	movzbl	134(%rsp), %ebp
	movl	%ebx, %edi
	movl	%r11d, 48(%rsp)
	shrl	$16, %edx
	shrl	$24, %edi
	movzbl	%r8b, %r8d
	movl	%edx, 40(%rsp)
	shrl	$24, %r9d
	shrl	$16, %r13d
	movzbl	%sil, %esi
	movzbl	142(%rsp), %edx
	movl	%edi, 16(%rsp)
	movl	%eax, %edi
	movzbl	%r9b, %r9d
	movzbl	139(%rsp), %r11d
	shrl	$16, %edi
	movzbl	%r13b, %r13d
	movzbl	128(%rsp), %r12d
	movzbl	%dil, %edi
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	129(%rsp), %edx
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	132(%rsp), %edx
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	135(%rsp), %edx
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	138(%rsp), %edx
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	141(%rsp), %edx
	salq	$8, %r11
	orq	%rdx, %r11
	movzbl	131(%rsp), %edx
	salq	$8, %r11
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	137(%rsp), %ebp
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	140(%rsp), %ebp
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	143(%rsp), %ebp
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	130(%rsp), %ebp
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	133(%rsp), %ebp
	salq	$8, %rdx
	orq	%r12, %r11
	movzbl	%r10b, %r12d
	orq	%rbp, %rdx
	movzbl	136(%rsp), %ebp
	movq	%r11, (%rsp)
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	%bl, %ebp
	movzbl	%bh, %ebx
	movq	%rbp, %r11
	movq	%rdx, 8(%rsp)
	movzbl	%ah, %edx
	movq	%rbx, %r14
	salq	$8, %r11
	movq	%rdx, 64(%rsp)
	movzbl	%al, %eax
	orq	%rdx, %r11
	movzbl	%cl, %edx
	salq	$8, %r11
	orq	%r8, %r11
	salq	$8, %r11
	orq	%r9, %r11
	salq	$8, %r11
	orq	%rdx, %r11
	salq	$8, %r11
	orq	%rbx, %r11
	movzbl	%ch, %ebx
	movq	%r12, %rcx
	salq	$8, %r11
	salq	$8, %rcx
	movq	%rbx, 80(%rsp)
	orq	%rdi, %r11
	orq	%rbx, %rcx
	movzbl	48(%rsp), %ebx
	salq	$8, %r11
	salq	$8, %rcx
	movq	%r11, 72(%rsp)
	movzbl	40(%rsp), %r11d
	movq	%rax, 40(%rsp)
	movdqa	(%rsp), %xmm0
	orq	%r11, %rcx
	salq	$8, %rcx
	orq	%rbx, %rcx
	salq	$8, %rcx
	orq	%rax, %rcx
	movl	%r10d, %eax
	movzbl	16(%rsp), %r10d
	movzbl	%ah, %eax
	salq	$8, %rcx
	orq	%rax, %rcx
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	salq	$8, %rcx
	orq	%r13, %rcx
	orq	%rsi, %rax
	salq	$8, %rcx
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rax
	orq	%r10, %rcx
	salq	$8, %rdx
	movq	%rcx, 24(%rsp)
	movq	80(%rsp), %rcx
	salq	$8, %rax
	pxor	16(%rsp), %xmm0
	orq	%rcx, %rdx
	movq	48(%rsp), %rcx
	salq	$8, %rdx
	orq	%r13, %rdx
	salq	$8, %rdx
	orq	%r9, %rdx
	salq	$8, %rdx
	orq	%r12, %rdx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movq	64(%rsp), %rcx
	salq	$8, %rdx
	orq	%rcx, %rax
	orq	%r8, %rdx
	salq	$8, %rax
	salq	$8, %rdx
	orq	%rdi, %rax
	orq	%rsi, %rdx
	salq	$8, %rax
	movq	%rdx, (%rsp)
	orq	%rbx, %rax
	leaq	144(%rsp), %rbx
	salq	$8, %rax
	movq	%rbx, 16(%rsp)
	orq	%rbp, %rax
	leaq	inv_sbox(%rip), %rbp
	salq	$8, %rax
	orq	%r14, %rax
	salq	$8, %rax
	orq	%r11, %rax
	salq	$8, %rax
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	orq	%r10, %rdi
	leaq	144(%rax), %r12
	leaq	132(%rsp), %rax
	movq	%rdi, 8(%rsp)
	movdqa	(%rsp), %xmm1
	pxor	128(%rsp), %xmm1
	movq	%rax, 64(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	152(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	140(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	156(%rsp), %rax
	movq	%rax, 104(%rsp)
	movaps	%xmm1, 128(%rsp)
	.p2align 4,,10
	.p2align 3
.L9:
	movq	16(%rsp), %rdx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%r15, %rdi
	movaps	%xmm0, 144(%rsp)
	call	_copy@PLT
	movq	%r15, 112(%rsp)
	movq	%r15, %rax
	movq	%rbx, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L7:
	movzbl	(%rax), %edx
	addq	$1, %rax
	movzbl	0(%rbp,%rdx), %edx
	movb	%dl, -1(%rax)
	cmpq	%rax, %rbx
	jne	.L7
	movl	8(%r12), %edx
	movl	4(%r12), %edi
	movl	(%r12), %esi
	movl	12(%r12), %ecx
	movl	%edx, %eax
	movl	%edi, %r13d
	movl	%edi, %r14d
	movl	%edx, %r9d
	shrl	$24, %eax
	shrl	$16, %r14d
	movl	%esi, %r8d
	movl	%esi, %r11d
	movl	%eax, (%rsp)
	movzbl	%dil, %eax
	movzbl	%r14b, %r14d
	shrl	$24, %r13d
	movq	%rax, 48(%rsp)
	movl	%edi, %eax
	movzbl	%r13b, %r13d
	movl	%ecx, %r10d
	shrl	$16, %r9d
	movzbl	%ah, %edi
	movq	48(%rsp), %rax
	shrl	$24, %r10d
	movl	%r9d, 40(%rsp)
	shrl	$16, %r11d
	movl	%r10d, %r9d
	movl	%ecx, %r10d
	salq	$8, %rax
	shrl	$16, %r10d
	movzbl	%r9b, %r9d
	movzbl	%r11b, %r11d
	orq	%rdi, %rax
	movzbl	%sil, %edi
	movzbl	%r10b, %r10d
	shrl	$24, %r8d
	salq	$8, %rax
	movzbl	%r8b, %r8d
	orq	%r14, %rax
	salq	$8, %rax
	orq	%r13, %rax
	salq	$8, %rax
	orq	%rax, %rdi
	movl	%esi, %eax
	movzbl	%ah, %esi
	movq	%rdi, %rax
	movzbl	%dl, %edi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	%cl, %esi
	movzbl	%ch, %ecx
	salq	$8, %rsi
	salq	$8, %rax
	orq	%rcx, %rsi
	orq	%r11, %rax
	salq	$8, %rsi
	salq	$8, %rax
	orq	%r10, %rsi
	movq	%rsi, %rcx
	movzbl	%dh, %esi
	salq	$8, %rcx
	orq	%r9, %rcx
	salq	$8, %rcx
	orq	%rdi, %rcx
	movq	%rbx, %rdi
	salq	$8, %rcx
	movq	%rcx, %rdx
	movzbl	40(%rsp), %ecx
	orq	%rsi, %rdx
	movq	%r15, %rsi
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	(%rsp), %ecx
	orq	%r8, %rax
	subq	$16, %r12
	salq	$8, %rdx
	movq	%rax, (%rsp)
	orq	%rcx, %rdx
	movq	%rdx, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pxor	128(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	call	mult_row_column
	movq	64(%rsp), %rsi
	movq	88(%rsp), %rdi
	call	mult_row_column
	movq	72(%rsp), %rsi
	movq	96(%rsp), %rdi
	call	mult_row_column
	movq	80(%rsp), %rsi
	movq	104(%rsp), %rdi
	call	mult_row_column
	movl	$16, %ecx
	movq	%rbx, %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	call	_copy@PLT
	cmpq	%r12, 56(%rsp)
	je	.L8
	movzbl	139(%rsp), %edx
	movzbl	142(%rsp), %eax
	movzbl	134(%rsp), %esi
	movzbl	128(%rsp), %ecx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	129(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	132(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	135(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	138(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	141(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	131(%rsp), %eax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%rcx, %rdx
	orq	%rsi, %rax
	movzbl	137(%rsp), %esi
	movq	%rdx, (%rsp)
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	140(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	143(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	130(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	133(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	136(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm0
	jmp	.L9
.L12:
	xorl	%eax, %eax
.L5:
	movq	168(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L16
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
.L8:
	.cfi_restore_state
	movzbl	139(%rsp), %edx
	movq	%r15, %rdi
	movq	112(%rsp), %r14
	movzbl	142(%rsp), %eax
	movzbl	134(%rsp), %esi
	salq	$8, %rdx
	movzbl	128(%rsp), %ecx
	orq	%rax, %rdx
	movzbl	129(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	132(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	135(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	138(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	141(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	131(%rsp), %eax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%rcx, %rdx
	movl	$16, %ecx
	orq	%rsi, %rax
	movzbl	137(%rsp), %esi
	movq	%rdx, (%rsp)
	movq	%rbx, %rdx
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	140(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	143(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	130(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	133(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	136(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm3
	movaps	%xmm3, 144(%rsp)
	call	_copy@PLT
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%r14), %eax
	addq	$1, %r14
	movzbl	0(%rbp,%rax), %eax
	movb	%al, -1(%r14)
	cmpq	%r14, %rbx
	jne	.L10
	movq	56(%rsp), %rax
	movl	(%rax), %r11d
	movl	4(%rax), %edx
	movl	12(%rax), %r10d
	movl	8(%rax), %ebx
	movl	%r11d, %eax
	movzbl	%dl, %r13d
	movl	%edx, %ebp
	movl	%edx, %r12d
	shrl	$16, %eax
	shrl	$16, %r12d
	movl	%r11d, %ecx
	movl	%r10d, %r8d
	movl	%eax, (%rsp)
	movzbl	%dh, %eax
	movq	%r13, %rdx
	movzbl	%r12b, %r12d
	salq	$8, %rdx
	shrl	$24, %ebp
	movl	%r10d, %r9d
	movl	%ebx, %esi
	orq	%rax, %rdx
	movzbl	%bpl, %ebp
	movl	%r11d, %eax
	shrl	$16, %r9d
	salq	$8, %rdx
	movzbl	%ah, %eax
	movzbl	%r9b, %r9d
	shrl	$24, %r8d
	orq	%r12, %rdx
	movzbl	%r8b, %r8d
	movl	%ebx, %edi
	shrl	$24, %ecx
	salq	$8, %rdx
	shrl	$16, %edi
	movzbl	%cl, %ecx
	orq	%rbp, %rdx
	movzbl	%r11b, %ebp
	movzbl	%r10b, %r11d
	movzbl	%dil, %edi
	salq	$8, %rdx
	shrl	$24, %esi
	orq	%rbp, %rdx
	movzbl	%sil, %esi
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movl	%r10d, %eax
	movzbl	%ah, %eax
	salq	$8, %rdx
	movq	%rax, %r10
	movq	%r11, %rax
	salq	$8, %rax
	orq	%r10, %rax
	salq	$8, %rax
	orq	%r9, %rax
	salq	$8, %rax
	orq	%r8, %rax
	movzbl	%bl, %r8d
	movzbl	%bh, %ebx
	salq	$8, %rax
	orq	%r8, %rax
	salq	$8, %rax
	orq	%rbx, %rax
	salq	$8, %rax
	orq	%rdi, %rax
	orq	%rcx, %rdx
	movq	120(%rsp), %rdi
	movl	$16, %ecx
	salq	$8, %rax
	movq	%rdx, (%rsp)
	movq	%r15, %rdx
	orq	%rsi, %rax
	movl	$16, %esi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pxor	128(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	call	_copy@PLT
	movl	$16, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	_set@PLT
	movl	$1, %eax
	jmp	.L5
.L16:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE21:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
	.align 32
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.string	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253"
	.ascii	"\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017"
	.ascii	"\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034"
	.ascii	"u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V"
	.ascii	">K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\307"
	.ascii	"1\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311"
	.ascii	"\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004"
	.ascii	"~\272w\326&\341i\024cU!\f}"
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
