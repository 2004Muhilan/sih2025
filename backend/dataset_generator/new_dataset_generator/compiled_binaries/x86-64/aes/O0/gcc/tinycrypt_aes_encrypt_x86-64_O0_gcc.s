	.file	"tinycrypt_aes_encrypt.c"
	.text
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
	.text
	.type	rotword, @function
rotword:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	roll	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rotword, .-rotword
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -80(%rbp)
	movl	$16777216, -76(%rbp)
	movl	$33554432, -72(%rbp)
	movl	$67108864, -68(%rbp)
	movl	$134217728, -64(%rbp)
	movl	$268435456, -60(%rbp)
	movl	$536870912, -56(%rbp)
	movl	$1073741824, -52(%rbp)
	movl	$-2147483648, -48(%rbp)
	movl	$452984832, -44(%rbp)
	movl	$905969664, -40(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L12
.L4:
	cmpq	$0, -112(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L12
.L6:
	movl	$0, -88(%rbp)
	jmp	.L7
.L8:
	movl	-88(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	sall	$2, %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-88(%rbp), %eax
	sall	$2, %eax
	addl	$2, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-88(%rbp), %eax
	sall	$2, %eax
	addl	$3, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -88(%rbp)
.L7:
	cmpl	$3, -88(%rbp)
	jbe	.L8
	jmp	.L9
.L11:
	movl	-88(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L10
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	rotword
	shrl	$24, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	sbox(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	rotword
	shrl	$16, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	sbox(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	rotword
	shrl	$8, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	sbox(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	rotword
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	sbox(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	orl	%ebx, %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, %eax
	movl	-80(%rbp,%rax,4), %eax
	xorl	%edx, %eax
	movl	%eax, -84(%rbp)
.L10:
	movl	-88(%rbp), %eax
	leal	-4(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %edx
	movl	(%rax,%rdx,4), %eax
	xorl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -88(%rbp)
.L9:
	cmpl	$43, -88(%rbp)
	jbe	.L11
	movl	$1, %eax
.L12:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.type	add_round_key, @function
add_round_key:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$9, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$13, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$13, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$14, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$15, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	$15, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	add_round_key, .-add_round_key
	.type	sub_bytes, @function
sub_bytes:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L17:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	leaq	sbox(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L16:
	cmpl	$15, -4(%rbp)
	jbe	.L17
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sub_bytes, .-sub_bytes
	.type	mult_row_column, @function
mult_row_column:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ebx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	xorl	%edx, %eax
	movl	%ebx, %ecx
	xorl	%eax, %ecx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ebx
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	xorl	%ebx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ebx
	xorl	%eax, %ebx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	xorl	%ebx, %edx
	movb	%dl, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mult_row_column, .-mult_row_column
	.type	mix_columns, @function
mix_columns:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	movq	-40(%rbp), %rax
	leaq	12(%rax), %rdx
	leaq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mult_row_column
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mix_columns, .-mix_columns
	.type	shift_rows, @function
shift_rows:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -32(%rbp)
	movq	-40(%rbp), %rax
	movzbl	5(%rax), %eax
	movb	%al, -31(%rbp)
	movq	-40(%rbp), %rax
	movzbl	10(%rax), %eax
	movb	%al, -30(%rbp)
	movq	-40(%rbp), %rax
	movzbl	15(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-40(%rbp), %rax
	movzbl	4(%rax), %eax
	movb	%al, -28(%rbp)
	movq	-40(%rbp), %rax
	movzbl	9(%rax), %eax
	movb	%al, -27(%rbp)
	movq	-40(%rbp), %rax
	movzbl	14(%rax), %eax
	movb	%al, -26(%rbp)
	movq	-40(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-40(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	13(%rax), %eax
	movb	%al, -23(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -22(%rbp)
	movq	-40(%rbp), %rax
	movzbl	7(%rax), %eax
	movb	%al, -21(%rbp)
	movq	-40(%rbp), %rax
	movzbl	12(%rax), %eax
	movb	%al, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-40(%rbp), %rax
	movzbl	6(%rax), %eax
	movb	%al, -18(%rbp)
	movq	-40(%rbp), %rax
	movzbl	11(%rax), %eax
	movb	%al, -17(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	shift_rows, .-shift_rows
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB8:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L30
.L24:
	cmpq	$0, -64(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L30
.L26:
	cmpq	$0, -72(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L30
.L27:
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	movl	$0, -36(%rbp)
	jmp	.L28
.L29:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sub_bytes
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	shift_rows
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mix_columns
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %edx
	addl	$1, %edx
	sall	$2, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	addl	$1, -36(%rbp)
.L28:
	cmpl	$8, -36(%rbp)
	jbe	.L29
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sub_bytes
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	shift_rows
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %edx
	addl	$1, %edx
	sall	$2, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_round_key
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_copy@PLT
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_set@PLT
	movl	$1, %eax
.L30:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
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
