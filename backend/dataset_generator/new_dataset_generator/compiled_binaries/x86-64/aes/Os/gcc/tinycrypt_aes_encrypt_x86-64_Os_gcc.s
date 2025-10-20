	.file	"tinycrypt_aes_encrypt.c"
	.text
	.type	add_round_key, @function
add_round_key:
.LFB17:
	.cfi_startproc
	movb	3(%rsi), %cl
	xorb	%cl, (%rdi)
	movb	2(%rsi), %cl
	xorb	%cl, 1(%rdi)
	movb	1(%rsi), %cl
	xorb	%cl, 2(%rdi)
	movl	(%rsi), %ecx
	xorb	%cl, 3(%rdi)
	movzbl	7(%rsi), %ecx
	xorb	%cl, 4(%rdi)
	movzwl	6(%rsi), %ecx
	xorb	%cl, 5(%rdi)
	movb	5(%rsi), %cl
	xorb	%cl, 6(%rdi)
	movl	4(%rsi), %ecx
	xorb	%cl, 7(%rdi)
	movzbl	11(%rsi), %ecx
	xorb	%cl, 8(%rdi)
	movzwl	10(%rsi), %ecx
	xorb	%cl, 9(%rdi)
	movb	9(%rsi), %cl
	xorb	%cl, 10(%rdi)
	movl	8(%rsi), %ecx
	xorb	%cl, 11(%rdi)
	movzbl	15(%rsi), %ecx
	xorb	%cl, 12(%rdi)
	movzwl	14(%rsi), %ecx
	xorb	%cl, 13(%rdi)
	movb	13(%rsi), %cl
	xorb	%cl, 14(%rdi)
	movl	12(%rsi), %edx
	xorb	%dl, 15(%rdi)
	ret
	.cfi_endproc
.LFE17:
	.size	add_round_key, .-add_round_key
	.type	sub_bytes, @function
sub_bytes:
.LFB18:
	.cfi_startproc
	xorl	%eax, %eax
	leaq	sbox(%rip), %rcx
.L3:
	movzbl	(%rdi,%rax), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L3
	ret
	.cfi_endproc
.LFE18:
	.size	sub_bytes, .-sub_bytes
	.type	shift_rows, @function
shift_rows:
.LFB21:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$16, %ecx
	movl	$16, %esi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movb	(%rdi), %al
	leaq	8(%rsp), %rdx
	movb	%al, 8(%rsp)
	movb	5(%rdi), %al
	movb	%al, 9(%rsp)
	movb	10(%rdi), %al
	movb	%al, 10(%rsp)
	movb	15(%rdi), %al
	movb	%al, 11(%rsp)
	movb	4(%rdi), %al
	movb	%al, 12(%rsp)
	movb	9(%rdi), %al
	movb	%al, 13(%rsp)
	movb	14(%rdi), %al
	movb	%al, 14(%rsp)
	movb	3(%rdi), %al
	movb	%al, 15(%rsp)
	movb	8(%rdi), %al
	movb	%al, 16(%rsp)
	movb	13(%rdi), %al
	movb	%al, 17(%rsp)
	movb	2(%rdi), %al
	movb	%al, 18(%rsp)
	movb	7(%rdi), %al
	movb	%al, 19(%rsp)
	movb	12(%rdi), %al
	movb	%al, 20(%rsp)
	movb	1(%rdi), %al
	movb	%al, 21(%rsp)
	movb	6(%rdi), %al
	movb	%al, 22(%rsp)
	movb	11(%rdi), %al
	movb	%al, 23(%rsp)
	call	_copy@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	shift_rows, .-shift_rows
	.type	mult_row_column, @function
