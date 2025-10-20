	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       # -- Begin function tc_aes128_set_decrypt_key
	.p2align	2
	.type	tc_aes128_set_decrypt_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_aes128_set_decrypt_key
tc_aes128_set_decrypt_key:              # @tc_aes128_set_decrypt_key
	.frame	$sp,24,$ra
	.mask 	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	lw	$25, %call16(tc_aes128_set_encrypt_key)($gp)
	.reloc ($tmp0), R_MIPS_JALR, tc_aes128_set_encrypt_key
$tmp0:
	jalr	$25
	nop
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes128_set_decrypt_key
$func_end0:
	.size	tc_aes128_set_decrypt_key, ($func_end0)-tc_aes128_set_decrypt_key
                                        # -- End function
	.globl	tc_aes_decrypt                  # -- Begin function tc_aes_decrypt
	.p2align	2
	.type	tc_aes_decrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_aes_decrypt
tc_aes_decrypt:                         # @tc_aes_decrypt
	.frame	$sp,120,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$fp, 112($sp)                   # 4-byte Folded Spill
	sw	$23, 108($sp)                   # 4-byte Folded Spill
	sw	$22, 104($sp)                   # 4-byte Folded Spill
	sw	$21, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	beqz	$4, $BB1_10
	addiu	$2, $zero, 0
# %bb.1:
	move	$21, $6
	beqz	$5, $BB1_10
	move	$6, $5
# %bb.2:
	beqz	$21, $BB1_10
	nop
# %bb.3:
	sw	$4, 24($sp)                     # 4-byte Folded Spill
	addiu	$19, $sp, 48
	addiu	$22, $zero, 16
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	addiu	$7, $zero, 16
	.reloc ($tmp1), R_MIPS_JALR, _copy
$tmp1:
	jalr	$25
	move	$gp, $16
	lw	$1, 160($21)
	srl	$2, $1, 24
	srl	$3, $1, 16
	srl	$4, $1, 8
	lbu	$5, 48($sp)
	lbu	$6, 49($sp)
	lbu	$7, 50($sp)
	xor	$4, $7, $4
	xor	$3, $6, $3
	xor	$2, $5, $2
	lbu	$5, 51($sp)
	xor	$1, $5, $1
	sb	$1, 51($sp)
	sb	$2, 48($sp)
	sb	$3, 49($sp)
	sb	$4, 50($sp)
	addiu	$20, $sp, 64
	addiu	$1, $20, 12
	sw	$1, 40($sp)                     # 4-byte Folded Spill
	addiu	$1, $20, 8
	sw	$1, 36($sp)                     # 4-byte Folded Spill
	addiu	$1, $20, 4
	sw	$1, 32($sp)                     # 4-byte Folded Spill
	addiu	$23, $zero, 9
	addiu	$1, $19, 12
	sw	$1, 28($sp)                     # 4-byte Folded Spill
	lw	$1, 164($21)
	addiu	$17, $19, 8
	addiu	$18, $19, 4
	srl	$2, $1, 16
	lbu	$3, 53($sp)
	srl	$4, $1, 8
	xor	$2, $3, $2
	lbu	$3, 55($sp)
	xor	$3, $3, $1
	sb	$3, 55($sp)
	lbu	$3, 52($sp)
	lbu	$5, 54($sp)
	sb	$2, 53($sp)
	xor	$2, $5, $4
	sb	$2, 54($sp)
	srl	$1, $1, 24
	xor	$1, $3, $1
	sb	$1, 52($sp)
	lw	$1, 168($21)
	srl	$2, $1, 24
	lbu	$3, 56($sp)
	xor	$2, $3, $2
	sb	$2, 56($sp)
	srl	$2, $1, 16
	lbu	$3, 57($sp)
	xor	$2, $3, $2
	sb	$2, 57($sp)
	srl	$2, $1, 8
	lbu	$3, 58($sp)
	xor	$2, $3, $2
	sb	$2, 58($sp)
	lbu	$2, 59($sp)
	xor	$1, $2, $1
	sb	$1, 59($sp)
	sw	$21, 44($sp)                    # 4-byte Folded Spill
	lw	$1, 172($21)
	srl	$2, $1, 24
	lbu	$3, 60($sp)
	xor	$2, $3, $2
	sb	$2, 60($sp)
	srl	$2, $1, 16
	lbu	$3, 61($sp)
	xor	$2, $3, $2
	sb	$2, 61($sp)
	srl	$2, $1, 8
	lbu	$3, 62($sp)
	xor	$2, $3, $2
	sb	$2, 62($sp)
	lbu	$2, 63($sp)
	xor	$1, $2, $1
	sb	$1, 63($sp)
	lw	$1, %got(inv_sbox)($16)
	sw	$1, 20($sp)                     # 4-byte Folded Spill
	addiu	$fp, $1, %lo(inv_sbox)
	lw	$1, %got(mult_row_column)($16)
	addiu	$21, $1, %lo(mult_row_column)
