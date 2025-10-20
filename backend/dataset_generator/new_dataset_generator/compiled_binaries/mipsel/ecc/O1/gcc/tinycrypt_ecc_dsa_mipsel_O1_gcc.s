	.file	1 "tinycrypt_ecc_dsa.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	bits2int
	.type	bits2int, @function
bits2int:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$4
	move	$21,$5
	lh	$2,2($7)
	addiu	$16,$2,31
	bltz	$16,$L9
	move	$19,$7

$L2:
	addiu	$2,$2,7
	bltz	$2,$L10
	sra	$16,$16,5

$L3:
	sra	$17,$2,3
	sltu	$2,$6,$17
	movn	$17,$6,$2
	seb	$20,$16
	move	$5,$20
	move	$4,$18
	lw	$25,%call16(uECC_vli_clear)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$17
	move	$5,$21
	move	$4,$18
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sll	$17,$17,3
	lh	$2,2($19)
	sltu	$3,$2,$17
	beq	$3,$0,$L1
	subu	$3,$17,$2

	sll	$2,$16,2
	addu	$2,$18,$2
	sltu	$4,$18,$2
	beq	$4,$0,$L5
	move	$6,$0

	li	$7,32			# 0x20
	subu	$7,$7,$3
$L6:
	lw	$5,-4($2)
	srl	$4,$5,$3
	or	$4,$4,$6
	sw	$4,-4($2)
	addiu	$2,$2,-4
	sltu	$4,$18,$2
	bne	$4,$0,$L6
	sll	$6,$5,$7

$L5:
	addiu	$19,$19,36
	move	$6,$20
	move	$5,$18
	move	$4,$19
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L11
	move	$7,$20

$L1:
	lw	$31,52($sp)
$L12:
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

$L9:
	.option	pic0
	b	$L2
	.option	pic2
	addiu	$16,$16,31

$L10:
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$2,$2,7

