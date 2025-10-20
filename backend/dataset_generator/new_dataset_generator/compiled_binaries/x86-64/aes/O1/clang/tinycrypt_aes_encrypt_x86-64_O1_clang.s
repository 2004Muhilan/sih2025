	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.p2align	4, 0x90
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_9
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.2:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$4, %rax
	jne	.LBB0_3
# %bb.4:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	12(%rdi), %ebx
	movl	$4, %eax
	leaq	sbox(%rip), %rcx
	leaq	.L__const.tc_aes128_set_encrypt_key.rconst(%rip), %rdx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	xorl	-16(%rdi,%rax,4), %ebx
	movl	%ebx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$44, %rax
	je	.LBB0_8
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	testb	$3, %al
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	roll	$8, %ebx
	movl	%ebx, %r8d
	movzbl	%bh, %esi
	movzbl	%bl, %r9d
	movl	%ebx, %r10d
	shrl	$24, %r10d
	movzbl	(%r10,%rcx), %r10d
	shll	$24, %r10d
	shrl	$16, %r8d
	movzbl	%r8b, %r8d
	movzbl	(%r8,%rcx), %r8d
	shll	$16, %r8d
	orl	%r10d, %r8d
	movzbl	(%rsi,%rcx), %esi
	shll	$8, %esi
	orl	%r8d, %esi
	movzbl	(%r9,%rcx), %ebx
	orl	%esi, %ebx
	movl	%eax, %esi
	andl	$-4, %esi
	xorl	(%rsi,%rdx), %ebx
	jmp	.LBB0_7
.LBB0_8:
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_9:
	retq
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	4, 0x90
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB1_11
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB1_10
# %bb.2:
	testq	%r14, %r14
	je	.LBB1_10
