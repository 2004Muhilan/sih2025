	.file	"tinycrypt_aes_encrypt.c"
	.text
	.p2align 4
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movdqa	.LC0(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	.LC2(%rip), %rax
	movups	%xmm0, 4(%rsp)
	movdqa	.LC1(%rip), %xmm0
	movq	%rax, 36(%rsp)
	movups	%xmm0, 20(%rsp)
	testq	%rsi, %rsi
	je	.L7
	testq	%rdi, %rdi
	je	.L7
	xorl	%edx, %edx
.L3:
	movzbl	(%rsi,%rdx), %eax
	movzbl	1(%rsi,%rdx), %ecx
	sall	$24, %eax
	sall	$16, %ecx
	orl	%ecx, %eax
	movzbl	3(%rsi,%rdx), %ecx
	orl	%ecx, %eax
	movzbl	2(%rsi,%rdx), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, (%rdi,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L3
	movl	12(%rdi), %eax
	movl	$4, %edx
	leaq	sbox(%rip), %rsi
	.p2align 4,,10
	.p2align 3
.L5:
	testb	$3, %dl
	jne	.L4
	roll	$8, %eax
	movl	%eax, %ecx
	movzbl	%al, %r8d
	shrl	$24, %ecx
	movzbl	(%rsi,%r8), %r8d
	movzbl	(%rsi,%rcx), %ecx
	sall	$24, %ecx
	orl	%r8d, %ecx
	movl	%eax, %r8d
	movzbl	%ah, %eax
	shrl	$16, %r8d
	movzbl	(%rsi,%rax), %eax
	movzbl	%r8b, %r8d
	movzbl	(%rsi,%r8), %r8d
	sall	$8, %eax
	sall	$16, %r8d
	orl	%r8d, %ecx
	orl	%ecx, %eax
	movl	%edx, %ecx
	shrl	$2, %ecx
	xorl	(%rsp,%rcx,4), %eax
.L4:
	xorl	-16(%rdi,%rdx,4), %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	$44, %rdx
	jne	.L5
	movl	$1, %eax
.L1:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L12
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1
.L12:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.p2align 4
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L19
	testq	%rdi, %rdi
	je	.L19
	leaq	80(%rsp), %rax
	movq	%rsi, %rdx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	call	_copy@PLT
	movl	4(%r14), %esi
	movl	8(%r14), %edx
	movq	%r14, 72(%rsp)
	movl	(%r14), %ebx
	movl	12(%r14), %ecx
	movl	%esi, %eax
	movzbl	%sil, %r15d
	movl	%esi, %r13d
	movl	%edx, %r9d
	shrl	$24, %eax
	shrl	$16, %r13d
	movl	%ecx, %r10d
	movl	%ecx, %r11d
	movl	%eax, %r12d
	movl	%edx, %eax
	movzbl	%r13b, %r13d
	shrl	$16, %r11d
	shrl	$24, %eax
	movzbl	%r12b, %r12d
	movzbl	%r11b, %r11d
	shrl	$24, %r10d
	movl	%eax, %edi
	movl	%esi, %eax
	movzbl	%r10b, %r10d
	movl	%ebx, %r8d
	movzbl	%ah, %esi
	movq	%r15, %rax
	movl	%ebx, %ebp
	shrl	$16, %r9d
	salq	$8, %rax
	shrl	$16, %ebp
	movzbl	%r9b, %r9d
	movzbl	%dil, %edi
	orq	%rsi, %rax
	movzbl	%bpl, %ebp
	shrl	$24, %r8d
	leaq	16(%r14), %r15
	salq	$8, %rax
	movzbl	%r8b, %r8d
	movq	%rax, %rsi
	movzbl	%bl, %eax
	movzbl	%bh, %ebx
	orq	%r13, %rsi
	salq	$8, %rsi
	orq	%r12, %rsi
	movq	64(%rsp), %r12
	salq	$8, %rsi
	orq	%rax, %rsi
	movzbl	%cl, %eax
	movzbl	%ch, %ecx
	salq	$8, %rax
	salq	$8, %rsi
	orq	%rcx, %rax
	movzbl	%dl, %ecx
	orq	%rbx, %rsi
	movzbl	%dh, %edx
	salq	$8, %rax
	salq	$8, %rsi
	leaq	96(%rsp), %rbx
	orq	%r11, %rax
	orq	%rbp, %rsi
	leaq	sbox(%rip), %rbp
	salq	$8, %rax
	salq	$8, %rsi
	orq	%r10, %rax
	salq	$8, %rax
	orq	%rcx, %rax
	salq	$8, %rax
	orq	%rdx, %rax
	salq	$8, %rax
	orq	%r8, %rsi
	orq	%r9, %rax
	movq	%rsi, (%rsp)
	salq	$8, %rax
	orq	%rdi, %rax
	movq	%rax, 8(%rsp)
	leaq	160(%r14), %rax
	movdqa	(%rsp), %xmm0
	movq	%rax, 40(%rsp)
	pxor	80(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%r12, 48(%rsp)
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L16:
	movzbl	(%rax), %edx
	addq	$1, %rax
	movzbl	0(%rbp,%rdx), %edx
	movb	%dl, -1(%rax)
	cmpq	%rax, %rbx
	jne	.L16
	movzbl	83(%rsp), %edx
	movzbl	94(%rsp), %eax
	movq	%r12, %rdi
	movzbl	86(%rsp), %esi
	movzbl	80(%rsp), %ecx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	89(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	84(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	95(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	90(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	85(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	91(%rsp), %eax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%rcx, %rdx
	movl	$16, %ecx
	orq	%rsi, %rax
	movzbl	81(%rsp), %esi
	movq	%rdx, (%rsp)
	movq	%rbx, %rdx
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	92(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	87(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	82(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	93(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	88(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm1
	movaps	%xmm1, 96(%rsp)
	call	_copy@PLT
	movzbl	80(%rsp), %edi
	call	_double_byte@PLT
	movzbl	81(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	81(%rsp), %edi
	movl	%eax, %edx
	movzbl	82(%rsp), %eax
	xorl	%edi, %eax
	xorb	83(%rsp), %al
	xorl	%r13d, %eax
	movzbl	80(%rsp), %r13d
	xorl	%edx, %eax
	movb	%al, 96(%rsp)
	call	_double_byte@PLT
	movzbl	82(%rsp), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	82(%rsp), %edi
	xorl	%edi, %r13d
	xorb	83(%rsp), %r13b
	xorl	%r14d, %r13d
	movzbl	80(%rsp), %r14d
	xorb	81(%rsp), %r14b
	xorl	%eax, %r13d
	movb	%r13b, 97(%rsp)
	call	_double_byte@PLT
	movzbl	83(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	83(%rsp), %r14b
	movzbl	80(%rsp), %edi
	xorl	%r13d, %r14d
	xorl	%eax, %r14d
	movb	%r14b, 98(%rsp)
	call	_double_byte@PLT
	movzbl	83(%rsp), %edi
	movzbl	80(%rsp), %r13d
	xorb	81(%rsp), %r13b
	xorb	82(%rsp), %r13b
	xorl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	84(%rsp), %edi
	xorl	%eax, %r13d
	movb	%r13b, 99(%rsp)
	call	_double_byte@PLT
	movzbl	85(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	85(%rsp), %edi
	movl	%eax, %edx
	movzbl	86(%rsp), %eax
	xorl	%edi, %eax
	xorb	87(%rsp), %al
	xorl	%r13d, %eax
	movzbl	84(%rsp), %r13d
	xorl	%edx, %eax
	movb	%al, 100(%rsp)
	call	_double_byte@PLT
	movzbl	86(%rsp), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	86(%rsp), %edi
	xorl	%edi, %r13d
	xorb	87(%rsp), %r13b
	xorl	%r14d, %r13d
	movzbl	84(%rsp), %r14d
	xorl	%eax, %r13d
	xorb	85(%rsp), %r14b
	movb	%r13b, 101(%rsp)
	call	_double_byte@PLT
	movzbl	87(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	87(%rsp), %r14b
	movzbl	84(%rsp), %edi
	xorl	%r13d, %r14d
	xorl	%eax, %r14d
	movb	%r14b, 102(%rsp)
	call	_double_byte@PLT
	movzbl	87(%rsp), %edi
	movzbl	84(%rsp), %r13d
	xorb	85(%rsp), %r13b
	xorb	86(%rsp), %r13b
	xorl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	88(%rsp), %edi
	xorl	%eax, %r13d
	movb	%r13b, 103(%rsp)
	call	_double_byte@PLT
	movzbl	89(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	89(%rsp), %edi
	movl	%eax, %edx
	movzbl	90(%rsp), %eax
	xorl	%edi, %eax
	xorb	91(%rsp), %al
	xorl	%r13d, %eax
	movzbl	88(%rsp), %r13d
	xorl	%edx, %eax
	movb	%al, 104(%rsp)
	call	_double_byte@PLT
	movzbl	90(%rsp), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	90(%rsp), %edi
	xorl	%edi, %r13d
	xorb	91(%rsp), %r13b
	xorl	%r14d, %r13d
	movzbl	88(%rsp), %r14d
	xorb	89(%rsp), %r14b
	xorl	%eax, %r13d
	movb	%r13b, 105(%rsp)
	call	_double_byte@PLT
	movzbl	91(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	91(%rsp), %r14b
	movzbl	88(%rsp), %edi
	xorl	%r13d, %r14d
	xorl	%eax, %r14d
	movb	%r14b, 106(%rsp)
	call	_double_byte@PLT
	movzbl	91(%rsp), %edi
	movzbl	88(%rsp), %r13d
	xorb	89(%rsp), %r13b
	xorb	90(%rsp), %r13b
	xorl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	92(%rsp), %edi
	xorl	%eax, %r13d
	movb	%r13b, 107(%rsp)
	call	_double_byte@PLT
	movzbl	93(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	movzbl	93(%rsp), %edi
	movl	%eax, %edx
	movzbl	94(%rsp), %eax
	xorl	%edi, %eax
	xorb	95(%rsp), %al
	xorl	%r13d, %eax
	movzbl	92(%rsp), %r13d
	xorl	%edx, %eax
	movb	%al, 108(%rsp)
	call	_double_byte@PLT
	movzbl	94(%rsp), %edi
	movl	%eax, %r14d
	call	_double_byte@PLT
	movzbl	94(%rsp), %edi
	xorl	%edi, %r13d
	xorb	95(%rsp), %r13b
	xorl	%r14d, %r13d
	movzbl	92(%rsp), %r14d
	xorb	93(%rsp), %r14b
	xorl	%eax, %r13d
	movb	%r13b, 109(%rsp)
	call	_double_byte@PLT
	movzbl	95(%rsp), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	95(%rsp), %r14b
	movzbl	92(%rsp), %edi
	xorl	%r13d, %r14d
	xorl	%eax, %r14d
	movb	%r14b, 110(%rsp)
	call	_double_byte@PLT
	movzbl	95(%rsp), %edi
	movzbl	92(%rsp), %r13d
	xorb	93(%rsp), %r13b
	xorb	94(%rsp), %r13b
	xorl	%eax, %r13d
	call	_double_byte@PLT
	movl	$16, %ecx
	movq	%rbx, %rdx
	movq	%r12, %rdi
	xorl	%eax, %r13d
	movl	$16, %esi
	movb	%r13b, 111(%rsp)
	call	_copy@PLT
	movl	(%r15), %esi
	movl	4(%r15), %edi
	movl	8(%r15), %edx
	movl	12(%r15), %ecx
	movl	%esi, %r8d
	movl	%esi, %r11d
	movl	%edi, %r13d
	movl	%edi, %r14d
	movl	%edx, %eax
	shrl	$24, %r8d
	movl	%edx, %r9d
	movl	%ecx, %r10d
	shrl	$16, %r11d
	shrl	$24, %r13d
	movzbl	%r8b, %r8d
	shrl	$24, %eax
	shrl	$16, %r14d
	movzbl	%r13b, %r13d
	movzbl	%r11b, %r11d
	movl	%eax, (%rsp)
	movzbl	%dil, %eax
	movzbl	%r14b, %r14d
	shrl	$16, %r9d
	movq	%rax, 32(%rsp)
	movl	%edi, %eax
	shrl	$24, %r10d
	movzbl	%ah, %edi
	movq	32(%rsp), %rax
	movl	%r9d, 28(%rsp)
	movl	%r10d, %r9d
	movl	%ecx, %r10d
	movzbl	%r9b, %r9d
	salq	$8, %rax
	shrl	$16, %r10d
	orq	%rdi, %rax
	movzbl	%sil, %edi
	movzbl	%r10b, %r10d
	salq	$8, %rax
	orq	%r14, %rax
	salq	$8, %rax
	orq	%r13, %rax
	salq	$8, %rax
	orq	%rax, %rdi
	movl	%esi, %eax
	movzbl	%ah, %esi
	movq	%rdi, %rax
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	%cl, %esi
	movzbl	%ch, %ecx
	salq	$8, %rsi
	salq	$8, %rax
	orq	%rcx, %rsi
	orq	%r11, %rax
	movq	%rsi, %rcx
	movzbl	%dl, %esi
	salq	$8, %rax
	salq	$8, %rcx
	orq	%r10, %rcx
	salq	$8, %rcx
	orq	%r9, %rcx
	salq	$8, %rcx
	orq	%rsi, %rcx
	movzbl	%dh, %esi
	salq	$8, %rcx
	movq	%rcx, %rdx
	movzbl	28(%rsp), %ecx
	orq	%rsi, %rdx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	(%rsp), %ecx
	salq	$8, %rdx
	orq	%r8, %rax
	addq	$16, %r15
	orq	%rcx, %rdx
	movq	%rax, (%rsp)
	movq	40(%rsp), %rax
	movq	%rdx, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pxor	80(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	cmpq	%rax, %r15
	jne	.L15
	movq	48(%rsp), %r8
	movq	72(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L17:
	movzbl	(%r8), %eax
	addq	$1, %r8
	movzbl	0(%rbp,%rax), %eax
	movb	%al, -1(%r8)
	cmpq	%r8, %rbx
	jne	.L17
	movzbl	83(%rsp), %edx
	movzbl	94(%rsp), %eax
	movzbl	86(%rsp), %esi
	movzbl	80(%rsp), %ecx
	salq	$8, %rdx
	movq	64(%rsp), %r15
	orq	%rax, %rdx
	movzbl	89(%rsp), %eax
	salq	$8, %rdx
	movq	%r15, %rdi
	orq	%rax, %rdx
	movzbl	84(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	95(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	90(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	85(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	91(%rsp), %eax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%rcx, %rdx
	movl	$16, %ecx
	orq	%rsi, %rax
	movzbl	81(%rsp), %esi
	movq	%rdx, (%rsp)
	movq	%rbx, %rdx
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	92(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	87(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	82(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	93(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	88(%rsp), %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm2
	movaps	%xmm2, 96(%rsp)
	call	_copy@PLT
	movl	160(%r14), %r11d
	movl	164(%r14), %edx
	movl	172(%r14), %r10d
	movl	168(%r14), %ebx
	movl	%r11d, %eax
	movzbl	%dl, %r13d
	movl	%r11d, %ecx
	movl	%edx, %ebp
	shrl	$16, %eax
	movl	%edx, %r12d
	shrl	$24, %ecx
	movl	%r10d, %r8d
	movl	%eax, (%rsp)
	movzbl	%dh, %eax
	movq	%r13, %rdx
	shrl	$24, %ebp
	shrl	$16, %r12d
	salq	$8, %rdx
	movzbl	%bpl, %ebp
	movl	%r10d, %r9d
	orq	%rax, %rdx
	movzbl	%r12b, %r12d
	movl	%r11d, %eax
	shrl	$16, %r9d
	salq	$8, %rdx
	movzbl	%ah, %eax
	movzbl	%r9b, %r9d
	shrl	$24, %r8d
	orq	%r12, %rdx
	movzbl	%r8b, %r8d
	movl	%ebx, %esi
	movl	%ebx, %edi
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
	orq	%rcx, %rdx
	movl	$16, %ecx
	salq	$8, %rax
	movq	%rdx, (%rsp)
	movq	%r15, %rdx
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
	movq	56(%rsp), %rdi
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pxor	80(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	call	_copy@PLT
	movl	$16, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	_set@PLT
	movl	$1, %eax
	jmp	.L13
.L19:
	xorl	%eax, %eax
.L13:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L25
	addq	$136, %rsp
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
.L25:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align 32
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321"
	.ascii	"\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002"
	.ascii	"\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363"
	.ascii	"\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220"
	.ascii	"\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221"
	.ascii	"\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034"
	.ascii	"\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5"
	.ascii	"W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207"
	.ascii	"\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.align 16
.LC1:
	.long	268435456
	.long	536870912
	.long	1073741824
	.long	-2147483648
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	452984832
	.long	905969664
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