mult_row_column:
.LFB19:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	pushq	%rax
	.cfi_def_cfa_offset 48
	movzbl	(%rsi), %edi
	call	_double_byte@PLT
	movzbl	1(%rbx), %edi
	movl	%eax, %ebp
	call	_double_byte@PLT
	movl	%eax, %edx
	movb	1(%rbx), %al
	xorb	2(%rbx), %al
	xorb	3(%rbx), %al
	xorl	%ebp, %eax
	xorl	%edx, %eax
	movb	%al, (%r12)
	movzbl	1(%rbx), %edi
	movb	(%rbx), %bpl
	call	_double_byte@PLT
	movzbl	2(%rbx), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	2(%rbx), %bpl
	xorb	3(%rbx), %bpl
	xorl	%r13d, %ebp
	xorl	%eax, %ebp
	movb	%bpl, 1(%r12)
	movzbl	2(%rbx), %edi
	movb	(%rbx), %bpl
	xorb	1(%rbx), %bpl
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movl	%eax, %r13d
	call	_double_byte@PLT
	xorb	3(%rbx), %bpl
	xorl	%r13d, %ebp
	xorl	%eax, %ebp
	movb	%bpl, 2(%r12)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	3(%rbx), %edi
	movb	(%rbx), %bpl
	xorb	1(%rbx), %bpl
	xorb	2(%rbx), %bpl
	xorl	%eax, %ebp
	call	_double_byte@PLT
	xorl	%eax, %ebp
	movb	%bpl, 3(%r12)
	popq	%rdx
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	mult_row_column, .-mult_row_column
	.section	.rodata
	.align 32
.LC0:
	.long	0
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.long	268435456
	.long	536870912
	.long	1073741824
	.long	-2147483648
	.long	452984832
	.long	905969664
	.text
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$11, %ecx
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	12(%rsp), %rdi
	leaq	.LC0(%rip), %rsi
	rep movsl
	testq	%r9, %r9
	je	.L17
	testq	%r8, %r8
	je	.L17
	xorl	%edx, %edx
.L13:
	movzbl	(%r9,%rdx), %eax
	movzbl	1(%r9,%rdx), %ecx
	sall	$24, %eax
	sall	$16, %ecx
	orl	%ecx, %eax
	movzbl	3(%r9,%rdx), %ecx
	orl	%ecx, %eax
	movzbl	2(%r9,%rdx), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, (%r8,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L13
	movl	$4, %ecx
	leaq	sbox(%rip), %rsi
.L15:
	movl	-4(%r8,%rcx,4), %eax
	testb	$3, %cl
	jne	.L14
	roll	$8, %eax
	movl	%eax, %edx
	movzbl	%al, %edi
	shrl	$24, %edx
	movzbl	(%rsi,%rdi), %edi
	movzbl	(%rsi,%rdx), %edx
	sall	$24, %edx
	orl	%edi, %edx
	movl	%eax, %edi
	movzbl	%ah, %eax
	shrl	$16, %edi
	movzbl	(%rsi,%rax), %eax
	movzbl	%dil, %edi
	movzbl	(%rsi,%rdi), %edi
	sall	$8, %eax
	sall	$16, %edi
	orl	%edi, %edx
	orl	%edx, %eax
	movl	%ecx, %edx
	shrl	$2, %edx
	xorl	12(%rsp,%rdx,4), %eax
.L14:
	xorl	-16(%r8,%rcx,4), %eax
	movl	%eax, (%r8,%rcx,4)
	incq	%rcx
	cmpq	$44, %rcx
	jne	.L15
	movl	$1, %eax
	jmp	.L11
.L17:
	xorl	%eax, %eax
.L11:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	sete	%al
	testq	%rsi, %rsi
	sete	%dl
	orb	%dl, %al
	jne	.L25
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.L25
	leaq	8(%rsp), %rbx
	movq	%rsi, %rdx
	leaq	16(%rbp), %r12
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rbx, %rdi
	leaq	24(%rsp), %r14
	call	_copy@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	addq	$160, %rbp
	call	add_round_key
.L23:
	movq	%rbx, %rdi
	call	sub_bytes
	call	shift_rows
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	mult_row_column
	leaq	12(%rsp), %rsi
	leaq	28(%rsp), %rdi
	call	mult_row_column
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdi
	call	mult_row_column
	leaq	20(%rsp), %rsi
	leaq	36(%rsp), %rdi
	call	mult_row_column
	movl	$16, %ecx
	movq	%r14, %rdx
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_copy@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	addq	$16, %r12
	call	add_round_key
	cmpq	%rbp, %r12
	jne	.L23
	call	sub_bytes
	call	shift_rows
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	add_round_key
	movl	$16, %ecx
	movq	%rbx, %rdx
	movq	%r13, %rdi
	movl	$16, %esi
	call	_copy@PLT
	movl	$16, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_set@PLT
	movl	$1, %eax
	jmp	.L21
.L25:
	xorl	%eax, %eax
.L21:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	addq	$48, %rsp
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
