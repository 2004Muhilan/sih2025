	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.type	uECC_set_rng,@function
uECC_set_rng:                           # @uECC_set_rng
	.cfi_startproc
# %bb.0:
	movq	%rdi, g_rng_function(%rip)
	retq
.Lfunc_end0:
	.size	uECC_set_rng, .Lfunc_end0-uECC_set_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.type	uECC_get_rng,@function
uECC_get_rng:                           # @uECC_get_rng
	.cfi_startproc
# %bb.0:
	movq	g_rng_function(%rip), %rax
	retq
.Lfunc_end1:
	.size	uECC_get_rng, .Lfunc_end1-uECC_get_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.type	uECC_curve_private_key_size,@function
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
	.cfi_startproc
# %bb.0:
	movswl	2(%rdi), %eax
	leal	7(%rax), %ecx
	addl	$14, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end2:
	.size	uECC_curve_private_key_size, .Lfunc_end2-uECC_curve_private_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.type	uECC_curve_public_key_size,@function
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
	.cfi_startproc
# %bb.0:
	movsbl	1(%rdi), %eax
	addl	%eax, %eax
	retq
.Lfunc_end3:
	.size	uECC_curve_public_key_size, .Lfunc_end3-uECC_curve_public_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.type	uECC_vli_clear,@function
uECC_vli_clear:                         # @uECC_vli_clear
	.cfi_startproc
# %bb.0:
	testb	%sil, %sil
	jle	.LBB4_1
# %bb.2:
	movzbl	%sil, %edx
	shll	$2, %edx
	xorl	%esi, %esi
	jmp	memset@PLT                      # TAILCALL
.LBB4_1:
	retq
.Lfunc_end4:
	.size	uECC_vli_clear, .Lfunc_end4-uECC_vli_clear
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.type	uECC_vli_isZero,@function
uECC_vli_isZero:                        # @uECC_vli_isZero
	.cfi_startproc
# %bb.0:
	testb	%sil, %sil
	jle	.LBB5_1
# %bb.2:
	movzbl	%sil, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB5_3
# %bb.4:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	retq
.LBB5_1:
	movl	$1, %eax
	retq
.Lfunc_end5:
	.size	uECC_vli_isZero, .Lfunc_end5-uECC_vli_isZero
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.type	uECC_vli_testBit,@function
uECC_vli_testBit:                       # @uECC_vli_testBit
	.cfi_startproc
# %bb.0:
	movl	%esi, %ecx
	movl	%esi, %edx
	sarl	$5, %edx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movslq	%edx, %rcx
	andl	(%rdi,%rcx,4), %eax
	retq
.Lfunc_end6:
	.size	uECC_vli_testBit, .Lfunc_end6-uECC_vli_testBit
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.type	uECC_vli_numBits,@function
uECC_vli_numBits:                       # @uECC_vli_numBits
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	movl	$255, %eax
	leal	-1(%rsi), %edx
	leal	1(%rsi), %ecx
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	%eax, %esi
	movzbl	%dl, %edx
	cmpb	$-1, %dl
	cmovll	%edx, %eax
	incb	%al
	decq	%rsi
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	testb	%sil, %sil
	js	.LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%esi, %edx
	andl	$127, %edx
	decb	%cl
	decq	%rsi
	cmpl	$0, (%rdi,%rdx,4)
	je	.LBB7_1
	jmp	.LBB7_4
.LBB7_3:
	movl	%eax, %ecx
.LBB7_4:
	xorl	%edx, %edx
	testb	%cl, %cl
	je	.LBB7_9
# %bb.5:
	movsbl	%cl, %eax
	decl	%eax
	movsbq	%cl, %rcx
	movl	-4(%rdi,%rcx,4), %ecx
	testl	%ecx, %ecx
	je	.LBB7_8
# %bb.6:
	xorl	%edx, %edx
	movl	%ecx, %esi
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	shrl	%esi
	incl	%edx
	cmpl	$1, %ecx
	movl	%esi, %ecx
	ja	.LBB7_7
.LBB7_8:
	shll	$5, %eax
	addl	%edx, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB7_9:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.type	uECC_vli_set,@function
uECC_vli_set:                           # @uECC_vli_set
	.cfi_startproc
# %bb.0:
	testb	%dl, %dl
	jle	.LBB8_3
# %bb.1:
	movzbl	%dl, %eax
	xorl	%ecx, %ecx
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB8_2
.LBB8_3:
	retq
.Lfunc_end8:
	.size	uECC_vli_set, .Lfunc_end8-uECC_vli_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.cfi_startproc
# %bb.0:
	movzbl	%dl, %eax
	decq	%rax
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB9_5
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%eax, %edx
	andl	$127, %edx
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB9_7
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB9_1
# %bb.4:
	movb	$-1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB9_5:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB9_7:
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end9:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end9-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         # @uECC_vli_equal
	.cfi_startproc
# %bb.0:
	decb	%dl
	js	.LBB10_1
# %bb.2:
	movzbl	%dl, %eax
	xorl	%ecx, %ecx
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %edx
	xorl	(%rdi,%rax,4), %edx
	orl	%edx, %ecx
	addq	$-1, %rax
	jb	.LBB10_3
# %bb.4:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	retq
.LBB10_1:
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	uECC_vli_equal, .Lfunc_end10-uECC_vli_equal
	.cfi_endproc
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.type	cond_set,@function
cond_set:                               # @cond_set
	.cfi_startproc
# %bb.0:
	imull	%edx, %edi
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovel	%esi, %eax
	orl	%edi, %eax
	retq
.Lfunc_end11:
	.size	cond_set, .Lfunc_end11-cond_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           # @uECC_vli_sub
	.cfi_startproc
# %bb.0:
	testb	%cl, %cl
	jle	.LBB12_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movzbl	%cl, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r10d
	movl	(%rdx,%r9,4), %r11d
	addl	%eax, %r11d
	xorl	%ebx, %ebx
	subl	%r11d, %r10d
	setb	%bl
	testl	%r11d, %r11d
	cmovnel	%r8d, %eax
	orl	%ebx, %eax
	movl	%r10d, (%rdi,%r9,4)
	incq	%r9
	cmpq	%r9, %rcx
	jne	.LBB12_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB12_1:
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	uECC_vli_sub, .Lfunc_end12-uECC_vli_sub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           # @uECC_vli_cmp
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testb	%dl, %dl
	jle	.LBB13_6
# %bb.1:
	movzbl	%dl, %ecx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r9d
	movl	(%rsi,%r8,4), %r10d
	addl	%edx, %r10d
	xorl	%r11d, %r11d
	subl	%r10d, %r9d
	setb	%r11b
	testl	%r10d, %r10d
	cmovnel	%eax, %edx
	orl	%r11d, %edx
	movl	%r9d, -40(%rsp,%r8,4)
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB13_2
# %bb.3:
	xorl	%eax, %eax
	xorl	%esi, %esi
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	orl	-40(%rsp,%rax,4), %esi
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB13_4
# %bb.5:
	testl	%edx, %edx
	sete	%al
	testl	%esi, %esi
	sete	%cl
	addb	%al, %al
	orb	%cl, %al
	addb	$-2, %al
	xorb	$1, %al
.LBB13_6:
                                        # kill: def $al killed $al killed $rax
	retq
.Lfunc_end13:
	.size	uECC_vli_cmp, .Lfunc_end13-uECC_vli_cmp
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.cfi_startproc
# %bb.0:
	movzbl	%r8b, %eax
	testb	%r8b, %r8b
	jle	.LBB14_4
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r11,4), %ebx
	leal	(%rbx,%r10), %ebp
	addl	(%rdx,%r11,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	setb	%r14b
	cmovnel	%r9d, %r10d
	orl	%r14d, %r10d
	movl	%ebp, (%rdi,%r11,4)
	incq	%r11
	cmpq	%r11, %rax
	jne	.LBB14_2
# %bb.3:
	testl	%r10d, %r10d
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	jne	.LBB14_8
.LBB14_4:
	leaq	-1(%rax), %rdx
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB14_8
# %bb.6:                                #   in Loop: Header=BB14_5 Depth=1
	movl	%edx, %r9d
	andl	$127, %r9d
	movl	(%rcx,%r9,4), %esi
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %esi
	ja	.LBB14_11
# %bb.7:                                #   in Loop: Header=BB14_5 Depth=1
	decq	%rdx
	cmpl	%r9d, %esi
	jae	.LBB14_5
.LBB14_8:
	testb	%r8b, %r8b
	jle	.LBB14_11
# %bb.9:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
.LBB14_10:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rsi,4), %r9d
	addl	%r8d, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, (%rdi,%rsi,4)
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edx, %r8d
	orl	%r10d, %r8d
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB14_10
.LBB14_11:
	retq
