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
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	move	$17,$4
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
	lbu	$5,2($16)
	lw	$3,28($sp)
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$3,$5
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
	move	$23,$2
	lbu	$4,1($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$fp,0($16)

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
	move	$21,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lw	$28,16($sp)
	move	$20,$2
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
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lw	$28,16($sp)
	lbu	$5,2($16)
	lbu	$4,3($16)
	sw	$2,28($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$fp,$5

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
	xor	$fp,$fp,$4
	xor	$23,$23,$fp
	xor	$22,$22,$23
	xor	$21,$21,$22
	lw	$25,%call16(_double_byte)($28)
	xor	$20,$20,$21
	xor	$19,$19,$20
	xor	$3,$3,$19
	xor	$18,$18,$3
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
	lbu	$5,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$5
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
	lbu	$3,1($16)
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$22,$22,$3

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
	xor	$19,$2,$18

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$19,$19,0x00ff

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

	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	move	$4,$2

	lw	$28,16($sp)
	lbu	$4,3($16)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$16,$18

	xor	$2,$2,$16
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
	.frame	$sp,136,$31		# vars= 72, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-136
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,132($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$fp,128($sp)
	sw	$23,124($sp)
	sw	$22,120($sp)
	sw	$21,116($sp)
	sw	$20,112($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	sw	$16,96($sp)
	.cprestore	16
	sw	$2,48($sp)
	sw	$4,52($sp)
	lw	$3,0($2)
	sw	$3,92($sp)
	beq	$4,$0,$L15
	nop

	beq	$5,$0,$L15
	move	$2,$5

	beq	$6,$0,$L15
	move	$20,$6

	lw	$25,%call16(_copy)($28)
	addiu	$19,$sp,60
	li	$7,16			# 0x10
	li	$5,16			# 0x10
	move	$6,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$19

	lui	$17,%hi(inv_sbox)
	lw	$10,160($20)
	addiu	$18,$20,144
	lw	$2,168($20)
	addiu	$16,$sp,76
	lw	$7,172($20)
	addiu	$17,$17,%lo(inv_sbox)
	srl	$31,$10,24
	lbu	$4,70($sp)
	lbu	$fp,71($sp)
	srl	$11,$2,8
	lbu	$5,69($sp)
	srl	$12,$2,16
	lw	$3,164($20)
	xor	$11,$11,$4
	lbu	$21,61($sp)
	srl	$4,$7,16
	sw	$31,24($sp)
	srl	$31,$2,24
	sb	$fp,36($sp)
	xor	$12,$12,$5
	sw	$31,32($sp)
	srl	$23,$3,24
	lbu	$31,73($sp)
	srl	$24,$10,16
	lw	$5,36($sp)
	srl	$13,$3,8
	lbu	$8,66($sp)
	xor	$24,$24,$21
	lbu	$fp,60($sp)
	xor	$31,$4,$31
	lw	$4,24($sp)
	xor	$2,$2,$5
	lbu	$22,62($sp)
	srl	$15,$10,8
	lbu	$9,65($sp)
	srl	$14,$3,16
	lbu	$25,63($sp)
	xor	$13,$13,$8
	lbu	$21,72($sp)
	xor	$fp,$4,$fp
	lbu	$6,67($sp)
	andi	$8,$2,0x00ff
	sw	$23,28($sp)
	srl	$2,$7,24
	sb	$fp,60($sp)
	xor	$15,$15,$22
	lbu	$23,64($sp)
	xor	$14,$14,$9
	lw	$4,28($sp)
	xor	$21,$2,$21
	xor	$10,$10,$25
	lbu	$22,68($sp)
	addiu	$2,$sp,64
	lw	$28,16($sp)
	xor	$3,$3,$6
	xor	$23,$4,$23
	andi	$24,$24,0x00ff
	sb	$23,64($sp)
	andi	$15,$15,0x00ff
	sb	$24,61($sp)
	andi	$10,$10,0x00ff
	sb	$15,62($sp)
	andi	$14,$14,0x00ff
	sb	$10,63($sp)
	andi	$13,$13,0x00ff
	sb	$14,65($sp)
	andi	$9,$3,0x00ff
	sb	$13,66($sp)
	sw	$2,24($sp)
	addiu	$4,$sp,80
	lw	$3,32($sp)
	andi	$12,$12,0x00ff
	lbu	$2,75($sp)
	andi	$11,$11,0x00ff
	lbu	$6,74($sp)
	andi	$31,$31,0x00ff
	xor	$22,$3,$22
	sw	$4,36($sp)
	srl	$3,$7,8
	sb	$9,67($sp)
	xor	$7,$7,$2
	sb	$22,68($sp)
	addiu	$2,$sp,84
	sb	$12,69($sp)
	addiu	$4,$sp,68
	sb	$11,70($sp)
	sw	$2,40($sp)
	addiu	$2,$sp,72
	xor	$6,$3,$6
	sb	$8,71($sp)
	sw	$2,32($sp)
	addiu	$2,$sp,88
	andi	$6,$6,0x00ff
	sb	$21,72($sp)
	andi	$7,$7,0x00ff
	sb	$31,73($sp)
	sw	$4,28($sp)
	sb	$6,74($sp)
	sb	$7,75($sp)
	sw	$2,44($sp)
$L10:
	move	$5,$0
	lw	$25,%call16(_copy)($28)
	move	$4,$0
	move	$3,$0
	move	$2,$0
	ins	$5,$fp,0,8
	ins	$2,$21,0,8
	ins	$4,$23,0,8
	ins	$3,$22,0,8
	ins	$5,$31,8,8
	ins	$4,$24,8,8
	ins	$3,$14,8,8
	ins	$2,$12,8,8
	ins	$5,$11,16,8
	ins	$4,$6,16,8
	ins	$3,$15,16,8
	ins	$2,$13,16,8
	ins	$5,$9,24,8
	ins	$4,$8,24,8
	ins	$3,$7,24,8
	sw	$5,76($sp)
	ins	$2,$10,24,8
	sw	$4,80($sp)
	li	$7,16			# 0x10
	sw	$3,84($sp)
	li	$5,16			# 0x10
	sw	$2,88($sp)
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$19

	move	$21,$19
	move	$2,$19
$L8:
	lbu	$3,0($2)
	addiu	$2,$2,1
	addu	$3,$17,$3
	lbu	$3,0($3)
	bne	$16,$2,$L8
	sb	$3,-1($2)

	lw	$7,4($18)
	addiu	$18,$18,-16
	lw	$2,16($18)
	move	$5,$19
	lw	$6,24($18)
	move	$4,$16
	wsbh	$7,$7
	lw	$8,64($sp)
	wsbh	$2,$2
	ror	$7,$7,16
	wsbh	$6,$6
	lw	$3,28($18)
	xor	$7,$7,$8
	lw	$8,68($sp)
	ror	$6,$6,16
	sw	$7,64($sp)
	wsbh	$3,$3
	lw	$7,72($sp)
	xor	$6,$6,$8
	sw	$6,68($sp)
	ror	$2,$2,16
	lw	$6,60($sp)
	ror	$3,$3,16
	xor	$3,$3,$7
	xor	$2,$2,$6
	sw	$3,72($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	sw	$2,60($sp)

	lw	$5,24($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,36($sp)

	lw	$5,28($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,40($sp)

	lw	$5,32($sp)
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,44($sp)

	li	$7,16			# 0x10
	lw	$28,16($sp)
	li	$5,16			# 0x10
	move	$6,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$19

	beq	$20,$18,$L9
	lw	$28,16($sp)

	lbu	$fp,60($sp)
	lbu	$31,73($sp)
	lbu	$11,70($sp)
	lbu	$9,67($sp)
	lbu	$23,64($sp)
	lbu	$24,61($sp)
	lbu	$6,74($sp)
	lbu	$8,71($sp)
	lbu	$22,68($sp)
	lbu	$14,65($sp)
	lbu	$15,62($sp)
	lbu	$7,75($sp)
	lbu	$21,72($sp)
	lbu	$12,69($sp)
	lbu	$13,66($sp)
	.option	pic0
	b	$L10
	.option	pic2
	lbu	$10,63($sp)

$L15:
	move	$2,$0
$L6:
	lw	$3,48($sp)
	lw	$4,92($sp)
	lw	$3,0($3)
	bne	$4,$3,$L19
	lw	$31,132($sp)

	lw	$fp,128($sp)
	lw	$23,124($sp)
	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,136

$L9:
	lbu	$6,64($sp)
	move	$5,$0
	lbu	$10,68($sp)
	move	$4,$0
	lbu	$9,72($sp)
	move	$3,$0
	lbu	$8,60($sp)
	ins	$5,$6,0,8
	lbu	$7,61($sp)
	ins	$4,$10,0,8
	lbu	$6,65($sp)
	move	$2,$0
	lbu	$10,69($sp)
	ins	$3,$9,0,8
	lbu	$9,73($sp)
	ins	$2,$8,0,8
	ins	$5,$7,8,8
	lbu	$8,74($sp)
	lbu	$7,62($sp)
	ins	$4,$6,8,8
	lbu	$6,66($sp)
	ins	$3,$10,8,8
	lbu	$10,70($sp)
	ins	$2,$9,8,8
	lbu	$9,71($sp)
	ins	$5,$8,16,8
	ins	$4,$7,16,8
	lbu	$8,75($sp)
	lbu	$7,63($sp)
	ins	$3,$6,16,8
	lbu	$6,67($sp)
	ins	$2,$10,16,8
	ins	$5,$9,24,8
	lw	$25,%call16(_copy)($28)
	ins	$4,$8,24,8
	ins	$3,$7,24,8
	sw	$5,80($sp)
	ins	$2,$6,24,8
	sw	$4,84($sp)
	li	$7,16			# 0x10
	sw	$3,88($sp)
	li	$5,16			# 0x10
	sw	$2,76($sp)
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$19

	lw	$28,16($sp)
$L11:
	lbu	$2,0($21)
	addiu	$21,$21,1
	addu	$2,$17,$2
	lbu	$2,0($2)
	bne	$16,$21,$L11
	sb	$2,-1($21)

	lw	$9,4($20)
	li	$7,16			# 0x10
	lw	$8,8($20)
	li	$5,16			# 0x10
	lw	$10,64($sp)
	move	$6,$19
	wsbh	$9,$9
	lw	$2,0($20)
	wsbh	$8,$8
	lw	$3,12($20)
	ror	$9,$9,16
	lw	$25,%call16(_copy)($28)
	ror	$8,$8,16
	lw	$4,52($sp)
	xor	$9,$9,$10
	lw	$10,68($sp)
	wsbh	$2,$2
	sw	$9,64($sp)
	wsbh	$3,$3
	lw	$9,72($sp)
	xor	$8,$8,$10
	sw	$8,68($sp)
	ror	$2,$2,16
	lw	$8,60($sp)
	ror	$3,$3,16
	xor	$3,$3,$9
	xor	$2,$2,$8
	sw	$3,72($sp)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sw	$2,60($sp)

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$19

	li	$2,1			# 0x1
	.option	pic0
	b	$L6
	.option	pic2
	lw	$28,16($sp)

$L19:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

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
