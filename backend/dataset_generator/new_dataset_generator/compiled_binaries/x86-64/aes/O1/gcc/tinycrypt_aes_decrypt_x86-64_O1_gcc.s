	.file	"tinycrypt_aes_decrypt.c"
	.text
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movzbl	(%rsi), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r14d
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 12(%rsp)
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movb	%al, 13(%rsp)
	movzbl	1(%rbx), %ebp
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 14(%rsp)
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	xorb	2(%rbx), %bpl
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	xorb	3(%rbx), %bpl
	movl	%ebp, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	xorl	%edx, %eax
	movb	%al, (%r12)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	(%rbx), %ebp
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r14d
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movb	%al, 12(%rsp)
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 13(%rsp)
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movb	%al, 14(%rsp)
	xorb	2(%rbx), %bpl
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	xorb	3(%rbx), %bpl
	movl	%ebp, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	xorl	%edx, %eax
	movb	%al, 1(%r12)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r14d
	movzbl	(%rbx), %ebp
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	xorb	1(%rbx), %bpl
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 12(%rsp)
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 13(%rsp)
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movb	%al, 14(%rsp)
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 15(%rsp)
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movl	%eax, %edx
	xorb	3(%rbx), %bpl
	movl	%ebp, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorb	12(%rsp), %al
	xorb	13(%rsp), %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	xorl	%edx, %eax
	movb	%al, 2(%r12)
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r15d
	movzbl	(%rbx), %edi
	call	_double_byte@PLT
	movl	%eax, %r14d
	movzbl	(%rbx), %ebp
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	1(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	%al, 12(%rsp)
	xorb	1(%rbx), %bpl
	movzbl	2(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	xorb	2(%rbx), %bpl
	xorl	%r15d, %ebp
	xorl	%r14d, %ebp
	xorl	%r13d, %ebp
	xorb	12(%rsp), %bpl
	xorl	%eax, %ebp
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r13d
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %r14d
	movzbl	3(%rbx), %edi
	call	_double_byte@PLT
	xorl	%ebp, %r13d
	xorl	%r14d, %r13d
	xorl	%eax, %r13d
	movb	%r13b, 3(%r12)
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
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB15:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	tc_aes128_set_encrypt_key@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 8(%rsp)
	movq	%rdx, %r15
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	testq	%rdx, %rdx
	sete	%dl
	orb	%dl, %al
	jne	.L11
	testq	%rdi, %rdi
	je	.L11
	leaq	16(%rsp), %rdi
	movl	$16, %ecx
	movq	%rsi, %rdx
	movl	$16, %esi
	call	_copy@PLT
	movl	160(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 16(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 17(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 18(%rsp)
	xorb	%al, 19(%rsp)
	movl	164(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 20(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 21(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 22(%rsp)
	xorb	%al, 23(%rsp)
	movl	168(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 24(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 25(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 26(%rsp)
	xorb	%al, 27(%rsp)
	movl	172(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 28(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 29(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 30(%rsp)
	xorb	%al, 31(%rsp)
	leaq	144(%r15), %r13
	leaq	32(%rsp), %rbx
	leaq	16(%rsp), %r14
	leaq	inv_sbox(%rip), %rbp
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
.L8:
	movzbl	16(%rsp), %eax
	movb	%al, 32(%rsp)
	movzbl	29(%rsp), %eax
	movb	%al, 33(%rsp)
	movzbl	26(%rsp), %eax
	movb	%al, 34(%rsp)
	movzbl	23(%rsp), %eax
	movb	%al, 35(%rsp)
	movzbl	20(%rsp), %eax
	movb	%al, 36(%rsp)
	movzbl	17(%rsp), %eax
	movb	%al, 37(%rsp)
	movzbl	30(%rsp), %eax
	movb	%al, 38(%rsp)
	movzbl	27(%rsp), %eax
	movb	%al, 39(%rsp)
	movzbl	24(%rsp), %eax
	movb	%al, 40(%rsp)
	movzbl	21(%rsp), %eax
	movb	%al, 41(%rsp)
	movzbl	18(%rsp), %eax
	movb	%al, 42(%rsp)
	movzbl	31(%rsp), %eax
	movb	%al, 43(%rsp)
	movzbl	28(%rsp), %eax
	movb	%al, 44(%rsp)
	movzbl	25(%rsp), %eax
	movb	%al, 45(%rsp)
	movzbl	22(%rsp), %eax
	movb	%al, 46(%rsp)
	movzbl	19(%rsp), %eax
	movb	%al, 47(%rsp)
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	%r14, %rdi
	call	_copy@PLT
	movq	%r14, %r12
	movq	%r14, %rax
.L7:
	movzbl	(%rax), %edx
	movzbl	0(%rbp,%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L7
	movl	0(%r13), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 16(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 17(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 18(%rsp)
	xorb	%al, 19(%rsp)
	movl	4(%r13), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 20(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 21(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 22(%rsp)
	xorb	%al, 23(%rsp)
	movl	8(%r13), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 24(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 25(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 26(%rsp)
	xorb	%al, 27(%rsp)
	movl	12(%r13), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 28(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 29(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 30(%rsp)
	xorb	%al, 31(%rsp)
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	mult_row_column
	leaq	36(%rsp), %rdi
	movq	(%rsp), %rsi
	call	mult_row_column
	leaq	24(%rsp), %rsi
	leaq	40(%rsp), %rdi
	call	mult_row_column
	leaq	28(%rsp), %rsi
	leaq	44(%rsp), %rdi
	call	mult_row_column
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	%r14, %rdi
	call	_copy@PLT
	subq	$16, %r13
	cmpq	%r13, %r15
	jne	.L8
	movzbl	16(%rsp), %eax
	movb	%al, 32(%rsp)
	movzbl	29(%rsp), %eax
	movb	%al, 33(%rsp)
	movzbl	26(%rsp), %eax
	movb	%al, 34(%rsp)
	movzbl	23(%rsp), %eax
	movb	%al, 35(%rsp)
	movzbl	20(%rsp), %eax
	movb	%al, 36(%rsp)
	movzbl	17(%rsp), %eax
	movb	%al, 37(%rsp)
	movzbl	30(%rsp), %eax
	movb	%al, 38(%rsp)
	movzbl	27(%rsp), %eax
	movb	%al, 39(%rsp)
	movzbl	24(%rsp), %eax
	movb	%al, 40(%rsp)
	movzbl	21(%rsp), %eax
	movb	%al, 41(%rsp)
	movzbl	18(%rsp), %eax
	movb	%al, 42(%rsp)
	movzbl	31(%rsp), %eax
	movb	%al, 43(%rsp)
	movzbl	28(%rsp), %eax
	movb	%al, 44(%rsp)
	movzbl	25(%rsp), %eax
	movb	%al, 45(%rsp)
	movzbl	22(%rsp), %eax
	movb	%al, 46(%rsp)
	movzbl	19(%rsp), %eax
	movb	%al, 47(%rsp)
	leaq	32(%rsp), %rdx
	leaq	16(%rsp), %rdi
	movl	$16, %ecx
	movl	$16, %esi
	call	_copy@PLT
	leaq	inv_sbox(%rip), %rdx
.L9:
	movzbl	(%r12), %eax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%r12)
	addq	$1, %r12
	cmpq	%rbx, %r12
	jne	.L9
	movl	(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 16(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 17(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 18(%rsp)
	xorb	%al, 19(%rsp)
	movl	4(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 20(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 21(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 22(%rsp)
	xorb	%al, 23(%rsp)
	movl	8(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 24(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 25(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 26(%rsp)
	xorb	%al, 27(%rsp)
	movl	12(%r15), %eax
	movl	%eax, %edx
	shrl	$24, %edx
	xorb	%dl, 28(%rsp)
	movl	%eax, %edx
	shrl	$16, %edx
	xorb	%dl, 29(%rsp)
	movl	%eax, %edx
	shrl	$8, %edx
	xorb	%dl, 30(%rsp)
	xorb	%al, 31(%rsp)
	leaq	16(%rsp), %rbx
	movl	$16, %ecx
	movq	%rbx, %rdx
	movl	$16, %esi
	movq	8(%rsp), %rdi
	call	_copy@PLT
	movl	$16, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
	call	_set@PLT
	movl	$1, %eax
	jmp	.L5
.L11:
	movl	$0, %eax
.L5:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L16
	addq	$72, %rsp
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
.L16:
	.cfi_restore_state
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
