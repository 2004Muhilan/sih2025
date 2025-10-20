	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.p2align	2
	.type	tc_aes128_set_encrypt_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_aes128_set_encrypt_key
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$6, $2, $25
	beqz	$4, $BB0_9
	addiu	$2, $zero, 0
# %bb.1:
	beqz	$5, $BB0_9
	nop
# %bb.2:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 16
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lwl	$7, 0($1)
	lwr	$7, 3($1)
	addu	$1, $4, $2
	addiu	$2, $2, 4
	bne	$2, $3, $BB0_3
	sw	$7, 0($1)
# %bb.4:
	addiu	$2, $4, 16
	lw	$7, 12($4)
	addiu	$3, $zero, 4
	lw	$1, %got(sbox)($6)
	addiu	$4, $1, %lo(sbox)
	lw	$1, %got($__const.tc_aes128_set_encrypt_key.rconst)($6)
	addiu	$5, $1, %lo($__const.tc_aes128_set_encrypt_key.rconst)
	addiu	$6, $zero, 44
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	andi	$1, $3, 3
	bnez	$1, $BB0_7
	nop
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	rotr	$1, $7, 24
	srl	$7, $1, 24
	addu	$7, $4, $7
	lbu	$7, 0($7)
	sll	$7, $7, 24
	ext	$8, $1, 16, 8
	addu	$8, $4, $8
	lbu	$8, 0($8)
	sll	$8, $8, 16
	or	$7, $8, $7
	ext	$8, $1, 8, 8
	addu	$8, $4, $8
	lbu	$8, 0($8)
	sll	$8, $8, 8
	or	$7, $7, $8
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$1, 0($1)
	or	$1, $7, $1
	addu	$7, $5, $3
	lw	$7, 0($7)
	xor	$7, $1, $7
$BB0_7:                                 #   in Loop: Header=BB0_5 Depth=1
	lw	$1, -16($2)
	xor	$7, $1, $7
	sw	$7, 0($2)
	addiu	$3, $3, 1
	bne	$3, $6, $BB0_5
	addiu	$2, $2, 4
# %bb.8:
	addiu	$2, $zero, 1
