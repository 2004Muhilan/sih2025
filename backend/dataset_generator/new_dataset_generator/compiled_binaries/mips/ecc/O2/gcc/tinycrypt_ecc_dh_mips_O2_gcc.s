	.file	1 "tinycrypt_ecc_dh.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	uECC_make_key_with_d
	.set	nomips16
	.set	nomicromips
	.ent	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
	.frame	$sp,160,$31		# vars= 104, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-160
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$2,$6
	sw	$16,132($sp)
	addiu	$16,$sp,28
	.cprestore	16
	sw	$31,156($sp)
	sw	$21,152($sp)
	sw	$20,148($sp)
	addiu	$20,$sp,60
	sw	$19,144($sp)
	move	$19,$5
	sw	$18,140($sp)
	move	$5,$16
	sw	$17,136($sp)
	move	$17,$7
	lw	$21,%got(__stack_chk_guard)($28)
	move	$18,$4
	lwl	$13,0($6)
	move	$4,$20
	lwl	$12,4($6)
	lwl	$11,8($6)
	lwl	$9,16($6)
	lwl	$8,20($6)
	lwl	$3,28($2)
	lwl	$10,12($6)
	move	$6,$7
	lwl	$7,24($2)
	lw	$14,0($21)
	lwr	$13,3($2)
	lwr	$12,7($2)
	lwr	$11,11($2)
	lwr	$10,15($2)
	lwr	$9,19($2)
	lwr	$8,23($2)
	lwr	$7,27($2)
	lwr	$3,31($2)
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	sw	$13,28($sp)
	sw	$14,124($sp)
	sw	$12,4($16)
	sw	$11,8($16)
	sw	$10,12($16)
	sw	$9,16($16)
	sw	$8,20($16)
	sw	$7,24($16)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	sw	$3,28($16)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L8
	lw	$28,16($sp)
	.set	macro
	.set	reorder

	move	$2,$0
