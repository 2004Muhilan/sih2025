	.file	1 "tinycrypt_ecc_dsa.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.section	.data.rel.ro,"aw"
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
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	bits2int
	.type	bits2int, @function
bits2int:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$2,68($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L2
	nop

	addiu	$2,$2,7
$L2:
	sra	$2,$2,3
	sw	$2,32($fp)
	lw	$2,68($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L3
	nop

	addiu	$2,$2,31
$L3:
	sra	$2,$2,5
	sw	$2,36($fp)
	lw	$3,64($fp)
	lw	$2,32($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L4
	nop

	lw	$2,32($fp)
	sw	$2,64($fp)
$L4:
	lw	$2,36($fp)
	seb	$2,$2
	move	$5,$2
	lw	$4,56($fp)
	lw	$2,%call16(uECC_vli_clear)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,64($fp)
	move	$6,$2
	lw	$5,60($fp)
	lw	$4,56($fp)
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,64($fp)
	sll	$2,$2,3
	lw	$3,68($fp)
	lh	$3,2($3)
	sltu	$2,$3,$2
	beq	$2,$0,$L9
	nop

	lw	$2,64($fp)
	sll	$2,$2,3
	lw	$3,68($fp)
	lh	$3,2($3)
	subu	$2,$2,$3
	sw	$2,40($fp)
	sw	$0,24($fp)
	lw	$2,36($fp)
	sll	$2,$2,2
	lw	$3,56($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	lw	$2,28($fp)
	lw	$2,0($2)
	sw	$2,44($fp)
	lw	$3,44($fp)
	lw	$2,40($fp)
	srl	$3,$3,$2
	lw	$2,24($fp)
	or	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	li	$3,32			# 0x20
	lw	$2,40($fp)
	subu	$2,$3,$2
	lw	$3,44($fp)
	sll	$2,$3,$2
	sw	$2,24($fp)
$L7:
	lw	$2,28($fp)
	addiu	$3,$2,-4
	sw	$3,28($fp)
	lw	$3,56($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L8
	nop

	lw	$2,68($fp)
	addiu	$2,$2,36
	lw	$3,36($fp)
	seb	$3,$3
	move	$6,$3
	lw	$5,56($fp)
	move	$4,$2
	lw	$2,%call16(uECC_vli_cmp_unsafe)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L1
	nop

	lw	$2,68($fp)
	addiu	$2,$2,36
	lw	$3,36($fp)
	seb	$3,$3
	move	$7,$3
	move	$6,$2
	lw	$5,56($fp)
	lw	$4,56($fp)
	lw	$2,%call16(uECC_vli_sub)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L9:
	nop
$L1:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

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
	.frame	$fp,216,$31		# vars= 176, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-216
	sw	$31,212($sp)
	sw	$fp,208($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,52($fp)
	sw	$5,48($fp)
	sw	$6,224($fp)
	sw	$7,44($fp)
	lw	$2,232($fp)
	sw	$2,40($fp)
	lw	$2,236($fp)
	sw	$2,36($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,204($fp)
	addiu	$2,$fp,76
	sw	$2,68($fp)
	addiu	$2,$fp,108
	sw	$2,72($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,60($fp)
	lw	$2,36($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L11
	nop

	addiu	$2,$2,31
$L11:
	sra	$2,$2,5
	sb	$2,61($fp)
	lw	$2,36($fp)
	lhu	$2,2($2)
	sh	$2,62($fp)
	lb	$2,60($fp)
	move	$5,$2
	lw	$4,44($fp)
	lw	$2,%call16(uECC_vli_isZero)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L12
	nop

	lw	$2,36($fp)
	addiu	$2,$2,36
	lb	$3,61($fp)
	move	$6,$3
	lw	$5,44($fp)
	move	$4,$2
	lw	$2,%call16(uECC_vli_cmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L13
	nop

$L12:
	move	$2,$0
	.option	pic0
	b	$L20
	nop

	.option	pic2
$L13:
	addiu	$3,$fp,108
	addiu	$2,$fp,76
	lw	$7,36($fp)
	move	$6,$3
	move	$5,$2
	lw	$4,44($fp)
	lw	$2,%call16(regularize_k)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,64($fp)
	lw	$2,36($fp)
	addiu	$4,$2,68
	lw	$2,64($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	lw	$5,-140($2)
	lhu	$2,62($fp)
	addiu	$2,$2,1
	andi	$2,$2,0xffff
	seh	$2,$2
	addiu	$8,$fp,140
	lw	$3,36($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	move	$7,$0
	move	$6,$5
	move	$5,$4
	move	$4,$8
	lw	$2,%call16(EccPoint_mult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,60($fp)
	addiu	$3,$fp,140
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_isZero)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L15
	nop

	move	$2,$0
	.option	pic0
	b	$L20
	nop

	.option	pic2
$L15:
	lw	$2,%call16(uECC_get_rng)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L16
	nop

	lb	$2,61($fp)
	addiu	$3,$fp,76
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_clear)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
	sw	$2,76($fp)
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L16:
	lw	$2,36($fp)
	addiu	$2,$2,36
	lb	$3,61($fp)
	addiu	$4,$fp,76
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_generate_random_int)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L17
	nop

	move	$2,$0
	.option	pic0
	b	$L20
	nop

	.option	pic2
$L17:
	lw	$2,36($fp)
	addiu	$3,$2,36
	addiu	$4,$fp,76
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,44($fp)
	lw	$4,44($fp)
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$2,$2,36
	lb	$3,61($fp)
	move	$7,$3
	move	$6,$2
	lw	$5,44($fp)
	lw	$4,44($fp)
	lw	$2,%call16(uECC_vli_modInv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,36
	addiu	$4,$fp,76
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$3
	move	$6,$4
	lw	$5,44($fp)
	lw	$4,44($fp)
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	lb	$2,1($2)
	addiu	$3,$fp,140
	move	$6,$3
	move	$5,$2
	lw	$4,40($fp)
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	lh	$2,2($2)
	addiu	$2,$2,7
	bgez	$2,$L18
	nop

	addiu	$2,$2,7
$L18:
	sra	$2,$2,3
	addiu	$3,$fp,76
	move	$6,$2
	lw	$5,52($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,61($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,208
	addu	$2,$2,$fp
	sw	$0,-100($2)
	lb	$2,60($fp)
	addiu	$4,$fp,140
	addiu	$3,$fp,108
	move	$6,$2
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,36
	addiu	$6,$fp,108
	addiu	$5,$fp,76
	addiu	$4,$fp,108
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$2,$fp,76
	lw	$7,36($fp)
	lw	$6,224($fp)
	lw	$5,48($fp)
	move	$4,$2
	.option	pic0
	jal	bits2int
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,36
	addiu	$6,$fp,108
	addiu	$5,$fp,76
	addiu	$4,$fp,108
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modAdd)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modAdd
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,36($fp)
	addiu	$3,$2,36
	addiu	$5,$fp,108
	addiu	$4,$fp,108
	lb	$2,61($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,44($fp)
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,61($fp)
	addiu	$3,$fp,108
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_numBits)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	lw	$2,36($fp)
	lb	$2,1($2)
	sll	$2,$2,3
	slt	$2,$2,$3
	beq	$2,$0,$L19
	nop

	move	$2,$0
	.option	pic0
	b	$L20
	nop

	.option	pic2
$L19:
	lw	$2,36($fp)
	lb	$2,1($2)
	move	$3,$2
	lw	$2,40($fp)
	addu	$3,$2,$3
	lw	$2,36($fp)
	lb	$2,1($2)
	addiu	$4,$fp,108
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_nativeToBytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
$L20:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,204($fp)
	lw	$2,0($2)
	beq	$3,$2,$L21
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L21:
	move	$2,$4
	move	$sp,$fp
	lw	$31,212($sp)
	lw	$fp,208($sp)
	addiu	$sp,$sp,216
	jr	$31
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
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,176($fp)
	sw	$7,36($fp)
	lw	$2,184($fp)
	sw	$2,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,156($fp)
	sw	$0,52($fp)
	.option	pic0
	b	$L23
	nop

	.option	pic2
$L29:
	lw	$2,%call16(uECC_get_rng)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,56($fp)
	lw	$2,56($fp)
	beq	$2,$0,$L24
	nop

	addiu	$3,$fp,92
	lw	$2,56($fp)
	li	$5,64			# 0x40
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L25
	nop

$L24:
	move	$2,$0
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L25:
	lw	$2,32($fp)
	addiu	$3,$2,36
	lw	$2,32($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L27
	nop

	addiu	$2,$2,31
$L27:
	sra	$2,$2,5
	seb	$2,$2
	addiu	$5,$fp,92
	addiu	$4,$fp,60
	move	$7,$2
	move	$6,$3
	lw	$2,%call16(uECC_vli_mmod)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$3,$fp,60
	lw	$2,32($fp)
	sw	$2,20($sp)
	lw	$2,36($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$6,176($fp)
	lw	$5,40($fp)
	lw	$4,44($fp)
	.option	pic0
	jal	uECC_sign_with_k
	nop

	.option	pic2
	lw	$28,24($fp)
	beq	$2,$0,$L28
	nop

	li	$2,1			# 0x1
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L28:
	lw	$2,52($fp)
	addiu	$2,$2,1
	sw	$2,52($fp)
$L23:
	lw	$2,52($fp)
	sltu	$2,$2,64
	bne	$2,$0,$L29
	nop

	move	$2,$0
$L30:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,156($fp)
	lw	$2,0($2)
	beq	$3,$2,$L31
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L31:
	move	$2,$4
	move	$sp,$fp
	lw	$31,164($sp)
	lw	$fp,160($sp)
	addiu	$sp,$sp,168
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_sign
	.size	uECC_sign, .-uECC_sign
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	smax
	.type	smax, @function
smax:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	sh	$2,8($fp)
	move	$2,$3
	sh	$2,12($fp)
	lhu	$5,8($fp)
	lhu	$2,12($fp)
	seh	$4,$2
	seh	$3,$5
	slt	$3,$4,$3
	beq	$3,$0,$L33
	nop

	move	$2,$5
$L33:
	seh	$2,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	smax
	.size	smax, .-smax
	.align	2
	.globl	uECC_verify
	.set	nomips16
	.set	nomicromips
	.ent	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
	.frame	$fp,552,$31		# vars= 504, regs= 3/0, args= 24, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-552
	sw	$31,548($sp)
	sw	$fp,544($sp)
	sw	$16,540($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,44($fp)
	sw	$5,40($fp)
	sw	$6,560($fp)
	sw	$7,36($fp)
	lw	$2,568($fp)
	sw	$2,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,532($fp)
	lw	$2,32($fp)
	lbu	$2,0($2)
	sb	$2,54($fp)
	lw	$2,32($fp)
	lh	$2,2($2)
	addiu	$2,$2,31
	bgez	$2,$L36
	nop

	addiu	$2,$2,31
$L36:
	sra	$2,$2,5
	sb	$2,55($fp)
	lb	$2,55($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	sw	$0,-356($2)
	lb	$2,55($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	sw	$0,-196($2)
	lb	$2,55($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	sw	$0,-164($2)
	lw	$2,32($fp)
	lb	$2,1($2)
	addiu	$3,$fp,468
	move	$6,$2
	lw	$5,44($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$3,$fp,468
	addu	$3,$3,$2
	lw	$2,32($fp)
	lb	$2,1($2)
	move	$4,$2
	lw	$2,44($fp)
	addu	$4,$2,$4
	lw	$2,32($fp)
	lb	$2,1($2)
	move	$6,$2
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	lb	$2,1($2)
	addiu	$3,$fp,340
	move	$6,$2
	lw	$5,36($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	lb	$2,1($2)
	move	$3,$2
	lw	$2,36($fp)
	addu	$3,$2,$3
	lw	$2,32($fp)
	lb	$2,1($2)
	addiu	$4,$fp,372
	move	$6,$2
	move	$5,$3
	lw	$2,%call16(uECC_vli_bytesToNative)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	addiu	$3,$fp,340
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_isZero)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L37
	nop

	lb	$2,54($fp)
	addiu	$3,$fp,372
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_isZero)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_isZero
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L38
	nop

$L37:
	move	$2,$0
	.option	pic0
	b	$L50
	nop

	.option	pic2
$L38:
	lw	$2,32($fp)
	addiu	$2,$2,36
	lb	$3,55($fp)
	addiu	$4,$fp,340
	move	$6,$3
	move	$5,$4
	move	$4,$2
	lw	$2,%call16(uECC_vli_cmp_unsafe)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L40
	nop

	lw	$2,32($fp)
	addiu	$2,$2,36
	lb	$3,55($fp)
	addiu	$4,$fp,372
	move	$6,$3
	move	$5,$4
	move	$4,$2
	lw	$2,%call16(uECC_vli_cmp_unsafe)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L41
	nop

$L40:
	move	$2,$0
	.option	pic0
	b	$L50
	nop

	.option	pic2
$L41:
	lw	$2,32($fp)
	addiu	$2,$2,36
	lb	$3,55($fp)
	addiu	$5,$fp,372
	addiu	$4,$fp,148
	move	$7,$3
	move	$6,$2
	lw	$2,%call16(uECC_vli_modInv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,55($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	sw	$0,-452($2)
	addiu	$2,$fp,84
	lw	$7,32($fp)
	lw	$6,560($fp)
	lw	$5,40($fp)
	move	$4,$2
	.option	pic0
	jal	bits2int
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,36
	addiu	$6,$fp,148
	addiu	$5,$fp,84
	addiu	$4,$fp,84
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,36
	addiu	$6,$fp,148
	addiu	$5,$fp,340
	addiu	$4,$fp,116
	lb	$2,55($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modMult)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	addiu	$4,$fp,468
	addiu	$3,$fp,404
	move	$6,$2
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$3,$fp,404
	addu	$3,$3,$2
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$4,$fp,468
	addu	$2,$4,$2
	lb	$4,54($fp)
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$2,$2,68
	lb	$3,54($fp)
	addiu	$4,$fp,244
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,68
	lb	$2,54($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lb	$3,54($fp)
	addiu	$4,$fp,276
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$6,$fp,244
	addiu	$5,$fp,404
	addiu	$4,$fp,148
	lb	$2,54($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modSub)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$3,$fp,404
	addu	$3,$3,$2
	addiu	$6,$fp,404
	addiu	$5,$fp,276
	addiu	$4,$fp,244
	lw	$2,32($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(XYcZ_add)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$2,$2,4
	lb	$3,54($fp)
	addiu	$5,$fp,148
	addiu	$4,$fp,148
	move	$7,$3
	move	$6,$2
	lw	$2,%call16(uECC_vli_modInv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	addiu	$3,$fp,404
	addu	$2,$3,$2
	addiu	$4,$fp,148
	addiu	$3,$fp,404
	lw	$7,32($fp)
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(apply_z)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$0,68($fp)
	lw	$2,32($fp)
	addiu	$2,$2,68
	sw	$2,72($fp)
	addiu	$2,$fp,468
	sw	$2,76($fp)
	addiu	$2,$fp,404
	sw	$2,80($fp)
	lb	$2,55($fp)
	addiu	$3,$fp,84
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_numBits)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$16,$2
	lb	$2,55($fp)
	addiu	$3,$fp,116
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_numBits)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_numBits
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$5,$2
	move	$4,$16
	.option	pic0
	jal	smax
	nop

	.option	pic2
	lw	$28,24($fp)
	sh	$2,58($fp)
	lhu	$2,58($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	seh	$2,$2
	addiu	$3,$fp,84
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_testBit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$16,$2
	lhu	$2,58($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	seh	$2,$2
	addiu	$3,$fp,116
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_testBit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L42
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L43
	nop

	.option	pic2
$L42:
	move	$2,$0
$L43:
	or	$2,$2,$16
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	lw	$2,-468($2)
	sw	$2,60($fp)
	lb	$2,54($fp)
	addiu	$3,$fp,180
	move	$6,$2
	lw	$5,60($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	lw	$3,60($fp)
	addu	$2,$3,$2
	lb	$3,54($fp)
	addiu	$4,$fp,212
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	addiu	$3,$fp,148
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_clear)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_clear
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
	sw	$2,148($fp)
	lhu	$2,58($fp)
	addiu	$2,$2,-2
	andi	$2,$2,0xffff
	sh	$2,56($fp)
	.option	pic0
	b	$L44
	nop

	.option	pic2
$L48:
	lw	$2,32($fp)
	lw	$2,164($2)
	addiu	$5,$fp,148
	addiu	$4,$fp,212
	addiu	$3,$fp,180
	lw	$7,32($fp)
	move	$6,$5
	move	$5,$4
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,24($fp)
	lh	$2,56($fp)
	addiu	$3,$fp,84
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_testBit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	move	$16,$2
	lh	$2,56($fp)
	addiu	$3,$fp,116
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(uECC_vli_testBit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_testBit
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L45
	nop

	li	$2,2			# 0x2
	.option	pic0
	b	$L46
	nop

	.option	pic2
$L45:
	move	$2,$0
$L46:
	or	$2,$2,$16
	sw	$2,64($fp)
	lw	$2,64($fp)
	sll	$2,$2,2
	addiu	$2,$2,536
	addu	$2,$2,$fp
	lw	$2,-468($2)
	sw	$2,60($fp)
	lw	$2,60($fp)
	beq	$2,$0,$L47
	nop

	lb	$2,54($fp)
	addiu	$3,$fp,244
	move	$6,$2
	lw	$5,60($fp)
	move	$4,$3
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lb	$2,54($fp)
	sll	$2,$2,2
	lw	$3,60($fp)
	addu	$2,$3,$2
	lb	$3,54($fp)
	addiu	$4,$fp,276
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(uECC_vli_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,148
	addiu	$3,$fp,276
	addiu	$2,$fp,244
	lw	$7,32($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(apply_z)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$3,$2,4
	addiu	$6,$fp,244
	addiu	$5,$fp,180
	addiu	$4,$fp,308
	lb	$2,54($fp)
	sw	$2,16($sp)
	move	$7,$3
	lw	$2,%call16(uECC_vli_modSub)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modSub
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$6,$fp,212
	addiu	$5,$fp,180
	addiu	$4,$fp,276
	addiu	$3,$fp,244
	lw	$2,32($fp)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(XYcZ_add)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,XYcZ_add
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,308
	addiu	$3,$fp,148
	addiu	$2,$fp,148
	lw	$7,32($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(uECC_vli_modMult_fast)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modMult_fast
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L47:
	lhu	$2,56($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	sh	$2,56($fp)
$L44:
	lh	$2,56($fp)
	bgez	$2,$L48
	nop

	lw	$2,32($fp)
	addiu	$2,$2,4
	lb	$3,54($fp)
	addiu	$5,$fp,148
	addiu	$4,$fp,148
	move	$7,$3
	move	$6,$2
	lw	$2,%call16(uECC_vli_modInv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_modInv
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,148
	addiu	$3,$fp,212
	addiu	$2,$fp,180
	lw	$7,32($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(apply_z)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,apply_z
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	addiu	$2,$2,36
	lb	$3,55($fp)
	addiu	$4,$fp,180
	move	$6,$3
	move	$5,$4
	move	$4,$2
	lw	$2,%call16(uECC_vli_cmp_unsafe)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_cmp_unsafe
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L49
	nop

	lw	$2,32($fp)
	addiu	$2,$2,36
	lb	$3,55($fp)
	addiu	$5,$fp,180
	addiu	$4,$fp,180
	move	$7,$3
	move	$6,$2
	lw	$2,%call16(uECC_vli_sub)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_sub
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L49:
	lb	$2,54($fp)
	addiu	$4,$fp,340
	addiu	$3,$fp,180
	move	$6,$2
	move	$5,$4
	move	$4,$3
	lw	$2,%call16(uECC_vli_equal)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,uECC_vli_equal
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
$L50:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,532($fp)
	lw	$2,0($2)
	beq	$3,$2,$L51
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L51:
	move	$2,$4
	move	$sp,$fp
	lw	$31,548($sp)
	lw	$fp,544($sp)
	lw	$16,540($sp)
	addiu	$sp,$sp,552
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_verify
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
