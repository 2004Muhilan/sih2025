	.file	"tinycrypt_hmac_prng.c"
	.text
	.section	.rodata
	.align 4
	.type	MIN_SLEN, @object
	.size	MIN_SLEN, 4
MIN_SLEN:
	.long	32
	.align 4
	.type	MAX_SLEN, @object
	.size	MAX_SLEN, 4
MAX_SLEN:
	.long	-1
	.align 4
	.type	MAX_PLEN, @object
	.size	MAX_PLEN, 4
MAX_PLEN:
	.long	-1
	.align 4
	.type	MAX_ALEN, @object
	.size	MAX_ALEN, 4
MAX_ALEN:
	.long	-1
	.align 4
	.type	MAX_GENS, @object
	.size	MAX_GENS, 4
MAX_GENS:
	.long	-1
	.align 4
	.type	MAX_OUT, @object
	.size	MAX_OUT, 4
MAX_OUT:
	.long	524288
	.text
	.type	update, @function
update:
.LFB1:
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
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -10(%rbp)
	movb	$1, -9(%rbp)
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_set_key@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tc_hmac_init@PLT
	movq	-24(%rbp), %rax
	leaq	272(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-24(%rbp), %rax
	leaq	-10(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	cmpq	$0, -32(%rbp)
	je	.L2
	cmpl	$0, -36(%rbp)
	je	.L2
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
.L2:
	cmpq	$0, -48(%rbp)
	je	.L3
	cmpl	$0, -40(%rbp)
	je	.L3
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
.L3:
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	240(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	tc_hmac_final@PLT
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_set_key@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tc_hmac_init@PLT
	movq	-24(%rbp), %rax
	leaq	272(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	272(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	tc_hmac_final@PLT
	cmpq	$0, -32(%rbp)
	je	.L9
	cmpl	$0, -36(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_set_key@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tc_hmac_init@PLT
	movq	-24(%rbp), %rax
	leaq	272(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-24(%rbp), %rax
	leaq	-9(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	cmpq	$0, -48(%rbp)
	je	.L7
	cmpl	$0, -40(%rbp)
	je	.L7
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
.L7:
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	240(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	tc_hmac_final@PLT
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_set_key@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tc_hmac_init@PLT
	movq	-24(%rbp), %rax
	leaq	272(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	272(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	tc_hmac_final@PLT
	jmp	.L1
.L9:
	nop
.L1:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	update, .-update
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB2:
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
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	cmpq	$0, -16(%rbp)
	je	.L11
	movl	$-1, %eax
	cmpl	-20(%rbp), %eax
	jnb	.L12
.L11:
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	addq	$240, %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set@PLT
	movq	-8(%rbp), %rax
	addq	$272, %rax
	movl	$32, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_set@PLT
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	update
	movq	-8(%rbp), %rax
	movl	$0, 304(%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB3:
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	cmpq	$0, -16(%rbp)
	je	.L15
	movl	$32, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L15
	movl	$-1, %eax
	cmpl	-20(%rbp), %eax
	jnb	.L16
.L15:
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$0, -32(%rbp)
	je	.L18
	cmpl	$0, -24(%rbp)
	je	.L19
	movl	$-1, %eax
	cmpl	-24(%rbp), %eax
	jnb	.L20
.L19:
	movl	$0, %eax
	jmp	.L17
.L20:
	movl	-24(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	update
	jmp	.L21
.L18:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	update
.L21:
	movl	$-1, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 304(%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L23
	cmpq	$0, -40(%rbp)
	je	.L23
	cmpl	$0, -28(%rbp)
	je	.L23
	movl	$524288, %eax
	cmpl	-28(%rbp), %eax
	jnb	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	testl	%eax, %eax
	jne	.L26
	movl	$-1, %eax
	jmp	.L25
.L26:
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 304(%rax)
	jmp	.L27
.L28:
	movq	-40(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_set_key@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tc_hmac_init@PLT
	movq	-40(%rbp), %rax
	leaq	272(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tc_hmac_update@PLT
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	272(%rdx), %rcx
	movq	%rax, %rdx
	movl	$32, %esi
	movq	%rcx, %rdi
	call	tc_hmac_final@PLT
	movl	-28(%rbp), %eax
	movl	$32, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	leaq	272(%rax), %rdi
	movl	-4(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_copy@PLT
	movl	-4(%rbp), %eax
	addq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	$32, %edx
	cmpl	%edx, %eax
	cmovb	%edx, %eax
	subl	$32, %eax
	movl	%eax, -28(%rbp)
.L27:
	cmpl	$0, -28(%rbp)
	jne	.L28
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	update
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
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