$BB1_4:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	lbu	$1, 49($sp)
	lbu	$2, 52($sp)
	lbu	$3, 55($sp)
	lbu	$4, 58($sp)
	lbu	$5, 61($sp)
	lbu	$6, 48($sp)
	sb	$6, 64($sp)
	sb	$5, 65($sp)
	sb	$4, 66($sp)
	sb	$3, 67($sp)
	sb	$2, 68($sp)
	sb	$1, 69($sp)
	lbu	$1, 62($sp)
	sb	$1, 70($sp)
	lbu	$1, 59($sp)
	sb	$1, 71($sp)
	lbu	$1, 56($sp)
	sb	$1, 72($sp)
	lbu	$1, 60($sp)
	lbu	$2, 63($sp)
	lbu	$3, 50($sp)
	lbu	$4, 53($sp)
	sb	$4, 73($sp)
	sb	$3, 74($sp)
	sb	$2, 75($sp)
	sb	$1, 76($sp)
	lbu	$1, 57($sp)
	sb	$1, 77($sp)
	lbu	$1, 54($sp)
	sb	$1, 78($sp)
	lbu	$1, 51($sp)
	sb	$1, 79($sp)
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	move	$6, $20
	.reloc ($tmp2), R_MIPS_JALR, _copy
$tmp2:
	jalr	$25
	addiu	$7, $zero, 16
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
	sll	$1, $23, 4
	lw	$2, 44($sp)                     # 4-byte Folded Reload
	addu	$1, $2, $1
	lw	$2, 0($1)
	srl	$3, $2, 24
	srl	$4, $2, 16
	srl	$5, $2, 8
	lbu	$6, 48($sp)
	lbu	$7, 49($sp)
	lbu	$8, 50($sp)
	xor	$5, $8, $5
	xor	$4, $7, $4
	xor	$3, $6, $3
	lbu	$6, 51($sp)
	xor	$2, $6, $2
	sb	$2, 51($sp)
	sb	$3, 48($sp)
	sb	$4, 49($sp)
	sb	$5, 50($sp)
	lbu	$2, 55($sp)
	lbu	$3, 52($sp)
	lbu	$4, 54($sp)
	lbu	$5, 53($sp)
	lw	$6, 4($1)
	srl	$7, $6, 16
	srl	$8, $6, 24
	xor	$3, $3, $8
	xor	$2, $2, $6
	sb	$2, 55($sp)
	sb	$3, 52($sp)
	xor	$2, $5, $7
	sb	$2, 53($sp)
	srl	$2, $6, 8
	xor	$2, $4, $2
	sb	$2, 54($sp)
	lw	$2, 8($1)
	srl	$3, $2, 24
	lbu	$4, 56($sp)
	xor	$3, $4, $3
	sb	$3, 56($sp)
	srl	$3, $2, 16
	lbu	$4, 57($sp)
	xor	$3, $4, $3
	sb	$3, 57($sp)
	srl	$3, $2, 8
	lbu	$4, 58($sp)
	xor	$3, $4, $3
	sb	$3, 58($sp)
	lbu	$3, 59($sp)
	xor	$2, $3, $2
	sb	$2, 59($sp)
	lw	$1, 12($1)
	srl	$2, $1, 24
	lbu	$3, 60($sp)
	xor	$2, $3, $2
	sb	$2, 60($sp)
	srl	$2, $1, 16
	lbu	$3, 61($sp)
	xor	$2, $3, $2
	sb	$2, 61($sp)
	srl	$2, $1, 8
	lbu	$3, 62($sp)
	xor	$2, $3, $2
	sb	$2, 62($sp)
	lbu	$2, 63($sp)
	xor	$1, $2, $1
	sb	$1, 63($sp)
	move	$4, $20
	move	$25, $21
	.reloc ($tmp3), R_MIPS_JALR, mult_row_column