.Lfunc_end14:
	.size	uECC_vli_modAdd, .Lfunc_end14-uECC_vli_modAdd
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        # @uECC_vli_modSub
	.cfi_startproc
# %bb.0:
	testb	%r8b, %r8b
	jle	.LBB15_6
# %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movzbl	%r8b, %eax
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r10,4), %r11d
	movl	(%rdx,%r10,4), %ebx
	addl	%r9d, %ebx
	xorl	%ebp, %ebp
	subl	%ebx, %r11d
	setb	%bpl
	testl	%ebx, %ebx
	cmovnel	%r8d, %r9d
	orl	%ebp, %r9d
	movl	%r11d, (%rdi,%r10,4)
	incq	%r10
	cmpq	%r10, %rax
	jne	.LBB15_2
# %bb.3:
	testl	%r9d, %r9d
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	je	.LBB15_6
# %bb.4:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rsi,4), %r9d
	leal	(%r9,%r8), %r10d
	addl	(%rcx,%rsi,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%edx, %r8d
	orl	%r11d, %r8d
	movl	%r10d, (%rdi,%rsi,4)
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB15_5
.LBB15_6:
	retq
.Lfunc_end15:
	.size	uECC_vli_modSub, .Lfunc_end15-uECC_vli_modSub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.type	uECC_vli_mmod,@function
uECC_vli_mmod:                          # @uECC_vli_mmod
	.cfi_startproc
# %bb.0:
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rdi, %rbx
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	uECC_vli_numBits
                                        # kill: def $ax killed $ax def $eax
	movl	%r14d, %r12d
	shll	$6, %r12d
	subl	%eax, %r12d
	leal	31(%r12), %eax
	testw	%r12w, %r12w
	cmovnsl	%r12d, %eax
	movswl	%ax, %ecx
	shrl	$5, %ecx
	movzwl	%cx, %r13d
	andl	$-32, %eax
	movl	%r12d, %ebp
	subl	%eax, %ebp
	testb	%cl, %cl
	jle	.LBB16_2
# %bb.1:
	movzbl	%r13b, %edx
	shll	$2, %edx
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB16_2:
	testw	%bp, %bp
	jle	.LBB16_6
# %bb.3:
	testb	%r14b, %r14b
	je	.LBB16_8
# %bb.4:
	movswl	%bp, %eax
	movsbl	%r13b, %esi
	movl	$32, %edx
	subl	%eax, %edx
	movl	%r14d, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB16_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15,%r8,4), %r10d
	movl	%r10d, %r11d
	movl	%eax, %ecx
	shll	%cl, %r11d
	orl	%r9d, %r11d
	leal	(%rsi,%r8), %r9d
	movl	%edx, %ecx
	shrl	%cl, %r10d
	movl	%r11d, 32(%rsp,%r9,4)
	incq	%r8
	movl	%r10d, %r9d
	cmpq	%r8, %rdi
	jne	.LBB16_5
	jmp	.LBB16_8
.LBB16_6:
	testb	%r14b, %r14b
	jle	.LBB16_8
# %bb.7:
	movsbq	%r13b, %rax
	leaq	(%rsp,%rax,4), %rdi
	addq	$32, %rdi
	movzbl	%r14b, %edx
	shll	$2, %edx
	movq	%r15, %rsi
	callq	memcpy@PLT
.LBB16_8:
	testw	%r12w, %r12w
	js	.LBB16_9
# %bb.10:
	leal	(%r14,%r14), %eax
	movzbl	%r14b, %edi
	leaq	(%rsp,%rdi,4), %rcx
	addq	$32, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movsbq	%r14b, %rdx
	leaq	(%rsp,%rdx,4), %rdx
	addq	$32, %rdx
	movl	%r14d, %esi
	decl	%esi
	movslq	%esi, %rsi
	leaq	(%rdx,%rdi,4), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	$1, %r9d
	leaq	32(%rsp), %r8
.LBB16_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
                                        #     Child Loop BB16_18 Depth 2
                                        #     Child Loop BB16_20 Depth 2
	testb	%r14b, %r14b
	jle	.LBB16_12
# %bb.14:                               #   in Loop: Header=BB16_11 Depth=1
	movl	%r9d, %r10d
	movq	(%rsp,%r10,8), %r10
	movl	%r9d, %r11d
	xorl	$1, %r11d
	movq	(%rsp,%r11,8), %r11
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
.LBB16_15:                              #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %r13d
	movsbq	%r15b, %r15
	movl	(%r10,%r15,4), %ecx
	movl	32(%rsp,%r15,4), %edi
	addl	%ebp, %edi
	xorl	%ebp, %ebp
	subl	%edi, %ecx
	setb	%bpl
	testl	%edi, %edi
	cmovel	%r13d, %ebp
	movl	%ecx, (%r11,%r15,4)
	incb	%r15b
	movsbl	%r15b, %ecx
	cmpl	%ecx, %eax
	jg	.LBB16_15
# %bb.16:                               #   in Loop: Header=BB16_11 Depth=1
	cmpl	%ebp, %r9d
	sete	%r10b
	movl	$0, %r9d
	movb	%r10b, %r9b
	testb	%r14b, %r14b
	jle	.LBB16_13
# %bb.17:                               #   in Loop: Header=BB16_11 Depth=1
	xorl	%ebp, %ebp
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB16_18:                              #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r11), %ecx
	movl	%ecx, %edi
	shrl	%edi
	orl	%ebp, %edi
	movl	%edi, -4(%r11)
	leaq	-4(%r11), %rdi
	shll	$31, %ecx
	movq	%rdi, %r11
	movl	%ecx, %ebp
	cmpq	%r8, %rdi
	ja	.LBB16_18
# %bb.19:                               #   in Loop: Header=BB16_11 Depth=1
	movl	(%rdx), %ecx
	shll	$31, %ecx
	orl	%ecx, 32(%rsp,%rsi,4)
	xorl	%ebp, %ebp
	movq	16(%rsp), %r11                  # 8-byte Reload
.LBB16_20:                              #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%r11), %ecx
	movl	%ecx, %edi
	shrl	%edi
	orl	%ebp, %edi
	movl	%edi, -4(%r11)
	leaq	-4(%r11), %rdi
	shll	$31, %ecx
	movq	%rdi, %r11
	movl	%ecx, %ebp
	cmpq	%rdx, %rdi
	ja	.LBB16_20
	jmp	.LBB16_21
.LBB16_12:                              #   in Loop: Header=BB16_11 Depth=1
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	sete	%r10b
	movl	%r10d, %r9d
.LBB16_13:                              #   in Loop: Header=BB16_11 Depth=1
	movl	(%rdx), %ecx
	shll	$31, %ecx
	orl	%ecx, 32(%rsp,%rsi,4)
.LBB16_21:                              #   in Loop: Header=BB16_11 Depth=1
	leal	-1(%r12), %ecx
	testw	%r12w, %r12w
	movl	%ecx, %r12d
	jg	.LBB16_11
# %bb.22:
	movzbl	%r10b, %eax
	jmp	.LBB16_23
.LBB16_9:
	movl	$1, %eax
.LBB16_23:
	testb	%r14b, %r14b
	jle	.LBB16_26
