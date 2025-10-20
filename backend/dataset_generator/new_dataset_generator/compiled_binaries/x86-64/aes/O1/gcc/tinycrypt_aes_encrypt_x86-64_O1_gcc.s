	.file	"tinycrypt_aes_encrypt.c"
	.text
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	$16777216, 4(%rsp)
	movl	$33554432, 8(%rsp)
	movl	$67108864, 12(%rsp)
	movl	$134217728, 16(%rsp)
	movl	$268435456, 20(%rsp)
	movl	$536870912, 24(%rsp)
	movl	$1073741824, 28(%rsp)
	movl	$-2147483648, 32(%rsp)
	movl	$452984832, 36(%rsp)
	movl	$905969664, 40(%rsp)
	testq	%rsi, %rsi
	je	.L7
	testq	%rdi, %rdi
	je	.L7
	movl	$0, %edx
.L3:
	movzbl	(%rsi,%rdx), %eax
	sall	$24, %eax
	movzbl	1(%rsi,%rdx), %ecx
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
	movl	$4, %edx
	leaq	sbox(%rip), %rsi
	jmp	.L5
.L4:
	xorl	-16(%rdi,%rdx,4), %eax
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rdx
	cmpq	$44, %rdx
	je	.L11
.L5:
	movl	-4(%rdi,%rdx,4), %eax
	testb	$3, %dl
	jne	.L4
	roll	$8, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movl	%ecx, %ecx
	movzbl	(%rsi,%rcx), %ecx
	sall	$24, %ecx
	movzbl	%al, %r8d
	movzbl	(%rsi,%r8), %r8d
	orl	%r8d, %ecx
	movl	%eax, %r8d
	shrl	$16, %r8d
	movzbl	%r8b, %r8d
	movzbl	(%rsi,%r8), %r8d
	sall	$16, %r8d
	orl	%r8d, %ecx
	movzbl	%ah, %eax
	movzbl	(%rsi,%rax), %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
	xorl	(%rsp,%rcx,4), %eax
	jmp	.L4
.L11:
	movl	$1, %eax
.L1:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L12
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	movl	$0, %eax
	jmp	.L1
