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
	.frame	$sp,144,$31		# vars= 104, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$18,136($sp)
	sw	$17,132($sp)
	sw	$16,128($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$17,$4
	move	$18,$5
	move	$16,$7
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,124($sp)
	addiu	$5,$sp,28
	lwl	$11,0($6)
	lwr	$11,3($6)
	lwl	$10,4($6)
	lwr	$10,7($6)
	lwl	$9,8($6)
	lwr	$9,11($6)
	lwl	$8,12($6)
	lwr	$8,15($6)
	lwl	$7,16($6)
	lwr	$7,19($6)
	lwl	$4,20($6)
	lwr	$4,23($6)
	lwl	$3,24($6)
	lwr	$3,27($6)
	lwl	$2,28($6)
	lwr	$2,31($6)
	sw	$11,28($sp)
	sw	$10,4($5)
	sw	$9,8($5)
	sw	$8,12($5)
	sw	$7,16($5)
	sw	$4,20($5)
	sw	$3,24($5)
	sw	$2,28($5)
	move	$6,$16
	addiu	$4,$sp,60
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	lw	$28,16($sp)
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L7
	move	$2,$0
	.set	macro
	.set	reorder

$L1:
	lw	$4,124($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L8
	lw	$31,140($sp)
	.set	macro
	.set	reorder

	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,144
	.set	macro
	.set	reorder

$L7:
	lh	$5,2($16)
	addiu	$5,$5,7
	bltz	$5,$L9
$L3:
	addiu	$6,$sp,28
	sra	$5,$5,3
	move	$4,$18
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	addiu	$18,$sp,60
	move	$6,$18
	lb	$5,1($16)
	move	$4,$17
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	lb	$5,1($16)
	lb	$6,0($16)
	sll	$6,$6,2
	addu	$6,$18,$6
	addu	$4,$17,$5
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	sw	$0,28($sp)
	addiu	$2,$sp,28
	sw	$0,32($sp)
	sw	$0,36($sp)
	sw	$0,40($sp)
	sw	$0,44($sp)
	sw	$0,48($sp)
	sw	$0,52($sp)
	sw	$0,56($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L1
	.option	pic2
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

$L9:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L3
	.option	pic2
	addiu	$5,$5,7
	.set	macro
	.set	reorder

$L8:
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
	.frame	$sp,232,$31		# vars= 168, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-232
	sw	$31,228($sp)
	sw	$23,224($sp)
	sw	$22,220($sp)
	sw	$21,216($sp)
	sw	$20,212($sp)
	sw	$19,208($sp)
	sw	$18,204($sp)
	sw	$17,200($sp)
	sw	$16,196($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$22,$4
	move	$23,$5
	move	$17,$6
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,188($sp)
	li	$16,64			# 0x40
	addiu	$18,$sp,60
	addiu	$21,$6,36
	addiu	$19,$sp,28
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L15
	.option	pic2
	addiu	$20,$sp,124
	.set	macro
	.set	reorder

$L12:
	sra	$7,$7,5
	seb	$7,$7
	move	$6,$21
	move	$5,$18
	move	$4,$19
	lw	$25,%call16(uECC_vli_mmod)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_mmod
1:	jalr	$25
	lw	$28,16($sp)
	move	$6,$17
	move	$5,$19
	move	$4,$20
	lw	$25,%call16(EccPoint_compute_public_key)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_compute_public_key
1:	jalr	$25
	lw	$28,16($sp)
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L20
	addiu	$16,$16,-1
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$16,$0,$L10
	move	$2,$0
	.set	macro
	.set	reorder

$L15:
	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	lw	$28,16($sp)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L17
	move	$4,$18
	.set	macro
	.set	reorder

	li	$5,64			# 0x40
	move	$25,$2
	jalr	$25
	lw	$28,16($sp)
	beq	$2,$0,$L10
	lh	$7,2($17)
	addiu	$7,$7,31
	bgez	$7,$L12
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L12
	.option	pic2
	addiu	$7,$7,31
	.set	macro
	.set	reorder

$L20:
	lh	$5,2($17)
	addiu	$5,$5,7
	bltz	$5,$L22
$L14:
	addiu	$6,$sp,28
	sra	$5,$5,3
	move	$4,$23
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	addiu	$16,$sp,124
	move	$6,$16
	lb	$5,1($17)
	move	$4,$22
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	lb	$5,1($17)
	lb	$6,0($17)
	sll	$6,$6,2
	addu	$6,$16,$6
	addu	$4,$22,$5
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,16($sp)
	sw	$0,28($sp)
	addiu	$2,$sp,28
	sw	$0,32($sp)
	sw	$0,36($sp)
	sw	$0,40($sp)
	sw	$0,44($sp)
	sw	$0,48($sp)
	sw	$0,52($sp)
	sw	$0,56($sp)
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L10
	.option	pic2
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

$L22:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L14
	.option	pic2
	addiu	$5,$5,7
	.set	macro
	.set	reorder

$L17:
	move	$2,$0
$L10:
	lw	$4,188($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L23
	lw	$31,228($sp)
	.set	macro
	.set	reorder

	lw	$23,224($sp)
	lw	$22,220($sp)
	lw	$21,216($sp)
	lw	$20,212($sp)
	lw	$19,208($sp)
	lw	$18,204($sp)
	lw	$17,200($sp)
	lw	$16,196($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,232
	.set	macro
	.set	reorder

$L23:
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
	.frame	$sp,208,$31		# vars= 144, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-208
	sw	$31,204($sp)
	sw	$22,200($sp)
	sw	$21,196($sp)
	sw	$20,192($sp)
	sw	$19,188($sp)
	sw	$18,184($sp)
	sw	$17,180($sp)
	sw	$16,176($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$22,$4
	move	$19,$6
	move	$16,$7
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,172($sp)
	addiu	$2,$sp,44
	sw	$2,36($sp)
	addiu	$2,$sp,76
	sw	$2,40($sp)
	lb	$21,0($7)
	lh	$6,2($7)
	addiu	$6,$6,7
	.set	noreorder
	.set	nomacro
	bltz	$6,$L31
	lb	$18,1($7)
	.set	macro
	.set	reorder

$L25:
	sra	$6,$6,3
	addiu	$17,$sp,44
	move	$4,$17
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$22
	addiu	$20,$sp,108
	move	$4,$20
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	lw	$28,24($sp)
	sll	$4,$21,2
	move	$6,$18
	addu	$5,$22,$18
	addu	$4,$20,$4
	lw	$25,%call16(uECC_vli_bytesToNative)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_bytesToNative
1:	jalr	$25
	lw	$28,24($sp)
	move	$7,$16
	addiu	$6,$sp,76
	move	$5,$17
	move	$4,$17
	lw	$25,%call16(regularize_k)($28)
	.reloc	1f,R_MIPS_JALR,regularize_k
1:	jalr	$25
	lw	$28,24($sp)
	move	$17,$2
	lw	$25,%call16(uECC_get_rng)($28)
	.reloc	1f,R_MIPS_JALR,uECC_get_rng
1:	jalr	$25
	lw	$28,24($sp)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L29
	sll	$2,$17,2
	.set	macro
	.set	reorder

	addiu	$2,$2,176
	addu	$2,$2,$sp
	move	$6,$21
	addiu	$5,$16,4
	lw	$4,-140($2)
	lw	$25,%call16(uECC_generate_random_int)($28)
	.reloc	1f,R_MIPS_JALR,uECC_generate_random_int
1:	jalr	$25
	lw	$28,24($sp)
	beq	$2,$0,$L27
	sll	$2,$17,2
	addiu	$2,$2,176
	addu	$2,$2,$sp
	lw	$7,-140($2)
$L26:
	sltu	$17,$17,1
	sll	$17,$17,2
	addiu	$2,$17,176
	addu	$17,$2,$sp
	sw	$16,20($sp)
	lhu	$2,2($16)
	addiu	$2,$2,1
	seh	$2,$2
	sw	$2,16($sp)
	lw	$6,-140($17)
	addiu	$17,$sp,108
	move	$5,$17
	move	$4,$17
	lw	$25,%call16(EccPoint_mult)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_mult
1:	jalr	$25
	lw	$28,24($sp)
	move	$6,$17
	move	$5,$18
	move	$4,$19
	lw	$25,%call16(uECC_vli_nativeToBytes)($28)
	.reloc	1f,R_MIPS_JALR,uECC_vli_nativeToBytes
1:	jalr	$25
	lw	$28,24($sp)
	move	$5,$16
	move	$4,$17
	lw	$25,%call16(EccPoint_isZero)($28)
	.reloc	1f,R_MIPS_JALR,EccPoint_isZero
1:	jalr	$25
	lw	$28,24($sp)
	sltu	$2,$2,1
$L27:
	sw	$0,36($sp)
	addiu	$3,$sp,36
	sw	$0,40($sp)
	sw	$0,76($sp)
	addiu	$3,$sp,76
	sw	$0,80($sp)
	sw	$0,84($sp)
	sw	$0,88($sp)
	sw	$0,92($sp)
	sw	$0,96($sp)
	sw	$0,100($sp)
	sw	$0,104($sp)
	sw	$0,44($sp)
	addiu	$3,$sp,44
	sw	$0,48($sp)
	sw	$0,52($sp)
	sw	$0,56($sp)
	sw	$0,60($sp)
	sw	$0,64($sp)
	sw	$0,68($sp)
	sw	$0,72($sp)
	lw	$4,172($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	.set	noreorder
	.set	nomacro
	bne	$4,$3,$L32
	lw	$31,204($sp)
	.set	macro
	.set	reorder

	lw	$22,200($sp)
	lw	$21,196($sp)
	lw	$20,192($sp)
	lw	$19,188($sp)
	lw	$18,184($sp)
	lw	$17,180($sp)
	lw	$16,176($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,208
	.set	macro
	.set	reorder

$L31:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L25
	.option	pic2
	addiu	$6,$6,7
	.set	macro
	.set	reorder

$L29:
	.option	pic0
	.set	noreorder
	.set	nomacro
	b	$L26
	.option	pic2
	move	$7,$0
	.set	macro
	.set	reorder

$L32:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	.end	uECC_shared_secret
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