$tmp3:
	jalr	$25
	move	$5, $19
	lw	$4, 32($sp)                     # 4-byte Folded Reload
	move	$25, $21
	.reloc ($tmp4), R_MIPS_JALR, mult_row_column
$tmp4:
	jalr	$25
	move	$5, $18
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	move	$25, $21
	.reloc ($tmp5), R_MIPS_JALR, mult_row_column
$tmp5:
	jalr	$25
	move	$5, $17
	lw	$4, 40($sp)                     # 4-byte Folded Reload
	lw	$5, 28($sp)                     # 4-byte Folded Reload
	move	$25, $21
	.reloc ($tmp6), R_MIPS_JALR, mult_row_column
$tmp6:
	jalr	$25
	nop
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	move	$6, $20
	.reloc ($tmp7), R_MIPS_JALR, _copy
$tmp7:
	jalr	$25
	addiu	$7, $zero, 16
	addiu	$23, $23, -1
	bnez	$23, $BB1_4
	nop
# %bb.7:
	lbu	$1, 49($sp)
	lbu	$2, 52($sp)
	lbu	$3, 55($sp)
	lbu	$4, 58($sp)
	lbu	$5, 61($sp)
	lbu	$6, 48($sp)
	sb	$6, 64($sp)
	sb	$5, 65($sp)
	sb	$4, 66($sp)
	sb	$3, 67($sp)
	sb	$2, 68($sp)
	sb	$1, 69($sp)
	lbu	$1, 62($sp)
	sb	$1, 70($sp)
	lbu	$1, 59($sp)
	sb	$1, 71($sp)
	lbu	$1, 56($sp)
	sb	$1, 72($sp)
	lbu	$1, 60($sp)
	lbu	$2, 63($sp)
	lbu	$3, 50($sp)
	lbu	$4, 53($sp)
	sb	$4, 73($sp)
	sb	$3, 74($sp)
	sb	$2, 75($sp)
	sb	$1, 76($sp)
	lbu	$1, 57($sp)
	sb	$1, 77($sp)
	lbu	$1, 54($sp)
	sb	$1, 78($sp)
	lbu	$1, 51($sp)
	sb	$1, 79($sp)
	addiu	$6, $sp, 64
	addiu	$17, $zero, 16
	lw	$25, %call16(_copy)($16)
	move	$4, $19
	addiu	$5, $zero, 16
	.reloc ($tmp8), R_MIPS_JALR, _copy
$tmp8:
	jalr	$25
	addiu	$7, $zero, 16
	addiu	$2, $zero, 0
	lw	$1, 20($sp)                     # 4-byte Folded Reload
	addiu	$3, $1, %lo(inv_sbox)
$BB1_8:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $2
	lbu	$4, 0($1)
	addu	$4, $3, $4
	lbu	$4, 0($4)
	addiu	$2, $2, 1
	bne	$2, $17, $BB1_8
	sb	$4, 0($1)