.L12:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 24(%rsp)
	movq	%rdx, %r15
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L19
	testq	%rdi, %rdi
	je	.L19
	leaq	32(%rsp), %rdi
	movl	$16, %ecx
	movq	%rsi, %rdx
	movl	$16, %esi
	call	_copy@PLT
	movl	(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 32(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 33(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 34(%rsp)
	xorb	%al, 35(%rsp)
	movl	4(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 36(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 37(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 38(%rsp)
	xorb	%al, 39(%rsp)
	movl	8(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 40(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 41(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 42(%rsp)
	xorb	%al, 43(%rsp)
	movl	12(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 44(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 45(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 46(%rsp)
	xorb	%al, 47(%rsp)
	leaq	16(%r15), %r14
	leaq	160(%r15), %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rbx
	leaq	sbox(%rip), %rbp
	leaq	32(%rsp), %rax
	movq	%rax, (%rsp)
.L15:
	leaq	32(%rsp), %r12
	movq	%r12, %rax
.L16:
	movzbl	(%rax), %edx
	movzbl	0(%rbp,%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L16
	movzbl	32(%rsp), %eax
	movb	%al, 48(%rsp)
	movzbl	37(%rsp), %eax
	movb	%al, 49(%rsp)
	movzbl	42(%rsp), %eax
	movb	%al, 50(%rsp)
	movzbl	47(%rsp), %eax
	movb	%al, 51(%rsp)
	movzbl	36(%rsp), %eax
	movb	%al, 52(%rsp)
	movzbl	41(%rsp), %eax
	movb	%al, 53(%rsp)
	movzbl	46(%rsp), %eax
	movb	%al, 54(%rsp)
	movzbl	35(%rsp), %eax
	movb	%al, 55(%rsp)
	movzbl	40(%rsp), %eax
	movb	%al, 56(%rsp)
	movzbl	45(%rsp), %eax
	movb	%al, 57(%rsp)
	movzbl	34(%rsp), %eax
	movb	%al, 58(%rsp)
	movzbl	39(%rsp), %eax
	movb	%al, 59(%rsp)
	movzbl	44(%rsp), %eax
	movb	%al, 60(%rsp)
	movzbl	33(%rsp), %eax
	movb	%al, 61(%rsp)
	movzbl	38(%rsp), %eax
	movb	%al, 62(%rsp)
	movzbl	43(%rsp), %eax
	movb	%al, 63(%rsp)
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	(%rsp), %rdi
	call	_copy@PLT
	movzbl	32(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	33(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movzbl	33(%rsp), %edi
	movl	%edi, %eax
	xorb	34(%rsp), %al
	xorb	35(%rsp), %al
	xorl	%r13d, %eax
	xorl	%edx, %eax
	movb	%al, 48(%rsp)
	movzbl	32(%rsp), %r13d
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	34(%rsp), %edi
	call	_double_byte@PLT
	movzbl	34(%rsp), %edi
	xorl	%edi, %r13d
	xorb	35(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 49(%rsp)
	movzbl	32(%rsp), %r13d
	xorb	33(%rsp), %r13b
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	35(%rsp), %edi
	call	_double_byte@PLT
	xorb	35(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 50(%rsp)
	movzbl	32(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	32(%rsp), %eax
	xorb	33(%rsp), %al
	xorb	34(%rsp), %al
	xorl	%eax, %r13d
	movzbl	35(%rsp), %edi
	call	_double_byte@PLT
	xorl	%eax, %r13d
	movb	%r13b, 51(%rsp)
	movzbl	36(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	37(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movzbl	37(%rsp), %edi
	movl	%edi, %eax
	xorb	38(%rsp), %al
	xorb	39(%rsp), %al
	xorl	%r13d, %eax
	xorl	%edx, %eax
	movb	%al, 52(%rsp)
	movzbl	36(%rsp), %r13d
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	38(%rsp), %edi
	call	_double_byte@PLT
	movzbl	38(%rsp), %edi
	xorl	%edi, %r13d
	xorb	39(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 53(%rsp)
	movzbl	36(%rsp), %r13d
	xorb	37(%rsp), %r13b
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	39(%rsp), %edi
	call	_double_byte@PLT
	xorb	39(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 54(%rsp)
	movzbl	36(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	36(%rsp), %eax
	xorb	37(%rsp), %al
	xorb	38(%rsp), %al
	xorl	%eax, %r13d
	movzbl	39(%rsp), %edi
	call	_double_byte@PLT
	xorl	%eax, %r13d
	movb	%r13b, 55(%rsp)
	movzbl	40(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	41(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movzbl	41(%rsp), %edi
	movl	%edi, %eax
	xorb	42(%rsp), %al
	xorb	43(%rsp), %al
	xorl	%r13d, %eax
	xorl	%edx, %eax
	movb	%al, 56(%rsp)
	movzbl	40(%rsp), %r13d
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	42(%rsp), %edi
	call	_double_byte@PLT
	movzbl	42(%rsp), %edi
	xorl	%edi, %r13d
	xorb	43(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 57(%rsp)
	movzbl	40(%rsp), %r13d
	xorb	41(%rsp), %r13b
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	43(%rsp), %edi
	call	_double_byte@PLT
	xorb	43(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 58(%rsp)
	movzbl	40(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	40(%rsp), %eax
	xorb	41(%rsp), %al
	xorb	42(%rsp), %al
	xorl	%eax, %r13d
	movzbl	43(%rsp), %edi
	call	_double_byte@PLT
	xorl	%eax, %r13d
	movb	%r13b, 59(%rsp)
	movzbl	44(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	45(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movzbl	45(%rsp), %edi
	movl	%edi, %eax
	xorb	46(%rsp), %al
	xorb	47(%rsp), %al
	xorl	%r13d, %eax
	xorl	%edx, %eax
	movb	%al, 60(%rsp)
	movzbl	44(%rsp), %r13d
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	46(%rsp), %edi
	call	_double_byte@PLT
	movzbl	46(%rsp), %edi
	xorl	%edi, %r13d
	xorb	47(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 61(%rsp)
	movzbl	44(%rsp), %r13d
	xorb	45(%rsp), %r13b
	movzbl	%dil, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	47(%rsp), %edi
	call	_double_byte@PLT
	xorb	47(%rsp), %r13b
	xorb	15(%rsp), %r13b
	xorl	%eax, %r13d
	movb	%r13b, 62(%rsp)
	movzbl	44(%rsp), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	44(%rsp), %eax
	xorb	45(%rsp), %al
	xorb	46(%rsp), %al
	xorl	%eax, %r13d
	movzbl	47(%rsp), %edi
	call	_double_byte@PLT
	xorl	%eax, %r13d
	movb	%r13b, 63(%rsp)
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	(%rsp), %rdi
	call	_copy@PLT
	movl	(%r14), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 32(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 33(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 34(%rsp)
	xorb	%al, 35(%rsp)
	movl	4(%r14), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 36(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 37(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 38(%rsp)
	xorb	%al, 39(%rsp)
	movl	8(%r14), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 40(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 41(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 42(%rsp)
	xorb	%al, 43(%rsp)
	movl	12(%r14), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 44(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 45(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 46(%rsp)
	xorb	%al, 47(%rsp)
	addq	$16, %r14
	cmpq	%r14, 16(%rsp)
	jne	.L15
	leaq	sbox(%rip), %rdx
.L17:
	movzbl	(%r12), %eax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%r12)
	addq	$1, %r12
	cmpq	%rbx, %r12
	jne	.L17
	movzbl	32(%rsp), %eax
	movb	%al, 48(%rsp)
	movzbl	37(%rsp), %eax
	movb	%al, 49(%rsp)
	movzbl	42(%rsp), %eax
	movb	%al, 50(%rsp)
	movzbl	47(%rsp), %eax
	movb	%al, 51(%rsp)
	movzbl	36(%rsp), %eax
	movb	%al, 52(%rsp)
	movzbl	41(%rsp), %eax
	movb	%al, 53(%rsp)
	movzbl	46(%rsp), %eax
	movb	%al, 54(%rsp)
	movzbl	35(%rsp), %eax
	movb	%al, 55(%rsp)
	movzbl	40(%rsp), %eax
	movb	%al, 56(%rsp)
	movzbl	45(%rsp), %eax
	movb	%al, 57(%rsp)
	movzbl	34(%rsp), %eax
	movb	%al, 58(%rsp)
	movzbl	39(%rsp), %eax
	movb	%al, 59(%rsp)
	movzbl	44(%rsp), %eax
	movb	%al, 60(%rsp)
	movzbl	33(%rsp), %eax
	movb	%al, 61(%rsp)
	movzbl	38(%rsp), %eax
	movb	%al, 62(%rsp)
	movzbl	43(%rsp), %eax
	movb	%al, 63(%rsp)
	leaq	48(%rsp), %rdx
	leaq	32(%rsp), %rbx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_copy@PLT
	movl	160(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 32(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 33(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 34(%rsp)
	xorb	%al, 35(%rsp)
	movl	164(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 36(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 37(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 38(%rsp)
	xorb	%al, 39(%rsp)
	movl	168(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 40(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 41(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 42(%rsp)
	xorb	%al, 43(%rsp)
	movl	172(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 44(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 45(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 46(%rsp)
	xorb	%al, 47(%rsp)
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	24(%rsp), %rdi
	call	_copy@PLT
	movl	$16, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
	call	_set@PLT
	movl	$1, %eax
	jmp	.L13
.L19:
	movl	$0, %eax
.L13:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L24
	addq	$88, %rsp
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
.L24:
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
