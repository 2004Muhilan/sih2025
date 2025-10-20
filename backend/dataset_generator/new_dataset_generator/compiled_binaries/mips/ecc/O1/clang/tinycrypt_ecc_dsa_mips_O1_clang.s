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
	.frame	$sp,224,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -224
	sw	$ra, 220($sp)                   # 4-byte Folded Spill
	sw	$fp, 216($sp)                   # 4-byte Folded Spill
	sw	$23, 212($sp)                   # 4-byte Folded Spill
	sw	$22, 208($sp)                   # 4-byte Folded Spill
	sw	$21, 204($sp)                   # 4-byte Folded Spill
	sw	$20, 200($sp)                   # 4-byte Folded Spill
	sw	$19, 196($sp)                   # 4-byte Folded Spill
	sw	$18, 192($sp)                   # 4-byte Folded Spill
	sw	$17, 188($sp)                   # 4-byte Folded Spill
	sw	$16, 184($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$18, $7
	move	$20, $6
	move	$23, $5
	move	$21, $4
	lw	$17, 244($sp)
	addiu	$1, $sp, 120
	sw	$1, 116($sp)
	addiu	$1, $sp, 152
	sw	$1, 112($sp)
	lh	$22, 2($17)
	lb	$fp, 0($17)
	lw	$25, %call16(uECC_vli_isZero)($16)
	move	$4, $7
	move	$5, $fp
	.reloc ($tmp0), R_MIPS_JALR, uECC_vli_isZero
$tmp0:
	jalr	$25
	move	$gp, $16
	bnez	$2, $BB0_3
	addiu	$19, $zero, 0
# %bb.1:
	sw	$23, 40($sp)                    # 4-byte Folded Spill
	sw	$20, 44($sp)                    # 4-byte Folded Spill
	addiu	$1, $22, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$1, $1, 5
	addiu	$23, $17, 36
	seb	$20, $1
	lw	$25, %call16(uECC_vli_cmp)($16)
	move	$4, $23
	move	$5, $18
	move	$6, $20
	.reloc ($tmp1), R_MIPS_JALR, uECC_vli_cmp
$tmp1:
	jalr	$25
	move	$gp, $16
	addiu	$1, $zero, 1
	bne	$2, $1, $BB0_3
	nop
# %bb.2:
	sw	$23, 36($sp)                    # 4-byte Folded Spill
	addiu	$5, $sp, 152
	addiu	$23, $sp, 120
	lw	$25, %call16(regularize_k)($16)
	move	$4, $18
	move	$6, $23
	move	$7, $17
	.reloc ($tmp2), R_MIPS_JALR, regularize_k
$tmp2:
	jalr	$25
	move	$gp, $16
	sltiu	$1, $2, 1
	sll	$1, $1, 2
	addiu	$2, $sp, 112
	addu	$1, $2, $1
	lw	$6, 0($1)
	addiu	$1, $22, 1
	addiu	$5, $17, 68
	seh	$1, $1
	addiu	$22, $sp, 48
	addiu	$19, $zero, 0
	sw	$17, 20($sp)
	sw	$1, 16($sp)
	lw	$25, %call16(EccPoint_mult)($16)
	move	$4, $22
	addiu	$7, $zero, 0
	.reloc ($tmp3), R_MIPS_JALR, EccPoint_mult
$tmp3:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(uECC_vli_isZero)($16)
	move	$4, $22
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_isZero
$tmp4:
	jalr	$25
	move	$5, $fp
	beqz	$2, $BB0_4
	nop
$BB0_3:
	move	$2, $19
	lw	$16, 184($sp)                   # 4-byte Folded Reload
	lw	$17, 188($sp)                   # 4-byte Folded Reload
	lw	$18, 192($sp)                   # 4-byte Folded Reload
	lw	$19, 196($sp)                   # 4-byte Folded Reload
	lw	$20, 200($sp)                   # 4-byte Folded Reload
	lw	$21, 204($sp)                   # 4-byte Folded Reload
	lw	$22, 208($sp)                   # 4-byte Folded Reload
	lw	$23, 212($sp)                   # 4-byte Folded Reload
	lw	$fp, 216($sp)                   # 4-byte Folded Reload
	lw	$ra, 220($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 224
$BB0_4:
	sw	$23, 32($sp)                    # 4-byte Folded Spill
	lw	$25, %call16(uECC_get_rng)($16)
	.reloc ($tmp5), R_MIPS_JALR, uECC_get_rng
$tmp5:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB0_7
	nop
# %bb.5:
	addiu	$4, $sp, 152
	lw	$25, %call16(uECC_generate_random_int)($16)
	lw	$22, 36($sp)                    # 4-byte Folded Reload
	move	$5, $22
	move	$6, $20
	.reloc ($tmp6), R_MIPS_JALR, uECC_generate_random_int
$tmp6:
	jalr	$25
	move	$gp, $16
	bnez	$2, $BB0_8
	nop
# %bb.6:
	b	$BB0_3
	nop
$BB0_7:
	addiu	$4, $sp, 152
	lw	$25, %call16(uECC_vli_clear)($16)
	move	$5, $20
	.reloc ($tmp7), R_MIPS_JALR, uECC_vli_clear
$tmp7:
	jalr	$25
	move	$gp, $16
	addiu	$1, $zero, 1
	sw	$1, 152($sp)
	lw	$22, 36($sp)                    # 4-byte Folded Reload
$BB0_8:
	lw	$1, 240($sp)
	sw	$1, 36($sp)                     # 4-byte Folded Spill
	sw	$20, 16($sp)
	addiu	$23, $sp, 152
	lw	$25, %call16(uECC_vli_modMult)($16)
	move	$4, $18
	move	$5, $18
	move	$6, $23
	move	$7, $22
	.reloc ($tmp8), R_MIPS_JALR, uECC_vli_modMult
$tmp8:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(uECC_vli_modInv)($16)
	move	$4, $18
	move	$5, $18
	move	$6, $22
	move	$7, $20
	.reloc ($tmp9), R_MIPS_JALR, uECC_vli_modInv
$tmp9:
	jalr	$25
	move	$gp, $16
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modMult)($16)
	move	$4, $18
	move	$5, $18
	move	$6, $23
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_modMult
$tmp10:
	jalr	$25
	move	$7, $22
	addiu	$6, $sp, 48
	sw	$6, 28($sp)                     # 4-byte Folded Spill
	lb	$5, 1($17)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp11:
	jalr	$25
	move	$gp, $16
	lh	$1, 2($17)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$6, $1, 3
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $23
	move	$5, $21
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp12:
	jalr	$25
	move	$gp, $16
	sll	$1, $20, 2
	lw	$21, 32($sp)                    # 4-byte Folded Reload
	addu	$1, $1, $21
	sw	$zero, -4($1)
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $21
	lw	$5, 28($sp)                     # 4-byte Folded Reload
	move	$6, $fp
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_set
$tmp13:
	jalr	$25
	move	$gp, $16
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modMult)($16)
	move	$4, $21
	move	$5, $23
	move	$6, $21
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_modMult
$tmp14:
	jalr	$25
	move	$7, $22
	lw	$1, %got(bits2int)($16)
	addiu	$25, $1, %lo(bits2int)
	move	$4, $23
	lw	$5, 40($sp)                     # 4-byte Folded Reload
	lw	$6, 44($sp)                     # 4-byte Folded Reload
	.reloc ($tmp15), R_MIPS_JALR, bits2int