# %bb.9:
	lw	$7, 44($sp)                     # 4-byte Folded Reload
	lw	$1, 0($7)
	srl	$2, $1, 24
	lbu	$3, 48($sp)
	xor	$2, $3, $2
	lbu	$3, 51($sp)
	xor	$3, $3, $1
	srl	$4, $1, 16
	lbu	$5, 49($sp)
	sb	$3, 51($sp)
	sb	$2, 48($sp)
	xor	$2, $5, $4
	sb	$2, 49($sp)
	srl	$1, $1, 8
	lbu	$2, 50($sp)
	xor	$1, $2, $1
	sb	$1, 50($sp)
	lw	$1, 4($7)
	srl	$2, $1, 24
	lbu	$3, 55($sp)
	lbu	$4, 52($sp)
	addiu	$17, $sp, 48
	xor	$2, $4, $2
	xor	$3, $3, $1
	srl	$4, $1, 16
	lbu	$5, 54($sp)
	lbu	$6, 53($sp)
	sb	$3, 55($sp)
	sb	$2, 52($sp)
	xor	$2, $6, $4
	sb	$2, 53($sp)
	srl	$1, $1, 8
	xor	$1, $5, $1
	sb	$1, 54($sp)
	lw	$1, 8($7)
	srl	$2, $1, 24
	lbu	$3, 56($sp)
	xor	$2, $3, $2
	sb	$2, 56($sp)
	srl	$2, $1, 16
	lbu	$3, 57($sp)
	xor	$2, $3, $2
	sb	$2, 57($sp)
	srl	$2, $1, 8
	lbu	$3, 58($sp)
	xor	$2, $3, $2
	sb	$2, 58($sp)
	lbu	$2, 59($sp)
	xor	$1, $2, $1
	sb	$1, 59($sp)
	lw	$1, 12($7)
	srl	$2, $1, 24
	lbu	$3, 60($sp)
	xor	$2, $3, $2
	sb	$2, 60($sp)
	srl	$2, $1, 16
	lbu	$3, 61($sp)
	xor	$2, $3, $2
	sb	$2, 61($sp)
	srl	$2, $1, 8
	lbu	$3, 62($sp)
	xor	$2, $3, $2
	sb	$2, 62($sp)
	lbu	$2, 63($sp)
	xor	$1, $2, $1
	sb	$1, 63($sp)
	lw	$25, %call16(_copy)($16)
	lw	$4, 24($sp)                     # 4-byte Folded Reload
	addiu	$5, $zero, 16
	move	$6, $17
	.reloc ($tmp9), R_MIPS_JALR, _copy
$tmp9:
	jalr	$25
	addiu	$7, $zero, 16
	lw	$25, %call16(_set)($16)
	move	$4, $17
	addiu	$5, $zero, 0
	addiu	$6, $zero, 16
	.reloc ($tmp10), R_MIPS_JALR, _set
$tmp10:
	jalr	$25
	move	$gp, $16
	addiu	$2, $zero, 1
$BB1_10:
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$21, 100($sp)                   # 4-byte Folded Reload
	lw	$22, 104($sp)                   # 4-byte Folded Reload
	lw	$23, 108($sp)                   # 4-byte Folded Reload
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes_decrypt
$func_end1:
	.size	tc_aes_decrypt, ($func_end1)-tc_aes_decrypt
                                        # -- End function
	.p2align	2                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
	.set	nomicromips
	.set	nomips16
	.ent	mult_row_column
mult_row_column:                        # @mult_row_column
	.frame	$sp,40,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$17, $2, $25
	move	$18, $5
	move	$16, $4
	lbu	$4, 0($5)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp11), R_MIPS_JALR, _double_byte
$tmp11:
	jalr	$25
	move	$gp, $17
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp12), R_MIPS_JALR, _double_byte
$tmp12:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp13), R_MIPS_JALR, _double_byte
$tmp13:
	jalr	$25
	move	$4, $2
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp14), R_MIPS_JALR, _double_byte
$tmp14:
	jalr	$25
	move	$19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp15), R_MIPS_JALR, _double_byte
