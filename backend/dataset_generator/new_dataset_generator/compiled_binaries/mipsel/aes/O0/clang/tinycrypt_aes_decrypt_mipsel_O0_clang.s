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
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	lw	$4, 20($fp)
	lw	$5, 16($fp)
	lw	$25, %got(tc_aes128_set_encrypt_key)($1)
	.reloc ($tmp0), R_MIPS_JALR, tc_aes128_set_encrypt_key
$tmp0:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
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
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	lw	$1, 48($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB1_2
	nop
# %bb.1:
	b	$BB1_3
	nop
$BB1_2:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB1_17
	nop
$BB1_3:
	lw	$1, 44($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB1_5
	nop
# %bb.4:
	b	$BB1_6
	nop
$BB1_5:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB1_17
	nop
$BB1_6:
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB1_8
	nop
# %bb.7:
	b	$BB1_9
	nop
$BB1_8:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB1_17
	nop
$BB1_9:
	b	$BB1_10
	nop
$BB1_10:
	b	$BB1_11
	nop
$BB1_11:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$6, 44($fp)
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp1), R_MIPS_JALR, _copy
$tmp1:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$2, 40($fp)
	addiu	$3, $zero, 160
	addu	$5, $2, $3
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp2), R_MIPS_JALR, add_round_key
$tmp2:
	jalr	$25
	nop
	addiu	$1, $zero, 9
	sw	$1, 20($fp)
$BB1_12:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 0
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_14
	nop
# %bb.13:
	b	$BB1_16
	nop
$BB1_14:                                #   in Loop: Header=BB1_12 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(inv_shift_rows)($1)
	addiu	$25, $1, %lo(inv_shift_rows)
	.reloc ($tmp3), R_MIPS_JALR, inv_shift_rows
$tmp3:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(inv_sub_bytes)($1)
	addiu	$25, $1, %lo(inv_sub_bytes)
	.reloc ($tmp4), R_MIPS_JALR, inv_sub_bytes
$tmp4:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$2, 40($fp)
	lw	$3, 20($fp)
	sll	$3, $3, 2
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp5), R_MIPS_JALR, add_round_key
$tmp5:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(inv_mix_columns)($1)
	addiu	$25, $1, %lo(inv_mix_columns)
	.reloc ($tmp6), R_MIPS_JALR, inv_mix_columns
$tmp6:
	jalr	$25
	nop
# %bb.15:                               #   in Loop: Header=BB1_12 Depth=1
	lw	$1, 20($fp)
	lui	$2, 65535
	ori	$2, $2, 65535
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB1_12
	nop
$BB1_16:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(inv_shift_rows)($1)
	addiu	$25, $1, %lo(inv_shift_rows)
	.reloc ($tmp7), R_MIPS_JALR, inv_shift_rows
$tmp7:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(inv_sub_bytes)($1)
	addiu	$25, $1, %lo(inv_sub_bytes)
	.reloc ($tmp8), R_MIPS_JALR, inv_sub_bytes
$tmp8:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 40($fp)
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp9), R_MIPS_JALR, add_round_key
$tmp9:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 48($fp)
	addiu	$6, $fp, 24
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp10), R_MIPS_JALR, _copy
$tmp10:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$2, $zero, 0
	addiu	$6, $zero, 16
	andi	$5, $zero, 255
	lw	$25, %got(_set)($1)
	.reloc ($tmp11), R_MIPS_JALR, _set
$tmp11:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 52($fp)
$BB1_17:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes_decrypt
$func_end1:
	.size	tc_aes_decrypt, ($func_end1)-tc_aes_decrypt
                                        # -- End function
	.p2align	2                               # -- Begin function add_round_key
	.type	add_round_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	add_round_key