# %bb.24:
	movq	(%rsp,%rax,8), %rax
	movzbl	%r14b, %ecx
	xorl	%edx, %edx
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdx,4), %esi
	movl	%esi, (%rbx,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	.LBB16_25
.LBB16_26:
	addq	$168, %rsp
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
	retq
.Lfunc_end16:
	.size	uECC_vli_mmod, .Lfunc_end16-uECC_vli_mmod
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       # @uECC_vli_modMult
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%r8d, %ebx
	movq	%rcx, %r14
	movq	%rdi, %r15
	movq	%rsp, %r12
	movq	%r12, %rdi
	movl	%r8d, %ecx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	uECC_vli_mmod
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cfi_endproc
                                        # -- End function
	.type	uECC_vli_mult,@function         # -- Begin function uECC_vli_mult
uECC_vli_mult:                          # @uECC_vli_mult
	.cfi_startproc
# %bb.0:
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testb	%cl, %cl
	jle	.LBB18_1
# %bb.4:
	movzbl	%cl, %r9d
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	%rdx, %rbx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
	movq	%rax, %r14
	movl	%r8d, %eax
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
.LBB18_6:                               #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%r12,4), %r13d
	movl	(%r15), %ebp
	imulq	%r13, %rbp
	shlq	$32, %rax
	movl	%r14d, %r14d
	orq	%rax, %r14
	addq	%rbp, %r14
	adcl	$0, %r8d
	movq	%r14, %rax
	shrq	$32, %rax
	incq	%r12
	addq	$-4, %r15
	cmpq	%r12, %r11
	jne	.LBB18_6
# %bb.7:                                #   in Loop: Header=BB18_5 Depth=1
	movl	%r14d, (%rdi,%r10,4)
	incq	%r10
	incq	%r11
	addq	$4, %rbx
	cmpq	%r9, %r10
	jne	.LBB18_5
	jmp	.LBB18_2
.LBB18_1:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
.LBB18_2:
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movsbl	%cl, %r10d
	leal	-1(,%r10,2), %edx
	cmpl	%r10d, %edx
	jle	.LBB18_3
# %bb.8:
	movsbq	%cl, %r10
	movb	$1, %r11b
	movl	%ecx, %ebx
.LBB18_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	movsbq	%bl, %r14
	leal	1(%r14), %ebx
	movl	%ebx, %r15d
	subb	%cl, %r15b
	xorl	%ebp, %ebp
	cmpb	%cl, %r15b
	jge	.LBB18_12
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=1
	leaq	(,%r14,4), %r15
	movsbq	%r11b, %r12
	leaq	(,%r12,4), %r13
	subq	%r13, %r15
	addq	-8(%rsp), %r15                  # 8-byte Folded Reload
	xorl	%ebp, %ebp
.LBB18_11:                              #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%r12,4), %r13d
	movl	(%r15), %r9d
	imulq	%r13, %r9
	shlq	$32, %r8
	movl	%eax, %eax
	orq	%r8, %rax
	addq	%r9, %rax
	adcl	$0, %ebp
	movq	%rax, %r8
	shrq	$32, %r8
	incq	%r12
	addq	$-4, %r15
	cmpq	%r10, %r12
	jl	.LBB18_11
.LBB18_12:                              #   in Loop: Header=BB18_9 Depth=1
	movl	%r8d, %r15d
	movl	%eax, (%rdi,%r14,4)
	movsbl	%bl, %r9d
	incb	%r11b
	movl	%ebp, %r8d
	movl	%r15d, %eax
	cmpl	%r9d, %edx
	jg	.LBB18_9
	jmp	.LBB18_13
.LBB18_3:
	movl	%eax, %r15d
.LBB18_13:
	movslq	%edx, %rax
	movl	%r15d, (%rdi,%rax,4)
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
	retq
.Lfunc_end18:
	.size	uECC_vli_mult, .Lfunc_end18-uECC_vli_mult
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movsbl	(%rcx), %ecx
	movq	%rsp, %r15
	movq	%r15, %rdi
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*184(%rbx)
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	uECC_vli_modMult_fast, .Lfunc_end19-uECC_vli_modMult_fast
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        # @uECC_vli_modInv
	.cfi_startproc
# %bb.0:
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testb	%cl, %cl
	jle	.LBB20_43
# %bb.1:
	movq	%rdx, %r14
	movzbl	%cl, %ebp
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%rsi,%rdx,4), %eax
	incq	%rdx
	cmpq	%rdx, %rbp
	jne	.LBB20_2
# %bb.3:
	leal	(,%rbp,4), %ebx
	testl	%eax, %eax
	je	.LBB20_44