$tmp15:
	jalr	$25
	move	$4, $2
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp16), R_MIPS_JALR, _double_byte
$tmp16:
	jalr	$25
	xor	$19, $2, $19
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp17), R_MIPS_JALR, _double_byte
$tmp17:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp18), R_MIPS_JALR, _double_byte
$tmp18:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp19), R_MIPS_JALR, _double_byte
$tmp19:
	jalr	$25
	move	$4, $2
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp20), R_MIPS_JALR, _double_byte
$tmp20:
	jalr	$25
	xor	$19, $19, $2
	xor	$1, $19, $2
	lbu	$4, 2($18)
	lbu	$2, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp21), R_MIPS_JALR, _double_byte
$tmp21:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp22), R_MIPS_JALR, _double_byte
$tmp22:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp23), R_MIPS_JALR, _double_byte
$tmp23:
	jalr	$25
	move	$4, $2
	lbu	$4, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp24), R_MIPS_JALR, _double_byte
$tmp24:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp25), R_MIPS_JALR, _double_byte
$tmp25:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$4, 3($18)
	lbu	$2, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp26), R_MIPS_JALR, _double_byte
$tmp26:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp27), R_MIPS_JALR, _double_byte
$tmp27:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp28), R_MIPS_JALR, _double_byte
$tmp28:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$2, 3($18)
	xor	$1, $1, $2
	sb	$1, 0($16)
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp29), R_MIPS_JALR, _double_byte
$tmp29:
	jalr	$25
	nop
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp30), R_MIPS_JALR, _double_byte
$tmp30:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp31), R_MIPS_JALR, _double_byte
$tmp31:
	jalr	$25
	move	$4, $2
	lbu	$20, 0($18)
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp32), R_MIPS_JALR, _double_byte
$tmp32:
	jalr	$25
	move	$19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp33), R_MIPS_JALR, _double_byte
$tmp33:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp34), R_MIPS_JALR, _double_byte
$tmp34:
	jalr	$25
	move	$4, $2
	xor	$1, $20, $19
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp35), R_MIPS_JALR, _double_byte
$tmp35:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp36), R_MIPS_JALR, _double_byte
$tmp36:
	jalr	$25
	move	$4, $2
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp37), R_MIPS_JALR, _double_byte
$tmp37:
	jalr	$25
	xor	$19, $19, $2
	lbu	$4, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp38), R_MIPS_JALR, _double_byte
$tmp38:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp39), R_MIPS_JALR, _double_byte
$tmp39:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp40), R_MIPS_JALR, _double_byte
$tmp40:
	jalr	$25
	move	$4, $2
	lbu	$4, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp41), R_MIPS_JALR, _double_byte
$tmp41:
	jalr	$25
	xor	$19, $19, $2
	xor	$1, $19, $2
	lbu	$4, 3($18)
	lbu	$2, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp42), R_MIPS_JALR, _double_byte
$tmp42:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp43), R_MIPS_JALR, _double_byte
$tmp43:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp44), R_MIPS_JALR, _double_byte
$tmp44:
	jalr	$25
	move	$4, $2
	lbu	$4, 3($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp45), R_MIPS_JALR, _double_byte
$tmp45:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp46), R_MIPS_JALR, _double_byte
$tmp46:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$2, 3($18)
	xor	$1, $1, $2
	sb	$1, 1($16)
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp47), R_MIPS_JALR, _double_byte
$tmp47:
	jalr	$25
	nop
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp48), R_MIPS_JALR, _double_byte
$tmp48:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp49), R_MIPS_JALR, _double_byte
$tmp49:
	jalr	$25
	move	$4, $2
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp50), R_MIPS_JALR, _double_byte
$tmp50:
	jalr	$25
	move	$19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp51), R_MIPS_JALR, _double_byte