$tmp15:
	jalr	$25
	move	$7, $17
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($16)
	move	$4, $21
	move	$5, $23
	move	$6, $21
	move	$7, $22
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_modAdd
$tmp16:
	jalr	$25
	move	$gp, $16
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modMult)($16)
	move	$4, $21
	move	$5, $21
	move	$6, $18
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_modMult
$tmp17:
	jalr	$25
	move	$7, $22
	lw	$25, %call16(uECC_vli_numBits)($16)
	move	$4, $21
	move	$5, $20
	.reloc ($tmp18), R_MIPS_JALR, uECC_vli_numBits
$tmp18:
	jalr	$25
	move	$gp, $16
	lb	$5, 1($17)
	sll	$1, $5, 3
	slt	$1, $1, $2
	bnez	$1, $BB0_3
	nop
# %bb.9:
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	addu	$4, $1, $5
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	.reloc ($tmp19), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp19:
	jalr	$25
	addiu	$6, $sp, 120
	b	$BB0_3
	addiu	$19, $zero, 1
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
	.frame	$sp,56,$ra
	.mask 	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$23, 48($sp)                    # 4-byte Folded Spill
	sw	$22, 44($sp)                    # 4-byte Folded Spill
	sw	$21, 40($sp)                    # 4-byte Folded Spill
	sw	$20, 36($sp)                    # 4-byte Folded Spill
	sw	$19, 32($sp)                    # 4-byte Folded Spill
	sw	$18, 28($sp)                    # 4-byte Folded Spill
	sw	$17, 24($sp)                    # 4-byte Folded Spill
	sw	$16, 20($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$19, $7
	move	$20, $6
	move	$21, $5
	move	$17, $4
	lh	$23, 2($7)
	addiu	$1, $23, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$22, $1, 5
	seb	$18, $22
	lw	$25, %call16(uECC_vli_clear)($16)
	move	$5, $18
	.reloc ($tmp20), R_MIPS_JALR, uECC_vli_clear
$tmp20:
	jalr	$25
	move	$gp, $16
	addiu	$1, $23, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$1, $1, 3
	sltu	$2, $1, $20
	movn	$20, $1, $2
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $17
	move	$5, $21
	move	$6, $20
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp21:
	jalr	$25
	move	$gp, $16
	sll	$2, $20, 3
	lh	$3, 2($19)
	sltu	$1, $3, $2
	beqz	$1, $BB1_6
	nop
# %bb.1:
	blez	$23, $BB1_4
	nop
# %bb.2:
	subu	$2, $2, $3
	addiu	$1, $zero, 32
	subu	$3, $1, $2
	sll	$1, $22, 2
	addu	$4, $17, $1
	addiu	$5, $zero, 0
$BB1_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, -4($4)
	srlv	$6, $1, $2
	or	$5, $6, $5
	sw	$5, -4($4)
	sllv	$5, $1, $3
	addiu	$4, $4, -4
	sltu	$1, $17, $4
	bnez	$1, $BB1_3
	nop
$BB1_4:
	addiu	$19, $19, 36
	lw	$25, %call16(uECC_vli_cmp_unsafe)($16)
	move	$4, $19
	move	$5, $17
	move	$6, $18
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp22:
	jalr	$25
	move	$gp, $16
	addiu	$1, $zero, 1
	beq	$2, $1, $BB1_6
	nop
# %bb.5:
	lw	$25, %call16(uECC_vli_sub)($16)
	move	$4, $17
	move	$5, $17
	move	$6, $19
	move	$7, $18
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_sub
$tmp23:
	jalr	$25
	move	$gp, $16
$BB1_6:
	lw	$16, 20($sp)                    # 4-byte Folded Reload
	lw	$17, 24($sp)                    # 4-byte Folded Reload
	lw	$18, 28($sp)                    # 4-byte Folded Reload
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$20, 36($sp)                    # 4-byte Folded Reload
	lw	$21, 40($sp)                    # 4-byte Folded Reload
	lw	$22, 44($sp)                    # 4-byte Folded Reload
	lw	$23, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
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
	.frame	$sp,168,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -168
	sw	$ra, 164($sp)                   # 4-byte Folded Spill
	sw	$fp, 160($sp)                   # 4-byte Folded Spill
	sw	$23, 156($sp)                   # 4-byte Folded Spill
	sw	$22, 152($sp)                   # 4-byte Folded Spill
	sw	$21, 148($sp)                   # 4-byte Folded Spill
	sw	$20, 144($sp)                   # 4-byte Folded Spill
	sw	$19, 140($sp)                   # 4-byte Folded Spill
	sw	$18, 136($sp)                   # 4-byte Folded Spill
	sw	$17, 132($sp)                   # 4-byte Folded Spill
	sw	$16, 128($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	sw	$7, 28($sp)                     # 4-byte Folded Spill
	sw	$6, 24($sp)                     # 4-byte Folded Spill
	move	$19, $5
	move	$20, $4
	lw	$17, 184($sp)
	addiu	$21, $17, 36
	addiu	$18, $zero, 64
	addiu	$22, $sp, 64
	addiu	$23, $sp, 32
                                        # implicit-def: $fp
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(uECC_get_rng)($16)
	.reloc ($tmp24), R_MIPS_JALR, uECC_get_rng
$tmp24:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	move	$4, $22
	move	$25, $2
	jalr	$25
	addiu	$5, $zero, 64
	beqz	$2, $BB2_7
	nop
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	lh	$1, 2($17)
	addiu	$1, $1, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	srl	$1, $1, 5
	seb	$7, $1
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $23
	move	$5, $22
	move	$6, $21
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_mmod
$tmp25:
	jalr	$25
	move	$gp, $16
	sw	$17, 20($sp)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	sw	$1, 16($sp)
	lw	$25, %call16(uECC_sign_with_k)($16)
	move	$4, $20
	move	$5, $19
	lw	$6, 24($sp)                     # 4-byte Folded Reload
	move	$7, $23
	.reloc ($tmp26), R_MIPS_JALR, uECC_sign_with_k
$tmp26:
	jalr	$25
	move	$gp, $16
	addiu	$1, $zero, 1
	movz	$1, $fp, $2
	sltiu	$2, $2, 1
	bnez	$2, $BB2_8
	move	$fp, $1
# %bb.4:
	b	$BB2_10
	nop
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	addiu	$2, $zero, 0
	bnez	$2, $BB2_8
	addiu	$fp, $zero, 0
# %bb.6:
	b	$BB2_10
	nop
$BB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	addiu	$2, $zero, 0
	beqz	$2, $BB2_10
	addiu	$fp, $zero, 0
$BB2_8:                                 #   in Loop: Header=BB2_1 Depth=1
	addiu	$18, $18, -1
	bnez	$18, $BB2_1
	nop
# %bb.9:
	addiu	$fp, $zero, 0
$BB2_10:
	move	$2, $fp
	lw	$16, 128($sp)                   # 4-byte Folded Reload
	lw	$17, 132($sp)                   # 4-byte Folded Reload
	lw	$18, 136($sp)                   # 4-byte Folded Reload
	lw	$19, 140($sp)                   # 4-byte Folded Reload
	lw	$20, 144($sp)                   # 4-byte Folded Reload
	lw	$21, 148($sp)                   # 4-byte Folded Reload
	lw	$22, 152($sp)                   # 4-byte Folded Reload
	lw	$23, 156($sp)                   # 4-byte Folded Reload
	lw	$fp, 160($sp)                   # 4-byte Folded Reload
	lw	$ra, 164($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 168
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
	.frame	$sp,576,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -576
	sw	$ra, 572($sp)                   # 4-byte Folded Spill
	sw	$fp, 568($sp)                   # 4-byte Folded Spill
	sw	$23, 564($sp)                   # 4-byte Folded Spill
	sw	$22, 560($sp)                   # 4-byte Folded Spill
	sw	$21, 556($sp)                   # 4-byte Folded Spill
	sw	$20, 552($sp)                   # 4-byte Folded Spill
	sw	$19, 548($sp)                   # 4-byte Folded Spill
	sw	$18, 544($sp)                   # 4-byte Folded Spill
	sw	$17, 540($sp)                   # 4-byte Folded Spill
	sw	$16, 536($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$fp, $7
	sw	$6, 60($sp)                     # 4-byte Folded Spill
	sw	$5, 56($sp)                     # 4-byte Folded Spill
	move	$20, $4
	lw	$21, 592($sp)
	addiu	$1, $sp, 344
	addiu	$17, $sp, 136
	addiu	$23, $sp, 72
	addiu	$18, $sp, 104
	lh	$2, 2($21)
	addiu	$2, $2, 31
	srl	$3, $2, 27
	addu	$2, $2, $3
	sra	$2, $2, 5
	seb	$2, $2
	sw	$2, 52($sp)                     # 4-byte Folded Spill
	addiu	$2, $2, -1
	lb	$19, 0($21)
	sll	$22, $2, 2
	addu	$2, $18, $22
	sw	$zero, 0($2)
	addu	$1, $1, $22
	sw	$zero, 0($1)
	addu	$1, $23, $22
	sw	$zero, 0($1)
	lb	$6, 1($21)
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $17
	move	$5, $20
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp27:
	jalr	$25
	move	$gp, $16
	sll	$1, $19, 2
	sw	$1, 64($sp)                     # 4-byte Folded Spill
	addu	$1, $17, $1
	lb	$6, 1($21)
	addu	$5, $20, $6
	move	$20, $19
	move	$19, $1
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp28:
	jalr	$25
	move	$4, $1
	lb	$6, 1($21)
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $18
	.reloc ($tmp29), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp29:
	jalr	$25
	move	$5, $fp
	lb	$6, 1($21)
	addu	$5, $fp, $6
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp30:
	jalr	$25
	move	$4, $23
	lw	$25, %call16(uECC_vli_isZero)($16)
	move	$4, $18
	move	$5, $20
	.reloc ($tmp31), R_MIPS_JALR, uECC_vli_isZero
$tmp31:
	jalr	$25
	move	$gp, $16
	bnez	$2, $BB3_12
	addiu	$18, $zero, 0
# %bb.1:
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$23, 60($sp)                    # 4-byte Folded Reload
	sw	$21, 68($sp)                    # 4-byte Folded Spill
	addiu	$4, $sp, 72
	lw	$25, %call16(uECC_vli_isZero)($16)
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_isZero
$tmp32:
	jalr	$25
	move	$5, $20
	bnez	$2, $BB3_12
	nop
# %bb.2:
	sw	$19, 48($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	addiu	$21, $1, 36
	addiu	$5, $sp, 104
	lw	$25, %call16(uECC_vli_cmp_unsafe)($16)
	move	$4, $21
	lw	$6, 52($sp)                     # 4-byte Folded Reload
	move	$19, $6
	.reloc ($tmp33), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp33:
	jalr	$25
	move	$gp, $16
	addiu	$20, $zero, 1
	bne	$2, $20, $BB3_12
	nop
# %bb.3:
	addiu	$5, $sp, 72
	lw	$25, %call16(uECC_vli_cmp_unsafe)($16)
	move	$4, $21
	.reloc ($tmp34), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp34:
	jalr	$25
	move	$6, $19
	bne	$2, $20, $BB3_12
	nop
# %bb.4:
	addiu	$4, $sp, 440
	addiu	$5, $sp, 72
	lw	$25, %call16(uECC_vli_modInv)($16)
	move	$20, $4
	move	$6, $21
	move	$7, $19
	.reloc ($tmp35), R_MIPS_JALR, uECC_vli_modInv
$tmp35:
	jalr	$25
	move	$gp, $16
	addiu	$18, $sp, 504
	addu	$1, $18, $22
	sw	$zero, 0($1)
	lw	$1, %got(bits2int)($16)
	addiu	$25, $1, %lo(bits2int)
	move	$4, $18
	move	$5, $fp
	move	$6, $23
	lw	$fp, 68($sp)                    # 4-byte Folded Reload
	.reloc ($tmp36), R_MIPS_JALR, bits2int
$tmp36:
	jalr	$25
	move	$7, $fp
	sw	$19, 16($sp)
	lw	$25, %call16(uECC_vli_modMult)($16)
	sw	$18, 44($sp)                    # 4-byte Folded Spill
	move	$4, $18
	move	$5, $18
	move	$6, $20
	move	$7, $21
	.reloc ($tmp37), R_MIPS_JALR, uECC_vli_modMult
$tmp37:
	jalr	$25
	move	$gp, $16
	addiu	$4, $sp, 472
	sw	$4, 60($sp)                     # 4-byte Folded Spill
	addiu	$5, $sp, 104
	sw	$19, 16($sp)
	lw	$25, %call16(uECC_vli_modMult)($16)
	move	$6, $20
	move	$19, $20
	sw	$21, 24($sp)                    # 4-byte Folded Spill
	.reloc ($tmp38), R_MIPS_JALR, uECC_vli_modMult
$tmp38:
	jalr	$25
	move	$7, $21
	addiu	$18, $sp, 376
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $18
	sw	$17, 40($sp)                    # 4-byte Folded Spill
	move	$5, $17
	lw	$17, 32($sp)                    # 4-byte Folded Reload
	move	$6, $17
	.reloc ($tmp39), R_MIPS_JALR, uECC_vli_set
$tmp39:
	jalr	$25
	move	$gp, $16
	lw	$1, 64($sp)                     # 4-byte Folded Reload
	addu	$23, $18, $1
	move	$22, $1
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $23
	lw	$5, 48($sp)                     # 4-byte Folded Reload
	.reloc ($tmp40), R_MIPS_JALR, uECC_vli_set
$tmp40:
	jalr	$25
	move	$6, $17
	addiu	$21, $fp, 68
	addiu	$20, $sp, 280
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $20
	move	$5, $21
	.reloc ($tmp41), R_MIPS_JALR, uECC_vli_set
$tmp41:
	jalr	$25
	move	$6, $17
	addu	$5, $21, $22
	addiu	$fp, $sp, 248
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $fp
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_set
$tmp42:
	jalr	$25
	move	$6, $17
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	addiu	$22, $1, 4
	sw	$17, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $19
	move	$5, $18
	move	$6, $20
	move	$7, $22
	.reloc ($tmp43), R_MIPS_JALR, uECC_vli_modSub
$tmp43:
	jalr	$25
	move	$gp, $16
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	sw	$1, 16($sp)
	lw	$25, %call16(XYcZ_add)($16)
	move	$4, $20
	move	$5, $fp
	lw	$fp, 68($sp)                    # 4-byte Folded Reload
	move	$6, $18
	move	$7, $23
	.reloc ($tmp44), R_MIPS_JALR, XYcZ_add
$tmp44:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(uECC_vli_modInv)($16)
	move	$4, $19
	move	$5, $19
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	move	$6, $22
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_modInv
$tmp45:
	jalr	$25
	move	$7, $17
	lw	$25, %call16(apply_z)($16)
	move	$4, $18
	move	$5, $23
	move	$6, $19
	move	$7, $fp
	.reloc ($tmp46), R_MIPS_JALR, apply_z
$tmp46:
	jalr	$25
	move	$gp, $16
	sw	$18, 212($sp)
	lw	$1, 40($sp)                     # 4-byte Folded Reload
	sw	$1, 208($sp)
	sw	$21, 204($sp)
	sw	$zero, 200($sp)
	lw	$25, %call16(uECC_vli_numBits)($16)
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	move	$4, $21
	lw	$18, 52($sp)                    # 4-byte Folded Reload
	move	$5, $18
	.reloc ($tmp47), R_MIPS_JALR, uECC_vli_numBits
$tmp47:
	jalr	$25
	move	$gp, $16
	move	$20, $2
	lw	$25, %call16(uECC_vli_numBits)($16)
	lw	$22, 60($sp)                    # 4-byte Folded Reload
	move	$4, $22
	.reloc ($tmp48), R_MIPS_JALR, uECC_vli_numBits
$tmp48:
	jalr	$25
	move	$5, $18
	move	$18, $2
	slt	$1, $2, $20
	movn	$18, $20, $1
	addiu	$1, $18, -1
	seh	$20, $1
	lw	$25, %call16(uECC_vli_testBit)($16)
	move	$4, $21
	move	$5, $20
	.reloc ($tmp49), R_MIPS_JALR, uECC_vli_testBit
$tmp49:
	jalr	$25
	move	$gp, $16
	move	$21, $2
	lw	$25, %call16(uECC_vli_testBit)($16)
	move	$4, $22
	.reloc ($tmp50), R_MIPS_JALR, uECC_vli_testBit
$tmp50:
	jalr	$25
	move	$5, $20
	addiu	$4, $sp, 344
	addiu	$3, $sp, 200
	sltu	$1, $zero, $21
	lw	$21, 64($sp)                    # 4-byte Folded Reload
	sll	$1, $1, 2
	sltu	$2, $zero, $2
	sll	$2, $2, 3
	or	$1, $2, $1
	sw	$3, 60($sp)                     # 4-byte Folded Spill
	addu	$1, $3, $1
	lw	$20, 0($1)
	lw	$25, %call16(uECC_vli_set)($16)
	move	$5, $20
	.reloc ($tmp51), R_MIPS_JALR, uECC_vli_set
$tmp51:
	jalr	$25
	move	$6, $17
	addiu	$4, $sp, 312
	addu	$5, $20, $21
	lw	$25, %call16(uECC_vli_set)($16)
	.reloc ($tmp52), R_MIPS_JALR, uECC_vli_set
$tmp52:
	jalr	$25
	move	$6, $17
	lw	$25, %call16(uECC_vli_clear)($16)
	move	$4, $19
	move	$5, $17
	.reloc ($tmp53), R_MIPS_JALR, uECC_vli_clear
$tmp53:
	jalr	$25
	move	$gp, $16
	addiu	$2, $zero, 1
	addiu	$1, $18, -2
	seh	$17, $1
	bltz	$17, $BB3_9
	sw	$2, 440($sp)
# %bb.5:
	addiu	$1, $sp, 344
	sw	$1, 56($sp)                     # 4-byte Folded Spill
	addiu	$1, $sp, 312
	sw	$1, 48($sp)                     # 4-byte Folded Spill
	addiu	$1, $sp, 440
	sw	$1, 44($sp)                     # 4-byte Folded Spill
	addiu	$1, $sp, 504
	sw	$1, 40($sp)                     # 4-byte Folded Spill
	addiu	$1, $sp, 472
	sw	$1, 36($sp)                     # 4-byte Folded Spill
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	b	$BB3_7
	nop
$BB3_6:                                 #   in Loop: Header=BB3_7 Depth=1
	blez	$18, $BB3_9
	addiu	$17, $17, -1
$BB3_7:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, 164($fp)
	lw	$4, 56($sp)                     # 4-byte Folded Reload
	lw	$5, 48($sp)                     # 4-byte Folded Reload
	lw	$6, 44($sp)                     # 4-byte Folded Reload
	jalr	$25
	move	$7, $fp
	seh	$18, $17
	lw	$25, %call16(uECC_vli_testBit)($16)
	lw	$4, 40($sp)                     # 4-byte Folded Reload
	.reloc ($tmp54), R_MIPS_JALR, uECC_vli_testBit
$tmp54:
	jalr	$25
	move	$5, $18
	move	$20, $2
	lw	$25, %call16(uECC_vli_testBit)($16)
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	.reloc ($tmp55), R_MIPS_JALR, uECC_vli_testBit
$tmp55:
	jalr	$25
	move	$5, $18
	sltu	$1, $zero, $20
	sll	$1, $1, 2
	sltu	$2, $zero, $2
	sll	$2, $2, 3
	or	$1, $2, $1
	lw	$2, 60($sp)                     # 4-byte Folded Reload
	addu	$1, $2, $1
	lw	$20, 0($1)
	beqz	$20, $BB3_6
	nop
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	addiu	$22, $sp, 280
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $22
	move	$5, $20
	.reloc ($tmp56), R_MIPS_JALR, uECC_vli_set
$tmp56:
	jalr	$25
	move	$6, $19
	addu	$5, $20, $21
	addiu	$20, $sp, 248
	lw	$25, %call16(uECC_vli_set)($16)
	move	$4, $20
	.reloc ($tmp57), R_MIPS_JALR, uECC_vli_set
$tmp57:
	jalr	$25
	move	$6, $19
	addiu	$23, $sp, 440
	lw	$25, %call16(apply_z)($16)
	move	$4, $22
	move	$5, $20
	move	$6, $23
	.reloc ($tmp58), R_MIPS_JALR, apply_z
$tmp58:
	jalr	$25
	move	$7, $fp
	addiu	$fp, $sp, 216
	addiu	$21, $sp, 344
	sw	$19, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $21
	lw	$7, 28($sp)                     # 4-byte Folded Reload
	.reloc ($tmp59), R_MIPS_JALR, uECC_vli_modSub
$tmp59:
	jalr	$25
	move	$6, $22
	addiu	$7, $sp, 312
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	sw	$1, 16($sp)
	lw	$25, %call16(XYcZ_add)($16)
	move	$4, $22
	move	$6, $21
	lw	$21, 64($sp)                    # 4-byte Folded Reload
	.reloc ($tmp60), R_MIPS_JALR, XYcZ_add
$tmp60:
	jalr	$25
	move	$5, $20
	lw	$25, %call16(uECC_vli_modMult_fast)($16)
	move	$4, $23
	move	$5, $23
	move	$6, $fp
	lw	$fp, 68($sp)                    # 4-byte Folded Reload
	move	$7, $fp
	.reloc ($tmp61), R_MIPS_JALR, uECC_vli_modMult_fast
$tmp61:
	jalr	$25
	move	$gp, $16
	b	$BB3_6
	nop
$BB3_9:
	addiu	$18, $sp, 440
	lw	$25, %call16(uECC_vli_modInv)($16)
	move	$4, $18
	lw	$6, 28($sp)                     # 4-byte Folded Reload
	lw	$7, 32($sp)                     # 4-byte Folded Reload
	.reloc ($tmp62), R_MIPS_JALR, uECC_vli_modInv
$tmp62:
	jalr	$25
	move	$5, $18
	addiu	$20, $sp, 344
	addiu	$5, $sp, 312
	lw	$25, %call16(apply_z)($16)
	move	$4, $20
	move	$6, $18
	.reloc ($tmp63), R_MIPS_JALR, apply_z
$tmp63:
	jalr	$25
	move	$7, $fp
	lw	$25, %call16(uECC_vli_cmp_unsafe)($16)
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	move	$4, $18
	move	$5, $20
	lw	$17, 52($sp)                    # 4-byte Folded Reload
	.reloc ($tmp64), R_MIPS_JALR, uECC_vli_cmp_unsafe
$tmp64:
	jalr	$25
	move	$6, $17
	addiu	$1, $zero, 1
	beq	$2, $1, $BB3_11
	nop
# %bb.10:
	addiu	$4, $sp, 344
	lw	$25, %call16(uECC_vli_sub)($16)
	move	$5, $4
	move	$6, $18
	move	$7, $17
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_sub
$tmp65:
	jalr	$25
	move	$gp, $16
$BB3_11:
	addiu	$4, $sp, 344
	addiu	$5, $sp, 104
	lw	$25, %call16(uECC_vli_equal)($16)
	lw	$6, 32($sp)                     # 4-byte Folded Reload
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_equal
$tmp66:
	jalr	$25
	move	$gp, $16
	sltiu	$18, $2, 1
$BB3_12:
	move	$2, $18
	lw	$16, 536($sp)                   # 4-byte Folded Reload
	lw	$17, 540($sp)                   # 4-byte Folded Reload
	lw	$18, 544($sp)                   # 4-byte Folded Reload
	lw	$19, 548($sp)                   # 4-byte Folded Reload
	lw	$20, 552($sp)                   # 4-byte Folded Reload
	lw	$21, 556($sp)                   # 4-byte Folded Reload
	lw	$22, 560($sp)                   # 4-byte Folded Reload
	lw	$23, 564($sp)                   # 4-byte Folded Reload
	lw	$fp, 568($sp)                   # 4-byte Folded Reload
	lw	$ra, 572($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 576
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_verify
$func_end3:
	.size	uECC_verify, ($func_end3)-uECC_verify
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