$L1:
	lw	$4,124($sp)
	lw	$3,0($21)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L9
	lw	$31,156($sp)
	.set	macro
	.set	reorder

	lw	$21,152($sp)
	lw	$20,148($sp)
	lw	$19,144($sp)
	lw	$18,140($sp)
	lw	$17,136($sp)
	lw	$16,132($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,160
	.set	macro
	.set	reorder

$L8:
	lh	$2,2($17)
	addiu	$5,$2,7
	bltz	$5,$L10
$L3:
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	sra	$5,$5,3
	move	$6,$16
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	move	$4,$19
	.set	macro
	.set	reorder

	move	$6,$20
	lw	$28,16($sp)
	move	$4,$18
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lb	$5,1($17)
	.set	macro
	.set	reorder

	lw	$28,16($sp)
	lb	$6,0($17)
	lb	$5,1($17)
	sll	$6,$6,2
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addu	$4,$18,$5
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	addu	$6,$20,$6
	.set	macro
	.set	reorder

	lw	$28,16($sp)
	sw	$0,28($sp)
	sw	$0,4($16)
	sw	$0,8($16)
	sw	$0,12($16)
	sw	$0,16($16)
	sw	$0,20($16)
	sw	$0,24($16)
	sw	$0,28($16)
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L1
	.option	pic2
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

$L10:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L3
	.option	pic2
	addiu	$5,$2,14
	.set	macro
	.set	reorder

$L9:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	.end	uECC_make_key_with_d
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	2
	.globl	uECC_make_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
	.frame	$sp,232,$31		# vars= 168, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-232
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,220($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	sw	$fp,224($sp)
	addiu	$fp,$sp,60
	sw	$22,216($sp)
	move	$22,$5
	sw	$21,212($sp)
	move	$21,$4
	sw	$20,208($sp)
	addiu	$20,$6,36
	sw	$19,204($sp)
	addiu	$19,$sp,124
	sw	$18,200($sp)
	addiu	$18,$sp,28
	sw	$17,196($sp)
	move	$17,$6
	sw	$16,192($sp)
	li	$16,64			# 0x40
	sw	$31,228($sp)
	.cprestore	16
	lw	$2,0($23)
	sw	$2,188($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L31
	.option	pic2
	lw	$25,%call16(uECC_get_rng)($28)
	.set	macro
	.set	reorder

$L28:
	li	$5,64			# 0x40
	move	$25,$2
	.set	noreorder
	.set	nomacro
	jalr	$25
	move	$4,$fp
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L12
	lw	$28,16($sp)
	.set	macro
	.set	reorder

	lh	$2,2($17)
	addiu	$7,$2,31
	.set	noreorder
	.set	nomacro
	bgez	$7,$L32
	lw	$25,%call16(uECC_vli_mmod)($28)
	.set	macro
	.set	reorder

	addiu	$7,$2,62
$L32:
	sra	$7,$7,5
	move	$6,$20
	move	$5,$fp
	move	$4,$18
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	seb	$7,$7
	.set	macro
	.set	reorder

	move	$6,$17
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L27
	lw	$28,16($sp)
	.set	macro
	.set	reorder

	addiu	$16,$16,-1
	.set	noreorder
	.set	nomacro
	beq	$16,$0,$L12
	lw	$25,%call16(uECC_get_rng)($28)
	.set	macro
	.set	reorder

$L31:
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L28
	lw	$28,16($sp)
	.set	macro
	.set	reorder

$L12:
	move	$2,$0
$L11:
	lw	$4,188($sp)
	lw	$3,0($23)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L29
	lw	$31,228($sp)
	.set	macro
	.set	reorder

	lw	$fp,224($sp)
	lw	$23,220($sp)
	lw	$22,216($sp)
	lw	$21,212($sp)
	lw	$20,208($sp)
	lw	$19,204($sp)
	lw	$18,200($sp)
	lw	$17,196($sp)
	lw	$16,192($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,232
	.set	macro
	.set	reorder

$L27:
	lh	$2,2($17)
	addiu	$5,$2,7
	bltz	$5,$L30
$L15:
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	sra	$5,$5,3
	move	$6,$18
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	move	$4,$22
	.set	macro
	.set	reorder

	move	$6,$19
	lw	$28,16($sp)
	move	$4,$21
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lb	$5,1($17)
	.set	macro
	.set	reorder

	lw	$28,16($sp)
	lb	$6,0($17)
	lb	$5,1($17)
	sll	$6,$6,2
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	addu	$4,$21,$5
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	addu	$6,$19,$6
	.set	macro
	.set	reorder

	lw	$28,16($sp)
	sw	$0,28($sp)
	sw	$0,4($18)
	sw	$0,8($18)
	sw	$0,12($18)
	sw	$0,16($18)
	sw	$0,20($18)
	sw	$0,24($18)
	sw	$0,28($18)
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L11
	.option	pic2
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

$L30:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L15
	.option	pic2
	addiu	$5,$2,14
	.set	macro
	.set	reorder

$L29:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	.end	uECC_make_key
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.globl	uECC_shared_secret
	.set	nomips16
	.set	nomicromips
	.ent	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
	.frame	$sp,224,$31		# vars= 152, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-224
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,212($sp)
	sw	$22,208($sp)
	move	$22,$7
	lw	$23,%got(__stack_chk_guard)($28)
	lh	$7,2($7)
	sw	$17,188($sp)
	addiu	$17,$sp,84
	sw	$16,184($sp)
	addiu	$16,$sp,52
	sw	$18,192($sp)
	addiu	$2,$7,7
	sw	$31,220($sp)
	move	$18,$4
	sw	$fp,216($sp)
	sw	$21,204($sp)
	sw	$20,200($sp)
	sw	$19,196($sp)
	.cprestore	24
	sw	$16,44($sp)
	sw	$17,48($sp)
	sw	$6,36($sp)
	lw	$8,0($23)
	lb	$fp,0($22)
	lb	$20,1($22)
	sw	$8,180($sp)
	.set	noreorder
	.set	nomacro
	bgez	$2,$L44
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.set	macro
	.set	reorder

	addiu	$2,$7,14
$L44:
	sra	$6,$2,3
	move	$4,$16
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	addiu	$19,$sp,116
	.set	macro
	.set	reorder

	move	$5,$18
	lw	$28,24($sp)
	move	$6,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$4,$19
	.set	macro
	.set	reorder

	sll	$4,$fp,2
	lw	$28,24($sp)
	addu	$5,$18,$20
	addu	$4,$19,$4
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	move	$6,$20
	.set	macro
	.set	reorder

	move	$7,$22
	lw	$28,24($sp)
	move	$6,$17
	move	$5,$16
	lw	$25,%call16(regularize_k)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	move	$4,$16
	.set	macro
	.set	reorder

	lw	$28,24($sp)
	lw	$25,%call16(uECC_get_rng)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	move	$18,$2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L38
	lw	$28,24($sp)
	.set	macro
	.set	reorder

	sll	$21,$18,2
	lw	$25,%call16(uECC_generate_random_int)($28)
	addiu	$3,$sp,8
	addiu	$2,$21,176
	addiu	$5,$22,4
	addu	$21,$2,$3
	move	$6,$fp
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	lw	$4,-140($21)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L36
	lw	$28,24($sp)
	.set	macro
	.set	reorder

	lw	$7,-140($21)
$L35:
	sltu	$18,$18,1
	lhu	$2,2($22)
	sll	$18,$18,2
	lw	$25,%call16(EccPoint_mult)($28)
	addiu	$4,$sp,8
	sw	$22,20($sp)
	addiu	$3,$18,176
	addiu	$2,$2,1
	addu	$18,$3,$4
	seh	$2,$2
	move	$5,$19
	lw	$6,-140($18)
	move	$4,$19
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	sw	$2,16($sp)
	.set	macro
	.set	reorder

	move	$5,$20
	lw	$28,24($sp)
	move	$6,$19
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$4,36($sp)
	.set	macro
	.set	reorder

	move	$5,$22
	lw	$28,24($sp)
	lw	$25,%call16(EccPoint_isZero)($28)
	.set	noreorder
	.set	nomacro
	.reloc	1f,R_MIPS_JALR,EccPoint_isZero
1:	jalr	$25
	move	$4,$19
	.set	macro
	.set	reorder

	lw	$28,24($sp)
	sltu	$2,$2,1
$L36:
	addiu	$3,$sp,44
	sw	$0,44($sp)
	sw	$0,48($sp)
	sw	$0,84($sp)
	sw	$0,4($17)
	sw	$0,8($17)
	sw	$0,12($17)
	sw	$0,16($17)
	sw	$0,20($17)
	sw	$0,24($17)
	sw	$0,28($17)
	sw	$0,52($sp)
	sw	$0,4($16)
	sw	$0,8($16)
	sw	$0,12($16)
	sw	$0,16($16)
	sw	$0,20($16)
	sw	$0,24($16)
	sw	$0,28($16)
	lw	$4,180($sp)
	lw	$3,0($23)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L43
	lw	$31,220($sp)
	.set	macro
	.set	reorder

	lw	$fp,216($sp)
	lw	$23,212($sp)
	lw	$22,208($sp)
	lw	$21,204($sp)
	lw	$20,200($sp)
	lw	$19,196($sp)
	lw	$18,192($sp)
	lw	$17,188($sp)
	lw	$16,184($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,224
	.set	macro
	.set	reorder

$L38:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L35
	.option	pic2
	move	$7,$0
	.set	macro
	.set	reorder

$L43:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	.end	uECC_shared_secret
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