add_round_key:                          # @add_round_key
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	srl	$1, $1, 24
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	srl	$1, $1, 16
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 1($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 1($2)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	srl	$1, $1, 8
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 2($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 2($2)
	lw	$1, 0($fp)
	lw	$1, 0($1)
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 3($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 3($2)
	lw	$1, 0($fp)
	lw	$1, 4($1)
	srl	$1, $1, 24
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 4($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 4($2)
	lw	$1, 0($fp)
	lw	$1, 4($1)
	srl	$1, $1, 16
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 5($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 5($2)
	lw	$1, 0($fp)
	lw	$1, 4($1)
	srl	$1, $1, 8
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 6($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 6($2)
	lw	$1, 0($fp)
	lw	$1, 4($1)
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 7($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 7($2)
	lw	$1, 0($fp)
	lw	$1, 8($1)
	srl	$1, $1, 24
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 8($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 8($2)
	lw	$1, 0($fp)
	lw	$1, 8($1)
	srl	$1, $1, 16
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 9($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 9($2)
	lw	$1, 0($fp)
	lw	$1, 8($1)
	srl	$1, $1, 8
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 10($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 10($2)
	lw	$1, 0($fp)
	lw	$1, 8($1)
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 11($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 11($2)
	lw	$1, 0($fp)
	lw	$1, 12($1)
	srl	$1, $1, 24
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 12($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 12($2)
	lw	$1, 0($fp)
	lw	$1, 12($1)
	srl	$1, $1, 16
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 13($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 13($2)
	lw	$1, 0($fp)
	lw	$1, 12($1)
	srl	$1, $1, 8
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 14($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 14($2)
	lw	$1, 0($fp)
	lw	$1, 12($1)
	andi	$3, $1, 255
	lw	$2, 4($fp)
	lbu	$1, 15($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 15($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	add_round_key
$func_end2:
	.size	add_round_key, ($func_end2)-add_round_key
                                        # -- End function
	.p2align	2                               # -- Begin function inv_shift_rows
	.type	inv_shift_rows,@function
	.set	nomicromips
	.set	nomips16
	.ent	inv_shift_rows
inv_shift_rows:                         # @inv_shift_rows
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$4, 36($fp)
	lw	$2, 36($fp)
	lbu	$2, 0($2)
	sb	$2, 20($fp)
	lw	$2, 36($fp)
	lbu	$2, 13($2)
	sb	$2, 21($fp)
	lw	$2, 36($fp)
	lbu	$2, 10($2)
	sb	$2, 22($fp)
	lw	$2, 36($fp)
	lbu	$2, 7($2)
	sb	$2, 23($fp)
	lw	$2, 36($fp)
	lbu	$2, 4($2)
	sb	$2, 24($fp)
	lw	$2, 36($fp)
	lbu	$2, 1($2)
	sb	$2, 25($fp)
	lw	$2, 36($fp)
	lbu	$2, 14($2)
	sb	$2, 26($fp)
	lw	$2, 36($fp)
	lbu	$2, 11($2)
	sb	$2, 27($fp)
	lw	$2, 36($fp)
	lbu	$2, 8($2)
	sb	$2, 28($fp)
	lw	$2, 36($fp)
	lbu	$2, 5($2)
	sb	$2, 29($fp)
	lw	$2, 36($fp)
	lbu	$2, 2($2)
	sb	$2, 30($fp)
	lw	$2, 36($fp)
	lbu	$2, 15($2)
	sb	$2, 31($fp)
	lw	$2, 36($fp)
	lbu	$2, 12($2)
	sb	$2, 32($fp)
	lw	$2, 36($fp)
	lbu	$2, 9($2)
	sb	$2, 33($fp)
	lw	$2, 36($fp)
	lbu	$2, 6($2)
	sb	$2, 34($fp)
	lw	$2, 36($fp)
	lbu	$2, 3($2)
	sb	$2, 35($fp)
	lw	$4, 36($fp)
	addiu	$6, $fp, 20
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp12), R_MIPS_JALR, _copy
$tmp12:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	inv_shift_rows
$func_end3:
	.size	inv_shift_rows, ($func_end3)-inv_shift_rows
                                        # -- End function
	.p2align	2                               # -- Begin function inv_sub_bytes
	.type	inv_sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	inv_sub_bytes
inv_sub_bytes:                          # @inv_sub_bytes
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	sw	$4, 12($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 16
	sltu	$1, $1, $2
	bgtz	$1, $BB4_3
	nop
# %bb.2:
	b	$BB4_5
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	lw	$1, %got(inv_sbox)($1)
	addiu	$1, $1, %lo(inv_sbox)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB4_1
	nop
$BB4_5:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	inv_sub_bytes
$func_end4:
	.size	inv_sub_bytes, ($func_end4)-inv_sub_bytes
                                        # -- End function
	.p2align	2                               # -- Begin function inv_mix_columns
	.type	inv_mix_columns,@function
	.set	nomicromips
	.set	nomips16
	.ent	inv_mix_columns
inv_mix_columns:                        # @inv_mix_columns
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 36($fp)
	addiu	$4, $fp, 20
	lw	$5, 36($fp)
	lw	$1, %got(mult_row_column)($1)
	addiu	$25, $1, %lo(mult_row_column)
	.reloc ($tmp13), R_MIPS_JALR, mult_row_column
$tmp13:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 20
	addiu	$3, $zero, 4
	addu	$4, $2, $3
	lw	$2, 36($fp)
	addiu	$3, $zero, 4
	addu	$5, $2, $3
	lw	$1, %got(mult_row_column)($1)
	addiu	$25, $1, %lo(mult_row_column)
	.reloc ($tmp14), R_MIPS_JALR, mult_row_column
$tmp14:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 20
	addiu	$3, $zero, 8
	addu	$4, $2, $3
	lw	$2, 36($fp)
	addiu	$3, $zero, 8
	addu	$5, $2, $3
	lw	$1, %got(mult_row_column)($1)
	addiu	$25, $1, %lo(mult_row_column)
	.reloc ($tmp15), R_MIPS_JALR, mult_row_column
$tmp15:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 20
	addiu	$3, $zero, 12
	addu	$4, $2, $3
	lw	$2, 36($fp)
	addiu	$3, $zero, 12
	addu	$5, $2, $3
	lw	$1, %got(mult_row_column)($1)
	addiu	$25, $1, %lo(mult_row_column)
	.reloc ($tmp16), R_MIPS_JALR, mult_row_column
$tmp16:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	addiu	$6, $fp, 20
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp17), R_MIPS_JALR, _copy
$tmp17:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	inv_mix_columns
$func_end5:
	.size	inv_mix_columns, ($func_end5)-inv_mix_columns
                                        # -- End function
	.p2align	2                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
	.set	nomicromips
	.set	nomips16
	.ent	mult_row_column
mult_row_column:                        # @mult_row_column
	.frame	$fp,152,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -152
	sw	$ra, 148($sp)                   # 4-byte Folded Spill
	sw	$fp, 144($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 120($fp)                    # 4-byte Folded Spill
	sw	$4, 140($fp)
	sw	$5, 136($fp)
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp18), R_MIPS_JALR, _double_byte
$tmp18:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp19), R_MIPS_JALR, _double_byte
$tmp19:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp20), R_MIPS_JALR, _double_byte
$tmp20:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp21), R_MIPS_JALR, _double_byte
$tmp21:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp22), R_MIPS_JALR, _double_byte
$tmp22:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp23), R_MIPS_JALR, _double_byte
$tmp23:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp24), R_MIPS_JALR, _double_byte
$tmp24:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp25), R_MIPS_JALR, _double_byte
$tmp25:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp26), R_MIPS_JALR, _double_byte
$tmp26:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp27), R_MIPS_JALR, _double_byte
$tmp27:
	jalr	$25
	nop
	lw	$3, 28($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 32($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 1($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 40($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp28), R_MIPS_JALR, _double_byte
$tmp28:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp29), R_MIPS_JALR, _double_byte
$tmp29:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp30), R_MIPS_JALR, _double_byte
$tmp30:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp31), R_MIPS_JALR, _double_byte
$tmp31:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp32), R_MIPS_JALR, _double_byte
$tmp32:
	jalr	$25
	nop
	lw	$3, 36($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 40($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 2($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp33), R_MIPS_JALR, _double_byte
$tmp33:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp34), R_MIPS_JALR, _double_byte
$tmp34:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp35), R_MIPS_JALR, _double_byte
$tmp35:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 44($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 136($fp)
	lbu	$4, 3($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 140($fp)
	sb	$2, 0($3)
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp36), R_MIPS_JALR, _double_byte
$tmp36:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp37), R_MIPS_JALR, _double_byte
$tmp37:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp38), R_MIPS_JALR, _double_byte
$tmp38:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	lw	$3, 136($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 56($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp39), R_MIPS_JALR, _double_byte
$tmp39:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp40), R_MIPS_JALR, _double_byte
$tmp40:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp41), R_MIPS_JALR, _double_byte
$tmp41:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 48($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp42), R_MIPS_JALR, _double_byte
$tmp42:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp43), R_MIPS_JALR, _double_byte
$tmp43:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 48($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 52($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp44), R_MIPS_JALR, _double_byte
$tmp44:
	jalr	$25
	nop
	lw	$3, 52($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 56($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 64($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp45), R_MIPS_JALR, _double_byte
$tmp45:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp46), R_MIPS_JALR, _double_byte
$tmp46:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp47), R_MIPS_JALR, _double_byte
$tmp47:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 60($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp48), R_MIPS_JALR, _double_byte
$tmp48:
	jalr	$25
	nop
	lw	$3, 60($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 64($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 2($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 72($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp49), R_MIPS_JALR, _double_byte
$tmp49:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp50), R_MIPS_JALR, _double_byte
$tmp50:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp51), R_MIPS_JALR, _double_byte
$tmp51:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 68($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp52), R_MIPS_JALR, _double_byte
$tmp52:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp53), R_MIPS_JALR, _double_byte
$tmp53:
	jalr	$25
	nop
	lw	$3, 68($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 72($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 3($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 140($fp)
	sb	$2, 1($3)
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp54), R_MIPS_JALR, _double_byte
$tmp54:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp55), R_MIPS_JALR, _double_byte
$tmp55:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp56), R_MIPS_JALR, _double_byte
$tmp56:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 76($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp57), R_MIPS_JALR, _double_byte
$tmp57:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp58), R_MIPS_JALR, _double_byte
$tmp58:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 76($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 136($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 80($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp59), R_MIPS_JALR, _double_byte
$tmp59:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp60), R_MIPS_JALR, _double_byte
$tmp60:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp61), R_MIPS_JALR, _double_byte
$tmp61:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 80($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 136($fp)
	lbu	$4, 1($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 92($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp62), R_MIPS_JALR, _double_byte
$tmp62:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp63), R_MIPS_JALR, _double_byte
$tmp63:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp64), R_MIPS_JALR, _double_byte
$tmp64:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 84($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp65), R_MIPS_JALR, _double_byte
$tmp65:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp66), R_MIPS_JALR, _double_byte
$tmp66:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 84($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 88($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp67), R_MIPS_JALR, _double_byte
$tmp67:
	jalr	$25
	nop
	lw	$3, 88($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 92($fp)                     # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 100($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp68), R_MIPS_JALR, _double_byte
$tmp68:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp69), R_MIPS_JALR, _double_byte
$tmp69:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp70), R_MIPS_JALR, _double_byte
$tmp70:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 96($fp)                     # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp71), R_MIPS_JALR, _double_byte
$tmp71:
	jalr	$25
	nop
	lw	$3, 96($fp)                     # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 100($fp)                    # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 3($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 140($fp)
	sb	$2, 2($3)
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp72), R_MIPS_JALR, _double_byte
$tmp72:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp73), R_MIPS_JALR, _double_byte
$tmp73:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp74), R_MIPS_JALR, _double_byte
$tmp74:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 104($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp75), R_MIPS_JALR, _double_byte
$tmp75:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 104($fp)                    # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 136($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 112($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp76), R_MIPS_JALR, _double_byte
$tmp76:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp77), R_MIPS_JALR, _double_byte
$tmp77:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp78), R_MIPS_JALR, _double_byte
$tmp78:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 108($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp79), R_MIPS_JALR, _double_byte
$tmp79:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp80), R_MIPS_JALR, _double_byte
$tmp80:
	jalr	$25
	nop
	lw	$3, 108($fp)                    # 4-byte Folded Reload
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 112($fp)                    # 4-byte Folded Reload
	andi	$4, $4, 255
	xor	$3, $3, $4
	lw	$4, 136($fp)
	lbu	$4, 1($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 116($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp81), R_MIPS_JALR, _double_byte
$tmp81:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp82), R_MIPS_JALR, _double_byte
$tmp82:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp83), R_MIPS_JALR, _double_byte
$tmp83:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 116($fp)                    # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 136($fp)
	lbu	$4, 2($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	sw	$2, 128($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp84), R_MIPS_JALR, _double_byte
$tmp84:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp85), R_MIPS_JALR, _double_byte
$tmp85:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp86), R_MIPS_JALR, _double_byte
$tmp86:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 124($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp87), R_MIPS_JALR, _double_byte
$tmp87:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp88), R_MIPS_JALR, _double_byte
$tmp88:
	jalr	$25
	nop
	lw	$1, 120($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 124($fp)                    # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 132($fp)                    # 4-byte Folded Spill
	lw	$2, 136($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp89), R_MIPS_JALR, _double_byte
$tmp89:
	jalr	$25
	nop
	lw	$1, 128($fp)                    # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 132($fp)                    # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 140($fp)
	sb	$1, 3($2)
	move	$sp, $fp
	lw	$fp, 144($sp)                   # 4-byte Folded Reload
	lw	$ra, 148($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 152
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	mult_row_column
$func_end6:
	.size	mult_row_column, ($func_end6)-mult_row_column
                                        # -- End function
	.type	inv_sbox,@object                # @inv_sbox
	.section	.rodata,"a",@progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tc_aes128_set_encrypt_key
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym inv_shift_rows
	.addrsig_sym inv_sub_bytes
	.addrsig_sym inv_mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym inv_sbox
	.text
