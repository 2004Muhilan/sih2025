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
	je	.L8
	testq	%rdi, %rdi
	je	.L8
	movzbl	(%rsi), %eax
	movzbl	3(%rsi), %ecx
	sall	$24, %eax
	orl	%ecx, %eax
	movzbl	1(%rsi), %ecx
	sall	$16, %ecx
	orl	%ecx, %eax
	movzbl	2(%rsi), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, (%rdi)
	movzbl	5(%rsi), %eax
	movzbl	4(%rsi), %ecx
	sall	$16, %eax
	sall	$24, %ecx
	orl	%ecx, %eax
	movzbl	7(%rsi), %ecx
	orl	%ecx, %eax
	movzbl	6(%rsi), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, 4(%rdi)
	movzbl	8(%rsi), %eax
	movzbl	9(%rsi), %ecx
	sall	$24, %eax
	sall	$16, %ecx
	orl	%ecx, %eax
	movzbl	11(%rsi), %ecx
	orl	%ecx, %eax
	movzbl	10(%rsi), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, 8(%rdi)
	movzbl	12(%rsi), %eax
	movzbl	13(%rsi), %ecx
	movzbl	14(%rsi), %edx
	sall	$24, %eax
	sall	$16, %ecx
	sall	$8, %edx
	orl	%ecx, %eax
	movzbl	15(%rsi), %ecx
	leaq	sbox(%rip), %rsi
	orl	%ecx, %eax
	orl	%edx, %eax
	movl	$4, %edx
	movl	%eax, 12(%rdi)
	.p2align 4,,10
	.p2align 3
.L6:
	testb	$3, %dl
	jne	.L3
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
.L3:
	xorl	-16(%rdi,%rdx,4), %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	$44, %rdx
	jne	.L6
	movl	$1, %eax
