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
	lui	$28,%hi(__gnu_local_gp)
	sw	$20,44($sp)
	move	$20,$7
	lh	$7,2($7)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	move	$21,$5
	sw	$19,40($sp)
	move	$19,$4
	addiu	$2,$7,31
	sw	$31,52($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	bgez	$2,$L2
	.cprestore	16

	addiu	$2,$7,62
$L2:
	addiu	$3,$7,7
	bgez	$3,$L3
	sra	$16,$2,5

	addiu	$3,$7,14
$L3:
	sra	$17,$3,3
	lw	$25,%call16(uECC_vli_clear)($28)
	seb	$18,$16
	sltu	$2,$6,$17
	move	$5,$18
	movn	$17,$6,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$4,$19

	move	$5,$21
	lw	$28,16($sp)
	move	$4,$19
	move	$6,$17
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	sll	$17,$17,3

	lh	$3,2($20)
	sltu	$2,$3,$17
	beq	$2,$0,$L1
	lw	$28,16($sp)

	sll	$2,$16,2
	subu	$8,$17,$3
	addu	$2,$19,$2
	sltu	$3,$19,$2
	beq	$3,$0,$L10
	li	$4,32			# 0x20

	move	$5,$0
	subu	$4,$4,$8
$L9:
	lw	$9,-4($2)
	addiu	$2,$2,-4
	srl	$3,$9,$8
	or	$3,$3,$5
	sw	$3,0($2)
	sltu	$3,$19,$2
	bne	$3,$0,$L9
	sll	$5,$9,$4

$L10:
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	addiu	$20,$20,36
	move	$6,$18
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$20

	li	$3,1			# 0x1
	bne	$2,$3,$L14
	lw	$28,16($sp)

$L1:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

$L14:
	lw	$31,52($sp)
	move	$7,$18
	lw	$21,48($sp)
	move	$6,$20
	lw	$18,36($sp)
	move	$5,$19
	lw	$20,44($sp)
	move	$4,$19
	lw	$17,32($sp)
	lw	$19,40($sp)
	lw	$16,28($sp)
	lw	$25,%call16(uECC_vli_sub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jr	$25
	addiu	$sp,$sp,56

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
	.frame	$sp,232,$31		# vars= 160, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-232
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$3,$4
	sw	$19,204($sp)
	move	$2,$5
	sw	$17,196($sp)
	sw	$fp,224($sp)
	sw	$22,216($sp)
	sw	$21,212($sp)
	addiu	$21,$sp,60
	sw	$20,208($sp)
	addiu	$20,$sp,92
	sw	$16,192($sp)
	move	$16,$7
	.cprestore	24
	move	$4,$16
	sw	$31,228($sp)
	sw	$23,220($sp)
	sw	$18,200($sp)
	lw	$17,252($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$25,%call16(uECC_vli_isZero)($28)
	lw	$fp,248($sp)
	lb	$23,0($17)
	lw	$7,0($19)
	lh	$22,2($17)
	move	$5,$23
	sw	$21,52($sp)
	sw	$7,188($sp)
	sw	$3,32($sp)
	sw	$20,56($sp)
	sw	$2,36($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	sw	$6,240($sp)

	beq	$2,$0,$L16
	lw	$28,24($sp)

$L19:
	move	$2,$0
$L15:
	lw	$4,188($sp)
	lw	$3,0($19)
	bne	$4,$3,$L28
	lw	$31,228($sp)

	lw	$fp,224($sp)
	lw	$23,220($sp)
	lw	$22,216($sp)
	lw	$21,212($sp)
	lw	$20,208($sp)
	lw	$19,204($sp)
	lw	$18,200($sp)
	lw	$17,196($sp)
	lw	$16,192($sp)
	jr	$31
	addiu	$sp,$sp,232

$L16:
	addiu	$18,$22,31
	bgez	$18,$L31
	sra	$18,$18,5

	addiu	$18,$22,62
	sra	$18,$18,5
$L31:
	lw	$25,%call16(uECC_vli_cmp)($28)
	addiu	$4,$17,36
	seb	$18,$18
	sw	$4,40($sp)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp
1:	jalr	$25
	move	$5,$16

	li	$3,1			# 0x1
	bne	$2,$3,$L19
	lw	$28,24($sp)

	lw	$25,%call16(regularize_k)($28)
	move	$7,$17
	move	$6,$20
	sw	$2,44($sp)
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	move	$4,$16

	addiu	$4,$sp,16
	sltu	$2,$2,1
	lw	$28,24($sp)
	sll	$2,$2,2
	sw	$17,20($sp)
	addiu	$3,$22,1
	addiu	$2,$2,176
	lw	$25,%call16(EccPoint_mult)($28)
	addiu	$22,$sp,124
	addu	$2,$2,$4
	seh	$3,$3
	move	$7,$0
	lw	$6,-140($2)
	addiu	$5,$17,68
	move	$4,$22
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	sw	$3,16($sp)

	move	$5,$23
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	move	$4,$22

	bne	$2,$0,$L19
	lw	$28,24($sp)

	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	beq	$2,$0,$L29
	lw	$28,24($sp)

	lw	$25,%call16(uECC_generate_random_int)($28)
	move	$6,$18
	lw	$5,40($sp)
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	move	$4,$21

	beq	$2,$0,$L19
	lw	$28,24($sp)

$L21:
	lw	$25,%call16(uECC_vli_modMult)($28)
	move	$6,$21
	lw	$7,40($sp)
	move	$5,$16
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	sw	$18,16($sp)

	move	$7,$18
	lw	$28,24($sp)
	move	$5,$16
	lw	$6,40($sp)
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$16

	move	$6,$21
	lw	$28,24($sp)
	move	$5,$16
	lw	$7,40($sp)
	move	$4,$16
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	sw	$18,16($sp)

	move	$6,$22
	lw	$28,24($sp)
	move	$4,$fp
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lb	$5,1($17)

	lh	$2,2($17)
	addiu	$6,$2,7
	bltz	$6,$L30
	lw	$28,24($sp)

$L22:
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	sra	$6,$6,3
	lw	$5,32($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$4,$21

	addiu	$2,$18,-1
	lw	$28,24($sp)
	addiu	$3,$sp,16
	sll	$2,$2,2
	move	$5,$22
	addiu	$2,$2,176
	lw	$25,%call16(uECC_vli_set)($28)
	move	$6,$23
	addu	$2,$2,$3
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	sw	$0,-100($2)

	move	$6,$20
	lw	$28,24($sp)
	move	$5,$21
	lw	$22,40($sp)
	move	$4,$20
	sw	$18,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$7,$22

	move	$7,$17
	lw	$6,240($sp)
	move	$4,$21
	.option	pic0
	jal	bits2int
	.option	pic2
	lw	$5,36($sp)

	move	$7,$22
	lw	$28,24($sp)
	move	$6,$20
	move	$5,$21
	sw	$18,16($sp)
	lw	$25,%call16(uECC_vli_modAdd)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modAdd
1:	jalr	$25
	move	$4,$20

	move	$5,$20
	lw	$28,24($sp)
	move	$4,$20
	move	$7,$22
	sw	$18,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$6,$16

	move	$5,$18
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	move	$4,$20

	lb	$5,1($17)
	sll	$3,$5,3
	slt	$2,$3,$2
	bne	$2,$0,$L19
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addu	$4,$fp,$5
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	move	$6,$20

	li	$2,1			# 0x1
	.option	pic0
	b	$L15
	.option	pic2
	lw	$28,24($sp)

$L30:
	.option	pic0
	b	$L22
	.option	pic2
	addiu	$6,$2,14

$L29:
	lw	$25,%call16(uECC_vli_clear)($28)
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$4,$21

	lw	$8,44($sp)
	lw	$28,24($sp)
	.option	pic0
	b	$L21
	.option	pic2
	sw	$8,60($sp)

$L28:
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
	.frame	$sp,184,$31		# vars= 112, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-184
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,148($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$17,200($sp)
	sw	$fp,176($sp)
	addiu	$fp,$sp,76
	sw	$2,36($sp)
	sw	$23,172($sp)
	addiu	$23,$sp,44
	sw	$22,168($sp)
	addiu	$22,$17,36
	sw	$21,164($sp)
	move	$21,$4
	sw	$20,160($sp)
	move	$20,$5
	sw	$19,156($sp)
	move	$19,$6
	sw	$18,152($sp)
	move	$18,$7
	sw	$16,144($sp)
	li	$16,64			# 0x40
	sw	$31,180($sp)
	.cprestore	24
	lw	$2,0($2)
	sw	$2,140($sp)
	.option	pic0
	b	$L49
	.option	pic2
	lw	$25,%call16(uECC_get_rng)($28)

$L47:
	li	$5,64			# 0x40
	move	$25,$2
	jalr	$25
	move	$4,$fp

	beq	$2,$0,$L33
	lw	$28,24($sp)

	lh	$2,2($17)
	addiu	$7,$2,31
	bgez	$7,$L50
	lw	$25,%call16(uECC_vli_mmod)($28)

	addiu	$7,$2,62
$L50:
	sra	$7,$7,5
	move	$6,$22
	move	$5,$fp
	move	$4,$23
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	seb	$7,$7

	move	$7,$23
	sw	$17,20($sp)
	move	$6,$19
	sw	$18,16($sp)
	move	$5,$20
	.option	pic0
	jal	uECC_sign_with_k
	.option	pic2
	move	$4,$21

	bne	$2,$0,$L38
	lw	$28,24($sp)

	addiu	$16,$16,-1
	beq	$16,$0,$L33
	lw	$25,%call16(uECC_get_rng)($28)

$L49:
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	bne	$2,$0,$L47
	lw	$28,24($sp)

$L33:
	move	$2,$0
$L32:
	lw	$3,36($sp)
	lw	$4,140($sp)
	lw	$3,0($3)
	bne	$4,$3,$L48
	lw	$31,180($sp)

	lw	$fp,176($sp)
	lw	$23,172($sp)
	lw	$22,168($sp)
	lw	$21,164($sp)
	lw	$20,160($sp)
	lw	$19,156($sp)
	lw	$18,152($sp)
	lw	$17,148($sp)
	lw	$16,144($sp)
	jr	$31
	addiu	$sp,$sp,184

$L38:
	.option	pic0
	b	$L32
	.option	pic2
	li	$2,1			# 0x1

$L48:
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
	.frame	$sp,584,$31		# vars= 512, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-584
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,544($sp)
	sw	$22,568($sp)
	lw	$16,600($sp)
	lw	$22,%got(__stack_chk_guard)($28)
	sw	$fp,576($sp)
	move	$fp,$4
	sw	$18,552($sp)
	sw	$19,556($sp)
	move	$19,$7
	sw	$31,580($sp)
	sw	$23,572($sp)
	sw	$21,564($sp)
	sw	$20,560($sp)
	sw	$17,548($sp)
	.cprestore	24
	lh	$3,2($16)
	lw	$4,0($22)
	lb	$20,0($16)
	addiu	$18,$3,31
	sw	$5,40($sp)
	sw	$6,592($sp)
	sw	$4,540($sp)
	bgez	$18,$L68
	sra	$18,$18,5

	addiu	$18,$3,62
	sra	$18,$18,5
$L68:
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	addiu	$3,$sp,40
	lb	$6,1($16)
	seb	$18,$18
	addiu	$17,$18,-1
	addiu	$7,$sp,380
	sll	$17,$17,2
	addiu	$21,$sp,476
	sw	$7,32($sp)
	addiu	$2,$17,504
	move	$5,$fp
	addu	$17,$2,$3
	addiu	$2,$sp,348
	move	$4,$21
	sw	$2,36($sp)
	sll	$23,$20,2
	sw	$0,-356($17)
	sw	$0,-196($17)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	sw	$0,-164($17)

	addu	$4,$21,$23
	lw	$28,24($sp)
	lb	$6,1($16)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	addu	$5,$fp,$6

	move	$5,$19
	lw	$28,24($sp)
	lw	$fp,36($sp)
	lb	$6,1($16)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$4,$fp

	lw	$28,24($sp)
	lb	$6,1($16)
	lw	$4,32($sp)
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	addu	$5,$19,$6

	move	$5,$20
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_isZero)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	move	$4,$fp

	beq	$2,$0,$L53
	lw	$28,24($sp)

$L55:
	move	$2,$0
$L51:
	lw	$4,540($sp)
	lw	$3,0($22)
	bne	$4,$3,$L67
	lw	$31,580($sp)

	lw	$fp,576($sp)
	lw	$23,572($sp)
	lw	$22,568($sp)
	lw	$21,564($sp)
	lw	$20,560($sp)
	lw	$19,556($sp)
	lw	$18,552($sp)
	lw	$17,548($sp)
	lw	$16,544($sp)
	jr	$31
	addiu	$sp,$sp,584

$L53:
	lw	$25,%call16(uECC_vli_isZero)($28)
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	lw	$4,32($sp)

	bne	$2,$0,$L55
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	addiu	$2,$16,36
	lw	$5,36($sp)
	move	$6,$18
	sw	$2,44($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$2

	li	$3,1			# 0x1
	lw	$28,24($sp)
	bne	$2,$3,$L55
	move	$19,$2

	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	move	$6,$18
	lw	$5,32($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	lw	$4,44($sp)

	bne	$2,$19,$L55
	lw	$28,24($sp)

	addiu	$19,$sp,156
	lw	$25,%call16(uECC_vli_modInv)($28)
	lw	$6,44($sp)
	addiu	$2,$sp,92
	lw	$5,32($sp)
	move	$7,$18
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$fp,$2

	move	$4,$fp
	lw	$6,592($sp)
	move	$7,$16
	lw	$5,40($sp)
	sw	$0,-452($17)
	.option	pic0
	jal	bits2int
	.option	pic2
	move	$17,$fp

	move	$5,$17
	lw	$28,24($sp)
	move	$4,$17
	lw	$fp,44($sp)
	move	$6,$19
	sw	$17,56($sp)
	addiu	$17,$sp,412
	sw	$18,16($sp)
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	move	$7,$fp

	addiu	$2,$sp,124
	lw	$28,24($sp)
	move	$7,$fp
	lw	$5,36($sp)
	move	$4,$2
	sw	$2,60($sp)
	move	$6,$19
	lw	$25,%call16(uECC_vli_modMult)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	sw	$18,16($sp)

	move	$5,$21
	lw	$28,24($sp)
	move	$4,$17
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$6,$20

	addu	$3,$17,$23
	lw	$28,24($sp)
	addu	$5,$21,$23
	move	$4,$3
	sw	$3,40($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$6,$20

	addiu	$3,$sp,252
	lw	$28,24($sp)
	addiu	$2,$16,68
	move	$4,$3
	sw	$3,32($sp)
	move	$5,$2
	move	$6,$20
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$fp,$2

	addiu	$6,$sp,284
	lw	$28,24($sp)
	addu	$5,$fp,$23
	move	$7,$6
	move	$4,$7
	sw	$7,48($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$6,$20

	addiu	$7,$16,4
	lw	$28,24($sp)
	move	$5,$17
	lw	$6,32($sp)
	move	$4,$19
	sw	$7,68($sp)
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	sw	$20,16($sp)

	move	$6,$17
	lw	$28,24($sp)
	lw	$7,40($sp)
	lw	$5,48($sp)
	lw	$4,32($sp)
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	sw	$16,16($sp)

	move	$7,$20
	lw	$28,24($sp)
	move	$5,$19
	lw	$6,68($sp)
	lw	$25,%call16(uECC_vli_modInv)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$19

	move	$4,$17
	lw	$28,24($sp)
	move	$7,$16
	lw	$5,40($sp)
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$6,$19

	move	$5,$18
	lw	$28,24($sp)
	lw	$4,56($sp)
	sw	$21,84($sp)
	sw	$17,88($sp)
	sw	$fp,80($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	sw	$0,76($sp)

	move	$5,$18
	lw	$28,24($sp)
	move	$21,$2
	lw	$4,60($sp)
	lw	$25,%call16(uECC_vli_numBits)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	move	$17,$21

	slt	$21,$21,$2
	beq	$21,$0,$L56
	lw	$28,24($sp)

	move	$17,$2
$L56:
	andi	$17,$17,0xffff
	lw	$25,%call16(uECC_vli_testBit)($28)
	addiu	$21,$17,-1
	lw	$4,56($sp)
	addiu	$17,$17,-2
	seh	$21,$21
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	move	$5,$21

	move	$5,$21
	lw	$28,24($sp)
	move	$21,$2
	lw	$4,60($sp)
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	seh	$17,$17

	sltu	$3,$0,$21
	sltu	$2,$0,$2
	lw	$28,24($sp)
	sll	$2,$2,1
	addiu	$4,$sp,188
	or	$2,$2,$3
	sll	$2,$2,2
	lw	$25,%call16(uECC_vli_set)($28)
	addiu	$3,$sp,40
	sw	$4,40($sp)
	addiu	$2,$2,504
	addiu	$21,$sp,220
	addu	$2,$2,$3
	move	$6,$20
	sw	$21,52($sp)
	lw	$fp,-468($2)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$5,$fp

	addu	$5,$fp,$23
	lw	$28,24($sp)
	move	$4,$21
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$6,$20

	move	$5,$20
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_clear)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	move	$4,$19

	li	$2,1			# 0x1
	lw	$28,24($sp)
	bltz	$17,$L57
	sw	$2,156($sp)

	addiu	$fp,$sp,316
$L59:
	lw	$25,164($16)
	move	$7,$16
	lw	$5,52($sp)
	move	$6,$19
	jalr	$25
	lw	$4,40($sp)

	move	$5,$17
	lw	$28,24($sp)
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	lw	$4,56($sp)

	move	$5,$17
	lw	$28,24($sp)
	move	$21,$2
	lw	$25,%call16(uECC_vli_testBit)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	lw	$4,60($sp)

	sltu	$3,$0,$21
	sltu	$2,$0,$2
	sll	$2,$2,1
	or	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$sp,40
	addiu	$2,$2,504
	addu	$2,$2,$3
	lw	$5,-468($2)
	beq	$5,$0,$L58
	lw	$28,24($sp)

	lw	$21,32($sp)
	move	$6,$20
	lw	$25,%call16(uECC_vli_set)($28)
	sw	$5,64($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	move	$4,$21

	move	$6,$20
	lw	$28,24($sp)
	lw	$5,64($sp)
	lw	$4,48($sp)
	lw	$25,%call16(uECC_vli_set)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	addu	$5,$5,$23

	move	$4,$21
	lw	$28,24($sp)
	move	$7,$16
	lw	$5,48($sp)
	lw	$25,%call16(apply_z)($28)
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$6,$19

	move	$6,$21
	lw	$28,24($sp)
	move	$4,$fp
	lw	$7,68($sp)
	sw	$21,32($sp)
	sw	$20,16($sp)
	lw	$21,40($sp)
	lw	$25,%call16(uECC_vli_modSub)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	move	$5,$21

	move	$6,$21
	lw	$28,24($sp)
	lw	$7,52($sp)
	lw	$5,48($sp)
	lw	$4,32($sp)
	lw	$25,%call16(XYcZ_add)($28)
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	sw	$16,16($sp)

	move	$7,$16
	lw	$28,24($sp)
	move	$6,$fp
	move	$5,$19
	lw	$25,%call16(uECC_vli_modMult_fast)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult_fast
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L58:
	addiu	$17,$17,-1
	li	$2,-1			# 0xffffffffffffffff
	seh	$17,$17
	bne	$17,$2,$L59
	nop

$L57:
	lw	$25,%call16(uECC_vli_modInv)($28)
	move	$7,$20
	lw	$6,68($sp)
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	move	$4,$19

	move	$7,$16
	lw	$28,24($sp)
	move	$6,$19
	lw	$17,40($sp)
	lw	$5,52($sp)
	lw	$25,%call16(apply_z)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	move	$16,$17

	move	$5,$17
	lw	$28,24($sp)
	move	$6,$18
	lw	$17,44($sp)
	lw	$25,%call16(uECC_vli_cmp_unsafe)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	move	$4,$17

	li	$3,1			# 0x1
	beq	$2,$3,$L60
	lw	$28,24($sp)

	lw	$25,%call16(uECC_vli_sub)($28)
	move	$7,$18
	move	$6,$17
	move	$5,$16
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	move	$4,$16

	lw	$28,24($sp)
$L60:
	lw	$25,%call16(uECC_vli_equal)($28)
	move	$6,$20
	lw	$5,36($sp)
	.reloc	1f,R_MIPS_JALR,uECC_vli_equal
1:	jalr	$25
	lw	$4,40($sp)

	lw	$28,24($sp)
	.option	pic0
	b	$L51
	.option	pic2
	sltu	$2,$2,1

$L67:
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
