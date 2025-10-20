	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.p2align	4, 0x90
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	.L__const.tc_aes128_set_encrypt_key.rconst(%rip), %rsi
	movl	$44, %edx
	callq	memcpy@PLT
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movl	$0, -84(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -84(%rbp)
	jae	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %edx
	shll	$24, %edx
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	shll	$16, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	shll	$8, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	-84(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_6
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$44, -84(%rbp)
	jae	.LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-88(%rbp), %edi
	callq	rotword
	shrl	$24, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	sbox(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	shll	$24, %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	-88(%rbp), %edi
	callq	rotword
	movl	%eax, %ecx
	movl	-100(%rbp), %eax                # 4-byte Reload
	shrl	$16, %ecx
	andl	$255, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	sbox(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movl	-88(%rbp), %edi
	callq	rotword
	movl	%eax, %ecx
	movl	-96(%rbp), %eax                 # 4-byte Reload
	shrl	$8, %ecx
	andl	$255, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	sbox(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-88(%rbp), %edi
	callq	rotword
	movl	%eax, %ecx
	movl	-92(%rbp), %eax                 # 4-byte Reload
	shrl	$0, %ecx
	andl	$255, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	sbox(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	shll	$0, %ecx
	orl	%ecx, %eax
	movl	-84(%rbp), %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	xorl	-80(%rbp,%rcx,4), %eax
	movl	%eax, -88(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	-84(%rbp), %ecx
	subl	$4, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edx
	xorl	-88(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	-84(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_10
.LBB0_15:
	movl	$1, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function rotword
	.type	rotword,@function
rotword:                                # @rotword
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	-4(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	rotword, .Lfunc_end1-rotword
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	4, 0x90
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB2_13
.LBB2_2:
	cmpq	$0, -24(%rbp)
	jne	.LBB2_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB2_13
.LBB2_4:
	cmpq	$0, -32(%rbp)
	jne	.LBB2_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB2_13
.LBB2_6:
	jmp	.LBB2_7
.LBB2_7:
	jmp	.LBB2_8
.LBB2_8:
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	add_round_key
	movl	$0, -52(%rbp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$9, -52(%rbp)
	jae	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %rdi
	callq	sub_bytes
	leaq	-48(%rbp), %rdi
	callq	shift_rows
	leaq	-48(%rbp), %rdi
	callq	mix_columns
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	shlq	$2, %rax
	addq	%rax, %rsi
	callq	add_round_key
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_9
.LBB2_12:
	leaq	-48(%rbp), %rdi
	callq	sub_bytes
	leaq	-48(%rbp), %rdi
	callq	shift_rows
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	shlq	$2, %rax
	addq	%rax, %rsi
	callq	add_round_key
	movq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, -4(%rbp)
.LBB2_13:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	tc_aes_encrypt, .Lfunc_end2-tc_aes_encrypt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add_round_key
	.type	add_round_key,@function
add_round_key:                          # @add_round_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 2(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 3(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 5(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	6(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 6(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	7(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 7(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	9(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 9(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	10(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 10(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 11(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 12(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 13(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 14(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %ecx
	xorl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 15(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	add_round_key, .Lfunc_end3-add_round_key
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sub_bytes
	.type	sub_bytes,@function
sub_bytes:                              # @sub_bytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jae	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	leaq	sbox(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	sub_bytes, .Lfunc_end4-sub_bytes
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function shift_rows
	.type	shift_rows,@function
shift_rows:                             # @shift_rows
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -32(%rbp)
	movq	-8(%rbp), %rax
	movb	5(%rax), %al
	movb	%al, -31(%rbp)
	movq	-8(%rbp), %rax
	movb	10(%rax), %al
	movb	%al, -30(%rbp)
	movq	-8(%rbp), %rax
	movb	15(%rax), %al
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movb	4(%rax), %al
	movb	%al, -28(%rbp)
	movq	-8(%rbp), %rax
	movb	9(%rax), %al
	movb	%al, -27(%rbp)
	movq	-8(%rbp), %rax
	movb	14(%rax), %al
	movb	%al, -26(%rbp)
	movq	-8(%rbp), %rax
	movb	3(%rax), %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rax
	movb	8(%rax), %al
	movb	%al, -24(%rbp)
	movq	-8(%rbp), %rax
	movb	13(%rax), %al
	movb	%al, -23(%rbp)
	movq	-8(%rbp), %rax
	movb	2(%rax), %al
	movb	%al, -22(%rbp)
	movq	-8(%rbp), %rax
	movb	7(%rax), %al
	movb	%al, -21(%rbp)
	movq	-8(%rbp), %rax
	movb	12(%rax), %al
	movb	%al, -20(%rbp)
	movq	-8(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -19(%rbp)
	movq	-8(%rbp), %rax
	movb	6(%rax), %al
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	movb	11(%rax), %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	shift_rows, .Lfunc_end5-shift_rows
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mix_columns
	.type	mix_columns,@function
mix_columns:                            # @mix_columns
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rsi
	addq	$4, %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	callq	mult_row_column
	leaq	-32(%rbp), %rdi
	addq	$12, %rdi
	movq	-8(%rbp), %rsi
	addq	$12, %rsi
	callq	mult_row_column
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movl	$16, %ecx
	movl	%ecx, %esi
	callq	_copy@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	mix_columns, .Lfunc_end6-mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        # @mult_row_column
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-40(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	3(%rcx), %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-32(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	2(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	3(%rcx), %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-28(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-24(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %edx
	xorl	%edx, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	_double_byte@PLT
	movzbl	%al, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	xorl	%ecx, %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	_double_byte@PLT
	movb	%al, %cl
	movl	-20(%rbp), %eax                 # 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 3(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	mult_row_column, .Lfunc_end7-mult_row_column
	.cfi_endproc
                                        # -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,@object # @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.long	0                               # 0x0
	.long	16777216                        # 0x1000000
	.long	33554432                        # 0x2000000
	.long	67108864                        # 0x4000000
	.long	134217728                       # 0x8000000
	.long	268435456                       # 0x10000000
	.long	536870912                       # 0x20000000
	.long	1073741824                      # 0x40000000
	.long	2147483648                      # 0x80000000
	.long	452984832                       # 0x1b000000
	.long	905969664                       # 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    # @sbox
	.p2align	4, 0x0
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rotword
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym sub_bytes
	.addrsig_sym shift_rows
	.addrsig_sym mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym sbox