.L1:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L14
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1
.L14:
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 120(%rsp)
	movq	%rdi, 112(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L19
	testq	%rdi, %rdi
	je	.L19
	leaq	128(%rsp), %rdi
	movq	%rsi, %rdx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rdi, 96(%rsp)
	call	_copy@PLT
	movl	8(%r14), %r8d
	movl	(%r14), %eax
	movzbl	138(%rsp), %r15d
	movl	4(%r14), %ebp
	movl	%r8d, %r10d
	movl	%eax, %edi
	movl	%eax, %r11d
	movl	%eax, %r9d
	shrl	$8, %r10d
	xorb	131(%rsp), %al
	movl	%r8d, %esi
	movl	%ebp, %edx
	xorl	%r10d, %r15d
	movb	%al, 40(%rsp)
	movq	%r14, %rax
	movl	12(%r14), %r14d
	movb	%r15b, (%rsp)
	movl	%r8d, %ecx
	movq	%rax, %r10
	movl	%ebp, %r13d
	movzbl	139(%rsp), %r15d
	shrl	$24, %edi
	movl	%ebp, %ebx
	shrl	$16, %r11d
	movzbl	142(%rsp), %r12d
	addq	$160, %r10
	shrl	$8, %r9d
	xorb	128(%rsp), %dil
	movq	%r10, 104(%rsp)
	shrl	$24, %r13d
	xorl	%r8d, %r15d
	movl	%r14d, %r8d
	movb	%r15b, 24(%rsp)
	shrl	$16, %edx
	shrl	$8, %ebx
	xorb	133(%rsp), %dl
	movzbl	140(%rsp), %r15d
	shrl	$24, %esi
	shrl	$16, %ecx
	xorb	134(%rsp), %bl
	shrl	$24, %r8d
	xorb	129(%rsp), %r11b
	xorb	130(%rsp), %r9b
	xorl	%r8d, %r15d
	movl	%r14d, %r8d
	xorb	132(%rsp), %r13b
	xorb	135(%rsp), %bpl
	movb	%r15b, 32(%rsp)
	movl	%r14d, %r15d
	shrl	$16, %r8d
	xorb	136(%rsp), %sil
	shrl	$8, %r15d
	xorb	137(%rsp), %cl
	xorb	141(%rsp), %r8b
	xorl	%r15d, %r12d
	leaq	sbox(%rip), %r10
	movzbl	143(%rsp), %r15d
	xorl	%r14d, %r15d
	leaq	16(%rax), %r14
	leaq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	movzbl	40(%rsp), %eax
	.p2align 4,,10
	.p2align 3
.L17:
	movzbl	%sil, %esi
	movzbl	%bpl, %ebp
	movzbl	%cl, %ecx
	movzbl	%bl, %ebx
	movq	%rsi, 40(%rsp)
	movzbl	24(%rsp), %esi
	movzbl	%dl, %edx
	movzbl	%al, %eax
	movzbl	%r13b, %r13d
	movzbl	%r9b, %r9d
	movzbl	%r11b, %r11d
	movzbl	%r15b, %r15d
	movq	%rcx, 48(%rsp)
	movzbl	(%rsp), %ecx
	movzbl	%dil, %edi
	movzbl	%r12b, %r12d
	movq	%rsi, 24(%rsp)
	movzbl	(%r10,%rbp), %esi
	movzbl	%r8b, %r8d
	movzbl	(%r10,%rbx), %ebx
	movzbl	(%r10,%rdx), %edx
	movq	%rcx, (%rsp)
	movzbl	32(%rsp), %ecx
	movzbl	(%r10,%r12), %r12d
	movq	%rsi, 32(%rsp)
	salq	$8, %rsi
	orq	%rbx, %rsi
	movq	%rbx, 56(%rsp)
	movzbl	(%r10,%r13), %ebx
	salq	$8, %rsi
	movq	%rdx, 64(%rsp)
	movzbl	(%r10,%r9), %r13d
	orq	%rdx, %rsi
	movzbl	(%r10,%rax), %edx
	movzbl	(%r10,%r11), %eax
	salq	$8, %rsi
	movzbl	(%r10,%rdi), %r9d
	movzbl	(%r10,%r8), %r8d
	orq	%rbx, %rsi
	movq	%rax, 72(%rsp)
	movzbl	(%r10,%rcx), %r11d
	salq	$8, %rsi
	movq	(%rsp), %rbp
	orq	%rdx, %rsi
	salq	$8, %rdx
	salq	$8, %rsi
	movzbl	(%r10,%rbp), %ebp
	orq	%r12, %rdx
	orq	%r13, %rsi
	salq	$8, %rdx
	salq	$8, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	movzbl	(%r10,%r15), %esi
	movq	48(%rsp), %r15
	salq	$8, %rax
	movq	%rsi, %rdi
	movq	%rax, 80(%rsp)
	movzbl	(%r10,%r15), %r15d
	salq	$8, %rdi
	movq	%rdi, %rax
	orq	%r15, %rdx
	orq	%r12, %rax
	salq	$8, %rax
	orq	%r8, %rax
	movq	%rax, %rdi
	salq	$8, %rdi
	movq	%rdi, %rcx
	movq	24(%rsp), %rdi
	orq	%r11, %rcx
	movzbl	(%r10,%rdi), %eax
	salq	$8, %rcx
	movq	40(%rsp), %rdi
	orq	%rax, %rcx
	movzbl	(%r10,%rdi), %edi
	movq	80(%rsp), %r10
	salq	$8, %rcx
	orq	%rbp, %rcx
	orq	%r9, %r10
	salq	$8, %rcx
	movq	%r10, (%rsp)
	orq	%r15, %rcx
	movq	96(%rsp), %r15
	salq	$8, %rcx
	movq	%rcx, %r10
	movq	64(%rsp), %rcx
	orq	%rdi, %r10
	salq	$8, %rdx
	orq	%rbx, %rdx
	movq	56(%rsp), %rbx
	salq	$8, %rax
	movq	%r10, 8(%rsp)
	salq	$8, %rdx
	movdqa	(%rsp), %xmm1
	orq	%rsi, %rdx
	orq	%rbx, %rax
	movq	32(%rsp), %rsi
	salq	$8, %rdx
	salq	$8, %rax
	movaps	%xmm1, 128(%rsp)
	orq	%rbp, %rdx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movq	72(%rsp), %rcx
	salq	$8, %rdx
	orq	%rcx, %rax
	orq	%r9, %rdx
	movl	$16, %ecx
	salq	$8, %rax
	movq	%rdx, (%rsp)
	orq	%r11, %rax
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	salq	$8, %rax
	orq	%r13, %rax
	movq	88(%rsp), %r13
	salq	$8, %rax
	orq	%r8, %rax
	movq	%r13, %rdx
	salq	$8, %rax
	orq	%rdi, %rax
	movq	%r15, %rdi
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm2
	movaps	%xmm2, 144(%rsp)
	call	_copy@PLT
	movzbl	128(%rsp), %edi
	call	_double_byte@PLT
	movzbl	129(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	129(%rsp), %edi
	movzbl	128(%rsp), %ebp
	movl	%eax, %edx
	movzbl	130(%rsp), %eax
	xorl	%edi, %eax
	xorb	131(%rsp), %al
	xorl	%ebx, %eax
	xorl	%edx, %eax
	movb	%al, 144(%rsp)
	call	_double_byte@PLT
	movzbl	130(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	130(%rsp), %edi
	movl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edi, %eax
	xorb	131(%rsp), %al
	xorl	%ebx, %eax
	movzbl	128(%rsp), %ebx
	xorb	129(%rsp), %bl
	xorl	%edx, %eax
	movb	%al, 145(%rsp)
	call	_double_byte@PLT
	movzbl	131(%rsp), %edi
	movl	%eax, %ebp
	call	_double_byte@PLT
	xorb	131(%rsp), %bl
	movzbl	128(%rsp), %edi
	xorl	%ebp, %ebx
	xorl	%eax, %ebx
	movb	%bl, 146(%rsp)
	call	_double_byte@PLT
	movzbl	131(%rsp), %edi
	movzbl	128(%rsp), %ebx
	xorb	129(%rsp), %bl
	xorb	130(%rsp), %bl
	xorl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	132(%rsp), %edi
	xorl	%eax, %ebx
	movb	%bl, 147(%rsp)
	call	_double_byte@PLT
	movzbl	133(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	133(%rsp), %edi
	movzbl	132(%rsp), %ebp
	movl	%eax, %edx
	movzbl	134(%rsp), %eax
	xorl	%edi, %eax
	xorb	135(%rsp), %al
	xorl	%ebx, %eax
	xorl	%edx, %eax
	movb	%al, 148(%rsp)
	call	_double_byte@PLT
	movzbl	134(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	134(%rsp), %edi
	movl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edi, %eax
	xorb	135(%rsp), %al
	xorl	%ebx, %eax
	movzbl	132(%rsp), %ebx
	xorb	133(%rsp), %bl
	xorl	%edx, %eax
	movb	%al, 149(%rsp)
	call	_double_byte@PLT
	movzbl	135(%rsp), %edi
	movl	%eax, %ebp
	call	_double_byte@PLT
	xorb	135(%rsp), %bl
	movzbl	132(%rsp), %edi
	xorl	%ebp, %ebx
	xorl	%eax, %ebx
	movb	%bl, 150(%rsp)
	call	_double_byte@PLT
	movzbl	135(%rsp), %edi
	movzbl	132(%rsp), %ebx
	xorb	133(%rsp), %bl
	xorb	134(%rsp), %bl
	xorl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	136(%rsp), %edi
	xorl	%eax, %ebx
	movb	%bl, 151(%rsp)
	call	_double_byte@PLT
	movzbl	137(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	137(%rsp), %edi
	movzbl	136(%rsp), %ebp
	movl	%eax, %edx
	movzbl	138(%rsp), %eax
	xorl	%edi, %eax
	xorb	139(%rsp), %al
	xorl	%ebx, %eax
	xorl	%edx, %eax
	movb	%al, 152(%rsp)
	call	_double_byte@PLT
	movzbl	138(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	138(%rsp), %edi
	movl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edi, %eax
	xorb	139(%rsp), %al
	xorl	%ebx, %eax
	movzbl	136(%rsp), %ebx
	xorb	137(%rsp), %bl
	xorl	%edx, %eax
	movb	%al, 153(%rsp)
	call	_double_byte@PLT
	movzbl	139(%rsp), %edi
	movl	%eax, %ebp
	call	_double_byte@PLT
	xorb	139(%rsp), %bl
	movzbl	136(%rsp), %edi
	xorl	%ebp, %ebx
	xorl	%eax, %ebx
	movb	%bl, 154(%rsp)
	call	_double_byte@PLT
	movzbl	139(%rsp), %edi
	movzbl	136(%rsp), %ebx
	xorb	137(%rsp), %bl
	xorb	138(%rsp), %bl
	xorl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	140(%rsp), %edi
	xorl	%eax, %ebx
	movb	%bl, 155(%rsp)
	call	_double_byte@PLT
	movzbl	141(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	141(%rsp), %edi
	movzbl	140(%rsp), %ebp
	movl	%eax, %edx
	movzbl	142(%rsp), %eax
	xorl	%edi, %eax
	xorb	143(%rsp), %al
	xorl	%ebx, %eax
	xorl	%edx, %eax
	movb	%al, 156(%rsp)
	call	_double_byte@PLT
	movzbl	142(%rsp), %edi
	movl	%eax, %ebx
	call	_double_byte@PLT
	movzbl	142(%rsp), %edi
	movl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edi, %eax
	xorb	143(%rsp), %al
	xorl	%ebx, %eax
	movzbl	140(%rsp), %ebx
	xorb	141(%rsp), %bl
	xorl	%edx, %eax
	movb	%al, 157(%rsp)
	call	_double_byte@PLT
	movzbl	143(%rsp), %edi
	movl	%eax, %ebp
	call	_double_byte@PLT
	xorb	143(%rsp), %bl
	movzbl	140(%rsp), %edi
	xorl	%ebp, %ebx
	xorl	%eax, %ebx
	movb	%bl, 158(%rsp)
	call	_double_byte@PLT
	movzbl	143(%rsp), %edi
	movzbl	140(%rsp), %ebx
	xorb	141(%rsp), %bl
	xorb	142(%rsp), %bl
	xorl	%eax, %ebx
	call	_double_byte@PLT
	movq	%r13, %rdx
	movq	%r15, %rdi
	movl	$16, %ecx
	xorl	%eax, %ebx
	movl	$16, %esi
	movb	%bl, 159(%rsp)
	call	_copy@PLT
	movl	8(%r14), %r8d
	movl	(%r14), %eax
	movzbl	138(%rsp), %r15d
	movl	4(%r14), %ebp
	movl	%eax, %edi
	movl	%eax, %r11d
	movl	%eax, %r9d
	movl	%r8d, %r12d
	shrl	$24, %edi
	shrl	$16, %r11d
	movl	%r8d, %esi
	movl	%r8d, %ecx
	shrl	$8, %r9d
	xorb	128(%rsp), %dil
	movl	%ebp, %edx
	movl	%ebp, %ebx
	xorb	129(%rsp), %r11b
	xorb	130(%rsp), %r9b
	movl	%ebp, %r13d
	xorb	131(%rsp), %al
	shrl	$8, %r12d
	movq	104(%rsp), %r10
	addq	$16, %r14
	xorl	%r12d, %r15d
	shrl	$24, %r13d
	xorb	135(%rsp), %bpl
	xorb	132(%rsp), %r13b
	movb	%r15b, (%rsp)
	shrl	$16, %edx
	shrl	$8, %ebx
	xorb	133(%rsp), %dl
	movzbl	139(%rsp), %r15d
	shrl	$24, %esi
	shrl	$16, %ecx
	xorb	134(%rsp), %bl
	xorb	136(%rsp), %sil
	xorb	137(%rsp), %cl
	xorl	%r8d, %r15d
	movb	%r15b, 24(%rsp)
	movl	-4(%r14), %r15d
	movl	%r15d, %r8d
	movl	%r15d, %r12d
	shrl	$24, %r8d
	xorb	140(%rsp), %r8b
	shrl	$8, %r12d
	xorb	142(%rsp), %r12b
	movb	%r8b, 32(%rsp)
	movl	%r15d, %r8d
	xorb	143(%rsp), %r15b
	shrl	$16, %r8d
	xorb	141(%rsp), %r8b
	cmpq	%r10, %r14
	leaq	sbox(%rip), %r10
	jne	.L17
	movl	%eax, %r14d
	movzbl	%dil, %eax
	movzbl	%r11b, %edi
	movzbl	%bpl, %ebp
	movzbl	24(%rsp), %r11d
	movzbl	%bl, %ebx
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	movq	%rdi, 48(%rsp)
	movzbl	%r14b, %edi
	movzbl	%r9b, %r9d
	movzbl	%sil, %esi
	movzbl	(%rsp), %r14d
	movq	%r11, 24(%rsp)
	movzbl	%r8b, %r8d
	movzbl	(%r10,%rbp), %r11d
	movq	%rcx, 64(%rsp)
	movzbl	%r15b, %ecx
	movzbl	(%r10,%rdx), %r15d
	movzbl	(%r10,%rcx), %ecx
	movq	%r14, (%rsp)
	movzbl	(%r10,%rbx), %r14d
	movq	%r11, 72(%rsp)
	salq	$8, %r11
	movq	%rax, 40(%rsp)
	movzbl	%r13b, %eax
	movzbl	32(%rsp), %r13d
	orq	%r14, %r11
	movq	%rsi, 56(%rsp)
	movzbl	%r12b, %esi
	movq	40(%rsp), %rbx
	movq	%r11, %rdx
	movzbl	(%r10,%rax), %r11d
	movzbl	(%r10,%rsi), %ebp
	movq	%r13, 32(%rsp)
	salq	$8, %rdx
	movzbl	(%r10,%r8), %esi
	movq	32(%rsp), %r8
	orq	%r15, %rdx
	movzbl	(%r10,%rbx), %r13d
	movq	(%rsp), %rbx
	movq	%rdx, %rax
	movzbl	(%r10,%rdi), %edx
	movzbl	(%r10,%r9), %edi
	salq	$8, %rax
	movq	48(%rsp), %r9
	movq	%rcx, 48(%rsp)
	salq	$8, %rcx
	orq	%r11, %rax
	orq	%rbp, %rcx
	movzbl	(%r10,%r8), %r8d
	movzbl	(%r10,%rbx), %ebx
	salq	$8, %rax
	movzbl	(%r10,%r9), %r9d
	salq	$8, %rcx
	orq	%rdx, %rax
	orq	%rsi, %rcx
	salq	$8, %rdx
	salq	$8, %rax
	salq	$8, %rcx
	orq	%rbp, %rdx
	orq	%rdi, %rax
	orq	%r8, %rcx
	salq	$8, %rdx
	salq	$8, %rax
	salq	$8, %rcx
	orq	%r9, %rax
	salq	$8, %rax
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rax
	movzbl	(%r10,%rax), %eax
	movq	%rbx, 24(%rsp)
	movq	64(%rsp), %r12
	orq	%rax, %rcx
	salq	$8, %rcx
	orq	%rbx, %rcx
	movzbl	(%r10,%r12), %ebx
	movq	56(%rsp), %r12
	salq	$8, %rcx
	movzbl	(%r10,%r12), %r12d
	movq	40(%rsp), %r10
	orq	%rbx, %rcx
	orq	%rbx, %rdx
	salq	$8, %rcx
	movq	24(%rsp), %rbx
	orq	%r13, %r10
	movq	%r10, (%rsp)
	movq	%rcx, %r10
	movq	48(%rsp), %rcx
	orq	%r12, %r10
	salq	$8, %rdx
	salq	$8, %rax
	orq	%r11, %rdx
	movq	72(%rsp), %r11
	movq	%r10, 8(%rsp)
	orq	%r14, %rax
	salq	$8, %rdx
	movdqa	(%rsp), %xmm3
	salq	$8, %rax
	orq	%rcx, %rdx
	movl	$16, %ecx
	orq	%r9, %rax
	salq	$8, %rdx
	movaps	%xmm3, 128(%rsp)
	salq	$8, %rax
	orq	%rbx, %rdx
	orq	%r8, %rax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%r15, %rdx
	movq	96(%rsp), %r15
	orq	%r11, %rax
	salq	$8, %rdx
	salq	$8, %rax
	orq	%r13, %rdx
	orq	%rdi, %rax
	movq	%rdx, (%rsp)
	movq	88(%rsp), %rdx
	movq	%r15, %rdi
	salq	$8, %rax
	orq	%rsi, %rax
	movl	$16, %esi
	salq	$8, %rax
	orq	%r12, %rax
	movq	%rax, 8(%rsp)
	movdqa	(%rsp), %xmm4
	movaps	%xmm4, 144(%rsp)
	call	_copy@PLT
	movq	120(%rsp), %rax
	movl	160(%rax), %r11d
	movl	164(%rax), %edx
	movl	172(%rax), %r10d
	movl	168(%rax), %ebx
	movl	%r11d, %eax
	movzbl	%dl, %r13d
	movl	%r11d, %ecx
	movl	%edx, %ebp
	shrl	$16, %eax
	movl	%edx, %r12d
	movl	%ebx, %esi
	movl	%ebx, %edi
	movl	%eax, (%rsp)
	movl	%r10d, %r8d
	movzbl	%dh, %eax
	movl	%r10d, %r9d
	shrl	$24, %ecx
	movq	%r13, %rdx
	shrl	$24, %ebp
	movzbl	%r10b, %r14d
	shrl	$16, %r12d
	shrl	$24, %esi
	movzbl	%bpl, %ebp
	movzbl	%cl, %ecx
	shrl	$16, %edi
	shrl	$24, %r8d
	movzbl	%r12b, %r12d
	movzbl	%sil, %esi
	shrl	$16, %r9d
	salq	$8, %rdx
	movzbl	%r8b, %r8d
	movzbl	%dil, %edi
	orq	%rax, %rdx
	movl	%r11d, %eax
	movzbl	%r9b, %r9d
	salq	$8, %rdx
	movzbl	%ah, %eax
	orq	%r12, %rdx
	salq	$8, %rdx
	orq	%rbp, %rdx
	movzbl	%r11b, %ebp
	salq	$8, %rdx
	orq	%rbp, %rdx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	(%rsp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movl	%r10d, %eax
	movzbl	%ah, %eax
	salq	$8, %rdx
	movq	%rax, %r10
	movq	%r14, %rax
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
	movq	112(%rsp), %rdi
	salq	$8, %rax
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
	jmp	.L15
.L19:
	xorl	%eax, %eax
.L15:
	movq	168(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L22
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
.L22:
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