$tmp51:
	jalr	$25
	move	$4, $2
	xor	$1, $2, $19
	lbu	$4, 1($18)
	lbu	$2, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp52), R_MIPS_JALR, _double_byte
$tmp52:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp53), R_MIPS_JALR, _double_byte
$tmp53:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp54), R_MIPS_JALR, _double_byte
$tmp54:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$4, 2($18)
	lbu	$2, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp55), R_MIPS_JALR, _double_byte
$tmp55:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp56), R_MIPS_JALR, _double_byte
$tmp56:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp57), R_MIPS_JALR, _double_byte
$tmp57:
	jalr	$25
	move	$4, $2
	lbu	$4, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp58), R_MIPS_JALR, _double_byte
$tmp58:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp59), R_MIPS_JALR, _double_byte
$tmp59:
	jalr	$25
	move	$4, $2
	lbu	$4, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp60), R_MIPS_JALR, _double_byte
$tmp60:
	jalr	$25
	xor	$19, $19, $2
	lbu	$4, 3($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp61), R_MIPS_JALR, _double_byte
$tmp61:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp62), R_MIPS_JALR, _double_byte
$tmp62:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp63), R_MIPS_JALR, _double_byte
$tmp63:
	jalr	$25
	move	$4, $2
	lbu	$4, 3($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp64), R_MIPS_JALR, _double_byte
$tmp64:
	jalr	$25
	xor	$19, $19, $2
	xor	$1, $19, $2
	lbu	$2, 3($18)
	xor	$1, $1, $2
	sb	$1, 2($16)
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp65), R_MIPS_JALR, _double_byte
$tmp65:
	jalr	$25
	nop
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp66), R_MIPS_JALR, _double_byte
$tmp66:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp67), R_MIPS_JALR, _double_byte
$tmp67:
	jalr	$25
	move	$4, $2
	lbu	$4, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp68), R_MIPS_JALR, _double_byte
$tmp68:
	jalr	$25
	move	$19, $2
	xor	$1, $2, $19
	lbu	$4, 1($18)
	lbu	$2, 0($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp69), R_MIPS_JALR, _double_byte
$tmp69:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp70), R_MIPS_JALR, _double_byte
$tmp70:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp71), R_MIPS_JALR, _double_byte
$tmp71:
	jalr	$25
	move	$4, $2
	lbu	$4, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp72), R_MIPS_JALR, _double_byte
$tmp72:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp73), R_MIPS_JALR, _double_byte
$tmp73:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$4, 2($18)
	lbu	$2, 1($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp74), R_MIPS_JALR, _double_byte
$tmp74:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp75), R_MIPS_JALR, _double_byte
$tmp75:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp76), R_MIPS_JALR, _double_byte
$tmp76:
	jalr	$25
	move	$4, $2
	xor	$1, $19, $2
	lbu	$4, 3($18)
	lbu	$2, 2($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp77), R_MIPS_JALR, _double_byte
$tmp77:
	jalr	$25
	xor	$19, $1, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp78), R_MIPS_JALR, _double_byte
$tmp78:
	jalr	$25
	move	$4, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp79), R_MIPS_JALR, _double_byte
$tmp79:
	jalr	$25
	move	$4, $2
	lbu	$4, 3($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp80), R_MIPS_JALR, _double_byte
$tmp80:
	jalr	$25
	xor	$19, $19, $2
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp81), R_MIPS_JALR, _double_byte
$tmp81:
	jalr	$25
	move	$4, $2
	lbu	$4, 3($18)
	lw	$25, %call16(_double_byte)($17)
	.reloc ($tmp82), R_MIPS_JALR, _double_byte
$tmp82:
	jalr	$25
	xor	$19, $19, $2
	xor	$1, $19, $2
	sb	$1, 3($16)
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	mult_row_column
$func_end2:
	.size	mult_row_column, ($func_end2)-mult_row_column
                                        # -- End function
	.type	inv_sbox,@object                # @inv_sbox
	.section	.rodata,"a",@progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