# %bb.4:
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	leaq	144(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	callq	memcpy@PLT
	leaq	112(%rsp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	32(%rsp), %rdi
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	leaq	32(%rsp), %rax
	movl	$1, (%rax)
	leaq	64(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset@PLT
	leaq	(%rsp,%rbp,4), %rax
	addq	$112, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	144(%rsp,%rbp,4), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	-1(%rbp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movsbl	4(%rsp), %ebx                   # 1-byte Folded Reload
.LBB20_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_6 Depth 2
                                        #     Child Loop BB20_16 Depth 2
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_20 Depth 2
                                        #     Child Loop BB20_24 Depth 2
                                        #     Child Loop BB20_26 Depth 2
                                        #     Child Loop BB20_29 Depth 2
                                        #     Child Loop BB20_31 Depth 2
                                        #     Child Loop BB20_33 Depth 2
                                        #     Child Loop BB20_37 Depth 2
                                        #     Child Loop BB20_39 Depth 2
                                        #     Child Loop BB20_13 Depth 2
                                        #     Child Loop BB20_10 Depth 2
	movq	%rbp, %rax
.LBB20_6:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	testb	%al, %al
	js	.LBB20_42
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=2
	movl	%eax, %edx
	andl	$127, %edx
	movl	144(%rsp,%rdx,4), %ecx
	movl	112(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	je	.LBB20_6
# %bb.8:                                #   in Loop: Header=BB20_5 Depth=1
	testb	$1, 144(%rsp)
	jne	.LBB20_11
# %bb.9:                                #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
	movq	24(%rsp), %rax                  # 8-byte Reload
.LBB20_10:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r12, %rsi
	ja	.LBB20_10
.LBB20_40:                              #   in Loop: Header=BB20_5 Depth=1
	leaq	32(%rsp), %rdi
	jmp	.LBB20_41
.LBB20_11:                              #   in Loop: Header=BB20_5 Depth=1
	testb	$1, 112(%rsp)
	jne	.LBB20_14
# %bb.12:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
	movq	16(%rsp), %rax                  # 8-byte Reload
.LBB20_13:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r13, %rsi
	ja	.LBB20_13
	jmp	.LBB20_27
.LBB20_14:                              #   in Loop: Header=BB20_5 Depth=1
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jbe	.LBB20_15
# %bb.28:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
.LBB20_29:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	112(%rsp,%rax,4), %edx
	addl	%ecx, %edx
	xorl	%esi, %esi
	subl	%edx, 144(%rsp,%rax,4)
	setb	%sil
	testl	%edx, %edx
	cmovnel	%r15d, %ecx
	orl	%esi, %ecx
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_29
# %bb.30:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
	movq	24(%rsp), %rax                  # 8-byte Reload
.LBB20_31:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r12, %rsi
	ja	.LBB20_31
# %bb.32:                               #   in Loop: Header=BB20_5 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
.LBB20_33:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	js	.LBB20_38
# %bb.34:                               #   in Loop: Header=BB20_33 Depth=2
	movl	%eax, %edx
	andl	$127, %edx
	movl	32(%rsp,%rdx,4), %ecx
	movl	64(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_38
# %bb.35:                               #   in Loop: Header=BB20_33 Depth=2
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_33
# %bb.36:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB20_37:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%r14,%rax,4), %esi
	xorl	%edi, %edi
	cmpl	%edx, %esi
	setb	%dil
	cmovnel	%r15d, %ecx
	orl	%edi, %ecx
	movl	%esi, 32(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_37
.LBB20_38:                              #   in Loop: Header=BB20_5 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB20_39:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	64(%rsp,%rax,4), %edx
	addl	%ecx, %edx
	xorl	%esi, %esi
	subl	%edx, 32(%rsp,%rax,4)
	setb	%sil
	testl	%edx, %edx
	cmovnel	%r15d, %ecx
	orl	%esi, %ecx
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_39
	jmp	.LBB20_40
.LBB20_15:                              #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
.LBB20_16:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	144(%rsp,%rax,4), %edx
	addl	%ecx, %edx
	xorl	%esi, %esi
	subl	%edx, 112(%rsp,%rax,4)
	setb	%sil
	testl	%edx, %edx
	cmovnel	%r15d, %ecx
	orl	%esi, %ecx
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_16
# %bb.17:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%ecx, %ecx
	movq	16(%rsp), %rax                  # 8-byte Reload
.LBB20_18:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r13, %rsi
	ja	.LBB20_18
# %bb.19:                               #   in Loop: Header=BB20_5 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
.LBB20_20:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	js	.LBB20_25
# %bb.21:                               #   in Loop: Header=BB20_20 Depth=2
	movl	%eax, %edx
	andl	$127, %edx
	movl	64(%rsp,%rdx,4), %ecx
	movl	32(%rsp,%rdx,4), %edx
	cmpl	%edx, %ecx
	ja	.LBB20_25
# %bb.22:                               #   in Loop: Header=BB20_20 Depth=2
	decq	%rax
	cmpl	%edx, %ecx
	jae	.LBB20_20
# %bb.23:                               #   in Loop: Header=BB20_5 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB20_24:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	64(%rsp,%rax,4), %edx
	leal	(%rdx,%rcx), %esi
	addl	(%r14,%rax,4), %esi
	xorl	%edi, %edi
	cmpl	%edx, %esi
	setb	%dil
	cmovnel	%r15d, %ecx
	orl	%edi, %ecx
	movl	%esi, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_24
.LBB20_25:                              #   in Loop: Header=BB20_5 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB20_26:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%rsp,%rax,4), %edx
	addl	%ecx, %edx
	xorl	%esi, %esi
	subl	%edx, 64(%rsp,%rax,4)
	setb	%sil
	testl	%edx, %edx
	cmovnel	%r15d, %ecx
	orl	%esi, %ecx
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB20_26
.LBB20_27:                              #   in Loop: Header=BB20_5 Depth=1
	leaq	64(%rsp), %rdi
.LBB20_41:                              #   in Loop: Header=BB20_5 Depth=1
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	vli_modInv_update
	jmp	.LBB20_5
.LBB20_42:
	leaq	32(%rsp), %rsi
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	callq	memcpy@PLT
.LBB20_43:
	addq	$184, %rsp
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
	retq
.LBB20_44:
	.cfi_def_cfa_offset 240
	xorl	%esi, %esi
	movq	%rbx, %rdx
	addq	$184, %rsp
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
	jmp	memset@PLT                      # TAILCALL
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cfi_endproc
                                        # -- End function
	.type	vli_modInv_update,@function     # -- Begin function vli_modInv_update
vli_modInv_update:                      # @vli_modInv_update
	.cfi_startproc
# %bb.0:
	testb	$1, (%rdi)
	jne	.LBB21_4
# %bb.1:
	testb	%dl, %dl
	jle	.LBB21_11
# %bb.2:
	movzbl	%dl, %eax
	leaq	(%rdi,%rax,4), %rax
	xorl	%ecx, %ecx
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%rdi, %rsi
	ja	.LBB21_3
.LBB21_11:
	retq
.LBB21_4:
	testb	%dl, %dl
	jle	.LBB21_11
# %bb.5:
	movzbl	%dl, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
.LBB21_6:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r9d
	leal	(%r9,%rax), %r10d
	addl	(%rsi,%r8,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%edx, %eax
	orl	%r11d, %eax
	movl	%r10d, (%rdi,%r8,4)
	incq	%r8
	cmpq	%r8, %rcx
	jne	.LBB21_6
# %bb.7:
	leaq	(%rdi,%rcx,4), %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %r8d
	movl	%r8d, %r9d
	shrl	%r9d
	orl	%esi, %r9d
	movl	%r9d, -4(%rdx)
	leaq	-4(%rdx), %r9
	shll	$31, %r8d
	movq	%r9, %rdx
	movl	%r8d, %esi
	cmpq	%rdi, %r9
	ja	.LBB21_8
# %bb.9:
	testl	%eax, %eax
	je	.LBB21_11
# %bb.10:
	orb	$-128, -1(%rcx)
	retq
.Lfunc_end21:
	.size	vli_modInv_update, .Lfunc_end21-vli_modInv_update
	.cfi_endproc
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.type	double_jacobian_default,@function
double_jacobian_default:                # @double_jacobian_default
	.cfi_startproc
# %bb.0:
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	(%rcx), %r14d
	testb	%r14b, %r14b
	jle	.LBB22_17
# %bb.1:
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%r15,%rax,4), %edx
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB22_2
# %bb.3:
	testl	%edx, %edx
	je	.LBB22_17
# %bb.4:
	movsbl	%r14b, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	uECC_vli_mult
	leaq	112(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	(%rax), %ecx
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	leaq	80(%rsp), %rdi
	movq	%r13, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	(%rax), %ecx
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	(%rax), %ecx
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	(%rax), %ecx
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	4(%rax), %rbp
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movl	12(%rsp), %r13d                 # 4-byte Reload
	movl	%r13d, %r8d
	callq	uECC_vli_modAdd
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modAdd
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modSub
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	(%rax), %ecx
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	leaq	16(%rsp), %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*184(%rax)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modAdd
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modAdd
	testb	$1, (%r12)
	jne	.LBB22_5
# %bb.10:
	leaq	(%r12,%r14,4), %rax
	xorl	%ecx, %ecx
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	movl	%edx, %esi
	shrl	%esi
	orl	%ecx, %esi
	movl	%esi, -4(%rax)
	leaq	-4(%rax), %rsi
	shll	$31, %edx
	movq	%rsi, %rax
	movl	%edx, %ecx
	cmpq	%r12, %rsi
	ja	.LBB22_11
	jmp	.LBB22_12
.LBB22_5:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB22_6:                               # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rdx,4), %esi
	leal	(%rsi,%rax), %edi
	addl	(%rbp,%rdx,4), %edi
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	setb	%r8b
	cmovnel	%ecx, %eax
	orl	%r8d, %eax
	movl	%edi, (%r12,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %r14
	jne	.LBB22_6
# %bb.7:
	leaq	(%r12,%r14,4), %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %edi
	movl	%edi, %r8d
	shrl	%r8d
	orl	%esi, %r8d
	movl	%r8d, -4(%rdx)
	leaq	-4(%rdx), %r8
	shll	$31, %edi
	movq	%r8, %rdx
	movl	%edi, %esi
	cmpq	%r12, %r8
	ja	.LBB22_8
# %bb.9:
	shll	$31, %eax
	orl	%eax, -4(%rcx)
.LBB22_12:
	movq	(%rsp), %r13                    # 8-byte Reload
	movsbl	(%r13), %ecx
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	leaq	16(%rsp), %rsi
	callq	*184(%r13)
	movsbl	%r14b, %r13d
	movl	%r13d, 12(%rsp)                 # 4-byte Spill
	leaq	80(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modSub
	movq	%r15, %rdi
	movq	%r15, %rsi
	leaq	80(%rsp), %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modSub
	leaq	80(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modSub
	movq	(%rsp), %r13                    # 8-byte Reload
	movsbl	(%r13), %ecx
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	leaq	80(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	leaq	16(%rsp), %rsi
	callq	*184(%r13)
	leaq	112(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	movl	12(%rsp), %r8d                  # 4-byte Reload
	callq	uECC_vli_modSub
	xorl	%eax, %eax
.LBB22_13:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rax,4), %ecx
	movl	%ecx, (%r12,%rax,4)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB22_13
# %bb.14:
	xorl	%eax, %eax
.LBB22_15:                              # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rax,4), %ecx
	movl	%ecx, (%r15,%rax,4)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB22_15
# %bb.16:
	shll	$2, %r14d
	leaq	112(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB22_17:
	addq	$152, %rsp
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
	retq
.Lfunc_end22:
	.size	double_jacobian_default, .Lfunc_end22-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
	.cfi_startproc
# %bb.0:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movsbl	(%rdx), %ebp
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%rsi, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*184(%rbx)
	leaq	4(%rbx), %r12
	leaq	.L__const.x_side_default._3(%rip), %rdx
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%rsp, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*184(%rbx)
	addq	$132, %rbx
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modAdd
	addq	$72, %rsp
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
	retq
.Lfunc_end23:
	.size	x_side_default, .Lfunc_end23-x_side_default
	.cfi_endproc
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         # @uECC_secp256r1
	.cfi_startproc
# %bb.0:
	leaq	curve_secp256r1(%rip), %rax
	retq
.Lfunc_end24:
	.size	uECC_secp256r1, .Lfunc_end24-uECC_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rdi,%rax,4)
	incq	%rax
	cmpq	$8, %rax
	jne	.LBB25_1
# %bb.2:
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$0, -32(%rsp)
	movq	$0, -40(%rsp)
	movups	44(%rsi), %xmm0
	movups	%xmm0, -28(%rsp)
	movl	60(%rsi), %eax
	movl	%eax, -12(%rsp)
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%rdx,4), %r8d
	leal	(%rcx,%r8,2), %r9d
	xorl	%r10d, %r10d
	cmpl	%r8d, %r9d
	setb	%r10b
	cmovnel	%eax, %ecx
	orl	%r10d, %ecx
	movl	%r9d, -40(%rsp,%rdx,4)
	incq	%rdx
	cmpq	$8, %rdx
	jne	.LBB25_3
# %bb.4:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8,4), %r9d
	leal	(%r9,%rdx), %r10d
	addl	-40(%rsp,%r8,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%eax, %edx
	orl	%r11d, %edx
	movl	%r10d, (%rdi,%r8,4)
	incq	%r8
	cmpq	$8, %r8
	jne	.LBB25_5
# %bb.6:
	movups	48(%rsi), %xmm0
	movups	%xmm0, -28(%rsp)
	movl	$0, -12(%rsp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
.LBB25_7:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r9,4), %r10d
	leal	(%r8,%r10,2), %r11d
	xorl	%ebx, %ebx
	cmpl	%r10d, %r11d
	setb	%bl
	cmovnel	%eax, %r8d
	orl	%ebx, %r8d
	movl	%r11d, -40(%rsp,%r9,4)
	incq	%r9
	cmpq	$8, %r9
	jne	.LBB25_7
# %bb.8:
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
.LBB25_9:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r10,4), %r11d
	leal	(%r11,%rax), %ebx
	addl	-40(%rsp,%r10,4), %ebx
	xorl	%ebp, %ebp
	cmpl	%r11d, %ebx
	setb	%bpl
	cmovnel	%r9d, %eax
	orl	%ebp, %eax
	movl	%ebx, (%rdi,%r10,4)
	incq	%r10
	cmpq	$8, %r10
	jne	.LBB25_9
# %bb.10:
	movq	32(%rsi), %r9
	movq	%r9, -40(%rsp)
	movl	40(%rsi), %r9d
	movl	%r9d, -32(%rsp)
	movl	$0, -20(%rsp)
	movq	$0, -28(%rsp)
	movq	56(%rsi), %r9
	movq	%r9, -16(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
.LBB25_11:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r11,4), %ebx
	leal	(%rbx,%r9), %ebp
	addl	-40(%rsp,%r11,4), %ebp
	xorl	%r14d, %r14d
	cmpl	%ebx, %ebp
	setb	%r14b
	cmovnel	%r10d, %r9d
	orl	%r14d, %r9d
	movl	%ebp, (%rdi,%r11,4)
	incq	%r11
	cmpq	$8, %r11
	jne	.LBB25_11
# %bb.12:
	movl	36(%rsi), %r10d
	movl	%r10d, -40(%rsp)
	movq	52(%rsi), %r10
	movq	40(%rsi), %xmm0                 # xmm0 = mem[0],zero
	movq	%r10, %xmm1
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	movdqu	%xmm0, -36(%rsp)
	movl	60(%rsi), %r11d
	movl	%r11d, -20(%rsp)
	movl	%r10d, -16(%rsp)
	movl	32(%rsi), %r10d
	movl	%r10d, -12(%rsp)
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
.LBB25_13:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %r14d
	leal	(%r14,%r10), %ebp
	addl	-40(%rsp,%rbx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	setb	%r15b
	cmovnel	%r11d, %r10d
	orl	%r15d, %r10d
	movl	%ebp, (%rdi,%rbx,4)
	incq	%rbx
	cmpq	$8, %rbx
	jne	.LBB25_13
# %bb.14:
	movq	44(%rsi), %r11
	movq	%r11, -40(%rsp)
	movl	52(%rsi), %r11d
	movl	%r11d, -32(%rsp)
	movl	$0, -20(%rsp)
	movq	$0, -28(%rsp)
	movl	32(%rsi), %r11d
	movl	%r11d, -16(%rsp)
	movl	40(%rsi), %r11d
	movl	%r11d, -12(%rsp)
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
.LBB25_15:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r14,4), %ebp
	addl	%r11d, %ebp
	xorl	%r15d, %r15d
	subl	%ebp, (%rdi,%r14,4)
	setb	%r15b
	testl	%ebp, %ebp
	cmovnel	%ebx, %r11d
	orl	%r15d, %r11d
	incq	%r14
	cmpq	$8, %r14
	jne	.LBB25_15
# %bb.16:
	movups	48(%rsi), %xmm0
	movaps	%xmm0, -40(%rsp)
	movq	$0, -24(%rsp)
	movl	36(%rsi), %ebx
	movl	%ebx, -16(%rsp)
	movl	44(%rsi), %ebx
	movl	%ebx, -12(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
.LBB25_17:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %ebp
	addl	%ebx, %ebp
	xorl	%r12d, %r12d
	subl	%ebp, (%rdi,%r15,4)
	setb	%r12b
	testl	%ebp, %ebp
	cmovnel	%r14d, %ebx
	orl	%r12d, %ebx
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB25_17
# %bb.18:
	movl	52(%rsi), %ebp
	movl	%ebp, -40(%rsp)
	movsd	32(%rsi), %xmm0                 # xmm0 = mem[0],zero
	movsd	56(%rsi), %xmm1                 # xmm1 = mem[0],zero
	movlhps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	movups	%xmm1, -36(%rsp)
	movl	40(%rsi), %ebp
	movl	%ebp, -20(%rsp)
	movl	$0, -16(%rsp)
	movl	48(%rsi), %ebp
	movl	%ebp, -12(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
.LBB25_19:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %r12d
	addl	%ebp, %r12d
	xorl	%r13d, %r13d
	subl	%r12d, (%rdi,%r15,4)
	setb	%r13b
	testl	%r12d, %r12d
	cmovnel	%r14d, %ebp
	orl	%r13d, %ebp
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB25_19
# %bb.20:
	movq	56(%rsi), %r14
	movq	%r14, -40(%rsp)
	xorl	%r14d, %r14d
	movl	%r14d, -32(%rsp)
	movq	36(%rsi), %r15
	movq	%r15, -28(%rsp)
	movl	44(%rsi), %r15d
	movl	%r15d, -20(%rsp)
	movl	%r14d, -16(%rsp)
	movl	52(%rsi), %esi
	movl	%esi, -12(%rsp)
	xorl	%r15d, %r15d
	xorl	%esi, %esi
.LBB25_21:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rsp,%r15,4), %r12d
	addl	%esi, %r12d
	xorl	%r13d, %r13d
	subl	%r12d, (%rdi,%r15,4)
	setb	%r13b
	testl	%r12d, %r12d
	cmovnel	%r14d, %esi
	orl	%r13d, %esi
	incq	%r15
	cmpq	$8, %r15
	jne	.LBB25_21
# %bb.22:
	addl	%ecx, %edx
	addl	%r8d, %edx
	addl	%r9d, %eax
	addl	%r10d, %eax
	addl	%edx, %eax
	addl	%ebx, %r11d
	addl	%ebp, %r11d
	addl	%esi, %r11d
	subl	%r11d, %eax
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
	leaq	curve_secp256r1(%rip), %rcx
	js	.LBB25_32
# %bb.23:
	xorl	%edx, %edx
.LBB25_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_26 Depth 2
                                        #     Child Loop BB25_30 Depth 2
	testl	%eax, %eax
	je	.LBB25_25
.LBB25_29:                              #   in Loop: Header=BB25_24 Depth=1
	xorl	%esi, %esi
	xorl	%r8d, %r8d
.LBB25_30:                              #   Parent Loop BB25_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx,%rsi,4), %r9d
	addl	%r8d, %r9d
	xorl	%r10d, %r10d
	subl	%r9d, (%rdi,%rsi,4)
	setb	%r10b
	testl	%r9d, %r9d
	cmovnel	%edx, %r8d
	orl	%r10d, %r8d
	incq	%rsi
	cmpq	$8, %rsi
	jne	.LBB25_30
# %bb.31:                               #   in Loop: Header=BB25_24 Depth=1
	subl	%r8d, %eax
	jmp	.LBB25_24
.LBB25_25:                              #   in Loop: Header=BB25_24 Depth=1
	movl	$7, %esi
.LBB25_26:                              #   Parent Loop BB25_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%sil, %sil
	js	.LBB25_29
# %bb.27:                               #   in Loop: Header=BB25_26 Depth=2
	movl	%esi, %r9d
	andl	$127, %r9d
	movl	4(%rcx,%r9,4), %r8d
	movl	(%rdi,%r9,4), %r9d
	cmpl	%r9d, %r8d
	ja	.LBB25_36
# %bb.28:                               #   in Loop: Header=BB25_26 Depth=2
	decq	%rsi
	cmpl	%r9d, %r8d
	jae	.LBB25_26
	jmp	.LBB25_29
.LBB25_32:
	xorl	%edx, %edx
.LBB25_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_34 Depth 2
	xorl	%r8d, %r8d
	xorl	%esi, %esi
.LBB25_34:                              #   Parent Loop BB25_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r8,4), %r9d
	leal	(%r9,%rsi), %r10d
	addl	4(%rcx,%r8,4), %r10d
	xorl	%r11d, %r11d
	cmpl	%r9d, %r10d
	setb	%r11b
	cmovnel	%edx, %esi
	orl	%r11d, %esi
	movl	%r10d, (%rdi,%r8,4)
	incq	%r8
	cmpq	$8, %r8
	jne	.LBB25_34
# %bb.35:                               #   in Loop: Header=BB25_33 Depth=1
	addl	%esi, %eax
	js	.LBB25_33
.LBB25_36:
	retq
.Lfunc_end25:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end25-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
	.cfi_startproc
# %bb.0:
	movb	(%rsi), %al
	addb	%al, %al
	testb	%al, %al
	jle	.LBB26_1
# %bb.2:
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	orl	(%rdi,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB26_3
# %bb.4:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	retq
.LBB26_1:
	movl	$1, %eax
	retq
.Lfunc_end26:
	.size	EccPoint_isZero, .Lfunc_end26-EccPoint_isZero
	.cfi_endproc
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.type	apply_z,@function
apply_z:                                # @apply_z
	.cfi_startproc
# %bb.0:
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movsbl	(%rcx), %ecx
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	leaq	64(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*184(%rbx)
	addq	$104, %rsp
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
	retq
.Lfunc_end27:
	.size	apply_z, .Lfunc_end27-apply_z
	.cfi_endproc
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.type	XYcZ_add,@function
XYcZ_add:                               # @XYcZ_add
	.cfi_startproc
# %bb.0:
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %rdx
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movsbl	(%r8), %ebp
	leaq	4(%r8), %r13
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	leaq	64(%rsp), %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	64(%rsp), %rdi
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rsi
	leaq	32(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	leaq	64(%rsp), %rsi
	callq	*184(%r12)
	movsbl	(%r12), %ecx
	leaq	64(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	32(%rsp), %r15
	movq	%r15, %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	leaq	64(%rsp), %rsi
	callq	*184(%r12)
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r12), %ecx
	leaq	64(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	uECC_vli_mult
	movq	%r15, %rdi
	leaq	64(%rsp), %rsi
	callq	*184(%r12)
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rdx
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	leaq	32(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r12), %ecx
	leaq	64(%rsp), %rdi
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	leaq	64(%rsp), %rsi
	callq	*184(%r12)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	32(%rsp), %rdx
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r12), %ecx
	leaq	64(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*184(%r12)
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	testl	%ebp, %ebp
	jle	.LBB28_2
# %bb.1:
	movzbl	%bpl, %edx
	shll	$2, %edx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy@PLT
.LBB28_2:
	addq	$136, %rsp
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
	retq
.Lfunc_end28:
	.size	XYcZ_add, .Lfunc_end28-XYcZ_add
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.type	EccPoint_mult,@function
EccPoint_mult:                          # @EccPoint_mult
	.cfi_startproc
# %bb.0:
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
	subq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 368
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rcx, %rbp
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movzbl	(%r9), %r14d
	leaq	112(%rsp), %r13
	testb	%r14b, %r14b
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
	jle	.LBB29_3
# %bb.1:
	leaq	(,%r14,4), %rbx
	movq	%r13, %rdi
	movq	%rsi, %r13
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	176(%rsp), %r12
	leaq	(,%r14,4), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leal	(,%r14,4), %ebx
	testq	%rbp, %rbp
	je	.LBB29_5
# %bb.2:
	leaq	208(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	jmp	.LBB29_6
.LBB29_3:
	leaq	176(%rsp), %r12
	movsbq	%r14b, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	(%rsi,%rax,4), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	testq	%rbp, %rbp
	jne	.LBB29_7
# %bb.4:
	movl	$1, 208(%rsp)
	jmp	.LBB29_7
.LBB29_5:
	leaq	208(%rsp), %rbp
	movq	%rbp, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movl	$1, (%rbp)
.LBB29_6:
	leaq	80(%rsp), %rdi
	leaq	112(%rsp), %r13
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memmove@PLT
	leaq	176(%rsp), %rsi
	leaq	144(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	%r14, 24(%rsp)                  # 8-byte Spill
.LBB29_7:
	leaq	208(%rsp), %rbx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	apply_z
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	*168(%r15)
	leaq	80(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	apply_z
	movl	16(%rsp), %eax                  # 4-byte Reload
	addl	$-2, %eax
	testw	%ax, %ax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB29_10
# %bb.8:
	movzwl	%ax, %r12d
.LBB29_9:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	shrl	$5, %eax
	movl	$1, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	testl	%edx, (%rdi,%rax,4)
	sete	%cl
	setne	%sil
	shll	$5, %esi
	leaq	(%rsp,%rsi), %rbx
	addq	$80, %rbx
	leaq	(%rsp,%rsi), %r13
	addq	$144, %r13
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %rbp
	addq	$80, %rbp
	leaq	144(%rsp,%rcx), %r14
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	XYcZ_addC
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leal	-1(%r12), %eax
	cmpl	$1, %r12d
	movl	%eax, %r12d
	ja	.LBB29_9
.LBB29_10:
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	leaq	(%rsp,%rcx), %rdi
	addq	$80, %rdi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	leaq	(%rsp,%rcx), %rbp
	addq	$144, %rbp
	xorl	$1, %eax
	shll	$5, %eax
	leaq	(%rsp,%rax), %rdx
	addq	$80, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	leaq	144(%rsp,%rax), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	movq	%r15, %r8
	callq	XYcZ_addC
	leaq	4(%r15), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r14                  # 8-byte Reload
	movsbl	%r14b, %ebx
	leaq	272(%rsp), %r12
	leaq	80(%rsp), %rdx
	movq	%r12, %rdi
	leaq	112(%rsp), %rsi
	movl	%ebx, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r15), %ecx
	leaq	208(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	208(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*184(%r15)
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	%ebx, %ecx
	callq	uECC_vli_modInv
	movsbl	(%r15), %ecx
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	56(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	callq	uECC_vli_mult
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	movq	%rbp, %rcx
	movq	%r15, %r8
	callq	XYcZ_add
	leaq	144(%rsp), %rsi
	leaq	80(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	apply_z
	testb	%r14b, %r14b
	jle	.LBB29_12
# %bb.11:
	shll	$2, %r14d
	leaq	80(%rsp), %rsi
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax,4), %rdi
	leaq	144(%rsp), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB29_12:
	addq	$312, %rsp                      # imm = 0x138
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
	retq
.Lfunc_end29:
	.size	EccPoint_mult, .Lfunc_end29-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.type	XYcZ_addC,@function             # -- Begin function XYcZ_addC
XYcZ_addC:                              # @XYcZ_addC
	.cfi_startproc
# %bb.0:
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rdx
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movsbl	(%r8), %ebp
	leaq	4(%r8), %r12
	leaq	160(%rsp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %rdi
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r15)
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	leaq	160(%rsp), %rbx
	movq	%rbx, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*184(%r15)
	movq	%rbx, %rdi
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rsi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modAdd
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	leaq	96(%rsp), %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	leaq	96(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r15)
	leaq	96(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r13, %rbx
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modAdd
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %rdi
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_mult
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	callq	*184(%r15)
	movq	%r14, %rdi
	movq	%r14, %rsi
	leaq	96(%rsp), %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	leaq	128(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	leaq	128(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*184(%r15)
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %r14
	movq	%r14, %rdi
	leaq	160(%rsp), %rdx
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %r14                   # 8-byte Reload
	callq	*184(%r15)
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	leaq	96(%rsp), %r13
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	movsbl	(%r15), %ecx
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	160(%rsp), %rdx
	callq	uECC_vli_mult
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*184(%r15)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rsi
	movq	%rdi, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub
	testl	%ebp, %ebp
	jle	.LBB30_2
# %bb.1:
	movzbl	%bpl, %edx
	shll	$2, %edx
	leaq	128(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy@PLT
.LBB30_2:
	addq	$200, %rsp
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
	retq
.Lfunc_end30:
	.size	XYcZ_addC, .Lfunc_end30-XYcZ_addC
	.cfi_endproc
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.type	regularize_k,@function
regularize_k:                           # @regularize_k
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movswl	2(%rcx), %r9d
	leal	31(%r9), %eax
	leal	62(%r9), %r8d
	testl	%eax, %eax
	cmovnsl	%eax, %r8d
	sarl	$5, %r8d
	testb	%r8b, %r8b
	jle	.LBB31_4
# %bb.1:
	movzbl	%r8b, %eax
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %r14d
	leal	(%r14,%r11), %ebp
	addl	36(%rcx,%rbx,4), %ebp
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebp
	setb	%r15b
	cmovnel	%r10d, %r11d
	orl	%r15d, %r11d
	movl	%ebp, (%rsi,%rbx,4)
	incq	%rbx
	cmpq	%rbx, %rax
	jne	.LBB31_2
# %bb.3:
	movl	$1, %eax
	testl	%r11d, %r11d
	jne	.LBB31_6
.LBB31_4:
	movsbl	%r8b, %edi
	shll	$5, %edi
	xorl	%eax, %eax
	cmpl	%r9d, %edi
	jle	.LBB31_6
# %bb.5:
	movl	%r9d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rsi,%rax,4), %edi
	xorl	%eax, %eax
	btl	%r9d, %edi
	setb	%al
.LBB31_6:
	testb	%r8b, %r8b
	jle	.LBB31_9
# %bb.7:
	movzbl	%r8b, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
.LBB31_8:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r9,4), %r11d
	leal	(%r11,%r10), %ebx
	addl	36(%rcx,%r9,4), %ebx
	xorl	%ebp, %ebp
	cmpl	%r11d, %ebx
	setb	%bpl
	cmovnel	%r8d, %r10d
	orl	%ebp, %r10d
	movl	%ebx, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rdi
	jne	.LBB31_8
.LBB31_9:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	regularize_k, .Lfunc_end31-regularize_k
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	48(%rsp), %rsi
	movq	%rsi, (%rsp)
	leaq	16(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rcx
	callq	regularize_k
                                        # kill: def $eax killed $eax def $rax
	leaq	68(%r14), %rsi
	xorl	$1, %eax
	movq	(%rsp,%rax,8), %rdx
	movzwl	2(%r14), %eax
	incl	%eax
	movswl	%ax, %r8d
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r9
	callq	EccPoint_mult
	movb	(%r14), %al
	addb	%al, %al
	testb	%al, %al
	jle	.LBB32_4
# %bb.1:
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%rbx,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB32_2
# %bb.3:
	xorl	%r15d, %r15d
	testl	%edx, %edx
	setne	%r15b
.LBB32_4:
	movl	%r15d, %eax
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	EccPoint_compute_public_key, .Lfunc_end32-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB33_3
# %bb.1:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	notl	%ecx
	addl	%esi, %ecx
	movl	%ecx, %r8d
	andl	$-4, %r8d
	movl	(%rdx,%r8), %r8d
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r8d
	movsbq	%al, %rax
	movb	%r8b, (%rdi,%rax)
	incb	%al
	movsbl	%al, %ecx
	cmpl	%esi, %ecx
	jl	.LBB33_2
.LBB33_3:
	retq
.Lfunc_end33:
	.size	uECC_vli_nativeToBytes, .Lfunc_end33-uECC_vli_nativeToBytes
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leal	3(%rbx), %ecx
	leal	6(%rbx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$2, %eax
	testb	%al, %al
	jle	.LBB34_2
# %bb.1:
	movzbl	%al, %edx
	shll	$2, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.LBB34_2:
	testl	%ebx, %ebx
	jle	.LBB34_5
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	notl	%edx
	addl	%ebx, %edx
	movsbq	%al, %rax
	movzbl	(%r14,%rax), %esi
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	andl	$-4, %edx
	orl	%esi, (%r15,%rdx)
	incb	%al
	movsbl	%al, %edx
	cmpl	%ebx, %edx
	jl	.LBB34_4
.LBB34_5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	uECC_vli_bytesToNative, .Lfunc_end34-uECC_vli_bytesToNative
	.cfi_endproc
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               # @uECC_generate_random_int
	.cfi_startproc
# %bb.0:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rdi, %r15
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	uECC_vli_numBits
                                        # kill: def $ax killed $ax def $eax
	cmpq	$0, g_rng_function(%rip)
	je	.LBB35_10
# %bb.1:
	movl	%ebx, 4(%rsp)                   # 4-byte Spill
	movsbl	%bl, %edx
	movzbl	%dl, %ebp
	movl	%ebp, %ecx
	shll	$5, %ecx
	subl	%eax, %ecx
	movl	$-1, %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r14d
	leal	(,%rdx,4), %r13d
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movsbq	%dl, %r12
	xorl	%ebx, %ebx
.LBB35_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_5 Depth 2
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.LBB35_10
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	andl	%r14d, -4(%r15,%r12,4)
	cmpb	$0, 4(%rsp)                     # 1-byte Folded Reload
	jle	.LBB35_9
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB35_5:                               #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	(%r15,%rax,4), %ecx
	incq	%rax
	cmpq	%rax, %rbp
	jne	.LBB35_5
# %bb.6:                                #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB35_9
# %bb.7:                                #   in Loop: Header=BB35_2 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_cmp
	cmpb	$1, %al
	je	.LBB35_8
.LBB35_9:                               #   in Loop: Header=BB35_2 Depth=1
	incl	%ebx
	cmpl	$64, %ebx
	jne	.LBB35_2
.LBB35_10:
	xorl	%eax, %eax
.LBB35_11:
	addq	$24, %rsp
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
	retq
.LBB35_8:
	.cfi_def_cfa_offset 80
	movl	$1, %eax
	jmp	.LBB35_11
.Lfunc_end35:
	.size	uECC_generate_random_int, .Lfunc_end35-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	(%rsi), %r12d
	leal	(%r12,%r12), %edx
	movl	$-1, %eax
	testb	%dl, %dl
	jle	.LBB36_17
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsbq	%r12b, %rcx
	movzbl	%dl, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	orl	(%r14,%rsi,4), %edi
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB36_2
# %bb.3:
	testl	%edi, %edi
	je	.LBB36_17
# %bb.4:
	leaq	-1(%r12), %rdx
	movl	$-2, %eax
.LBB36_5:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	js	.LBB36_17
# %bb.6:                                #   in Loop: Header=BB36_5 Depth=1
	movl	%edx, %edi
	andl	$127, %edi
	movl	4(%rbx,%rdi,4), %esi
	movl	(%r14,%rdi,4), %edi
	cmpl	%edi, %esi
	ja	.LBB36_8
# %bb.7:                                #   in Loop: Header=BB36_5 Depth=1
	decq	%rdx
	cmpl	%edi, %esi
	jae	.LBB36_5
	jmp	.LBB36_17
.LBB36_8:
	leaq	(%r14,%rcx,4), %rdx
	leaq	-1(%r12), %rcx
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	js	.LBB36_17
# %bb.10:                               #   in Loop: Header=BB36_9 Depth=1
	movl	%ecx, %edi
	andl	$127, %edi
	movl	4(%rbx,%rdi,4), %esi
	movl	(%rdx,%rdi,4), %edi
	cmpl	%edi, %esi
	ja	.LBB36_12
# %bb.11:                               #   in Loop: Header=BB36_9 Depth=1
	decq	%rcx
	cmpl	%edi, %esi
	jae	.LBB36_9
	jmp	.LBB36_17
.LBB36_12:
	movsbl	%r12b, %ecx
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movq	%rdx, %rsi
	callq	uECC_vli_mult
	movq	%rsp, %rdi
	movq	%r15, %rsi
	callq	*184(%rbx)
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*176(%rbx)
	decb	%r12b
	js	.LBB36_16
# %bb.13:
	movzbl	%r12b, %eax
	xorl	%ecx, %ecx
.LBB36_14:                              # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rax,4), %edx
	xorl	(%rsp,%rax,4), %edx
	orl	%edx, %ecx
	addq	$-1, %rax
	jb	.LBB36_14
# %bb.15:
	movl	$-3, %eax
	testl	%ecx, %ecx
	jne	.LBB36_17
.LBB36_16:
	xorl	%eax, %eax
.LBB36_17:
	addq	$104, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	uECC_valid_point, .Lfunc_end36-uECC_valid_point
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  # @uECC_valid_public_key
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsbq	1(%rsi), %r15
	movq	%rsp, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	uECC_vli_bytesToNative
	movsbq	(%rbx), %rax
	leaq	(%rsp,%rax,4), %rdi
	addq	%r15, %r14
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	uECC_vli_bytesToNative
	movl	$15, %eax
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	js	.LBB37_2
# %bb.3:                                #   in Loop: Header=BB37_1 Depth=1
	movl	%eax, %ecx
	andl	$127, %ecx
	movl	(%rsp,%rcx,4), %edx
	decq	%rax
	cmpl	68(%rbx,%rcx,4), %edx
	je	.LBB37_1
# %bb.4:
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	callq	uECC_valid_point
	jmp	.LBB37_5
.LBB37_2:
	movl	$-4, %eax
.LBB37_5:
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	uECC_valid_public_key, .Lfunc_end37-uECC_valid_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                # @uECC_compute_public_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movswl	2(%rdx), %r15d
	leal	7(%r15), %eax
	leal	14(%r15), %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	movq	%rsp, %rdi
	callq	uECC_vli_bytesToNative
	leal	31(%r15), %eax
	addl	$62, %r15d
	testl	%eax, %eax
	cmovnsl	%eax, %r15d
	sarl	$5, %r15d
	testb	%r15b, %r15b
	jle	.LBB38_1
# %bb.2:
	movzbl	%r15b, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB38_3:                               # =>This Inner Loop Header: Depth=1
	orl	(%rsp,%rcx,4), %edx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB38_3
# %bb.4:
	xorl	%ebp, %ebp
	testl	%edx, %edx
	je	.LBB38_13
# %bb.5:
	leaq	36(%r14), %rdi
	movsbl	%r15b, %edx
	movq	%rsp, %rsi
	callq	uECC_vli_cmp
	cmpb	$1, %al
	jne	.LBB38_13
# %bb.6:
	leaq	32(%rsp), %rdi
	movq	%rsp, %rsi
	movq	%r14, %rdx
	callq	EccPoint_compute_public_key
	testl	%eax, %eax
	je	.LBB38_13
# %bb.7:
	movsbl	1(%r14), %eax
	movl	$1, %ebp
	testl	%eax, %eax
	jle	.LBB38_13
# %bb.8:
	movzbl	%al, %edx
	leal	-8(,%rax,8), %esi
	decl	%eax
	xorl	%edi, %edi
.LBB38_9:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	andl	$-4, %ecx
	movl	32(%rsp,%rcx), %r8d
	movl	%esi, %ecx
	andb	$24, %cl
	shrl	%cl, %r8d
	movb	%r8b, (%rbx,%rdi)
	incq	%rdi
	addl	$-8, %esi
	decl	%eax
	cmpq	%rdi, %rdx
	jne	.LBB38_9
# %bb.10:
	movsbq	1(%r14), %rax
	testq	%rax, %rax
	jle	.LBB38_13
# %bb.11:
	addq	%rax, %rbx
	movsbq	(%r14), %rcx
	leaq	(%rsp,%rcx,4), %rdx
	addq	$32, %rdx
	movzbl	%al, %esi
	leal	-8(,%rax,8), %edi
	decl	%eax
	xorl	%r8d, %r8d
.LBB38_12:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	andl	$-4, %ecx
	movl	(%rdx,%rcx), %r9d
	movl	%edi, %ecx
	andb	$24, %cl
	shrl	%cl, %r9d
	movb	%r9b, (%rbx,%r8)
	incq	%r8
	addl	$-8, %edi
	decl	%eax
	cmpq	%r8, %rsi
	jne	.LBB38_12
	jmp	.LBB38_13
.LBB38_1:
	xorl	%ebp, %ebp
.LBB38_13:
	movl	%ebp, %eax
	addq	$104, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	uECC_compute_public_key, .Lfunc_end38-uECC_compute_public_key
	.cfi_endproc
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.data
	.p2align	3, 0x0
g_rng_function:
	.quad	default_CSPRNG
	.size	g_rng_function, 8

	.type	.L__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L__const.x_side_default._3:
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.L__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.short	256                             # 0x100
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	4294967295                      # 0xffffffff
	.long	4234356049                      # 0xfc632551
	.long	4089039554                      # 0xf3b9cac2
	.long	2803342980                      # 0xa7179e84
	.long	3169254061                      # 0xbce6faad
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	3633889942                      # 0xd898c296
	.long	4104206661                      # 0xf4a13945
	.long	770388896                       # 0x2deb33a0
	.long	1996717441                      # 0x77037d81
	.long	1671708914                      # 0x63a440f2
	.long	4173129445                      # 0xf8bce6e5
	.long	3777774151                      # 0xe12c4247
	.long	1796723186                      # 0x6b17d1f2
	.long	935285237                       # 0x37bf51f5
	.long	3417718888                      # 0xcbb64068
	.long	1798397646                      # 0x6b315ece
	.long	734933847                       # 0x2bce3357
	.long	2081398294                      # 0x7c0f9e16
	.long	2397563722                      # 0x8ee7eb4a
	.long	4263149467                      # 0xfe1a7f9b
	.long	1340293858                      # 0x4fe342e2
	.long	668098635                       # 0x27d2604b
	.long	1003371582                      # 0x3bce3c3e
	.long	3428036854                      # 0xcc53b0f6
	.long	1696401072                      # 0x651d06b0
	.long	1989707452                      # 0x769886bc
	.long	3018571093                      # 0xb3ebbd55
	.long	2855965671                      # 0xaa3a93e7
	.long	1522939352                      # 0x5ac635d8
	.zero	4
	.quad	double_jacobian_default
	.quad	x_side_default
	.quad	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 192

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
