	.file	1 "tinycrypt_aes_decrypt.c"
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
	.ent	add_round_key
	.type	add_round_key, @function
add_round_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($5)
	lbu	$3,0($4)
	xor	$2,$2,$3
	lbu	$3,1($4)
	sb	$2,0($4)
	lhu	$2,0($5)
	xor	$2,$2,$3
	lbu	$3,2($4)
	sb	$2,1($4)
	lw	$2,0($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,3($4)
	sb	$2,2($4)
	lw	$2,0($5)
	xor	$2,$2,$3
	lbu	$3,4($4)
	sb	$2,3($4)
	lbu	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,5($4)
	sb	$2,4($4)
	lhu	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,6($4)
	sb	$2,5($4)
	lw	$2,4($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,7($4)
	sb	$2,6($4)
	lw	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,8($4)
	sb	$2,7($4)
	lbu	$2,8($5)
	xor	$2,$2,$3
	lbu	$3,9($4)
	sb	$2,8($4)
	lhu	$2,8($5)
	xor	$2,$2,$3
	lbu	$3,10($4)
	sb	$2,9($4)
	lw	$2,8($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	sb	$2,10($4)
	lw	$2,8($5)
	lbu	$3,11($4)
	xor	$2,$2,$3
	lbu	$3,12($4)
	sb	$2,11($4)
	lbu	$2,12($5)
	xor	$2,$2,$3
	lbu	$3,13($4)
	sb	$2,12($4)
	lhu	$2,12($5)
	xor	$2,$2,$3
	lbu	$3,14($4)
	sb	$2,13($4)
	lw	$2,12($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,15($4)
	sb	$2,14($4)
	lw	$2,12($5)
	xor	$2,$2,$3
	jr	$31
	sb	$2,15($4)

	.set	macro
	.set	reorder
	.end	add_round_key
	.size	add_round_key, .-add_round_key
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inv_sub_bytes
	.type	inv_sub_bytes, @function
inv_sub_bytes:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(inv_sbox)
	addiu	$5,$4,16
	addiu	$3,$3,%lo(inv_sbox)
$L3:
	lbu	$2,0($4)
	addiu	$4,$4,1
	addu	$2,$2,$3
	lbu	$2,0($2)
	bne	$4,$5,$L3
	sb	$2,-1($4)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	inv_sub_bytes
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inv_shift_rows
	.type	inv_shift_rows, @function
inv_shift_rows:
	.frame	$sp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$7,16			# 0x10
	sw	$16,48($sp)
	addiu	$6,$sp,28
	lw	$16,%got(__stack_chk_guard)($28)
	li	$5,16			# 0x10
	lw	$25,%call16(_copy)($28)
	.cprestore	16
	sw	$31,52($sp)
	lw	$3,0($16)
	sw	$3,44($sp)
	lbu	$3,0($4)
	sb	$3,28($sp)
	lbu	$3,13($4)
	sb	$3,29($sp)
	lbu	$3,10($4)
	sb	$3,30($sp)
	lbu	$3,7($4)
	sb	$3,31($sp)
	lbu	$3,4($4)
	sb	$3,32($sp)
	lbu	$3,1($4)
	sb	$3,33($sp)
	lbu	$3,14($4)
	sb	$3,34($sp)
	lbu	$3,11($4)
	sb	$3,35($sp)
	lbu	$3,8($4)
	sb	$3,36($sp)
	lbu	$3,5($4)
	sb	$3,37($sp)
	lbu	$3,2($4)
	sb	$3,38($sp)
	lbu	$3,15($4)
	sb	$3,39($sp)
	lbu	$3,12($4)
	sb	$3,40($sp)
	lbu	$3,9($4)
	lbu	$2,3($4)
	sb	$3,41($sp)
	sb	$2,43($sp)
	lbu	$3,6($4)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sb	$3,42($sp)

	lw	$3,44($sp)
	lw	$2,0($16)
	beq	$3,$2,$L6
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	lw	$31,52($sp)
	lw	$16,48($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	inv_shift_rows
	.size	inv_shift_rows, .-inv_shift_rows
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	mult_row_column
	.type	mult_row_column, @function
mult_row_column:
	.frame	$sp,72,$31		# vars= 8, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,36($sp)
	move	$17,$4
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$16,32($sp)
	move	$16,$5
	.cprestore	16
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($5)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	move	$22,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	move	$20,$2
	lbu	$3,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lw	$3,28($sp)
	lbu	$2,2($16)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$3,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$3,$3,$4
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	lw	$25,%call16(_double_byte)($28)
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
	sb	$2,0($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$fp,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$18,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$22,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	move	$19,$2
	lbu	$2,2($16)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$3,$3,$4
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	lw	$25,%call16(_double_byte)($28)
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
	sb	$2,1($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$23,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$18,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$22,$2
	lbu	$2,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sw	$3,28($sp)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lbu	$4,3($16)
	lw	$3,28($sp)
	lw	$28,16($sp)
	xor	$3,$3,$4
	xor	$fp,$fp,$3
	xor	$23,$23,$fp
	lw	$25,%call16(_double_byte)($28)
	xor	$22,$22,$23
	xor	$21,$21,$22
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	xor	$2,$2,$18
	sb	$2,2($17)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lw	$28,16($sp)
	move	$20,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$22,0($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,2($16)
	lbu	$2,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$22,$22,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lbu	$3,2($16)
	lw	$28,16($sp)
	lbu	$4,3($16)
	xor	$22,$22,$3
	xor	$21,$21,$22
	lw	$25,%call16(_double_byte)($28)
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$18,$18,$19
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$20,$2,$18

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$20,$20,0x00ff

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$19,$19,$20

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	move	$18,$2
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$18,$18,$19

	xor	$2,$2,$18
	sb	$2,3($17)
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	mult_row_column
	.size	mult_row_column, .-mult_row_column
	.align	2
	.globl	tc_aes128_set_decrypt_key
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(tc_aes128_set_encrypt_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_aes128_set_encrypt_key
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	tc_aes128_set_decrypt_key
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.globl	tc_aes_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
	.frame	$sp,112,$31		# vars= 48, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-112
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,84($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	.cprestore	16
	lw	$2,0($19)
	sw	$2,68($sp)
	beq	$4,$0,$L12
	move	$2,$0

	beq	$5,$0,$L12
	nop

	beq	$6,$0,$L12
	move	$17,$6

	lw	$25,%call16(_copy)($28)
	addiu	$16,$sp,36
	move	$6,$5
	li	$7,16			# 0x10
	li	$5,16			# 0x10
	move	$18,$4
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	addiu	$5,$17,160
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	addiu	$2,$sp,60
	addiu	$21,$17,144
	addiu	$20,$sp,52
	sw	$2,28($sp)
	addiu	$fp,$sp,40
	addiu	$23,$sp,56
	addiu	$22,$sp,44
$L14:
	.option	pic0
	jal	inv_shift_rows
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	inv_sub_bytes
	.option	pic2
	move	$4,$16

	move	$5,$21
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	move	$5,$16
	.option	pic0
	jal	mult_row_column
	.option	pic2
	move	$4,$20

	move	$5,$fp
	.option	pic0
	jal	mult_row_column
	.option	pic2
	move	$4,$23

	move	$5,$22
	lw	$4,28($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	addiu	$21,$21,-16

	addiu	$5,$sp,48
	.option	pic0
	jal	mult_row_column
	.option	pic2
	addiu	$4,$sp,64

	li	$7,16			# 0x10
	lw	$28,16($sp)
	li	$5,16			# 0x10
	move	$6,$20
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	bne	$17,$21,$L14
	nop

	.option	pic0
	jal	inv_shift_rows
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	inv_sub_bytes
	.option	pic2
	move	$4,$16

	move	$5,$17
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	li	$7,16			# 0x10
	lw	$28,16($sp)
	li	$5,16			# 0x10
	move	$6,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$18

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$16

	li	$2,1			# 0x1
	lw	$28,16($sp)
$L12:
	lw	$4,68($sp)
	lw	$3,0($19)
	beq	$4,$3,$L15
	lw	$31,108($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L15:
	lw	$fp,104($sp)
	lw	$23,100($sp)
	lw	$22,96($sp)
	lw	$21,92($sp)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	jr	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	tc_aes_decrypt
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.rdata
	.align	2
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.ascii	"R\011j\32506\2458\277@\243\236\201\363\327\373|\3439\202"
	.ascii	"\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356"
	.ascii	"L\225\013B\372\303N\010.\241f(\331$\262v[\242Im\213\321%"
	.ascii	"r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355"
	.ascii	"\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323"
	.ascii	"\012\367\344X\005\270\263E\006\320,\036\217\312?\017\002"
	.ascii	"\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350"
	.ascii	"\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033"
	.ascii	"\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503"
	.ascii	"\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\015"
	.ascii	"-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353"
	.ascii	"\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\014}"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
