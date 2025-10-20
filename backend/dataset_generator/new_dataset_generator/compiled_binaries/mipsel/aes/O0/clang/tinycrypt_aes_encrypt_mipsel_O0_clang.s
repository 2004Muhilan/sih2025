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
	.frame	$fp,104,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -104
	sw	$ra, 100($sp)                   # 4-byte Folded Spill
	sw	$fp, 96($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 88($fp)
	sw	$5, 84($fp)
	addiu	$4, $fp, 40
	lw	$2, %got($__const.tc_aes128_set_encrypt_key.rconst)($1)
	addiu	$5, $2, %lo($__const.tc_aes128_set_encrypt_key.rconst)
	addiu	$6, $zero, 44
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$1, 88($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_3
	nop
$BB0_2:
	addiu	$1, $zero, 0
	sw	$zero, 92($fp)
	b	$BB0_21
	nop
$BB0_3:
	lw	$1, 84($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_5
	nop
# %bb.4:
	b	$BB0_6
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sw	$zero, 92($fp)
	b	$BB0_21
	nop
$BB0_6:
	b	$BB0_7
	nop
$BB0_7:
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
$BB0_8:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	addiu	$2, $zero, 4
	sltu	$1, $1, $2
	bgtz	$1, $BB0_10
	nop
# %bb.9:
	b	$BB0_12
	nop
$BB0_10:                                #   in Loop: Header=BB0_8 Depth=1
	lw	$1, 84($fp)
	lw	$2, 36($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sll	$1, $1, 24
	lw	$2, 84($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 16
	or	$1, $1, $2
	lw	$2, 84($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 2
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 8
	or	$1, $1, $2
	lw	$2, 84($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 3
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	or	$1, $1, $2
	lw	$2, 88($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	lw	$1, 36($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 36($fp)
	b	$BB0_8
	nop
$BB0_12:
	b	$BB0_13
	nop
$BB0_13:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	addiu	$2, $zero, 44
	sltu	$1, $1, $2
	bgtz	$1, $BB0_15
	nop
# %bb.14:
	b	$BB0_20
	nop
$BB0_15:                                #   in Loop: Header=BB0_13 Depth=1
	lw	$1, 88($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 32($fp)
	lw	$1, 36($fp)
	addiu	$2, $zero, 3
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_17
	nop
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	b	$BB0_18
	nop
$BB0_17:                                #   in Loop: Header=BB0_13 Depth=1
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 32($fp)
	lw	$1, %got(rotword)($1)
	addiu	$25, $1, %lo(rotword)
	.reloc ($tmp1), R_MIPS_JALR, rotword
$tmp1:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	srl	$2, $2, 24
	addiu	$3, $zero, 255
	and	$3, $2, $3
	lw	$2, %got(sbox)($1)
	addiu	$2, $2, %lo(sbox)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 24
	sw	$2, 16($fp)                     # 4-byte Folded Spill
	lw	$4, 32($fp)
	lw	$1, %got(rotword)($1)
	addiu	$25, $1, %lo(rotword)
	.reloc ($tmp2), R_MIPS_JALR, rotword
$tmp2:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	srl	$3, $3, 16
	addiu	$4, $zero, 255
	and	$4, $3, $4
	lw	$3, %got(sbox)($1)
	addiu	$3, $3, %lo(sbox)
	addu	$3, $3, $4
	lbu	$3, 0($3)
	andi	$3, $3, 255
	sll	$3, $3, 16
	or	$2, $2, $3
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$4, 32($fp)
	lw	$1, %got(rotword)($1)
	addiu	$25, $1, %lo(rotword)
	.reloc ($tmp3), R_MIPS_JALR, rotword
$tmp3:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	srl	$3, $3, 8
	addiu	$4, $zero, 255
	and	$4, $3, $4
	lw	$3, %got(sbox)($1)
	addiu	$3, $3, %lo(sbox)
	addu	$3, $3, $4
	lbu	$3, 0($3)
	andi	$3, $3, 255
	sll	$3, $3, 8
	or	$2, $2, $3
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lw	$4, 32($fp)
	lw	$1, %got(rotword)($1)
	addiu	$25, $1, %lo(rotword)
	.reloc ($tmp4), R_MIPS_JALR, rotword
$tmp4:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)                     # 4-byte Folded Reload
	srl	$3, $3, 0
	addiu	$4, $zero, 255
	and	$3, $3, $4
	lw	$2, %got(sbox)($2)
	addiu	$2, $2, %lo(sbox)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 0
	or	$1, $1, $2
	lw	$2, 36($fp)
	srl	$3, $2, 2
	addiu	$2, $fp, 40
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	sw	$1, 32($fp)
$BB0_18:                                #   in Loop: Header=BB0_13 Depth=1
	lw	$1, 88($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 4
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 32($fp)
	xor	$1, $1, $2
	lw	$2, 88($fp)
	lw	$3, 36($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=1
	lw	$1, 36($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 36($fp)
	b	$BB0_13
	nop
$BB0_20:
	addiu	$1, $zero, 1
	sw	$1, 92($fp)
$BB0_21:
	lw	$2, 92($fp)
	move	$sp, $fp
	lw	$fp, 96($sp)                    # 4-byte Folded Reload
	lw	$ra, 100($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 104
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	tc_aes128_set_encrypt_key
$func_end0:
	.size	tc_aes128_set_encrypt_key, ($func_end0)-tc_aes128_set_encrypt_key
                                        # -- End function
	.p2align	2                               # -- Begin function rotword
	.type	rotword,@function
	.set	nomicromips
	.set	nomips16
	.ent	rotword
rotword:                                # @rotword
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
	lw	$1, 4($fp)
	srl	$1, $1, 24
	lw	$2, 4($fp)
	sll	$2, $2, 8
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rotword
$func_end1:
	.size	rotword, ($func_end1)-rotword
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	2
	.type	tc_aes_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_aes_encrypt
tc_aes_encrypt:                         # @tc_aes_encrypt
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
	bgtz	$1, $BB2_2
	nop
# %bb.1:
	b	$BB2_3
	nop
$BB2_2:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB2_17
	nop
$BB2_3:
	lw	$1, 44($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB2_5
	nop
# %bb.4:
	b	$BB2_6
	nop
$BB2_5:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB2_17
	nop
$BB2_6:
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB2_8
	nop
# %bb.7:
	b	$BB2_9
	nop
$BB2_8:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB2_17
	nop
$BB2_9:
	b	$BB2_10
	nop
$BB2_10:
	b	$BB2_11
	nop
$BB2_11:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$6, 44($fp)
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp5), R_MIPS_JALR, _copy
$tmp5:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$5, 40($fp)
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp6), R_MIPS_JALR, add_round_key
$tmp6:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB2_12:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 9
	sltu	$1, $1, $2
	bgtz	$1, $BB2_14
	nop
# %bb.13:
	b	$BB2_16
	nop
$BB2_14:                                #   in Loop: Header=BB2_12 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(sub_bytes)($1)
	addiu	$25, $1, %lo(sub_bytes)
	.reloc ($tmp7), R_MIPS_JALR, sub_bytes
$tmp7:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(shift_rows)($1)
	addiu	$25, $1, %lo(shift_rows)
	.reloc ($tmp8), R_MIPS_JALR, shift_rows
$tmp8:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(mix_columns)($1)
	addiu	$25, $1, %lo(mix_columns)
	.reloc ($tmp9), R_MIPS_JALR, mix_columns
$tmp9:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$2, 40($fp)
	lw	$3, 20($fp)
	addiu	$5, $zero, 1
	addu	$3, $3, $5
	sll	$3, $3, 2
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp10), R_MIPS_JALR, add_round_key
$tmp10:
	jalr	$25
	nop
# %bb.15:                               #   in Loop: Header=BB2_12 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB2_12
	nop
$BB2_16:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(sub_bytes)($1)
	addiu	$25, $1, %lo(sub_bytes)
	.reloc ($tmp11), R_MIPS_JALR, sub_bytes
$tmp11:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$1, %got(shift_rows)($1)
	addiu	$25, $1, %lo(shift_rows)
	.reloc ($tmp12), R_MIPS_JALR, shift_rows
$tmp12:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	lw	$2, 40($fp)
	lw	$3, 20($fp)
	addiu	$5, $zero, 1
	addu	$3, $3, $5
	sll	$3, $3, 2
	sll	$3, $3, 2
	addu	$5, $2, $3
	lw	$1, %got(add_round_key)($1)
	addiu	$25, $1, %lo(add_round_key)
	.reloc ($tmp13), R_MIPS_JALR, add_round_key
$tmp13:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 48($fp)
	addiu	$6, $fp, 24
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp14), R_MIPS_JALR, _copy
$tmp14:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$2, $zero, 0
	addiu	$6, $zero, 16
	andi	$5, $zero, 255
	lw	$25, %got(_set)($1)
	.reloc ($tmp15), R_MIPS_JALR, _set
$tmp15:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 52($fp)
$BB2_17:
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
	.end	tc_aes_encrypt
$func_end2:
	.size	tc_aes_encrypt, ($func_end2)-tc_aes_encrypt
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
$func_end3:
	.size	add_round_key, ($func_end3)-add_round_key
                                        # -- End function
	.p2align	2                               # -- Begin function sub_bytes
	.type	sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	sub_bytes
sub_bytes:                              # @sub_bytes
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
	lw	$1, %got(sbox)($1)
	addiu	$1, $1, %lo(sbox)
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
	.end	sub_bytes
$func_end4:
	.size	sub_bytes, ($func_end4)-sub_bytes
                                        # -- End function
	.p2align	2                               # -- Begin function shift_rows
	.type	shift_rows,@function
	.set	nomicromips
	.set	nomips16
	.ent	shift_rows
shift_rows:                             # @shift_rows
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
	lbu	$2, 5($2)
	sb	$2, 21($fp)
	lw	$2, 36($fp)
	lbu	$2, 10($2)
	sb	$2, 22($fp)
	lw	$2, 36($fp)
	lbu	$2, 15($2)
	sb	$2, 23($fp)
	lw	$2, 36($fp)
	lbu	$2, 4($2)
	sb	$2, 24($fp)
	lw	$2, 36($fp)
	lbu	$2, 9($2)
	sb	$2, 25($fp)
	lw	$2, 36($fp)
	lbu	$2, 14($2)
	sb	$2, 26($fp)
	lw	$2, 36($fp)
	lbu	$2, 3($2)
	sb	$2, 27($fp)
	lw	$2, 36($fp)
	lbu	$2, 8($2)
	sb	$2, 28($fp)
	lw	$2, 36($fp)
	lbu	$2, 13($2)
	sb	$2, 29($fp)
	lw	$2, 36($fp)
	lbu	$2, 2($2)
	sb	$2, 30($fp)
	lw	$2, 36($fp)
	lbu	$2, 7($2)
	sb	$2, 31($fp)
	lw	$2, 36($fp)
	lbu	$2, 12($2)
	sb	$2, 32($fp)
	lw	$2, 36($fp)
	lbu	$2, 1($2)
	sb	$2, 33($fp)
	lw	$2, 36($fp)
	lbu	$2, 6($2)
	sb	$2, 34($fp)
	lw	$2, 36($fp)
	lbu	$2, 11($2)
	sb	$2, 35($fp)
	lw	$4, 36($fp)
	addiu	$6, $fp, 20
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp16), R_MIPS_JALR, _copy
$tmp16:
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
	.end	shift_rows
$func_end5:
	.size	shift_rows, ($func_end5)-shift_rows
                                        # -- End function
	.p2align	2                               # -- Begin function mix_columns
	.type	mix_columns,@function
	.set	nomicromips
	.set	nomips16
	.ent	mix_columns
mix_columns:                            # @mix_columns
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
	.reloc ($tmp17), R_MIPS_JALR, mult_row_column
$tmp17:
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
	.reloc ($tmp18), R_MIPS_JALR, mult_row_column
$tmp18:
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
	.reloc ($tmp19), R_MIPS_JALR, mult_row_column
$tmp19:
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
	.reloc ($tmp20), R_MIPS_JALR, mult_row_column
$tmp20:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	addiu	$6, $fp, 20
	addiu	$7, $zero, 16
	move	$5, $7
	lw	$25, %got(_copy)($1)
	.reloc ($tmp21), R_MIPS_JALR, _copy
$tmp21:
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
	.end	mix_columns
$func_end6:
	.size	mix_columns, ($func_end6)-mix_columns
                                        # -- End function
	.p2align	2                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
	.set	nomicromips
	.set	nomips16
	.ent	mult_row_column
mult_row_column:                        # @mult_row_column
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
	sw	$1, 40($fp)                     # 4-byte Folded Spill
	sw	$4, 52($fp)
	sw	$5, 48($fp)
	lw	$2, 48($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp22), R_MIPS_JALR, _double_byte
$tmp22:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp23), R_MIPS_JALR, _double_byte
$tmp23:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 48($fp)
	lbu	$4, 1($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lbu	$3, 2($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lbu	$3, 3($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 0($3)
	lw	$2, 48($fp)
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sw	$2, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 1($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp24), R_MIPS_JALR, _double_byte
$tmp24:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 24($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp25), R_MIPS_JALR, _double_byte
$tmp25:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 28($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 48($fp)
	lbu	$4, 2($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lbu	$3, 3($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 1($3)
	lw	$2, 48($fp)
	lbu	$2, 0($2)
	andi	$2, $2, 255
	lw	$3, 48($fp)
	lbu	$3, 1($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 2($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp26), R_MIPS_JALR, _double_byte
$tmp26:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 32($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp27), R_MIPS_JALR, _double_byte
$tmp27:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 36($fp)                     # 4-byte Folded Reload
	andi	$3, $3, 255
	lw	$4, 48($fp)
	lbu	$4, 3($4)
	andi	$4, $4, 255
	xor	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 52($fp)
	sb	$2, 2($3)
	lw	$2, 48($fp)
	lbu	$2, 0($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp28), R_MIPS_JALR, _double_byte
$tmp28:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	lw	$3, 48($fp)
	lbu	$3, 0($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lbu	$3, 1($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lbu	$3, 2($3)
	andi	$3, $3, 255
	xor	$2, $2, $3
	sw	$2, 44($fp)                     # 4-byte Folded Spill
	lw	$2, 48($fp)
	lbu	$2, 3($2)
	andi	$4, $2, 255
	lw	$25, %got(_double_byte)($1)
	.reloc ($tmp29), R_MIPS_JALR, _double_byte
$tmp29:
	jalr	$25
	nop
	lw	$1, 44($fp)                     # 4-byte Folded Reload
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 52($fp)
	sb	$1, 3($2)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	mult_row_column
$func_end7:
	.size	mult_row_column, ($func_end7)-mult_row_column
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
	.addrsig_sym rotword
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym sub_bytes
	.addrsig_sym shift_rows
	.addrsig_sym mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym sbox
	.text
