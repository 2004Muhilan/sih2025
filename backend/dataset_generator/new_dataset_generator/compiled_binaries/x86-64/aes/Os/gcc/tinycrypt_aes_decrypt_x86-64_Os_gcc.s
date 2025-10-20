	.file	"tinycrypt_aes_decrypt.c"
	.text
	.type	add_round_key, @function
add_round_key:
.LFB18:
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
.LFE18:
	.size	add_round_key, .-add_round_key
	.type	inv_sub_bytes, @function
inv_sub_bytes:
.LFB19:
	.cfi_startproc
	xorl	%eax, %eax
	leaq	inv_sbox(%rip), %rcx
.L3:
	movzbl	(%rdi,%rax), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L3
	ret
	.cfi_endproc
.LFE19:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.type	inv_shift_rows, @function
inv_shift_rows:
.LFB20:
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
	movb	13(%rdi), %al
	movb	%al, 9(%rsp)
	movb	10(%rdi), %al
	movb	%al, 10(%rsp)
	movb	7(%rdi), %al
	movb	%al, 11(%rsp)
	movb	4(%rdi), %al
	movb	%al, 12(%rsp)
	movb	1(%rdi), %al
	movb	%al, 13(%rsp)
	movb	14(%rdi), %al
	movb	%al, 14(%rsp)
	movb	11(%rdi), %al
	movb	%al, 15(%rsp)
	movb	8(%rdi), %al
	movb	%al, 16(%rsp)
	movb	5(%rdi), %al
	movb	%al, 17(%rsp)
	movb	2(%rdi), %al
	movb	%al, 18(%rsp)
	movb	15(%rdi), %al
	movb	%al, 19(%rsp)
	movb	12(%rdi), %al
	movb	%al, 20(%rsp)
	movb	9(%rdi), %al
	movb	%al, 21(%rsp)
	movb	6(%rdi), %al
	movb	%al, 22(%rsp)
	movb	3(%rdi), %al
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
.LFE20:
	.size	inv_shift_rows, .-inv_shift_rows
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
	movb	1(%rbx), %dl
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
	movb	15(%rsp), %dl
	xorb	2(%rbx), %dl
	movb	%al, 14(%rsp)
	movb	%dl, 15(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movl	%eax, %ecx
	movb	15(%rsp), %al
	xorb	3(%rbx), %al
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorl	%r12d, %eax
	xorl	12(%rsp), %eax
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
	movb	(%rbx), %dl
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
	movb	14(%rsp), %dl
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
	movl	%eax, %ecx
	movb	15(%rsp), %al
	xorb	3(%rbx), %al
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorl	%r12d, %eax
	xorl	12(%rsp), %eax
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
	movb	(%rbx), %r12b
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
	movl	%eax, %ecx
	movb	3(%rbx), %al
	xorl	%r12d, %eax
	xorl	%r15d, %eax
	xorl	%r14d, %eax
	xorl	%r13d, %eax
	xorl	12(%rsp), %eax
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
	movb	(%rbx), %dl
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
	movb	12(%rsp), %dl
	xorb	1(%rbx), %dl
	movl	%eax, %r13d
	movb	%dl, 12(%rsp)
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movzbl	%al, %edi
	call	_double_byte@PLT
	movb	12(%rsp), %dl
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
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB21:
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
	jne	.L16
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.L16
	leaq	8(%rsp), %rbx
	movq	%rsi, %rdx
	movl	$16, %ecx
	movl	$16, %esi
	movq	%rbx, %rdi
	leaq	144(%rbp), %r12
	leaq	24(%rsp), %r14
	call	_copy@PLT
	leaq	160(%rbp), %rsi
	movq	%rbx, %rdi
	call	add_round_key
.L14:
	movq	%rbx, %rdi
	call	inv_shift_rows
	movq	%rbx, %rdi
	movq	%r12, %rsi
	subq	$16, %r12
	call	inv_sub_bytes
	call	add_round_key
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
	cmpq	%rbp, %r12
	jne	.L14
	movq	%rbx, %rdi
	call	inv_shift_rows
	movq	%rbx, %rdi
	movq	%r12, %rsi
	call	inv_sub_bytes
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
	jmp	.L12
.L16:
	xorl	%eax, %eax
.L12:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