# %bb.3:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rsp, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, (%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 1(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 2(%rsp)
	xorb	%al, 3(%rsp)
	movl	4(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 4(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 5(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 6(%rsp)
	xorb	%al, 7(%rsp)
	movl	8(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 8(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 9(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 10(%rsp)
	xorb	%al, 11(%rsp)
	movl	12(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 12(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 13(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 14(%rsp)
	xorb	%al, 15(%rsp)
	xorl	%ebx, %ebx
	leaq	sbox(%rip), %r13
	.p2align	4, 0x90
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsp,%rax), %ecx
	movzbl	(%rcx,%r13), %ecx
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movzbl	(%rsp), %eax
	movzbl	3(%rsp), %ecx
	movb	%al, 16(%rsp)
	movzbl	5(%rsp), %eax
	movb	%al, 17(%rsp)
	movzbl	10(%rsp), %eax
	movb	%al, 18(%rsp)
	movzbl	15(%rsp), %eax
	movb	%al, 19(%rsp)
	movzbl	4(%rsp), %eax
	movb	%al, 20(%rsp)
	movzbl	9(%rsp), %eax
	movb	%al, 21(%rsp)
	movzbl	14(%rsp), %eax
	movb	%al, 22(%rsp)
	movb	%cl, 23(%rsp)
	movzbl	8(%rsp), %eax
	movb	%al, 24(%rsp)
	movzbl	13(%rsp), %eax
	movb	%al, 25(%rsp)
	movzbl	1(%rsp), %eax
	movzbl	2(%rsp), %ecx
	movb	%cl, 26(%rsp)
	movzbl	7(%rsp), %ecx
	movb	%cl, 27(%rsp)
	movzbl	12(%rsp), %ecx
	movb	%cl, 28(%rsp)
	movb	%al, 29(%rsp)
	movzbl	6(%rsp), %eax
	movb	%al, 30(%rsp)
	movzbl	11(%rsp), %eax
	movb	%al, 31(%rsp)
	movq	%rsp, %r12
	movq	%r12, %rdi
	movl	$16, %esi
	leaq	16(%rsp), %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movzbl	(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	1(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	2(%rsp), %al
	xorb	3(%rsp), %al
	movzbl	1(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 16(%rsp)
	movzbl	(%rsp), %r15d
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	2(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	2(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 17(%rsp)
	movzbl	1(%rsp), %r15d
	xorb	(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	3(%rsp), %bpl
	movb	%bpl, 18(%rsp)
	movzbl	(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	(%rsp), %bpl
	xorb	1(%rsp), %bpl
	xorb	2(%rsp), %bpl
	movzbl	3(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 19(%rsp)
	movzbl	4(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	5(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	6(%rsp), %al
	xorb	7(%rsp), %al
	movzbl	5(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 20(%rsp)
	movzbl	4(%rsp), %r15d
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	6(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	6(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 21(%rsp)
	movzbl	5(%rsp), %r15d
	xorb	4(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	7(%rsp), %bpl
	movb	%bpl, 22(%rsp)
	movzbl	4(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	4(%rsp), %bpl
	xorb	5(%rsp), %bpl
	xorb	6(%rsp), %bpl
	movzbl	7(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 23(%rsp)
	movzbl	8(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	9(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	10(%rsp), %al
	xorb	11(%rsp), %al
	movzbl	9(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 24(%rsp)
	movzbl	8(%rsp), %r15d
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	10(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	10(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 25(%rsp)
	movzbl	9(%rsp), %r15d
	xorb	8(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	11(%rsp), %bpl
	movb	%bpl, 26(%rsp)
	movzbl	8(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	8(%rsp), %bpl
	xorb	9(%rsp), %bpl
	xorb	10(%rsp), %bpl
	movzbl	11(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 27(%rsp)
	movzbl	12(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	13(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	xorb	14(%rsp), %al
	xorb	15(%rsp), %al
	movzbl	13(%rsp), %edi
	xorb	%dil, %al
	movb	%al, 28(%rsp)
	movzbl	12(%rsp), %r15d
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	14(%rsp), %edi
	callq	_double_byte@PLT
	movzbl	14(%rsp), %edi
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	xorb	%dil, %bpl
	movb	%bpl, 29(%rsp)
	movzbl	13(%rsp), %r15d
	xorb	12(%rsp), %r15b
	callq	_double_byte@PLT
	movl	%eax, %ebp
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%r15b, %bpl
	xorb	%al, %bpl
	xorb	15(%rsp), %bpl
	movb	%bpl, 30(%rsp)
	movzbl	12(%rsp), %edi
	callq	_double_byte@PLT
	movl	%eax, %ebp
	xorb	12(%rsp), %bpl
	xorb	13(%rsp), %bpl
	xorb	14(%rsp), %bpl
	movzbl	15(%rsp), %edi
	callq	_double_byte@PLT
	xorb	%bpl, %al
	movb	%al, 31(%rsp)
	movq	%r12, %rdi
	movl	$16, %esi
	leaq	16(%rsp), %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	incq	%rbx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	(%r14,%rax), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	xorb	%dl, (%rsp)
	movl	%ecx, %edx
	shrl	$16, %edx
	xorb	%dl, 1(%rsp)
	movl	%ecx, %edx
	shrl	$8, %edx
	xorb	%dl, 2(%rsp)
	xorb	%cl, 3(%rsp)
	movl	4(%r14,%rax), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	xorb	%dl, 4(%rsp)
	movl	%ecx, %edx
	shrl	$16, %edx
	xorb	%dl, 5(%rsp)
	movl	%ecx, %edx
	shrl	$8, %edx
	xorb	%dl, 6(%rsp)
	xorb	%cl, 7(%rsp)
	movl	8(%r14,%rax), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	xorb	%dl, 8(%rsp)
	movl	%ecx, %edx
	shrl	$16, %edx
	xorb	%dl, 9(%rsp)
	movl	%ecx, %edx
	shrl	$8, %edx
	xorb	%dl, 10(%rsp)
	xorb	%cl, 11(%rsp)
	movl	12(%r14,%rax), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 12(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 13(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 14(%rsp)
	xorb	%al, 15(%rsp)
	cmpq	$9, %rbx
	jne	.LBB1_4
# %bb.7:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsp,%rax), %ecx
	movzbl	(%rcx,%r13), %ecx
	movb	%cl, (%rsp,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB1_8
# %bb.9:
	movzbl	(%rsp), %eax
	movzbl	3(%rsp), %ecx
	movb	%al, 16(%rsp)
	movzbl	5(%rsp), %eax
	movb	%al, 17(%rsp)
	movzbl	10(%rsp), %eax
	movb	%al, 18(%rsp)
	movzbl	15(%rsp), %eax
	movb	%al, 19(%rsp)
	movzbl	4(%rsp), %eax
	movb	%al, 20(%rsp)
	movzbl	9(%rsp), %eax
	movb	%al, 21(%rsp)
	movzbl	14(%rsp), %eax
	movb	%al, 22(%rsp)
	movb	%cl, 23(%rsp)
	movzbl	8(%rsp), %eax
	movb	%al, 24(%rsp)
	movzbl	13(%rsp), %eax
	movb	%al, 25(%rsp)
	movzbl	1(%rsp), %eax
	movzbl	2(%rsp), %ecx
	movb	%cl, 26(%rsp)
	movzbl	7(%rsp), %ecx
	movb	%cl, 27(%rsp)
	movzbl	12(%rsp), %ecx
	movb	%cl, 28(%rsp)
	movb	%al, 29(%rsp)
	movzbl	6(%rsp), %eax
	movb	%al, 30(%rsp)
	movzbl	11(%rsp), %eax
	movb	%al, 31(%rsp)
	movq	%rsp, %r15
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movl	$16, %esi
	movl	$16, %ecx
	callq	_copy@PLT
	movl	160(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, (%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 1(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 2(%rsp)
	xorb	%al, 3(%rsp)
	movl	164(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 4(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 5(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 6(%rsp)
	xorb	%al, 7(%rsp)
	movl	168(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 8(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 9(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 10(%rsp)
	xorb	%al, 11(%rsp)
	movl	172(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	xorb	%cl, 12(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorb	%cl, 13(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorb	%cl, 14(%rsp)
	xorb	%al, 15(%rsp)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %esi
	movq	%r15, %rdx
	movl	$16, %ecx
	callq	_copy@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set@PLT
	movl	$1, %eax
.LBB1_10:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB1_11:
	retq
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
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
