	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                # -- Begin function uECC_sign_with_k
	.p2align	2
	.type	uECC_sign_with_k,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_sign_with_k
uECC_sign_with_k:                       # @uECC_sign_with_k
	.frame	$fp,200,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -200
	sw	$ra, 196($sp)                   # 4-byte Folded Spill
	sw	$fp, 192($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	lw	$2, 220($fp)
	lw	$2, 216($fp)
	sw	$4, 184($fp)
	sw	$5, 180($fp)
	sw	$6, 176($fp)
	sw	$7, 172($fp)
	addiu	$2, $fp, 140
	sw	$2, 100($fp)
	addiu	$2, $fp, 108
	sw	$2, 104($fp)
	lw	$2, 220($fp)
	lbu	$2, 0($2)
	sb	$2, 31($fp)
	lw	$2, 220($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	sb	$2, 30($fp)
	lw	$2, 220($fp)
	lhu	$2, 2($2)
	sh	$2, 28($fp)
	lw	$4, 172($fp)
	lbu	$2, 31($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp0), R_MIPS_JALR, uECC_vli_isZero
$tmp0:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_3
	nop
# %bb.1:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$2, 220($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	lw	$5, 172($fp)
	lbu	$2, 30($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp)($1)
	.reloc ($tmp1), R_MIPS_JALR, uECC_vli_cmp
$tmp1:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_4
	nop
$BB0_3:
	addiu	$1, $zero, 0
	sw	$zero, 188($fp)
	b	$BB0_16
	nop
$BB0_4:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 172($fp)
	addiu	$5, $fp, 140
	addiu	$6, $fp, 108
	lw	$7, 220($fp)
	lw	$25, %got(regularize_k)($1)
	.reloc ($tmp2), R_MIPS_JALR, regularize_k
$tmp2:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	sw	$2, 32($fp)
	addiu	$4, $fp, 36
	lw	$1, 220($fp)
	addiu	$2, $zero, 68
	addu	$5, $1, $2
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$2, $1, 1
	addiu	$1, $fp, 100
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$6, 0($1)
	lhu	$1, 28($fp)
	seh	$1, $1
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lw	$3, 220($fp)
	move	$2, $sp
	sw	$3, 20($2)
	seh	$1, $1
	sw	$1, 16($2)
	lw	$25, %call16(EccPoint_mult)($gp)
	addiu	$7, $zero, 0
	.reloc ($tmp3), R_MIPS_JALR, EccPoint_mult
$tmp3:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 36
	lbu	$2, 31($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_isZero
$tmp4:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_6
	nop
# %bb.5:
	b	$BB0_7
	nop
$BB0_6:
	addiu	$1, $zero, 0
	sw	$zero, 188($fp)
	b	$BB0_16
	nop
$BB0_7:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$25, %got(uECC_get_rng)($1)
	.reloc ($tmp5), R_MIPS_JALR, uECC_get_rng
$tmp5:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_9
	nop
# %bb.8:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 140
	lbu	$2, 30($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp6), R_MIPS_JALR, uECC_vli_clear
$tmp6:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 140($fp)
	b	$BB0_12
	nop
$BB0_9:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 140
	lw	$2, 220($fp)
	addiu	$3, $zero, 36
	addu	$5, $2, $3
	lbu	$2, 30($fp)
	seb	$6, $2
	lw	$25, %got(uECC_generate_random_int)($1)
	.reloc ($tmp7), R_MIPS_JALR, uECC_generate_random_int
$tmp7:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_11
	nop
# %bb.10:
	addiu	$1, $zero, 0
	sw	$zero, 188($fp)
	b	$BB0_16
	nop
$BB0_11:
	b	$BB0_12
	nop
$BB0_12:
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 172($fp)
	lw	$5, 172($fp)
	addiu	$6, $fp, 140
	lw	$1, 220($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 30($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp8), R_MIPS_JALR, uECC_vli_modMult
$tmp8:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 172($fp)
	lw	$5, 172($fp)
	lw	$2, 220($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lbu	$2, 30($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_modInv)($1)
	.reloc ($tmp9), R_MIPS_JALR, uECC_vli_modInv
$tmp9:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 172($fp)
	lw	$5, 172($fp)
	addiu	$6, $fp, 140
	lw	$1, 220($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 30($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_modMult
$tmp10:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 216($fp)
	lw	$2, 220($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$6, $fp, 36
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp11:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 140
	lw	$5, 184($fp)
	lw	$2, 220($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 7
	addu	$3, $2, $3
	addiu	$2, $zero, 8
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$6
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp12:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lbu	$2, 30($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 108
	sll	$3, $3, 2
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sw	$zero, 0($2)
	addiu	$4, $fp, 108
	addiu	$5, $fp, 36
	lbu	$2, 31($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_set
$tmp13:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 108
	addiu	$5, $fp, 140
	addiu	$6, $fp, 108
	lw	$1, 220($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 30($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_modMult
$tmp14:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 140
	lw	$5, 180($fp)
	lw	$6, 176($fp)
	lw	$7, 220($fp)
	lw	$1, %got(bits2int)($1)
	addiu	$25, $1, %lo(bits2int)
	.reloc ($tmp15), R_MIPS_JALR, bits2int
$tmp15:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 108
	addiu	$5, $fp, 140
	addiu	$6, $fp, 108
	lw	$1, 220($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 30($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modAdd)($gp)
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_modAdd
$tmp16:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 108
	addiu	$5, $fp, 108
	lw	$6, 172($fp)
	lw	$1, 220($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 30($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_modMult
$tmp17:
	jalr	$25
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 108
	lbu	$2, 30($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_numBits)($1)
	.reloc ($tmp18), R_MIPS_JALR, uECC_vli_numBits
$tmp18:
	jalr	$25
	nop
	seh	$2, $2
	lw	$1, 220($fp)
	lbu	$1, 1($1)
	seb	$1, $1
	seh	$1, $1
	sll	$1, $1, 3
	slt	$1, $1, $2
	bgtz	$1, $BB0_14
	nop
# %bb.13:
	b	$BB0_15
	nop
$BB0_14:
	addiu	$1, $zero, 0
	sw	$zero, 188($fp)
	b	$BB0_16
	nop
$BB0_15:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$2, 216($fp)
	lw	$3, 220($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$4, $2, $3
	lw	$2, 220($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$6, $fp, 108
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp19), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp19:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 188($fp)
$BB0_16:
	lw	$2, 188($fp)
	move	$sp, $fp
	lw	$fp, 192($sp)                   # 4-byte Folded Reload
	lw	$ra, 196($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 200
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_sign_with_k
$func_end0:
	.size	uECC_sign_with_k, ($func_end0)-uECC_sign_with_k
                                        # -- End function
	.p2align	2                               # -- Begin function bits2int
	.type	bits2int,@function
	.set	nomicromips
	.set	nomips16
	.ent	bits2int
bits2int:                               # @bits2int
	.frame	$fp,72,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -72
	sw	$ra, 68($sp)                    # 4-byte Folded Spill
	sw	$fp, 64($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 60($fp)
	sw	$5, 56($fp)
	sw	$6, 52($fp)
	sw	$7, 48($fp)
	lw	$1, 48($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	addiu	$2, $zero, 7
	addu	$2, $1, $2
	addiu	$1, $zero, 8
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sw	$1, 44($fp)
	lw	$1, 48($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	addiu	$2, $zero, 31
	addu	$2, $1, $2
	addiu	$1, $zero, 32
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mflo	$1
	sw	$1, 40($fp)
	lw	$2, 52($fp)
	lw	$1, 44($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB1_2
	nop
# %bb.1:
	b	$BB1_3
	nop
$BB1_2:
	lw	$1, 44($fp)
	sw	$1, 52($fp)
$BB1_3:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 60($fp)
	lw	$2, 40($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp20), R_MIPS_JALR, uECC_vli_clear
$tmp20:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 60($fp)
	lw	$5, 56($fp)
	lw	$6, 52($fp)
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp21:
	jalr	$25
	nop
	lw	$1, 52($fp)
	sll	$2, $1, 3
	lw	$1, 48($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	sltu	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB1_5
	nop
# %bb.4:
	b	$BB1_6
	nop
$BB1_5:
	b	$BB1_13
	nop
$BB1_6:
	lw	$1, 52($fp)
	sll	$1, $1, 3
	lw	$2, 48($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	subu	$1, $1, $2
	sw	$1, 36($fp)
	addiu	$1, $zero, 0
	sw	$zero, 32($fp)
	lw	$1, 60($fp)
	lw	$2, 40($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	sw	$1, 28($fp)
$BB1_7:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 28($fp)
	lui	$1, 65535
	ori	$1, $1, 65532
	addu	$1, $2, $1
	sw	$1, 28($fp)
	lw	$1, 60($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB1_9
	nop
# %bb.8:
	b	$BB1_10
	nop
$BB1_9:                                 #   in Loop: Header=BB1_7 Depth=1
	lw	$1, 28($fp)
	lw	$1, 0($1)
	sw	$1, 24($fp)
	lw	$1, 24($fp)
	lw	$2, 36($fp)
	srlv	$1, $1, $2
	lw	$2, 32($fp)
	or	$1, $1, $2
	lw	$2, 28($fp)
	sw	$1, 0($2)
	lw	$1, 24($fp)
	lw	$3, 36($fp)
	addiu	$2, $zero, 32
	subu	$2, $2, $3
	sllv	$1, $1, $2
	sw	$1, 32($fp)
	b	$BB1_7
	nop
$BB1_10:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	lw	$5, 60($fp)
	lw	$2, 40($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp22:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_12
	nop
# %bb.11:
	b	$BB1_13
	nop
$BB1_12:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 60($fp)
	lw	$5, 60($fp)
	lw	$2, 48($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lw	$2, 40($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_sub
$tmp23:
	jalr	$25
	nop
$BB1_13:
	move	$sp, $fp
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 72
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	bits2int
$func_end1:
	.size	bits2int, ($func_end1)-bits2int
                                        # -- End function
	.globl	uECC_sign                       # -- Begin function uECC_sign
	.p2align	2
	.type	uECC_sign,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_sign
uECC_sign:                              # @uECC_sign
	.frame	$fp,160,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -160
	sw	$ra, 156($sp)                   # 4-byte Folded Spill
	sw	$fp, 152($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	lw	$1, 176($fp)
	sw	$4, 144($fp)
	sw	$5, 140($fp)
	sw	$6, 136($fp)
	sw	$7, 132($fp)
	addiu	$1, $zero, 0
	sw	$zero, 32($fp)
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	addiu	$2, $zero, 64
	sltu	$1, $1, $2
	bgtz	$1, $BB2_3
	nop
# %bb.2:
	b	$BB2_12
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$25, %got(uECC_get_rng)($1)
	.reloc ($tmp24), R_MIPS_JALR, uECC_get_rng
$tmp24:
	jalr	$25
	nop
	sw	$2, 28($fp)
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_5
	nop
# %bb.4:
	b	$BB2_6
	nop
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$25, 28($fp)
	addiu	$4, $fp, 68
	addiu	$5, $zero, 64
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_7
	nop
$BB2_6:
	addiu	$1, $zero, 0
	sw	$zero, 148($fp)
	b	$BB2_13
	nop
$BB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 36
	addiu	$5, $fp, 68
	lw	$2, 176($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lw	$2, 176($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	seb	$7, $2
	lw	$25, %got(uECC_vli_mmod)($1)
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_mmod
$tmp25:
	jalr	$25
	nop
	lw	$gp, 24($fp)                    # 4-byte Folded Reload
	lw	$4, 144($fp)
	lw	$5, 140($fp)
	lw	$6, 136($fp)
	addiu	$7, $fp, 36
	lw	$1, 132($fp)
	lw	$3, 176($fp)
	move	$2, $sp
	sw	$3, 20($2)
	sw	$1, 16($2)
	lw	$25, %call16(uECC_sign_with_k)($gp)
	.reloc ($tmp26), R_MIPS_JALR, uECC_sign_with_k
$tmp26:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_9
	nop
# %bb.8:                                #   in Loop: Header=BB2_1 Depth=1
	b	$BB2_10
	nop
$BB2_9:
	addiu	$1, $zero, 1
	sw	$1, 148($fp)
	b	$BB2_13
	nop
$BB2_10:                                #   in Loop: Header=BB2_1 Depth=1
	b	$BB2_11
	nop
$BB2_11:                                #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 32($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 32($fp)
	b	$BB2_1
	nop
$BB2_12:
	addiu	$1, $zero, 0
	sw	$zero, 148($fp)
$BB2_13:
	lw	$2, 148($fp)
	move	$sp, $fp
	lw	$fp, 152($sp)                   # 4-byte Folded Reload
	lw	$ra, 156($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 160
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_sign
$func_end2:
	.size	uECC_sign, ($func_end2)-uECC_sign
                                        # -- End function
	.globl	uECC_verify                     # -- Begin function uECC_verify
	.p2align	2
	.type	uECC_verify,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_verify
uECC_verify:                            # @uECC_verify
	.frame	$fp,552,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -552
	sw	$ra, 548($sp)                   # 4-byte Folded Spill
	sw	$fp, 544($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 40($fp)                     # 4-byte Folded Spill
	lw	$2, 568($fp)
	sw	$4, 536($fp)
	sw	$5, 532($fp)
	sw	$6, 528($fp)
	sw	$7, 524($fp)
	lw	$2, 568($fp)
	lbu	$2, 0($2)
	sb	$2, 51($fp)
	lw	$2, 568($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	sb	$2, 50($fp)
	lbu	$2, 50($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 332
	sll	$3, $3, 2
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sw	$zero, 0($2)
	lbu	$2, 50($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 84
	sll	$3, $3, 2
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sw	$zero, 0($2)
	lbu	$2, 50($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 52
	sll	$3, $3, 2
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sw	$zero, 0($2)
	addiu	$4, $fp, 116
	lw	$5, 536($fp)
	lw	$2, 568($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp27:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 116
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$2, 536($fp)
	lw	$3, 568($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$5, $2, $3
	lw	$2, 568($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp28:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 84
	lw	$5, 524($fp)
	lw	$2, 568($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp29), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp29:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 52
	lw	$2, 524($fp)
	lw	$3, 568($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$5, $2, $3
	lw	$2, 568($fp)
	lbu	$2, 1($2)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp30:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 84
	lbu	$2, 51($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp31), R_MIPS_JALR, uECC_vli_isZero
$tmp31:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_3
	nop
# %bb.1:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 52
	lbu	$2, 51($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_isZero)($1)
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_isZero
$tmp32:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_3
	nop
# %bb.2:
	b	$BB3_4
	nop
$BB3_3:
	addiu	$1, $zero, 0
	sw	$zero, 540($fp)
	b	$BB3_20
	nop
$BB3_4:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	lw	$2, 568($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	addiu	$5, $fp, 84
	lbu	$2, 50($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp33), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp33:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_7
	nop
# %bb.5:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	lw	$2, 568($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	addiu	$5, $fp, 52
	lbu	$2, 50($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp34), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp34:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_7
	nop
# %bb.6:
	b	$BB3_8
	nop
$BB3_7:
	addiu	$1, $zero, 0
	sw	$zero, 540($fp)
	b	$BB3_20
	nop
$BB3_8:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 428
	addiu	$5, $fp, 52
	lw	$2, 568($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lbu	$2, 50($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_modInv)($1)
	.reloc ($tmp35), R_MIPS_JALR, uECC_vli_modInv
$tmp35:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	lbu	$2, 50($fp)
	seb	$2, $2
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $fp, 492
	sll	$3, $3, 2
	addu	$2, $2, $3
	addiu	$3, $zero, 0
	sw	$zero, 0($2)
	addiu	$4, $fp, 492
	lw	$5, 532($fp)
	lw	$6, 528($fp)
	lw	$7, 568($fp)
	lw	$1, %got(bits2int)($1)
	addiu	$25, $1, %lo(bits2int)
	.reloc ($tmp36), R_MIPS_JALR, bits2int
$tmp36:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 492
	addiu	$5, $fp, 492
	addiu	$6, $fp, 428
	lw	$1, 568($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 50($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp37), R_MIPS_JALR, uECC_vli_modMult
$tmp37:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 460
	addiu	$5, $fp, 84
	addiu	$6, $fp, 428
	lw	$1, 568($fp)
	addiu	$2, $zero, 36
	addu	$7, $1, $2
	lbu	$1, 50($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modMult)($gp)
	.reloc ($tmp38), R_MIPS_JALR, uECC_vli_modMult
$tmp38:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 364
	addiu	$5, $fp, 116
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp39), R_MIPS_JALR, uECC_vli_set
$tmp39:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 364
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	addiu	$2, $fp, 116
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp40), R_MIPS_JALR, uECC_vli_set
$tmp40:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 268
	lw	$2, 568($fp)
	addiu	$3, $zero, 68
	addu	$5, $2, $3
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp41), R_MIPS_JALR, uECC_vli_set
$tmp41:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 236
	lw	$2, 568($fp)
	addiu	$3, $zero, 68
	addu	$2, $2, $3
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_set
$tmp42:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 428
	addiu	$5, $fp, 364
	addiu	$6, $fp, 268
	lw	$1, 568($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 51($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp43), R_MIPS_JALR, uECC_vli_modSub
$tmp43:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 268
	addiu	$5, $fp, 236
	addiu	$6, $fp, 364
	addiu	$1, $fp, 364
	lbu	$2, 51($fp)
	seb	$2, $2
	sll	$2, $2, 2
	addu	$7, $1, $2
	lw	$1, 568($fp)
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(XYcZ_add)($gp)
	.reloc ($tmp44), R_MIPS_JALR, XYcZ_add
$tmp44:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 428
	addiu	$5, $fp, 428
	lw	$2, 568($fp)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	lbu	$2, 51($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_modInv)($1)
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_modInv
$tmp45:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 364
	addiu	$2, $fp, 364
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	addiu	$6, $fp, 428
	lw	$7, 568($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp46), R_MIPS_JALR, apply_z
$tmp46:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$2, $zero, 0
	sw	$zero, 188($fp)
	lw	$2, 568($fp)
	addiu	$3, $zero, 68
	addu	$2, $2, $3
	sw	$2, 192($fp)
	addiu	$2, $fp, 116
	sw	$2, 196($fp)
	addiu	$2, $fp, 364
	sw	$2, 200($fp)
	addiu	$4, $fp, 492
	lbu	$2, 50($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_numBits)($1)
	.reloc ($tmp47), R_MIPS_JALR, uECC_vli_numBits
$tmp47:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sw	$2, 32($fp)                     # 4-byte Folded Spill
	addiu	$4, $fp, 460
	lbu	$2, 50($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_numBits)($1)
	.reloc ($tmp48), R_MIPS_JALR, uECC_vli_numBits
$tmp48:
	jalr	$25
	nop
	lw	$3, 32($fp)                     # 4-byte Folded Reload
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	seh	$4, $3
	seh	$5, $2
	lw	$1, %got(smax)($1)
	addiu	$25, $1, %lo(smax)
	.reloc ($tmp49), R_MIPS_JALR, smax
$tmp49:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	sh	$2, 182($fp)
	addiu	$4, $fp, 492
	lhu	$2, 182($fp)
	seh	$2, $2
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp50), R_MIPS_JALR, uECC_vli_testBit
$tmp50:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 36($fp)                     # 4-byte Folded Spill
	addiu	$4, $fp, 460
	lhu	$2, 182($fp)
	seh	$2, $2
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp51), R_MIPS_JALR, uECC_vli_testBit
$tmp51:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	move	$3, $2
	lw	$2, 36($fp)                     # 4-byte Folded Reload
	addiu	$4, $zero, 0
	xor	$3, $3, $zero
	sltu	$3, $zero, $3
	lui	$4, 65535
	ori	$4, $4, 65535
	xor	$3, $3, $4
	lui	$4, 65535
	ori	$4, $4, 65535
	xor	$3, $3, $4
	andi	$3, $3, 1
	sll	$3, $3, 1
	or	$3, $2, $3
	addiu	$2, $fp, 188
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sw	$2, 184($fp)
	addiu	$4, $fp, 332
	lw	$5, 184($fp)
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp52), R_MIPS_JALR, uECC_vli_set
$tmp52:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 300
	lw	$2, 184($fp)
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp53), R_MIPS_JALR, uECC_vli_set
$tmp53:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 428
	lbu	$2, 51($fp)
	seb	$5, $2
	lw	$25, %got(uECC_vli_clear)($1)
	.reloc ($tmp54), R_MIPS_JALR, uECC_vli_clear
$tmp54:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 428($fp)
	lhu	$1, 182($fp)
	seh	$1, $1
	addiu	$2, $zero, 2
	subu	$1, $1, $2
	sh	$1, 180($fp)
$BB3_9:                                 # =>This Inner Loop Header: Depth=1
	lhu	$1, 180($fp)
	seh	$1, $1
	addiu	$2, $zero, 0
	slt	$1, $1, $zero
	xori	$1, $1, 1
	bgtz	$1, $BB3_11
	nop
# %bb.10:
	b	$BB3_16
	nop
$BB3_11:                                #   in Loop: Header=BB3_9 Depth=1
	lw	$1, 568($fp)
	lw	$25, 164($1)
	addiu	$4, $fp, 332
	addiu	$5, $fp, 300
	addiu	$6, $fp, 428
	lw	$7, 568($fp)
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 492
	lhu	$2, 180($fp)
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp55), R_MIPS_JALR, uECC_vli_testBit
$tmp55:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sw	$2, 28($fp)                     # 4-byte Folded Spill
	addiu	$4, $fp, 460
	lhu	$2, 180($fp)
	seh	$5, $2
	lw	$25, %got(uECC_vli_testBit)($1)
	.reloc ($tmp56), R_MIPS_JALR, uECC_vli_testBit
$tmp56:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$3, $zero, 0
	xor	$2, $2, $zero
	sltu	$2, $zero, $2
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	andi	$2, $2, 1
	sll	$2, $2, 1
	or	$1, $1, $2
	sw	$1, 44($fp)
	lw	$2, 44($fp)
	addiu	$1, $fp, 188
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 184($fp)
	lw	$1, 184($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_13
	nop
# %bb.12:                               #   in Loop: Header=BB3_9 Depth=1
	b	$BB3_14
	nop
$BB3_13:                                #   in Loop: Header=BB3_9 Depth=1
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 268
	lw	$5, 184($fp)
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp57), R_MIPS_JALR, uECC_vli_set
$tmp57:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 236
	lw	$2, 184($fp)
	lbu	$3, 51($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$5, $2, $3
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_set)($1)
	.reloc ($tmp58), R_MIPS_JALR, uECC_vli_set
$tmp58:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 268
	addiu	$5, $fp, 236
	addiu	$6, $fp, 428
	lw	$7, 568($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp59), R_MIPS_JALR, apply_z
$tmp59:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 204
	addiu	$5, $fp, 332
	addiu	$6, $fp, 268
	lw	$1, 568($fp)
	addiu	$2, $zero, 4
	addu	$7, $1, $2
	lbu	$1, 51($fp)
	seb	$1, $1
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(uECC_vli_modSub)($gp)
	.reloc ($tmp60), R_MIPS_JALR, uECC_vli_modSub
$tmp60:
	jalr	$25
	nop
	lw	$gp, 40($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 268
	addiu	$5, $fp, 236
	addiu	$6, $fp, 332
	addiu	$7, $fp, 300
	lw	$1, 568($fp)
	move	$2, $sp
	sw	$1, 16($2)
	lw	$25, %call16(XYcZ_add)($gp)
	.reloc ($tmp61), R_MIPS_JALR, XYcZ_add
$tmp61:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 428
	addiu	$5, $fp, 428
	addiu	$6, $fp, 204
	lw	$7, 568($fp)
	lw	$25, %got(uECC_vli_modMult_fast)($1)
	.reloc ($tmp62), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp62:
	jalr	$25
	nop
$BB3_14:                                #   in Loop: Header=BB3_9 Depth=1
	b	$BB3_15
	nop
$BB3_15:                                #   in Loop: Header=BB3_9 Depth=1
	lhu	$1, 180($fp)
	addiu	$1, $1, -1
	sh	$1, 180($fp)
	b	$BB3_9
	nop
$BB3_16:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 428
	addiu	$5, $fp, 428
	lw	$2, 568($fp)
	addiu	$3, $zero, 4
	addu	$6, $2, $3
	lbu	$2, 51($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_modInv)($1)
	.reloc ($tmp63), R_MIPS_JALR, uECC_vli_modInv
$tmp63:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 332
	addiu	$5, $fp, 300
	addiu	$6, $fp, 428
	lw	$7, 568($fp)
	lw	$25, %got(apply_z)($1)
	.reloc ($tmp64), R_MIPS_JALR, apply_z
$tmp64:
	jalr	$25
	nop
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	lw	$2, 568($fp)
	addiu	$3, $zero, 36
	addu	$4, $2, $3
	addiu	$5, $fp, 332
	lbu	$2, 50($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_cmp_unsafe)($1)
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp65:
	jalr	$25
	nop
	seb	$1, $2
	addiu	$2, $zero, 1
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_18
	nop
# %bb.17:
	b	$BB3_19
	nop
$BB3_18:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 332
	addiu	$5, $fp, 332
	lw	$2, 568($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lbu	$2, 50($fp)
	seb	$7, $2
	lw	$25, %got(uECC_vli_sub)($1)
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_sub
$tmp66:
	jalr	$25
	nop
$BB3_19:
	lw	$1, 40($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 332
	addiu	$5, $fp, 84
	lbu	$2, 51($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_equal)($1)
	.reloc ($tmp67), R_MIPS_JALR, uECC_vli_equal
$tmp67:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltiu	$1, $1, 1
	andi	$1, $1, 1
	sw	$1, 540($fp)
$BB3_20:
	lw	$2, 540($fp)
	move	$sp, $fp
	lw	$fp, 544($sp)                   # 4-byte Folded Reload
	lw	$ra, 548($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 552
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_verify
$func_end3:
	.size	uECC_verify, ($func_end3)-uECC_verify
                                        # -- End function
	.p2align	2                               # -- Begin function smax
	.type	smax,@function
	.set	nomicromips
	.set	nomips16
	.ent	smax
smax:                                   # @smax
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
	sh	$4, 6($fp)
	sh	$5, 4($fp)
	lhu	$1, 6($fp)
	seh	$2, $1
	lhu	$1, 4($fp)
	seh	$1, $1
	slt	$1, $1, $2
	bgtz	$1, $BB4_2
	nop
# %bb.1:
	b	$BB4_3
	nop
$BB4_2:
	lhu	$1, 6($fp)
	seh	$1, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	$BB4_4
	nop
$BB4_3:
	lhu	$1, 4($fp)
	seh	$1, $1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
$BB4_4:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	seh	$2, $1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	smax
$func_end4:
	.size	smax, ($func_end4)-smax
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_sign_with_k
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_mult
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym uECC_vli_modMult
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_vli_set
	.addrsig_sym bits2int
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym XYcZ_add
	.addrsig_sym apply_z
	.addrsig_sym smax
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_equal
	.text