$BB0_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes128_set_encrypt_key
$func_end0:
	.size	tc_aes128_set_encrypt_key, ($func_end0)-tc_aes128_set_encrypt_key
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_aes_encrypt
tc_aes_encrypt:                         # @tc_aes_encrypt
	.frame	$sp,96,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$fp, 88($sp)                    # 4-byte Folded Spill
	sw	$23, 84($sp)                    # 4-byte Folded Spill
	sw	$22, 80($sp)                    # 4-byte Folded Spill
	sw	$21, 76($sp)                    # 4-byte Folded Spill
	sw	$20, 72($sp)                    # 4-byte Folded Spill
	sw	$19, 68($sp)                    # 4-byte Folded Spill
	sw	$18, 64($sp)                    # 4-byte Folded Spill
	sw	$17, 60($sp)                    # 4-byte Folded Spill
	sw	$16, 56($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	beqz	$4, $BB1_10
	addiu	$2, $zero, 0
# %bb.1:
	move	$18, $6
	beqz	$5, $BB1_10
	move	$6, $5
# %bb.2:
	beqz	$18, $BB1_10
	nop
# %bb.3:
	sw	$4, 20($sp)                     # 4-byte Folded Spill
	addiu	$19, $sp, 24
	addiu	$22, $zero, 16
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	addiu	$7, $zero, 16
	.reloc ($tmp0), R_MIPS_JALR, _copy
$tmp0:
	jalr	$25
	move	$gp, $16
	lw	$1, 0($18)
	srl	$2, $1, 24
	srl	$3, $1, 16
	lbu	$4, 24($sp)
	lbu	$5, 25($sp)
	xor	$3, $5, $3
	xor	$2, $4, $2
	lbu	$4, 27($sp)
	xor	$4, $4, $1
	sb	$4, 27($sp)
	sb	$2, 24($sp)
	sb	$3, 25($sp)
	srl	$1, $1, 8
	lbu	$2, 26($sp)
	xor	$1, $2, $1
	sb	$1, 26($sp)
	addiu	$23, $zero, 0
	lw	$1, 4($18)
	lbu	$2, 31($sp)
	lbu	$3, 29($sp)
	srl	$4, $1, 16
	xor	$3, $3, $4
	xor	$2, $2, $1
	srl	$4, $1, 8
	sb	$2, 31($sp)
	lbu	$2, 28($sp)
	lbu	$5, 30($sp)
	sb	$3, 29($sp)
	xor	$3, $5, $4
	sb	$3, 30($sp)
	srl	$1, $1, 24
	xor	$1, $2, $1
	sb	$1, 28($sp)
	lw	$1, 8($18)
	srl	$2, $1, 24
	lbu	$3, 32($sp)
	xor	$2, $3, $2
	sb	$2, 32($sp)
	srl	$2, $1, 16
	lbu	$3, 33($sp)
	xor	$2, $3, $2
	sb	$2, 33($sp)
	srl	$2, $1, 8
	lbu	$3, 34($sp)
	xor	$2, $3, $2
	sb	$2, 34($sp)
	lbu	$2, 35($sp)
	xor	$1, $2, $1
	sb	$1, 35($sp)
	lw	$1, 12($18)
	srl	$2, $1, 24
	lbu	$3, 36($sp)
	xor	$2, $3, $2
	sb	$2, 36($sp)
	srl	$2, $1, 16
	lbu	$3, 37($sp)
	xor	$2, $3, $2
	sb	$2, 37($sp)
	srl	$2, $1, 8
	lbu	$3, 38($sp)
	xor	$2, $3, $2
	sb	$2, 38($sp)
	lbu	$2, 39($sp)
	xor	$1, $2, $1
	sb	$1, 39($sp)
	lw	$1, %got(sbox)($16)
	sw	$1, 16($sp)                     # 4-byte Folded Spill
	addiu	$fp, $1, %lo(sbox)
	addiu	$20, $sp, 40
$BB1_4:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	addiu	$2, $zero, 0
$BB1_5:                                 #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $19, $2
	lbu	$3, 0($1)
	addu	$3, $fp, $3
	lbu	$3, 0($3)
	addiu	$2, $2, 1
	bne	$2, $22, $BB1_5
	sb	$3, 0($1)
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	lbu	$1, 33($sp)
	lbu	$2, 28($sp)
	lbu	$3, 39($sp)
	lbu	$4, 34($sp)
	lbu	$5, 29($sp)
	lbu	$6, 24($sp)
	sb	$6, 40($sp)
	sb	$5, 41($sp)
	sb	$4, 42($sp)
	sb	$3, 43($sp)
	sb	$2, 44($sp)
	sb	$1, 45($sp)
	lbu	$1, 38($sp)
	sb	$1, 46($sp)
	lbu	$1, 27($sp)
	sb	$1, 47($sp)
	lbu	$1, 32($sp)
	sb	$1, 48($sp)
	lbu	$1, 36($sp)
	lbu	$2, 31($sp)
	lbu	$3, 26($sp)
	lbu	$4, 37($sp)
	sb	$4, 49($sp)
	sb	$3, 50($sp)
	sb	$2, 51($sp)
	sb	$1, 52($sp)
	lbu	$1, 25($sp)
	sb	$1, 53($sp)
	lbu	$1, 30($sp)
	sb	$1, 54($sp)
	lbu	$1, 35($sp)
	sb	$1, 55($sp)
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	move	$6, $20
	.reloc ($tmp1), R_MIPS_JALR, _copy
$tmp1:
	jalr	$25
	addiu	$7, $zero, 16
	lbu	$4, 24($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp2), R_MIPS_JALR, _double_byte
$tmp2:
	jalr	$25
	move	$gp, $16
	lbu	$4, 25($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp3), R_MIPS_JALR, _double_byte
$tmp3:
	jalr	$25
	move	$21, $2
	xor	$1, $2, $21
	lbu	$2, 26($sp)
	xor	$1, $1, $2
	lbu	$2, 27($sp)
	xor	$1, $1, $2
	lbu	$4, 25($sp)
	xor	$1, $1, $4
	sb	$1, 40($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp4), R_MIPS_JALR, _double_byte
$tmp4:
	jalr	$25
	lbu	$17, 24($sp)
	lbu	$4, 26($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp5), R_MIPS_JALR, _double_byte
$tmp5:
	jalr	$25
	move	$21, $2
	xor	$1, $21, $17
	xor	$1, $1, $2
	lbu	$2, 27($sp)
	xor	$1, $1, $2
	lbu	$4, 26($sp)
	xor	$1, $1, $4
	sb	$1, 41($sp)
	lbu	$21, 25($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp6), R_MIPS_JALR, _double_byte
$tmp6:
	jalr	$25
	lbu	$17, 24($sp)
	xor	$1, $21, $17
	lbu	$4, 27($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp7), R_MIPS_JALR, _double_byte
$tmp7:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	lbu	$2, 27($sp)
	xor	$1, $1, $2
	sb	$1, 42($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp8), R_MIPS_JALR, _double_byte
$tmp8:
	jalr	$25
	lbu	$4, 24($sp)
	lbu	$1, 24($sp)
	xor	$1, $1, $2
	lbu	$2, 25($sp)
	xor	$1, $1, $2
	lbu	$2, 26($sp)
	lbu	$4, 27($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp9), R_MIPS_JALR, _double_byte
$tmp9:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	sb	$1, 43($sp)
	lbu	$4, 28($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp10), R_MIPS_JALR, _double_byte
$tmp10:
	jalr	$25
	nop
	lbu	$4, 29($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp11), R_MIPS_JALR, _double_byte
$tmp11:
	jalr	$25
	move	$21, $2
	xor	$1, $2, $21
	lbu	$2, 30($sp)
	xor	$1, $1, $2
	lbu	$2, 31($sp)
	xor	$1, $1, $2
	lbu	$4, 29($sp)
	xor	$1, $1, $4
	sb	$1, 44($sp)
	lbu	$17, 28($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp12), R_MIPS_JALR, _double_byte
$tmp12:
	jalr	$25
	nop
	lbu	$4, 30($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp13), R_MIPS_JALR, _double_byte
$tmp13:
	jalr	$25
	move	$21, $2
	xor	$1, $21, $17
	xor	$1, $1, $2
	lbu	$2, 31($sp)
	xor	$1, $1, $2
	lbu	$4, 30($sp)
	xor	$1, $1, $4
	sb	$1, 45($sp)
	lbu	$17, 28($sp)
	lbu	$21, 29($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp14), R_MIPS_JALR, _double_byte
$tmp14:
	jalr	$25
	nop
	xor	$1, $21, $17
	lbu	$4, 31($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp15), R_MIPS_JALR, _double_byte
$tmp15:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	lbu	$2, 31($sp)
	xor	$1, $1, $2
	sb	$1, 46($sp)
	lbu	$4, 28($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp16), R_MIPS_JALR, _double_byte
$tmp16:
	jalr	$25
	nop
	lbu	$1, 28($sp)
	xor	$1, $1, $2
	lbu	$2, 29($sp)
	xor	$1, $1, $2
	lbu	$2, 30($sp)
	lbu	$4, 31($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp17), R_MIPS_JALR, _double_byte
$tmp17:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	sb	$1, 47($sp)
	lbu	$4, 32($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp18), R_MIPS_JALR, _double_byte
$tmp18:
	jalr	$25
	nop
	lbu	$4, 33($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp19), R_MIPS_JALR, _double_byte
$tmp19:
	jalr	$25
	move	$21, $2
	xor	$1, $2, $21
	lbu	$2, 34($sp)
	xor	$1, $1, $2
	lbu	$2, 35($sp)
	xor	$1, $1, $2
	lbu	$4, 33($sp)
	xor	$1, $1, $4
	sb	$1, 48($sp)
	lbu	$17, 32($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp20), R_MIPS_JALR, _double_byte
$tmp20:
	jalr	$25
	nop
	lbu	$4, 34($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp21), R_MIPS_JALR, _double_byte
$tmp21:
	jalr	$25
	move	$21, $2
	xor	$1, $21, $17
	xor	$1, $1, $2
	lbu	$2, 35($sp)
	xor	$1, $1, $2
	lbu	$4, 34($sp)
	xor	$1, $1, $4
	sb	$1, 49($sp)
	lbu	$17, 32($sp)
	lbu	$21, 33($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp22), R_MIPS_JALR, _double_byte
$tmp22:
	jalr	$25
	nop
	xor	$1, $21, $17
	lbu	$4, 35($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp23), R_MIPS_JALR, _double_byte
$tmp23:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	lbu	$2, 35($sp)
	xor	$1, $1, $2
	sb	$1, 50($sp)
	lbu	$4, 32($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp24), R_MIPS_JALR, _double_byte
$tmp24:
	jalr	$25
	nop
	lbu	$1, 32($sp)
	xor	$1, $1, $2
	lbu	$2, 33($sp)
	xor	$1, $1, $2
	lbu	$2, 34($sp)
	lbu	$4, 35($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp25), R_MIPS_JALR, _double_byte
$tmp25:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	sb	$1, 51($sp)
	lbu	$4, 36($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp26), R_MIPS_JALR, _double_byte
$tmp26:
	jalr	$25
	nop
	lbu	$4, 37($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp27), R_MIPS_JALR, _double_byte
$tmp27:
	jalr	$25
	move	$21, $2
	xor	$1, $2, $21
	lbu	$2, 38($sp)
	xor	$1, $1, $2
	lbu	$2, 39($sp)
	xor	$1, $1, $2
	lbu	$4, 37($sp)
	xor	$1, $1, $4
	sb	$1, 52($sp)
	lbu	$17, 36($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp28), R_MIPS_JALR, _double_byte
$tmp28:
	jalr	$25
	nop
	lbu	$4, 38($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp29), R_MIPS_JALR, _double_byte
$tmp29:
	jalr	$25
	move	$21, $2
	xor	$1, $21, $17
	xor	$1, $1, $2
	lbu	$2, 39($sp)
	xor	$1, $1, $2
	lbu	$4, 38($sp)
	xor	$1, $1, $4
	sb	$1, 53($sp)
	lbu	$17, 36($sp)
	lbu	$21, 37($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp30), R_MIPS_JALR, _double_byte
$tmp30:
	jalr	$25
	nop
	xor	$1, $21, $17
	lbu	$4, 39($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp31), R_MIPS_JALR, _double_byte
$tmp31:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	lbu	$2, 39($sp)
	xor	$1, $1, $2
	sb	$1, 54($sp)
	lbu	$4, 36($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp32), R_MIPS_JALR, _double_byte
$tmp32:
	jalr	$25
	nop
	lbu	$1, 36($sp)
	xor	$1, $1, $2
	lbu	$2, 37($sp)
	xor	$1, $1, $2
	lbu	$2, 38($sp)
	lbu	$4, 39($sp)
	lw	$25, %call16(_double_byte)($16)
	.reloc ($tmp33), R_MIPS_JALR, _double_byte
$tmp33:
	jalr	$25
	xor	$17, $1, $2
	xor	$1, $17, $2
	sb	$1, 55($sp)
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	move	$6, $20
	.reloc ($tmp34), R_MIPS_JALR, _copy
$tmp34:
	jalr	$25
	addiu	$7, $zero, 16
	addiu	$23, $23, 1
	sll	$1, $23, 4
	addu	$1, $18, $1
	lw	$2, 0($1)
	srl	$3, $2, 24
	lbu	$4, 24($sp)
	srl	$5, $2, 16
	xor	$3, $4, $3
	lbu	$4, 27($sp)
	xor	$4, $4, $2
	lbu	$6, 25($sp)
	sb	$4, 27($sp)
	sb	$3, 24($sp)
	xor	$3, $6, $5
	sb	$3, 25($sp)
	srl	$2, $2, 8
	lbu	$3, 26($sp)
	xor	$2, $3, $2
	sb	$2, 26($sp)
	lw	$2, 4($1)
	srl	$3, $2, 16
	srl	$4, $2, 24
	lbu	$5, 30($sp)
	lbu	$6, 29($sp)
	lbu	$7, 28($sp)
	xor	$4, $7, $4
	sb	$4, 28($sp)
	xor	$3, $6, $3
	sb	$3, 29($sp)
	srl	$3, $2, 8
	xor	$3, $5, $3
	sb	$3, 30($sp)
	lbu	$3, 31($sp)
	xor	$2, $3, $2
	sb	$2, 31($sp)
	lw	$2, 8($1)
	srl	$3, $2, 24
	lbu	$4, 32($sp)
	xor	$3, $4, $3
	sb	$3, 32($sp)
	srl	$3, $2, 16
	lbu	$4, 33($sp)
	xor	$3, $4, $3
	sb	$3, 33($sp)
	srl	$3, $2, 8
	lbu	$4, 34($sp)
	xor	$3, $4, $3
	sb	$3, 34($sp)
	lbu	$3, 35($sp)
	xor	$2, $3, $2
	sb	$2, 35($sp)
	lw	$1, 12($1)
	srl	$2, $1, 24
	lbu	$3, 36($sp)
	xor	$2, $3, $2
	sb	$2, 36($sp)
	srl	$2, $1, 16
	lbu	$3, 37($sp)
	xor	$2, $3, $2
	sb	$2, 37($sp)
	srl	$2, $1, 8
	lbu	$3, 38($sp)
	xor	$2, $3, $2
	sb	$2, 38($sp)
	lbu	$2, 39($sp)
	xor	$1, $2, $1
	sb	$1, 39($sp)
	addiu	$1, $zero, 9
	bne	$23, $1, $BB1_4
	nop
# %bb.7:
	addiu	$2, $zero, 0
	lw	$1, 16($sp)                     # 4-byte Folded Reload
	addiu	$3, $1, %lo(sbox)
	addiu	$4, $zero, 16
$BB1_8:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $2
	lbu	$5, 0($1)
	addu	$5, $3, $5
	lbu	$5, 0($5)
	addiu	$2, $2, 1
	bne	$2, $4, $BB1_8
	sb	$5, 0($1)
# %bb.9:
	lbu	$1, 33($sp)
	lbu	$2, 28($sp)
	lbu	$3, 39($sp)
	lbu	$4, 34($sp)
	lbu	$5, 29($sp)
	lbu	$6, 24($sp)
	sb	$6, 40($sp)
	sb	$5, 41($sp)
	sb	$4, 42($sp)
	sb	$3, 43($sp)
	sb	$2, 44($sp)
	sb	$1, 45($sp)
	lbu	$1, 38($sp)
	sb	$1, 46($sp)
	lbu	$1, 27($sp)
	sb	$1, 47($sp)
	lbu	$1, 32($sp)
	sb	$1, 48($sp)
	lbu	$1, 36($sp)
	lbu	$2, 31($sp)
	lbu	$3, 26($sp)
	lbu	$4, 37($sp)
	sb	$4, 49($sp)
	sb	$3, 50($sp)
	sb	$2, 51($sp)
	sb	$1, 52($sp)
	lbu	$1, 25($sp)
	sb	$1, 53($sp)
	lbu	$1, 30($sp)
	sb	$1, 54($sp)
	lbu	$1, 35($sp)
	sb	$1, 55($sp)
	addiu	$19, $sp, 24
	addiu	$6, $sp, 40
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	.reloc ($tmp35), R_MIPS_JALR, _copy
$tmp35:
	jalr	$25
	addiu	$7, $zero, 16
	lw	$1, 160($18)
	srl	$2, $1, 24
	lbu	$3, 24($sp)
	xor	$2, $3, $2
	lbu	$3, 27($sp)
	xor	$3, $3, $1
	srl	$4, $1, 16
	lbu	$5, 25($sp)
	sb	$3, 27($sp)
	sb	$2, 24($sp)
	xor	$2, $5, $4
	sb	$2, 25($sp)
	srl	$1, $1, 8
	lbu	$2, 26($sp)
	xor	$1, $2, $1
	sb	$1, 26($sp)
	lw	$1, 164($18)
	srl	$2, $1, 16
	srl	$3, $1, 24
	lbu	$4, 30($sp)
	lbu	$5, 29($sp)
	lbu	$6, 28($sp)
	xor	$3, $6, $3
	sb	$3, 28($sp)
	xor	$2, $5, $2
	sb	$2, 29($sp)
	srl	$2, $1, 8
	xor	$2, $4, $2
	sb	$2, 30($sp)
	lbu	$2, 31($sp)
	xor	$1, $2, $1
	sb	$1, 31($sp)
	lw	$1, 168($18)
	srl	$2, $1, 24
	lbu	$3, 32($sp)
	xor	$2, $3, $2
	sb	$2, 32($sp)
	srl	$2, $1, 16
	lbu	$3, 33($sp)
	xor	$2, $3, $2
	sb	$2, 33($sp)
	srl	$2, $1, 8
	lbu	$3, 34($sp)
	xor	$2, $3, $2
	sb	$2, 34($sp)
	lbu	$2, 35($sp)
	xor	$1, $2, $1
	sb	$1, 35($sp)
	lw	$1, 172($18)
	srl	$2, $1, 24
	lbu	$3, 36($sp)
	xor	$2, $3, $2
	sb	$2, 36($sp)
	srl	$2, $1, 16
	lbu	$3, 37($sp)
	xor	$2, $3, $2
	sb	$2, 37($sp)
	srl	$2, $1, 8
	lbu	$3, 38($sp)
	xor	$2, $3, $2
	sb	$2, 38($sp)
	lbu	$2, 39($sp)
	xor	$1, $2, $1
	sb	$1, 39($sp)
	lw	$25, %call16(_copy)($16)
	lw	$4, 20($sp)                     # 4-byte Folded Reload
	addiu	$5, $zero, 16
	move	$6, $19
	.reloc ($tmp36), R_MIPS_JALR, _copy
$tmp36:
	jalr	$25
	addiu	$7, $zero, 16
	lw	$25, %call16(_set)($16)
	move	$4, $19
	addiu	$5, $zero, 0
	addiu	$6, $zero, 16
	.reloc ($tmp37), R_MIPS_JALR, _set
$tmp37:
	jalr	$25
	move	$gp, $16
	addiu	$2, $zero, 1
$BB1_10:
	lw	$16, 56($sp)                    # 4-byte Folded Reload
	lw	$17, 60($sp)                    # 4-byte Folded Reload
	lw	$18, 64($sp)                    # 4-byte Folded Reload
	lw	$19, 68($sp)                    # 4-byte Folded Reload
	lw	$20, 72($sp)                    # 4-byte Folded Reload
	lw	$21, 76($sp)                    # 4-byte Folded Reload
	lw	$22, 80($sp)                    # 4-byte Folded Reload
	lw	$23, 84($sp)                    # 4-byte Folded Reload
	lw	$fp, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes_encrypt
$func_end1:
	.size	tc_aes_encrypt, ($func_end1)-tc_aes_encrypt
                                        # -- End function
	.type	$__const.tc_aes128_set_encrypt_key.rconst,@object # @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$__const.tc_aes128_set_encrypt_key.rconst:
	.4byte	0                               # 0x0
	.4byte	16777216                        # 0x1000000
	.4byte	33554432                        # 0x2000000
	.4byte	67108864                        # 0x4000000
	.4byte	134217728                       # 0x8000000
	.4byte	268435456                       # 0x10000000
	.4byte	536870912                       # 0x20000000
	.4byte	1073741824                      # 0x40000000
	.4byte	2147483648                      # 0x80000000
	.4byte	452984832                       # 0x1b000000
	.4byte	905969664                       # 0x36000000
	.size	$__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    # @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