$L11:
	move	$6,$19
	move	$5,$18
	move	$4,$18
	lw	$25,%call16(uECC_vli_sub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	nop

	lw	$28,16($sp)
	.option	pic0
	b	$L12
	.option	pic2
	lw	$31,52($sp)

	.set	macro
	.set	reorder
	.end	bits2int
	.size	bits2int, .-bits2int
	.align	2
	.globl	uECC_sign_with_k
	.set	nomips16
	.set	nomicromips
	.ent	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
	.frame	$sp,224,$31		# vars= 152, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-224
	sw	$31,220($sp)
	sw	$fp,216($sp)
	sw	$23,212($sp)
	sw	$22,208($sp)
	sw	$21,204($sp)
	sw	$20,200($sp)
	sw	$19,196($sp)
	sw	$18,192($sp)
	sw	$17,188($sp)
	sw	$16,184($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$20,$4
	sw	$5,36($sp)
	move	$19,$6
	move	$16,$7
	lw	$fp,240($sp)
	lw	$18,244($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,180($sp)
	addiu	$2,$sp,52
	sw	$2,44($sp)
	addiu	$2,$sp,84
	sw	$2,48($sp)
	lb	$22,0($18)
	lh	$21,2($18)
	move	$5,$22
	move	$4,$7
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L25
	move	$2,$0

$L13:
	lw	$4,180($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L26
	lw	$31,220($sp)

	lw	$fp,216($sp)
	lw	$23,212($sp)
	lw	$22,208($sp)
	lw	$21,204($sp)
	lw	$20,200($sp)
	lw	$19,196($sp)
	lw	$18,192($sp)
	lw	$17,188($sp)
	lw	$16,184($sp)
	jr	$31
	addiu	$sp,$sp,224

$L25:
	addiu	$17,$21,31
	bltz	$17,$L27
	nop

$L15:
	sra	$17,$17,5
	seb	$17,$17
	addiu	$23,$18,36
	move	$6,$17
	move	$5,$16
	move	$4,$23
	lw	$25,%call16(uECC_vli_cmp)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$3,1			# 0x1
	beq	$2,$3,$L28
	move	$2,$0

	.option	pic0
	b	$L13
	nop

	.option	pic2
$L27:
	.option	pic0
	b	$L15
	.option	pic2
	addiu	$17,$17,31

$L28:
	move	$7,$18
	addiu	$6,$sp,84
	addiu	$5,$sp,52
	move	$4,$16
	lw	$25,%call16(regularize_k)($28)
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sltu	$2,$2,1
	sll	$2,$2,2
	addiu	$2,$2,176
	addiu	$3,$sp,8
	addu	$2,$2,$3
	sw	$18,20($sp)
	addiu	$21,$21,1
	seh	$21,$21
	sw	$21,16($sp)
	move	$7,$0
	lw	$6,-140($2)
	addiu	$5,$18,68
	addiu	$21,$sp,116
	move	$4,$21
	lw	$25,%call16(EccPoint_mult)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$5,$22
	move	$4,$21
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($sp)
	bne	$2,$0,$L13
	move	$2,$0

	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L30
	move	$6,$17

	move	$5,$23
	addiu	$4,$sp,52
	lw	$25,%call16(uECC_generate_random_int)($28)
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L13
	nop

$L17:
	sw	$17,16($sp)
	move	$7,$23
	addiu	$21,$sp,52
	move	$6,$21
	move	$5,$16
	move	$4,$16
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$17
	move	$6,$23
	move	$5,$16
	move	$4,$16
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$23
	move	$6,$21
	move	$5,$16
	move	$4,$16
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$6,$sp,116
	lb	$5,1($18)
	move	$4,$fp
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lh	$6,2($18)
	addiu	$6,$6,7
	bltz	$6,$L31
	nop

$L18:
	sra	$6,$6,3
	move	$5,$20
	addiu	$20,$sp,52
	move	$4,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$2,$17,-1
	sll	$2,$2,2
	addiu	$2,$2,176
	addiu	$3,$sp,8
	addu	$2,$2,$3
	sw	$0,-100($2)
	move	$6,$22
	addiu	$5,$sp,116
	addiu	$21,$sp,84
	move	$4,$21
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$23
	move	$6,$21
	move	$5,$20
	move	$4,$21
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$18
	move	$6,$19
	lw	$5,36($sp)
	move	$4,$20
	.option	pic0
	jal	bits2int
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$23
	move	$6,$21
	move	$5,$20
	move	$4,$21
	lw	$25,%call16(uECC_vli_modAdd)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modAdd
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$23
	move	$6,$16
	move	$5,$21
	move	$4,$21
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$5,$17
	move	$4,$21
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lb	$5,1($18)
	sll	$3,$5,3
	slt	$2,$3,$2
	beq	$2,$0,$L32
	move	$6,$21

	.option	pic0
	b	$L13
	.option	pic2
	move	$2,$0

$L30:
	move	$5,$17
	addiu	$4,$sp,52
	lw	$25,%call16(uECC_vli_clear)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$2,1			# 0x1
	.option	pic0
	b	$L17
	.option	pic2
	sw	$2,52($sp)

$L31:
	.option	pic0
	b	$L18
	.option	pic2
	addiu	$6,$6,7

$L32:
	addu	$4,$fp,$5
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,24($sp)
	.option	pic0
	b	$L13
	.option	pic2
	li	$2,1			# 0x1

$L26:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_sign_with_k
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	2
	.globl	uECC_sign
	.set	nomips16
	.set	nomicromips
	.ent	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
	.frame	$sp,176,$31		# vars= 104, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-176
	sw	$31,172($sp)
	sw	$fp,168($sp)
	sw	$23,164($sp)
	sw	$22,160($sp)
	sw	$21,156($sp)
	sw	$20,152($sp)
	sw	$19,148($sp)
	sw	$18,144($sp)
	sw	$17,140($sp)
	sw	$16,136($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$23,$4
	move	$22,$5
	move	$21,$6
	move	$20,$7
	lw	$17,192($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,132($sp)
	li	$16,64			# 0x40
	addiu	$18,$sp,68
	addiu	$fp,$17,36
	.option	pic0
	b	$L36
	.option	pic2
	addiu	$19,$sp,36

$L35:
	sra	$7,$7,5
	seb	$7,$7
	move	$6,$fp
	move	$5,$18
	move	$4,$19
	lw	$25,%call16(uECC_vli_mmod)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,20($sp)
	sw	$20,16($sp)
	move	$7,$19
	move	$6,$21
	move	$5,$22
	move	$4,$23
	.option	pic0
	jal	uECC_sign_with_k
	nop

	.option	pic2
	lw	$28,24($sp)
	bne	$2,$0,$L39
	addiu	$16,$16,-1

	beq	$16,$0,$L33
	nop

$L36:
	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L38
	li	$5,64			# 0x40

	move	$4,$18
	move	$25,$2
	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L33
	nop

	lh	$7,2($17)
	addiu	$7,$7,31
	bgez	$7,$L35
	nop

	.option	pic0
	b	$L35
	.option	pic2
	addiu	$7,$7,31

$L38:
	move	$2,$0
$L33:
	lw	$4,132($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L42
	lw	$31,172($sp)

	lw	$fp,168($sp)
	lw	$23,164($sp)
	lw	$22,160($sp)
	lw	$21,156($sp)
	lw	$20,152($sp)
	lw	$19,148($sp)
	lw	$18,144($sp)
	lw	$17,140($sp)
	lw	$16,136($sp)
	jr	$31
	addiu	$sp,$sp,176

$L39:
	.option	pic0
	b	$L33
	.option	pic2
	li	$2,1			# 0x1

$L42:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_sign
	.size	uECC_sign, .-uECC_sign
	.align	2
	.globl	uECC_verify
	.set	nomips16
	.set	nomicromips
	.ent	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
	.frame	$sp,568,$31		# vars= 496, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-568
	sw	$31,564($sp)
	sw	$fp,560($sp)
	sw	$23,556($sp)
	sw	$22,552($sp)
	sw	$21,548($sp)
	sw	$20,544($sp)
	sw	$19,540($sp)
	sw	$18,536($sp)
	sw	$17,532($sp)
	sw	$16,528($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$21,$4
	sw	$5,32($sp)
	move	$22,$6
	move	$fp,$7
	lw	$17,584($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,524($sp)
	lh	$16,2($17)
	addiu	$16,$16,31
	bltz	$16,$L58
	lb	$18,0($17)

$L44:
	sra	$16,$16,5
	seb	$16,$16
	addiu	$23,$16,-1
	sll	$2,$23,2
	addiu	$2,$2,504
	addiu	$3,$sp,24
	addu	$2,$2,$3
	sw	$0,-356($2)
	sw	$0,-196($2)
	sw	$0,-164($2)
	lb	$6,1($17)
	move	$5,$21
	addiu	$20,$sp,460
	move	$4,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sll	$19,$18,2
	addu	$20,$20,$19
	lb	$6,1($17)
	addu	$5,$21,$6
	move	$4,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lb	$6,1($17)
	move	$5,$fp
	addiu	$21,$sp,332
	move	$4,$21
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lb	$6,1($17)
	addu	$5,$fp,$6
	addiu	$4,$sp,364
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$5,$18
	move	$4,$21
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($sp)
	beq	$2,$0,$L59
	move	$2,$0

$L43:
	lw	$4,524($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L60
	lw	$31,564($sp)

	lw	$fp,560($sp)
	lw	$23,556($sp)
	lw	$22,552($sp)
	lw	$21,548($sp)
	lw	$20,544($sp)
	lw	$19,540($sp)
	lw	$18,536($sp)
	lw	$17,532($sp)
	lw	$16,528($sp)
	jr	$31
	addiu	$sp,$sp,568

$L58:
	.option	pic0
	b	$L44
	.option	pic2
	addiu	$16,$16,31

$L59:
	move	$5,$18
	addiu	$4,$sp,364
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($sp)
	bne	$2,$0,$L43
	move	$2,$0

	addiu	$2,$17,36
	sw	$2,40($sp)
	move	$6,$16
	move	$5,$21
	move	$4,$2
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L43
	move	$2,$0

	move	$6,$16
	addiu	$5,$sp,364
	lw	$4,40($sp)
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L43
	move	$2,$0

	move	$7,$16
	lw	$fp,40($sp)
	move	$6,$fp
	addiu	$5,$sp,364
	addiu	$21,$sp,140
	move	$4,$21
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sll	$23,$23,2
	addiu	$2,$23,504
	addiu	$3,$sp,24
	addu	$23,$2,$3
	sw	$0,-452($23)
	move	$7,$17
	move	$6,$22
	lw	$5,32($sp)
	addiu	$23,$sp,76
	move	$4,$23
	.option	pic0
	jal	bits2int
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$fp
	move	$6,$21
	move	$5,$23
	move	$4,$23
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$fp
	move	$6,$21
	addiu	$5,$sp,332
	addiu	$2,$sp,108
	sw	$2,36($sp)
	move	$4,$2
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$18
	addiu	$3,$sp,460
	sw	$3,44($sp)
	move	$5,$3
	addiu	$22,$sp,396
	move	$4,$22
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addu	$fp,$22,$19
	move	$6,$18
	move	$5,$20
	move	$4,$fp
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$2,$17,68
	move	$6,$18
	move	$20,$2
	move	$5,$2
	addiu	$2,$sp,236
	sw	$2,32($sp)
	move	$4,$2
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$18
	addu	$5,$20,$19
	addiu	$7,$sp,268
	sw	$7,48($sp)
	move	$4,$7
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$3,$17,4
	sw	$18,16($sp)
	sw	$3,52($sp)
	move	$7,$3
	lw	$6,32($sp)
	move	$5,$22
	move	$4,$21
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$fp
	move	$6,$22
	lw	$5,48($sp)
	lw	$4,32($sp)
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$18
	lw	$6,52($sp)
	move	$5,$21
	move	$4,$21
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$17
	move	$6,$21
	move	$5,$fp
	move	$4,$22
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$0,60($sp)
	sw	$20,64($sp)
	lw	$3,44($sp)
	sw	$3,68($sp)
	sw	$22,72($sp)
	move	$5,$16
	move	$4,$23
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$21,$2
	move	$5,$16
	lw	$4,36($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$20,$21
	slt	$21,$21,$2
	beq	$21,$0,$L67
	andi	$20,$20,0xffff

	move	$20,$2
	andi	$20,$20,0xffff
$L67:
	addiu	$22,$20,-1
	seh	$22,$22
	move	$5,$22
	addiu	$4,$sp,76
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$21,$2
	move	$5,$22
	addiu	$4,$sp,108
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sltu	$2,$0,$2
	sll	$2,$2,1
	sltu	$21,$0,$21
	or	$2,$2,$21
	sll	$2,$2,2
	addiu	$2,$2,504
	addiu	$3,$sp,24
	addu	$2,$2,$3
	lw	$21,-468($2)
	move	$6,$18
	move	$5,$21
	addiu	$4,$sp,172
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$18
	addu	$5,$21,$19
	addiu	$4,$sp,204
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$5,$18
	addiu	$4,$sp,140
	lw	$25,%call16(uECC_vli_clear)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$2,1			# 0x1
	sw	$2,140($sp)
	addiu	$20,$20,-2
	seh	$2,$20
	bltz	$2,$L47
	sw	$2,32($sp)

	addiu	$20,$sp,140
	addiu	$22,$sp,204
	addiu	$21,$sp,172
	addiu	$fp,$sp,76
	.option	pic0
	b	$L49
	.option	pic2
	addiu	$23,$sp,108

$L48:
	lw	$2,32($sp)
$L65:
	addiu	$2,$2,-1
	seh	$2,$2
	bltz	$2,$L47
	sw	$2,32($sp)

$L49:
	lw	$25,164($17)
	move	$7,$17
	move	$6,$20
	move	$5,$22
	move	$4,$21
	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$5,32($sp)
	move	$4,$fp
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$2,36($sp)
	lw	$5,32($sp)
	move	$4,$23
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sltu	$2,$0,$2
	sll	$2,$2,1
	lw	$3,36($sp)
	sltu	$3,$0,$3
	or	$2,$2,$3
	sll	$2,$2,2
	addiu	$2,$2,504
	addiu	$3,$sp,24
	addu	$2,$2,$3
	lw	$2,-468($2)
	beq	$2,$0,$L48
	move	$6,$18

	sw	$2,44($sp)
	move	$5,$2
	addiu	$3,$sp,236
	sw	$3,36($sp)
	move	$4,$3
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$18
	lw	$2,44($sp)
	addu	$5,$2,$19
	addiu	$2,$sp,268
	sw	$2,44($sp)
	move	$4,$2
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$17
	move	$6,$20
	lw	$5,44($sp)
	lw	$4,36($sp)
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$18,16($sp)
	lw	$7,52($sp)
	lw	$6,36($sp)
	move	$5,$21
	addiu	$3,$sp,300
	sw	$3,48($sp)
	move	$4,$3
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	nop

	lw	$28,24($sp)
	sw	$17,16($sp)
	move	$7,$22
	move	$6,$21
	lw	$5,44($sp)
	lw	$4,36($sp)
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$17
	lw	$6,48($sp)
	move	$5,$20
	move	$4,$20
	lw	$25,%call16(uECC_vli_modMult_fast)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult_fast
1:	jalr	$25
	nop

	lw	$28,24($sp)
	.option	pic0
	b	$L65
	.option	pic2
	lw	$2,32($sp)

$L47:
	move	$7,$18
	lw	$6,52($sp)
	addiu	$19,$sp,140
	move	$5,$19
	move	$4,$19
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$17
	move	$6,$19
	addiu	$5,$sp,204
	addiu	$17,$sp,172
	move	$4,$17
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($sp)
	move	$6,$16
	move	$5,$17
	lw	$17,40($sp)
	move	$4,$17
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L64
	move	$7,$16

	move	$6,$18
$L66:
	addiu	$5,$sp,332
	addiu	$4,$sp,172
	lw	$25,%call16(uECC_vli_equal)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_equal
1:	jalr	$25
	nop

	lw	$28,24($sp)
	.option	pic0
	b	$L43
	.option	pic2
	sltu	$2,$2,1

$L64:
	move	$6,$17
	addiu	$4,$sp,172
	move	$5,$4
	lw	$25,%call16(uECC_vli_sub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	nop

	lw	$28,24($sp)
	.option	pic0
	b	$L66
	.option	pic2
	move	$6,$18

$L60:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_verify
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
