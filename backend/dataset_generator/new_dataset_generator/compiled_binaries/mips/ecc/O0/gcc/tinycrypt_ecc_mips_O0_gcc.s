	.file	1 "tinycrypt_ecc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.half	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.section	.data.rel,"aw"
	.align	2
	.type	g_rng_function, @object
	.size	g_rng_function, 4
g_rng_function:
	.word	default_CSPRNG
	.text
	.align	2
	.globl	uECC_set_rng
	.set	nomips16
	.set	nomicromips
	.ent	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lui	$2,%hi(g_rng_function)
	lw	$3,8($fp)
	sw	$3,%lo(g_rng_function)($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_set_rng
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.globl	uECC_get_rng
	.set	nomips16
	.set	nomicromips
	.ent	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(g_rng_function)
	lw	$2,%lo(g_rng_function)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_get_rng
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
	.globl	uECC_curve_private_key_size
	.set	nomips16
	.set	nomicromips
	.ent	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L5
	nop

	addiu	$2,$2,7
$L5:
	sra	$2,$2,3
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_curve_private_key_size
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	2
	.globl	uECC_curve_public_key_size
	.set	nomips16
	.set	nomicromips
	.ent	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	lb	$2,1($2)
	sll	$2,$2,1
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_curve_public_key_size
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	2
	.globl	uECC_vli_clear
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	move	$2,$5
	sb	$2,20($fp)
	sb	$0,7($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L11:
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	sw	$0,0($2)
	lbu	$2,7($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
$L10:
	lb	$3,7($fp)
	lb	$2,20($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L11
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_clear
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.globl	uECC_vli_isZero
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	move	$2,$5
	sb	$2,20($fp)
	sw	$0,4($fp)
	sb	$0,3($fp)
	.option	pic0
	b	$L13
	nop

	.option	pic2
$L14:
	lb	$2,3($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,4($fp)
	or	$2,$3,$2
	sw	$2,4($fp)
	lbu	$2,3($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,3($fp)
$L13:
	lb	$3,3($fp)
	lb	$2,20($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	lw	$2,4($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_isZero
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.globl	uECC_vli_testBit
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lh	$2,12($fp)
	sra	$2,$2,5
	seh	$2,$2
	sll	$2,$2,2
	lw	$3,8($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lhu	$2,12($fp)
	andi	$2,$2,0x1f
	li	$4,1			# 0x1
	sll	$2,$4,$2
	and	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_testBit
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	vli_numDigits
	.type	vli_numDigits, @function
vli_numDigits:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	move	$2,$5
	sb	$2,20($fp)
	lbu	$2,20($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L21:
	lbu	$2,7($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
$L19:
	lb	$2,7($fp)
	bltz	$2,$L20
	nop

	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,$L21
	nop

$L20:
	lbu	$2,7($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$2,$2
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	vli_numDigits
	.size	vli_numDigits, .-vli_numDigits
	.align	2
	.globl	uECC_vli_numBits
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	move	$2,$5
	sb	$2,52($fp)
	lb	$2,52($fp)
	move	$5,$2
	lw	$4,48($fp)
	.option	pic0
	jal	vli_numDigits
	nop

	.option	pic2
	sb	$2,31($fp)
	lb	$2,31($fp)
	bne	$2,$0,$L24
	nop

	move	$2,$0
	.option	pic0
	b	$L25
	nop

	.option	pic2
$L24:
	lb	$3,31($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,36($fp)
	sw	$0,32($fp)
	.option	pic0
	b	$L26
	nop

	.option	pic2
$L27:
	lw	$2,36($fp)
	srl	$2,$2,1
	sw	$2,36($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L26:
	lw	$2,36($fp)
	bne	$2,$0,$L27
	nop

	lb	$2,31($fp)
	andi	$2,$2,0xffff
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	sll	$2,$2,5
	andi	$3,$2,0xffff
	lw	$2,32($fp)
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	seh	$2,$2
$L25:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_numBits
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.globl	uECC_vli_set
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	move	$2,$6
	sb	$2,24($fp)
	sb	$0,7($fp)
	.option	pic0
	b	$L29
	nop

	.option	pic2
$L30:
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$3,20($fp)
	addu	$3,$3,$2
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$4,16($fp)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lbu	$2,7($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
$L29:
	lb	$3,7($fp)
	lb	$2,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L30
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_set
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.globl	uECC_vli_cmp_unsafe
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	move	$2,$6
	sb	$2,24($fp)
	lbu	$2,24($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
	.option	pic0
	b	$L32
	nop

	.option	pic2
$L36:
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	sltu	$2,$2,$3
	beq	$2,$0,$L33
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L34
	nop

	.option	pic2
$L33:
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,7($fp)
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	sltu	$2,$3,$2
	beq	$2,$0,$L35
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L34
	nop

	.option	pic2
$L35:
	lbu	$2,7($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,7($fp)
$L32:
	lb	$2,7($fp)
	bgez	$2,$L36
	nop

	move	$2,$0
$L34:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_cmp_unsafe
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.globl	uECC_vli_equal
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	move	$2,$6
	sb	$2,24($fp)
	sw	$0,4($fp)
	lbu	$2,24($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,3($fp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L39:
	lb	$2,3($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,3($fp)
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	xor	$2,$3,$2
	lw	$3,4($fp)
	or	$2,$3,$2
	sw	$2,4($fp)
	lbu	$2,3($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,3($fp)
$L38:
	lb	$2,3($fp)
	bgez	$2,$L39
	nop

	lw	$2,4($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_equal
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.globl	cond_set
	.set	nomips16
	.set	nomicromips
	.ent	cond_set
	.type	cond_set, @function
cond_set:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	lw	$3,8($fp)
	lw	$2,16($fp)
	mul	$3,$3,$2
	lw	$2,16($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$4,$2
	lw	$2,12($fp)
	mul	$2,$4,$2
	or	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	cond_set
	.size	cond_set, .-cond_set
	.align	2
	.globl	uECC_vli_sub
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	move	$2,$7
	sb	$2,60($fp)
	sw	$0,28($fp)
	sb	$0,27($fp)
	.option	pic0
	b	$L44
	nop

	.option	pic2
$L45:
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$4,56($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	subu	$3,$3,$2
	lw	$2,28($fp)
	subu	$2,$3,$2
	sw	$2,32($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,32($fp)
	sltu	$2,$2,$3
	andi	$2,$2,0x00ff
	sw	$2,36($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,32($fp)
	xor	$2,$3,$2
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	cond_set
	nop

	.option	pic2
	sw	$2,28($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$3,32($fp)
	sw	$3,0($2)
	lbu	$2,27($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,27($fp)
$L44:
	lb	$3,27($fp)
	lb	$2,60($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L45
	nop

	lw	$2,28($fp)
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_sub
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_add
	.type	uECC_vli_add, @function
uECC_vli_add:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	move	$2,$7
	sb	$2,60($fp)
	sw	$0,28($fp)
	sb	$0,27($fp)
	.option	pic0
	b	$L48
	nop

	.option	pic2
$L49:
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$4,56($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	addu	$2,$3,$2
	lw	$3,28($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,32($fp)
	sltu	$2,$3,$2
	andi	$2,$2,0x00ff
	sw	$2,36($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,32($fp)
	xor	$2,$3,$2
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	cond_set
	nop

	.option	pic2
	sw	$2,28($fp)
	lb	$2,27($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$3,32($fp)
	sw	$3,0($2)
	lbu	$2,27($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,27($fp)
$L48:
	lb	$3,27($fp)
	lb	$2,60($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L49
	nop

	lw	$2,28($fp)
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_add
	.size	uECC_vli_add, .-uECC_vli_add
	.align	2
	.globl	uECC_vli_cmp
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	move	$2,$6
	sb	$2,96($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,76($fp)
	lb	$2,96($fp)
	addiu	$3,$fp,44
	move	$7,$2
	lw	$6,24($fp)
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	sw	$2,36($fp)
	lb	$2,96($fp)
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$2,40($fp)
	lw	$2,40($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$3,$2
	lw	$2,36($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,1
	andi	$2,$2,0x00ff
	subu	$2,$3,$2
	andi	$2,$2,0x00ff
	seb	$2,$2
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,76($fp)
	lw	$2,0($2)
	beq	$3,$2,$L53
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L53:
	move	$2,$4
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_cmp
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_rshift1
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	move	$2,$5
	sb	$2,28($fp)
	lw	$2,24($fp)
	sw	$2,8($fp)
	sw	$0,4($fp)
	lb	$2,28($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	.option	pic0
	b	$L55
	nop

	.option	pic2
$L56:
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,12($fp)
	srl	$3,$2,1
	lw	$2,4($fp)
	or	$3,$3,$2
	lw	$2,24($fp)
	sw	$3,0($2)
	lw	$2,12($fp)
	sll	$2,$2,31
	sw	$2,4($fp)
$L55:
	lw	$2,24($fp)
	addiu	$3,$2,-4
	sw	$3,24($fp)
	lw	$3,8($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L56
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_rshift1
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	muladd
	.type	muladd, @function
muladd:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$4,24($fp)
	move	$9,$4
	move	$8,$0
	lw	$4,28($fp)
	move	$3,$4
	move	$2,$0
	mul	$5,$8,$3
	mul	$4,$2,$9
	addu	$4,$5,$4
	multu	$9,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	sw	$3,4($fp)
	sw	$2,0($fp)
	sw	$3,4($fp)
	sw	$2,0($fp)
	lw	$2,36($fp)
	lw	$2,0($2)
	move	$25,$2
	move	$24,$0
	sll	$10,$25,0
	move	$11,$0
	lw	$2,32($fp)
	lw	$2,0($2)
	move	$13,$2
	move	$12,$0
	or	$2,$10,$12
	sw	$2,8($fp)
	or	$2,$11,$13
	sw	$2,12($fp)
	lw	$5,12($fp)
	lw	$4,8($fp)
	lw	$7,4($fp)
	lw	$6,0($fp)
	addu	$3,$5,$7
	sltu	$8,$3,$5
	addu	$2,$4,$6
	addu	$4,$8,$2
	move	$2,$4
	sw	$3,12($fp)
	sw	$2,8($fp)
	lw	$2,40($fp)
	lw	$2,0($2)
	li	$5,1			# 0x1
	lw	$4,0($fp)
	lw	$3,8($fp)
	sltu	$3,$3,$4
	bne	$3,$0,$L58
	nop

	lw	$4,0($fp)
	lw	$3,8($fp)
	bne	$4,$3,$L59
	nop

	lw	$4,4($fp)
	lw	$3,12($fp)
	sltu	$3,$3,$4
	bne	$3,$0,$L58
	nop

$L59:
	move	$5,$0
$L58:
	andi	$3,$5,0x00ff
	addu	$3,$2,$3
	lw	$2,40($fp)
	sw	$3,0($2)
	lw	$2,8($fp)
	srl	$15,$2,0
	move	$14,$0
	move	$3,$15
	lw	$2,36($fp)
	sw	$3,0($2)
	lw	$3,12($fp)
	lw	$2,32($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	muladd
	.size	muladd, .-muladd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_mult
	.type	uECC_vli_mult, @function
uECC_vli_mult:
	.frame	$fp,80,$31		# vars= 40, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	move	$2,$7
	sb	$2,92($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
	sw	$0,64($fp)
	sb	$0,55($fp)
	.option	pic0
	b	$L61
	nop

	.option	pic2
$L64:
	sb	$0,54($fp)
	.option	pic0
	b	$L62
	nop

	.option	pic2
$L63:
	lb	$2,54($fp)
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lb	$3,55($fp)
	lb	$2,54($fp)
	subu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,36($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	addiu	$6,$fp,60
	addiu	$5,$fp,56
	addiu	$3,$fp,64
	sw	$3,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$2
	.option	pic0
	jal	muladd
	nop

	.option	pic2
	lw	$28,24($fp)
	lbu	$2,54($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,54($fp)
$L62:
	lb	$3,54($fp)
	lb	$2,55($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L63
	nop

	lb	$2,55($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	sw	$3,0($2)
	lw	$2,60($fp)
	sw	$2,56($fp)
	lw	$2,64($fp)
	sw	$2,60($fp)
	sw	$0,64($fp)
	lbu	$2,55($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,55($fp)
$L61:
	lb	$3,55($fp)
	lb	$2,92($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L64
	nop

	lbu	$2,92($fp)
	sb	$2,55($fp)
	.option	pic0
	b	$L65
	nop

	.option	pic2
$L68:
	lbu	$3,55($fp)
	lbu	$2,92($fp)
	subu	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,54($fp)
	.option	pic0
	b	$L66
	nop

	.option	pic2
$L67:
	lb	$2,54($fp)
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lb	$3,55($fp)
	lb	$2,54($fp)
	subu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,36($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	addiu	$6,$fp,60
	addiu	$5,$fp,56
	addiu	$3,$fp,64
	sw	$3,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$2
	.option	pic0
	jal	muladd
	nop

	.option	pic2
	lw	$28,24($fp)
	lbu	$2,54($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,54($fp)
$L66:
	lb	$3,54($fp)
	lb	$2,92($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L67
	nop

	lb	$2,55($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	sw	$3,0($2)
	lw	$2,60($fp)
	sw	$2,56($fp)
	lw	$2,64($fp)
	sw	$2,60($fp)
	sw	$0,64($fp)
	lbu	$2,55($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,55($fp)
$L65:
	lb	$3,55($fp)
	lb	$2,92($fp)
	sll	$2,$2,1
	addiu	$2,$2,-1
	slt	$2,$3,$2
	bne	$2,$0,$L68
	nop

	lb	$2,92($fp)
	sll	$2,$2,3
	addiu	$2,$2,-4
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	sw	$3,0($2)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,68($fp)
	lw	$2,0($2)
	beq	$3,$2,$L69
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L69:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_mult
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.globl	uECC_vli_modAdd
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lb	$2,59($fp)
	move	$7,$2
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L71
	nop

	lb	$2,59($fp)
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L73
	nop

$L71:
	lb	$2,59($fp)
	move	$7,$2
	lw	$6,52($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
$L73:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.globl	uECC_vli_modSub
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lb	$2,59($fp)
	move	$7,$2
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L76
	nop

	lb	$2,59($fp)
	move	$7,$2
	lw	$6,52($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
$L76:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.globl	uECC_vli_mmod
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
	.frame	$fp,224,$31		# vars= 184, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-224
	sw	$31,220($sp)
	sw	$fp,216($sp)
	sw	$16,212($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	move	$2,$7
	sb	$2,236($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,204($fp)
	addiu	$2,$fp,140
	sw	$2,68($fp)
	lw	$2,32($fp)
	sw	$2,72($fp)
	lb	$2,236($fp)
	andi	$2,$2,0xffff
	sll	$2,$2,6
	andi	$16,$2,0xffff
	lb	$2,236($fp)
	move	$5,$2
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_numBits
	nop

	.option	pic2
	lw	$28,16($fp)
	andi	$2,$2,0xffff
	subu	$2,$16,$2
	andi	$2,$2,0xffff
	sh	$2,50($fp)
	lh	$2,50($fp)
	bgez	$2,$L78
	nop

	addiu	$2,$2,31
$L78:
	sra	$2,$2,5
	seh	$2,$2
	sb	$2,48($fp)
	lh	$3,50($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1f
	and	$2,$3,$2
	bgez	$2,$L79
	nop

	addiu	$2,$2,-1
	li	$3,-32			# 0xffffffffffffffe0
	or	$2,$2,$3
	addiu	$2,$2,1
$L79:
	seh	$2,$2
	sb	$2,49($fp)
	sw	$0,56($fp)
	lb	$2,48($fp)
	addiu	$3,$fp,76
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,49($fp)
	blez	$2,$L80
	nop

	sw	$0,52($fp)
	.option	pic0
	b	$L81
	nop

	.option	pic2
$L82:
	lw	$2,52($fp)
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,49($fp)
	sll	$4,$3,$2
	lb	$3,48($fp)
	lw	$2,52($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	or	$3,$4,$3
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	sw	$3,-132($2)
	lw	$2,52($fp)
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,49($fp)
	li	$4,32			# 0x20
	subu	$2,$4,$2
	srl	$2,$3,$2
	sw	$2,56($fp)
	lw	$2,52($fp)
	addiu	$2,$2,1
	sw	$2,52($fp)
$L81:
	lb	$2,236($fp)
	lw	$3,52($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L82
	nop

	.option	pic0
	b	$L83
	nop

	.option	pic2
$L80:
	lb	$2,48($fp)
	sll	$2,$2,2
	addiu	$3,$fp,76
	addu	$2,$3,$2
	lb	$3,236($fp)
	move	$6,$3
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
$L83:
	li	$2,1			# 0x1
	sw	$2,52($fp)
	.option	pic0
	b	$L84
	nop

	.option	pic2
$L88:
	sw	$0,60($fp)
	sb	$0,47($fp)
	.option	pic0
	b	$L85
	nop

	.option	pic2
$L87:
	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$3,-140($2)
	lb	$2,47($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lb	$2,47($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$2,-132($2)
	subu	$3,$3,$2
	lw	$2,60($fp)
	subu	$2,$3,$2
	sw	$2,64($fp)
	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$3,-140($2)
	lb	$2,47($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,64($fp)
	beq	$3,$2,$L86
	nop

	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$3,-140($2)
	lb	$2,47($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$2,0($2)
	lw	$3,64($fp)
	sltu	$2,$2,$3
	andi	$2,$2,0x00ff
	sw	$2,60($fp)
$L86:
	li	$3,1			# 0x1
	lw	$2,52($fp)
	subu	$2,$3,$2
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$3,-140($2)
	lb	$2,47($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,64($fp)
	sw	$3,0($2)
	lbu	$2,47($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,47($fp)
$L85:
	lb	$3,47($fp)
	lb	$2,236($fp)
	sll	$2,$2,1
	slt	$2,$3,$2
	bne	$2,$0,$L87
	nop

	lw	$3,52($fp)
	lw	$2,60($fp)
	xor	$2,$3,$2
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,52($fp)
	lb	$2,236($fp)
	addiu	$3,$fp,76
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,236($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$4,-132($2)
	lb	$2,236($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$2,-132($2)
	sll	$3,$2,31
	lb	$2,236($fp)
	addiu	$2,$2,-1
	or	$3,$4,$3
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	sw	$3,-132($2)
	lb	$2,236($fp)
	sll	$2,$2,2
	addiu	$3,$fp,76
	addu	$2,$3,$2
	lb	$3,236($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lhu	$2,50($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	sh	$2,50($fp)
$L84:
	lh	$2,50($fp)
	bgez	$2,$L88
	nop

	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$2,-140($2)
	lb	$3,236($fp)
	move	$6,$3
	move	$5,$2
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,204($fp)
	lw	$2,0($2)
	beq	$3,$2,$L89
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L89:
	move	$sp,$fp
	lw	$31,220($sp)
	lw	$fp,216($sp)
	lw	$16,212($sp)
	addiu	$sp,$sp,224
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_mmod
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.globl	uECC_vli_modMult
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
	.frame	$fp,120,$31		# vars= 88, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$fp,112($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	sw	$7,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,108($fp)
	lb	$2,139($fp)
	addiu	$3,$fp,44
	move	$7,$2
	lw	$6,28($fp)
	lw	$5,32($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,139($fp)
	addiu	$3,$fp,44
	move	$7,$2
	lw	$6,24($fp)
	move	$5,$3
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_mmod
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,108($fp)
	lw	$2,0($2)
	beq	$3,$2,$L91
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L91:
	move	$sp,$fp
	lw	$31,116($sp)
	lw	$fp,112($sp)
	addiu	$sp,$sp,120
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modMult
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.globl	uECC_vli_modMult_fast
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
	.frame	$fp,120,$31		# vars= 88, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$fp,112($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	sw	$7,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,108($fp)
	lw	$2,24($fp)
	lb	$2,0($2)
	addiu	$3,$fp,44
	move	$7,$2
	lw	$6,28($fp)
	lw	$5,32($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,24($fp)
	lw	$2,172($2)
	addiu	$3,$fp,44
	move	$5,$3
	lw	$4,36($fp)
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,108($fp)
	lw	$2,0($2)
	beq	$3,$2,$L93
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L93:
	move	$sp,$fp
	lw	$31,116($sp)
	lw	$fp,112($sp)
	addiu	$sp,$sp,120
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	lw	$7,40($fp)
	lw	$6,36($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modSquare_fast
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	vli_modInv_update
	.type	vli_modInv_update, @function
vli_modInv_update:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	move	$2,$6
	sb	$2,48($fp)
	sw	$0,28($fp)
	lw	$2,40($fp)
	lw	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,$L96
	nop

	lb	$2,48($fp)
	move	$7,$2
	lw	$6,44($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	sw	$2,28($fp)
$L96:
	lb	$2,48($fp)
	move	$5,$2
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$2,28($fp)
	beq	$2,$0,$L98
	nop

	lb	$3,48($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lb	$3,48($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	li	$3,-2147483648			# 0xffffffff80000000
	or	$3,$4,$3
	sw	$3,0($2)
$L98:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	vli_modInv_update
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.globl	uECC_vli_modInv
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
	.frame	$fp,184,$31		# vars= 152, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-184
	sw	$31,180($sp)
	sw	$fp,176($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	move	$2,$7
	sb	$2,196($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,172($fp)
	lb	$2,196($fp)
	move	$5,$2
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L100
	nop

	lb	$2,196($fp)
	move	$5,$2
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L99
	nop

	.option	pic2
$L100:
	lb	$2,196($fp)
	addiu	$3,$fp,44
	move	$6,$2
	lw	$5,32($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,76
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,108
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,1			# 0x1
	sw	$2,108($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,140
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L102
	nop

	.option	pic2
$L109:
	lw	$2,44($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L103
	nop

	lb	$2,196($fp)
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,108
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L102
	nop

	.option	pic2
$L103:
	lw	$2,76($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L105
	nop

	lb	$2,196($fp)
	addiu	$3,$fp,76
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,140
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L102
	nop

	.option	pic2
$L105:
	lb	$2,43($fp)
	blez	$2,$L106
	nop

	lb	$2,196($fp)
	addiu	$5,$fp,76
	addiu	$4,$fp,44
	addiu	$3,$fp,44
	move	$7,$2
	move	$6,$5
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$4,$fp,140
	addiu	$3,$fp,108
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	bgez	$2,$L107
	nop

	lb	$2,196($fp)
	addiu	$4,$fp,108
	addiu	$3,$fp,108
	move	$7,$2
	lw	$6,28($fp)
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
$L107:
	lb	$2,196($fp)
	addiu	$5,$fp,140
	addiu	$4,$fp,108
	addiu	$3,$fp,108
	move	$7,$2
	move	$6,$5
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,108
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L102
	nop

	.option	pic2
$L106:
	lb	$2,196($fp)
	addiu	$5,$fp,44
	addiu	$4,$fp,76
	addiu	$3,$fp,76
	move	$7,$2
	move	$6,$5
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,76
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$4,$fp,108
	addiu	$3,$fp,140
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	bgez	$2,$L108
	nop

	lb	$2,196($fp)
	addiu	$4,$fp,140
	addiu	$3,$fp,140
	move	$7,$2
	lw	$6,28($fp)
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
$L108:
	lb	$2,196($fp)
	addiu	$5,$fp,108
	addiu	$4,$fp,140
	addiu	$3,$fp,140
	move	$7,$2
	move	$6,$5
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,196($fp)
	addiu	$3,$fp,140
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($fp)
$L102:
	lb	$2,196($fp)
	addiu	$4,$fp,76
	addiu	$3,$fp,44
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	sb	$2,43($fp)
	lb	$2,43($fp)
	bne	$2,$0,$L109
	nop

	lb	$2,196($fp)
	addiu	$3,$fp,108
	move	$6,$2
	move	$5,$3
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
$L99:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,172($fp)
	lw	$2,0($2)
	beq	$3,$2,$L110
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L110:
	move	$sp,$fp
	lw	$31,180($sp)
	lw	$fp,176($sp)
	addiu	$sp,$sp,184
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modInv
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.globl	double_jacobian_default
	.set	nomips16
	.set	nomicromips
	.ent	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
	.frame	$fp,136,$31		# vars= 96, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-136
	sw	$31,132($sp)
	sw	$fp,128($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	sw	$7,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,124($fp)
	lw	$2,32($fp)
	lbu	$2,0($2)
	sb	$2,55($fp)
	lb	$2,55($fp)
	move	$5,$2
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,24($fp)
	bne	$2,$0,$L117
	nop

	addiu	$2,$fp,60
	lw	$6,32($fp)
	lw	$5,40($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,60
	addiu	$2,$fp,92
	lw	$7,32($fp)
	move	$6,$3
	lw	$5,44($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,60
	addiu	$2,$fp,60
	lw	$6,32($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$7,32($fp)
	lw	$6,36($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$6,32($fp)
	lw	$5,36($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,36($fp)
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,36($fp)
	lw	$5,36($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,36($fp)
	lw	$5,44($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$7,32($fp)
	lw	$6,36($fp)
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,44($fp)
	lw	$5,44($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,36($fp)
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	move	$5,$0
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($fp)
	beq	$2,$0,$L114
	nop

	lw	$2,32($fp)
	addiu	$2,$2,4
	lb	$3,55($fp)
	move	$7,$3
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,24($fp)
	sw	$2,56($fp)
	lb	$2,55($fp)
	move	$5,$2
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$3,55($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lw	$2,56($fp)
	sll	$3,$2,31
	lb	$5,55($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$5,$2
	sll	$2,$2,2
	lw	$5,44($fp)
	addu	$2,$5,$2
	or	$3,$4,$3
	sw	$3,0($2)
	.option	pic0
	b	$L115
	nop

	.option	pic2
$L114:
	lb	$2,55($fp)
	move	$5,$2
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,24($fp)
$L115:
	lw	$6,32($fp)
	lw	$5,44($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,36($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,36($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$5,$fp,92
	addiu	$4,$fp,92
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,36($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,92
	lw	$7,32($fp)
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$5,$fp,60
	addiu	$4,$fp,60
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$5
	lw	$5,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,55($fp)
	move	$6,$2
	lw	$5,36($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,55($fp)
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,55($fp)
	addiu	$3,$fp,60
	move	$6,$2
	move	$5,$3
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	.option	pic0
	b	$L111
	nop

	.option	pic2
$L117:
	nop
$L111:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,124($fp)
	lw	$2,0($2)
	beq	$3,$2,$L116
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L116:
	move	$sp,$fp
	lw	$31,132($sp)
	lw	$fp,128($sp)
	addiu	$sp,$sp,136
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	double_jacobian_default
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.globl	x_side_default
	.set	nomips16
	.set	nomicromips
	.ent	x_side_default
	.type	x_side_default, @function
x_side_default:
	.frame	$fp,96,$31		# vars= 56, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,84($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
	sw	$0,64($fp)
	sw	$0,68($fp)
	sw	$0,72($fp)
	sw	$0,76($fp)
	sw	$0,80($fp)
	li	$2,3			# 0x3
	sw	$2,52($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,51($fp)
	lw	$6,36($fp)
	lw	$5,40($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,52
	lb	$2,51($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$7,36($fp)
	lw	$6,40($fp)
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,132
	lw	$2,36($fp)
	addiu	$4,$2,4
	lb	$2,51($fp)
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,84($fp)
	lw	$2,0($2)
	beq	$3,$2,$L119
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L119:
	move	$sp,$fp
	lw	$31,92($sp)
	lw	$fp,88($sp)
	addiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	x_side_default
	.size	x_side_default, .-x_side_default
	.align	2
	.globl	uECC_secp256r1
	.set	nomips16
	.set	nomicromips
	.ent	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(curve_secp256r1)
	addiu	$2,$2,%lo(curve_secp256r1)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_secp256r1
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.globl	vli_mmod_fast_secp256r1
	.set	nomips16
	.set	nomicromips
	.ent	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($fp)
	li	$6,8			# 0x8
	lw	$5,24($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$0,44($fp)
	lw	$2,44($fp)
	sw	$2,40($fp)
	lw	$2,40($fp)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,44($2)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,48($2)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,56($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,60($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,64($fp)
	addiu	$4,$fp,36
	addiu	$3,$fp,36
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$2,32($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,48($2)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,56($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,60($fp)
	sw	$0,64($fp)
	addiu	$4,$fp,36
	addiu	$3,$fp,36
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,32($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,36($2)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lw	$2,40($2)
	sw	$2,44($fp)
	sw	$0,56($fp)
	lw	$2,56($fp)
	sw	$2,52($fp)
	lw	$2,52($fp)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,60($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,36($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,40($2)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lw	$2,44($2)
	sw	$2,44($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,56($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,60($fp)
	lw	$2,24($fp)
	lw	$2,32($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,44($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,48($2)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,44($fp)
	sw	$0,56($fp)
	lw	$2,56($fp)
	sw	$2,52($fp)
	lw	$2,52($fp)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,32($2)
	sw	$2,60($fp)
	lw	$2,24($fp)
	lw	$2,40($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	subu	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,48($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,44($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,48($fp)
	sw	$0,56($fp)
	lw	$2,56($fp)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,36($2)
	sw	$2,60($fp)
	lw	$2,24($fp)
	lw	$2,44($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	subu	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,40($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,44($fp)
	lw	$2,24($fp)
	lw	$2,32($2)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,36($2)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,40($2)
	sw	$2,56($fp)
	sw	$0,60($fp)
	lw	$2,24($fp)
	lw	$2,48($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	subu	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,36($fp)
	lw	$2,24($fp)
	lw	$2,60($2)
	sw	$2,40($fp)
	sw	$0,44($fp)
	lw	$2,24($fp)
	lw	$2,36($2)
	sw	$2,48($fp)
	lw	$2,24($fp)
	lw	$2,40($2)
	sw	$2,52($fp)
	lw	$2,24($fp)
	lw	$2,44($2)
	sw	$2,56($fp)
	sw	$0,60($fp)
	lw	$2,24($fp)
	lw	$2,52($2)
	sw	$2,64($fp)
	addiu	$2,$fp,36
	li	$7,8			# 0x8
	move	$6,$2
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	subu	$2,$2,$3
	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L126
	nop

$L124:
	li	$7,8			# 0x8
	lui	$2,%hi(curve_secp256r1+4)
	addiu	$6,$2,%lo(curve_secp256r1+4)
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,32($fp)
	bltz	$2,$L124
	nop

	.option	pic0
	b	$L129
	nop

	.option	pic2
$L127:
	li	$7,8			# 0x8
	lui	$2,%hi(curve_secp256r1+4)
	addiu	$6,$2,%lo(curve_secp256r1+4)
	lw	$5,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	subu	$2,$2,$3
	sw	$2,32($fp)
$L126:
	lw	$2,32($fp)
	bne	$2,$0,$L127
	nop

	li	$6,8			# 0x8
	lw	$5,28($fp)
	lui	$2,%hi(curve_secp256r1+4)
	addiu	$4,$2,%lo(curve_secp256r1+4)
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L127
	nop

$L129:
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,68($fp)
	lw	$2,0($2)
	beq	$3,$2,$L128
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L128:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.globl	EccPoint_isZero
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,36($fp)
	lb	$2,0($2)
	andi	$2,$2,0x00ff
	sll	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$2,$2
	move	$5,$2
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	EccPoint_isZero
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.globl	apply_z
	.set	nomips16
	.set	nomicromips
	.ent	apply_z
	.type	apply_z, @function
apply_z:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	sw	$7,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,76($fp)
	addiu	$2,$fp,44
	lw	$6,24($fp)
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	lw	$7,24($fp)
	move	$6,$2
	lw	$5,36($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$3,$fp,44
	addiu	$2,$fp,44
	lw	$7,24($fp)
	lw	$6,28($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	lw	$7,24($fp)
	move	$6,$2
	lw	$5,32($fp)
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,76($fp)
	lw	$2,0($2)
	beq	$3,$2,$L133
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L133:
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	apply_z
	.size	apply_z, .-apply_z
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_initial_double
	.type	XYcZ_initial_double, @function
XYcZ_initial_double:
	.frame	$fp,96,$31		# vars= 64, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	sw	$7,32($fp)
	lw	$2,112($fp)
	sw	$2,28($fp)
	lw	$2,116($fp)
	sw	$2,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,84($fp)
	lw	$2,24($fp)
	lbu	$2,0($2)
	sb	$2,51($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L135
	nop

	lb	$2,51($fp)
	addiu	$3,$fp,52
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L136
	nop

	.option	pic2
$L135:
	lb	$2,51($fp)
	addiu	$3,$fp,52
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,1			# 0x1
	sw	$2,52($fp)
$L136:
	lb	$2,51($fp)
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	lb	$2,51($fp)
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,52
	lw	$7,24($fp)
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,24($fp)
	lw	$2,164($2)
	addiu	$3,$fp,52
	lw	$7,24($fp)
	move	$6,$3
	lw	$5,40($fp)
	lw	$4,44($fp)
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,52
	lw	$7,24($fp)
	move	$6,$2
	lw	$5,32($fp)
	lw	$4,36($fp)
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,84($fp)
	lw	$2,0($2)
	beq	$3,$2,$L137
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L137:
	move	$sp,$fp
	lw	$31,92($sp)
	lw	$fp,88($sp)
	addiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_initial_double
	.size	XYcZ_initial_double, .-XYcZ_initial_double
	.align	2
	.globl	XYcZ_add
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
	.frame	$fp,104,$31		# vars= 64, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,52($fp)
	sw	$5,48($fp)
	sw	$6,44($fp)
	sw	$7,40($fp)
	lw	$2,120($fp)
	sw	$2,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,92($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,59($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	lw	$5,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,60
	addiu	$2,$fp,60
	lw	$6,36($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,60
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,52($fp)
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,60
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,60
	lw	$6,36($fp)
	lw	$5,40($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$5,$fp,60
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$5,$fp,60
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$7,36($fp)
	lw	$6,44($fp)
	lw	$5,48($fp)
	lw	$4,48($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,52($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$7,36($fp)
	lw	$6,44($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,59($fp)
	addiu	$3,$fp,60
	move	$6,$2
	move	$5,$3
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,92($fp)
	lw	$2,0($2)
	beq	$3,$2,$L139
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L139:
	move	$sp,$fp
	lw	$31,100($sp)
	lw	$fp,96($sp)
	addiu	$sp,$sp,104
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_add
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_addC
	.type	XYcZ_addC, @function
XYcZ_addC:
	.frame	$fp,168,$31		# vars= 128, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-168
	sw	$31,164($sp)
	sw	$fp,160($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,52($fp)
	sw	$5,48($fp)
	sw	$6,44($fp)
	sw	$7,40($fp)
	lw	$2,184($fp)
	sw	$2,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,156($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,59($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	lw	$5,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,60
	addiu	$2,$fp,60
	lw	$6,36($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,60
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,52($fp)
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,60
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,60
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	lw	$5,40($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	lw	$5,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,92
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,48($fp)
	lw	$4,48($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,44($fp)
	lw	$5,52($fp)
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$6,36($fp)
	lw	$5,40($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,44($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,124
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,44($fp)
	lw	$5,52($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$2,$fp,124
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	lw	$5,40($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,60
	addiu	$2,$fp,124
	lw	$6,36($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$6,$fp,92
	addiu	$5,$fp,124
	addiu	$4,$fp,124
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$5,$fp,124
	addiu	$4,$fp,92
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,52($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$4,$fp,60
	addiu	$3,$fp,92
	addiu	$2,$fp,92
	lw	$7,36($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,4
	addiu	$4,$fp,92
	lb	$2,59($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,48($fp)
	move	$5,$4
	lw	$4,48($fp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,59($fp)
	addiu	$3,$fp,124
	move	$6,$2
	move	$5,$3
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,156($fp)
	lw	$2,0($2)
	beq	$3,$2,$L141
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L141:
	move	$sp,$fp
	lw	$31,164($sp)
	lw	$fp,160($sp)
	addiu	$sp,$sp,168
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_addC
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.globl	EccPoint_mult
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
	.frame	$fp,240,$31		# vars= 200, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-240
	sw	$31,236($sp)
	sw	$fp,232($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,52($fp)
	sw	$5,48($fp)
	sw	$6,44($fp)
	sw	$7,40($fp)
	lw	$2,260($fp)
	sw	$2,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,228($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,61($fp)
	lb	$3,61($fp)
	addiu	$2,$fp,100
	addiu	$2,$2,32
	move	$6,$3
	lw	$5,48($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,61($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$3,$3,$2
	lb	$4,61($fp)
	addiu	$2,$fp,164
	addiu	$2,$2,32
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$6,$fp,164
	addiu	$5,$fp,100
	addiu	$2,$fp,164
	addiu	$4,$2,32
	addiu	$2,$fp,100
	addiu	$3,$2,32
	lw	$2,36($fp)
	sw	$2,20($sp)
	lw	$2,40($fp)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	XYcZ_initial_double
	nop

	.option	pic2
	lw	$28,24($fp)
	lhu	$2,258($fp)
	addiu	$2,$2,-2
	andi	$2,$2,0xffff
	sh	$2,62($fp)
	.option	pic0
	b	$L143
	nop

	.option	pic2
$L144:
	lh	$2,62($fp)
	move	$5,$2
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,64($fp)
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,100
	sll	$2,$2,5
	addu	$4,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,164
	sll	$2,$2,5
	addu	$3,$3,$2
	addiu	$5,$fp,100
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$5,$5,$2
	addiu	$6,$fp,164
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$6,$6,$2
	lw	$2,36($fp)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$3
	.option	pic0
	jal	XYcZ_addC
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,100
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$4,$3,$2
	addiu	$3,$fp,164
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$5,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,100
	sll	$2,$2,5
	addu	$6,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,164
	sll	$2,$2,5
	addu	$3,$3,$2
	lw	$2,36($fp)
	sw	$2,16($sp)
	move	$7,$3
	.option	pic0
	jal	XYcZ_add
	nop

	.option	pic2
	lw	$28,24($fp)
	lhu	$2,62($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	sh	$2,62($fp)
$L143:
	lh	$2,62($fp)
	bgtz	$2,$L144
	nop

	move	$5,$0
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,64($fp)
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,100
	sll	$2,$2,5
	addu	$4,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,164
	sll	$2,$2,5
	addu	$3,$3,$2
	addiu	$5,$fp,100
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$5,$5,$2
	addiu	$6,$fp,164
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$6,$6,$2
	lw	$2,36($fp)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$3
	.option	pic0
	jal	XYcZ_addC
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$4,$2,4
	addiu	$5,$fp,100
	addiu	$2,$fp,100
	addiu	$3,$2,32
	addiu	$8,$fp,68
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$5
	move	$5,$3
	move	$4,$8
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($fp)
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,164
	sll	$2,$2,5
	addu	$2,$3,$2
	addiu	$4,$fp,68
	addiu	$3,$fp,68
	lw	$7,36($fp)
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,68
	addiu	$2,$fp,68
	lw	$7,36($fp)
	lw	$6,48($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$2,$2,4
	lb	$3,61($fp)
	addiu	$5,$fp,68
	addiu	$4,$fp,68
	move	$7,$3
	move	$6,$2
	.option	pic0
	jal	uECC_vli_modInv
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,61($fp)
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	addiu	$4,$fp,68
	addiu	$3,$fp,68
	lw	$7,36($fp)
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,100
	sll	$2,$2,5
	addu	$2,$3,$2
	addiu	$4,$fp,68
	addiu	$3,$fp,68
	lw	$7,36($fp)
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$3,$fp,100
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$4,$3,$2
	addiu	$3,$fp,164
	lw	$2,64($fp)
	sll	$2,$2,5
	addu	$5,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,100
	sll	$2,$2,5
	addu	$6,$3,$2
	li	$3,1			# 0x1
	lw	$2,64($fp)
	subu	$2,$3,$2
	addiu	$3,$fp,164
	sll	$2,$2,5
	addu	$3,$3,$2
	lw	$2,36($fp)
	sw	$2,16($sp)
	move	$7,$3
	.option	pic0
	jal	XYcZ_add
	nop

	.option	pic2
	lw	$28,24($fp)
	addiu	$4,$fp,68
	addiu	$3,$fp,164
	addiu	$2,$fp,100
	lw	$7,36($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,61($fp)
	addiu	$3,$fp,100
	move	$6,$2
	move	$5,$3
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	lb	$2,61($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lb	$3,61($fp)
	addiu	$4,$fp,164
	move	$6,$3
	move	$5,$4
	move	$4,$2
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,228($fp)
	lw	$2,0($2)
	beq	$3,$2,$L145
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L145:
	move	$sp,$fp
	lw	$31,236($sp)
	lw	$fp,232($sp)
	addiu	$sp,$sp,240
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	EccPoint_mult
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.globl	regularize_k
	.set	nomips16
	.set	nomicromips
	.ent	regularize_k
	.type	regularize_k, @function
regularize_k:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$2,52($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L147
	nop

	addiu	$2,$2,31
$L147:
	sra	$2,$2,5
	sb	$2,25($fp)
	lw	$2,52($fp)
	lhu	$2,2($2)
	sh	$2,26($fp)
	lw	$2,52($fp)
	addiu	$2,$2,36
	lb	$3,25($fp)
	move	$7,$3
	move	$6,$2
	lw	$5,40($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	bne	$2,$0,$L148
	nop

	lh	$3,26($fp)
	lb	$2,25($fp)
	sll	$2,$2,5
	slt	$2,$3,$2
	beq	$2,$0,$L149
	nop

	lh	$2,26($fp)
	move	$5,$2
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	beq	$2,$0,$L149
	nop

$L148:
	li	$2,1			# 0x1
	.option	pic0
	b	$L150
	nop

	.option	pic2
$L149:
	move	$2,$0
$L150:
	sw	$2,28($fp)
	lw	$2,52($fp)
	addiu	$2,$2,36
	lb	$3,25($fp)
	move	$7,$3
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,48($fp)
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$2,28($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	regularize_k
	.size	regularize_k, .-regularize_k
	.align	2
	.globl	EccPoint_compute_public_key
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
	.frame	$fp,136,$31		# vars= 96, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-136
	sw	$31,132($sp)
	sw	$fp,128($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,124($fp)
	addiu	$2,$fp,60
	sw	$2,52($fp)
	addiu	$2,$fp,92
	sw	$2,56($fp)
	addiu	$3,$fp,92
	addiu	$2,$fp,60
	lw	$7,36($fp)
	move	$6,$3
	move	$5,$2
	lw	$4,40($fp)
	.option	pic0
	jal	regularize_k
	nop

	.option	pic2
	lw	$28,24($fp)
	sw	$2,48($fp)
	lw	$2,36($fp)
	addiu	$4,$2,68
	lw	$2,48($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	addiu	$2,$2,128
	addu	$2,$2,$fp
	lw	$5,-76($2)
	lw	$2,36($fp)
	lh	$2,2($2)
	andi	$2,$2,0xffff
	addiu	$2,$2,1
	andi	$2,$2,0xffff
	seh	$2,$2
	lw	$3,36($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	move	$7,$0
	move	$6,$5
	move	$5,$4
	lw	$4,44($fp)
	.option	pic0
	jal	EccPoint_mult
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$5,36($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	EccPoint_isZero
	nop

	.option	pic2
	lw	$28,24($fp)
	beq	$2,$0,$L153
	nop

	move	$2,$0
	.option	pic0
	b	$L155
	nop

	.option	pic2
$L153:
	li	$2,1			# 0x1
$L155:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,124($fp)
	lw	$2,0($2)
	beq	$3,$2,$L156
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L156:
	move	$2,$4
	move	$sp,$fp
	lw	$31,132($sp)
	lw	$fp,128($sp)
	addiu	$sp,$sp,136
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.globl	uECC_vli_nativeToBytes
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sb	$0,3($fp)
	.option	pic0
	b	$L158
	nop

	.option	pic2
$L159:
	lw	$2,20($fp)
	addiu	$3,$2,-1
	lb	$2,3($fp)
	subu	$2,$3,$2
	sw	$2,4($fp)
	lw	$3,4($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,4($fp)
	andi	$2,$2,0x3
	sll	$2,$2,3
	srl	$4,$3,$2
	lb	$2,3($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	andi	$3,$4,0x00ff
	sb	$3,0($2)
	lbu	$2,3($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,3($fp)
$L158:
	lb	$2,3($fp)
	lw	$3,20($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L159
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.globl	uECC_vli_bytesToNative
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$2,48($fp)
	addiu	$2,$2,3
	bgez	$2,$L161
	nop

	addiu	$2,$2,3
$L161:
	sra	$2,$2,2
	seb	$2,$2
	move	$5,$2
	lw	$4,40($fp)
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	sb	$0,27($fp)
	.option	pic0
	b	$L162
	nop

	.option	pic2
$L163:
	lw	$2,48($fp)
	addiu	$3,$2,-1
	lb	$2,27($fp)
	subu	$2,$3,$2
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$3,$2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lb	$2,27($fp)
	lw	$3,44($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,28($fp)
	andi	$2,$2,0x3
	sll	$2,$2,3
	sll	$3,$3,$2
	lw	$5,28($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$2,$5,$2
	lw	$5,40($fp)
	addu	$2,$5,$2
	or	$3,$4,$3
	sw	$3,0($2)
	lbu	$2,27($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sb	$2,27($fp)
$L162:
	lb	$2,27($fp)
	lw	$3,48($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L163
	nop

	nop
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_bytesToNative
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	2
	.globl	uECC_generate_random_int
	.set	nomips16
	.set	nomicromips
	.ent	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	move	$2,$6
	sb	$2,56($fp)
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,36($fp)
	lb	$2,56($fp)
	move	$5,$2
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_numBits
	nop

	.option	pic2
	sh	$2,30($fp)
	lui	$2,%hi(g_rng_function)
	lw	$2,%lo(g_rng_function)($2)
	bne	$2,$0,$L165
	nop

	move	$2,$0
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L165:
	sw	$0,32($fp)
	.option	pic0
	b	$L167
	nop

	.option	pic2
$L170:
	lui	$2,%hi(g_rng_function)
	lw	$2,%lo(g_rng_function)($2)
	lb	$3,56($fp)
	sll	$3,$3,2
	move	$5,$3
	lw	$4,48($fp)
	move	$25,$2
	jalr	$25
	nop

	bne	$2,$0,$L168
	nop

	move	$2,$0
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L168:
	lb	$3,56($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,48($fp)
	addu	$2,$3,$2
	lw	$4,0($2)
	lb	$2,56($fp)
	andi	$2,$2,0xffff
	sll	$2,$2,5
	andi	$3,$2,0xffff
	lhu	$2,30($fp)
	subu	$2,$3,$2
	andi	$2,$2,0xffff
	seh	$2,$2
	move	$3,$2
	lw	$2,36($fp)
	srl	$3,$2,$3
	lb	$5,56($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$5,$2
	sll	$2,$2,2
	lw	$5,48($fp)
	addu	$2,$5,$2
	and	$3,$4,$3
	sw	$3,0($2)
	lb	$2,56($fp)
	move	$5,$2
	lw	$4,48($fp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	bne	$2,$0,$L169
	nop

	lb	$2,56($fp)
	move	$6,$2
	lw	$5,48($fp)
	lw	$4,52($fp)
	.option	pic0
	jal	uECC_vli_cmp
	nop

	.option	pic2
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L169
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L169:
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L167:
	lw	$2,32($fp)
	sltu	$2,$2,64
	bne	$2,$0,$L170
	nop

	move	$2,$0
$L166:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.globl	uECC_valid_point
	.set	nomips16
	.set	nomicromips
	.ent	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
	.frame	$fp,112,$31		# vars= 80, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,100($fp)
	lw	$2,24($fp)
	lbu	$2,0($2)
	sb	$2,35($fp)
	lw	$5,24($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	EccPoint_isZero
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L172
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L177
	nop

	.option	pic2
$L172:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lb	$3,35($fp)
	move	$6,$3
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L174
	nop

	lw	$2,24($fp)
	addiu	$4,$2,4
	lb	$2,35($fp)
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lb	$3,35($fp)
	move	$6,$3
	move	$5,$2
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L175
	nop

$L174:
	li	$2,-2			# 0xfffffffffffffffe
	.option	pic0
	b	$L177
	nop

	.option	pic2
$L175:
	lb	$2,35($fp)
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,36
	lw	$6,24($fp)
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,24($fp)
	lw	$2,168($2)
	addiu	$3,$fp,68
	lw	$6,24($fp)
	lw	$5,28($fp)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
	lb	$2,35($fp)
	addiu	$4,$fp,68
	addiu	$3,$fp,36
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_equal
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L176
	nop

	li	$2,-3			# 0xfffffffffffffffd
	.option	pic0
	b	$L177
	nop

	.option	pic2
$L176:
	move	$2,$0
$L177:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,100($fp)
	lw	$2,0($2)
	beq	$3,$2,$L178
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L178:
	move	$2,$4
	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_valid_point
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.globl	uECC_valid_public_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
	.frame	$fp,112,$31		# vars= 80, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,100($fp)
	lw	$2,24($fp)
	lb	$2,1($2)
	addiu	$3,$fp,36
	move	$6,$2
	lw	$5,28($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,24($fp)
	lb	$2,0($2)
	sll	$2,$2,2
	addiu	$3,$fp,36
	addu	$3,$3,$2
	lw	$2,24($fp)
	lb	$2,1($2)
	move	$4,$2
	lw	$2,28($fp)
	addu	$4,$2,$4
	lw	$2,24($fp)
	lb	$2,1($2)
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,24($fp)
	addiu	$2,$2,68
	addiu	$3,$fp,36
	li	$6,16			# 0x10
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($fp)
	bne	$2,$0,$L180
	nop

	li	$2,-4			# 0xfffffffffffffffc
	.option	pic0
	b	$L182
	nop

	.option	pic2
$L180:
	addiu	$2,$fp,36
	lw	$5,24($fp)
	move	$4,$2
	.option	pic0
	jal	uECC_valid_point
	nop

	.option	pic2
	lw	$28,16($fp)
$L182:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,100($fp)
	lw	$2,0($2)
	beq	$3,$2,$L183
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L183:
	move	$2,$4
	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_valid_public_key
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.globl	uECC_compute_public_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
	.frame	$fp,152,$31		# vars= 120, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-152
	sw	$31,148($sp)
	sw	$fp,144($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,140($fp)
	lw	$2,28($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L185
	nop

	addiu	$2,$2,7
$L185:
	sra	$2,$2,3
	addiu	$3,$fp,44
	move	$6,$2
	lw	$5,36($fp)
	move	$4,$3
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L186
	nop

	addiu	$2,$2,31
$L186:
	sra	$2,$2,5
	seb	$2,$2
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($fp)
	beq	$2,$0,$L187
	nop

	move	$2,$0
	.option	pic0
	b	$L192
	nop

	.option	pic2
$L187:
	lw	$2,28($fp)
	addiu	$3,$2,36
	lw	$2,28($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L189
	nop

	addiu	$2,$2,31
$L189:
	sra	$2,$2,5
	seb	$2,$2
	addiu	$4,$fp,44
	move	$6,$2
	move	$5,$4
	move	$4,$3
	.option	pic0
	jal	uECC_vli_cmp
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L190
	nop

	move	$2,$0
	.option	pic0
	b	$L192
	nop

	.option	pic2
$L190:
	addiu	$3,$fp,44
	addiu	$2,$fp,76
	lw	$6,28($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	EccPoint_compute_public_key
	nop

	.option	pic2
	lw	$28,16($fp)
	bne	$2,$0,$L191
	nop

	move	$2,$0
	.option	pic0
	b	$L192
	nop

	.option	pic2
$L191:
	lw	$2,28($fp)
	lb	$2,1($2)
	addiu	$3,$fp,76
	move	$6,$3
	move	$5,$2
	lw	$4,32($fp)
	.option	pic0
	jal	uECC_vli_nativeToBytes
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	lb	$2,1($2)
	move	$3,$2
	lw	$2,32($fp)
	addu	$3,$2,$3
	lw	$2,28($fp)
	lb	$2,1($2)
	move	$5,$2
	lw	$2,28($fp)
	lb	$2,0($2)
	sll	$2,$2,2
	addiu	$4,$fp,76
	addu	$2,$4,$2
	move	$6,$2
	move	$4,$3
	.option	pic0
	jal	uECC_vli_nativeToBytes
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,1			# 0x1
$L192:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,140($fp)
	lw	$2,0($2)
	beq	$3,$2,$L193
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L193:
	move	$2,$4
	move	$sp,$fp
	lw	$31,148($sp)
	lw	$fp,144($sp)
	addiu	$sp,$sp,152
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
