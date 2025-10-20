	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         # -- Begin function mod_exp
	.p2align	2
	.type	mod_exp,@function
	.set	nomicromips
	.set	nomips16
	.ent	mod_exp
mod_exp:                                # @mod_exp
	.frame	$sp,56,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	sw	$21, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	or	$1, $6, $7
	beqz	$1, $BB0_5
	addu	$16, $2, $25
# %bb.1:
	move	$17, $7
	move	$18, $6
	lw	$19, 76($sp)
	lw	$20, 72($sp)
	addiu	$21, $zero, 0
	b	$BB0_3
	addiu	$22, $zero, 1
$BB0_2:                                 #   in Loop: Header=BB0_3 Depth=1
	multu	$23, $23
	mfhi	$1
	mflo	$4
	mul	$2, $fp, $23
	addu	$1, $1, $2
	addu	$5, $1, $2
	addiu	$1, $zero, 1
	sltu	$1, $1, $18
	srl	$2, $18, 1
	sll	$3, $17, 31
	sltu	$6, $zero, $17
	movz	$6, $1, $17
	or	$18, $2, $3
	beqz	$6, $BB0_6
	srl	$17, $17, 1
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	move	$7, $19
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	move	$gp, $16
	move	$23, $2
	andi	$1, $18, 1
	beqz	$1, $BB0_2
	move	$fp, $3
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	multu	$23, $22
	mfhi	$1
	mflo	$4
	mul	$2, $23, $21
	addu	$1, $1, $2
	mul	$2, $fp, $22
	addu	$5, $1, $2
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	move	$7, $19
	move	$22, $2
	b	$BB0_2
	move	$21, $3
$BB0_5:
	addiu	$21, $zero, 0
	addiu	$22, $zero, 1
$BB0_6:
	move	$2, $22
	move	$3, $21
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	mod_exp
$func_end0:
	.size	mod_exp, ($func_end0)-mod_exp
                                        # -- End function
	.globl	extended_gcd                    # -- Begin function extended_gcd
	.p2align	2
	.type	extended_gcd,@function
	.set	nomicromips
	.set	nomips16
	.ent	extended_gcd
extended_gcd:                           # @extended_gcd
	.frame	$sp,80,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	sw	$23, 68($sp)                    # 4-byte Folded Spill
	sw	$22, 64($sp)                    # 4-byte Folded Spill
	sw	$21, 60($sp)                    # 4-byte Folded Spill
	sw	$20, 56($sp)                    # 4-byte Folded Spill
	sw	$19, 52($sp)                    # 4-byte Folded Spill
	sw	$18, 48($sp)                    # 4-byte Folded Spill
	sw	$17, 44($sp)                    # 4-byte Folded Spill
	sw	$16, 40($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$3, $7
	or	$1, $4, $5
	lw	$21, 100($sp)
	lw	$22, 96($sp)
	beqz	$1, $BB1_2
	move	$2, $6
# %bb.1:
	move	$17, $5
	move	$18, $4
	lw	$25, %call16(__divdi3)($16)
	move	$4, $2
	move	$5, $3
	move	$6, $18
	move	$7, $17
	move	$gp, $16
	move	$23, $2
	.reloc ($tmp2), R_MIPS_JALR, __divdi3
$tmp2:
	jalr	$25
	move	$fp, $3
	move	$19, $2
	move	$20, $3
	multu	$2, $18
	mflo	$1
	mfhi	$2
	mul	$3, $19, $17
	addiu	$4, $sp, 32
	addiu	$5, $sp, 24
	sw	$5, 20($sp)
	sw	$4, 16($sp)
	addu	$2, $2, $3
	mul	$3, $20, $18
	addu	$2, $2, $3
	subu	$2, $fp, $2
	sltu	$3, $23, $1
	subu	$5, $2, $3
	subu	$4, $23, $1
	lw	$25, %call16(extended_gcd)($16)
	move	$6, $18
	move	$7, $17
	.reloc ($tmp3), R_MIPS_JALR, extended_gcd
$tmp3:
	jalr	$25
	move	$gp, $16
	lw	$4, 32($sp)
	multu	$4, $19
	mfhi	$1
	mflo	$6
	mul	$5, $4, $20
	addu	$1, $1, $5
	lw	$5, 36($sp)
	mul	$7, $5, $19
	addu	$1, $1, $7
	lw	$7, 28($sp)
	subu	$1, $7, $1
	lw	$8, 24($sp)
	sltu	$7, $8, $6
	subu	$7, $1, $7
	b	$BB1_3
	subu	$6, $8, $6
$BB1_2:
	addiu	$6, $zero, 0
	addiu	$4, $zero, 1
	addiu	$7, $zero, 0
	addiu	$5, $zero, 0
$BB1_3:
	sw	$6, 0($22)
	sw	$7, 4($22)
	sw	$4, 0($21)
	sw	$5, 4($21)
	lw	$16, 40($sp)                    # 4-byte Folded Reload
	lw	$17, 44($sp)                    # 4-byte Folded Reload
	lw	$18, 48($sp)                    # 4-byte Folded Reload
	lw	$19, 52($sp)                    # 4-byte Folded Reload
	lw	$20, 56($sp)                    # 4-byte Folded Reload
	lw	$21, 60($sp)                    # 4-byte Folded Reload
	lw	$22, 64($sp)                    # 4-byte Folded Reload
	lw	$23, 68($sp)                    # 4-byte Folded Reload
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 80
	.set	at
	.set	macro
	.set	reorder
	.end	extended_gcd
$func_end1:
	.size	extended_gcd, ($func_end1)-extended_gcd
                                        # -- End function
	.globl	rsa_encrypt                     # -- Begin function rsa_encrypt
	.p2align	2
	.type	rsa_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_encrypt
rsa_encrypt:                            # @rsa_encrypt
	.frame	$sp,56,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	sw	$21, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	or	$1, $6, $7
	beqz	$1, $BB2_5
	addu	$16, $2, $25
# %bb.1:
	move	$17, $7
	move	$18, $6
	lw	$19, 76($sp)
	lw	$20, 72($sp)
	addiu	$21, $zero, 0
	b	$BB2_3
	addiu	$22, $zero, 1
$BB2_2:                                 #   in Loop: Header=BB2_3 Depth=1
	multu	$23, $23
	mfhi	$1
	mflo	$4
	mul	$2, $fp, $23
	addu	$1, $1, $2
	addu	$5, $1, $2
	addiu	$1, $zero, 1
	sltu	$1, $1, $18
	srl	$2, $18, 1
	sll	$3, $17, 31
	sltu	$6, $zero, $17
	movz	$6, $1, $17
	or	$18, $2, $3
	beqz	$6, $BB2_6
	srl	$17, $17, 1
$BB2_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	move	$7, $19
	.reloc ($tmp4), R_MIPS_JALR, __umoddi3
$tmp4:
	jalr	$25
	move	$gp, $16
	move	$23, $2
	andi	$1, $18, 1
	beqz	$1, $BB2_2
	move	$fp, $3
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	multu	$23, $22
	mfhi	$1
	mflo	$4
	mul	$2, $23, $21
	addu	$1, $1, $2
	mul	$2, $fp, $22
	addu	$5, $1, $2
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	.reloc ($tmp5), R_MIPS_JALR, __umoddi3
$tmp5:
	jalr	$25
	move	$7, $19
	move	$22, $2
	b	$BB2_2
	move	$21, $3
$BB2_5:
	addiu	$21, $zero, 0
	addiu	$22, $zero, 1
$BB2_6:
	move	$2, $22
	move	$3, $21
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_encrypt
$func_end2:
	.size	rsa_encrypt, ($func_end2)-rsa_encrypt
                                        # -- End function
	.globl	rsa_decrypt                     # -- Begin function rsa_decrypt
	.p2align	2
	.type	rsa_decrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_decrypt
rsa_decrypt:                            # @rsa_decrypt
	.frame	$sp,56,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	sw	$21, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	or	$1, $6, $7
	beqz	$1, $BB3_5
	addu	$16, $2, $25
# %bb.1:
	move	$17, $7
	move	$18, $6
	lw	$19, 76($sp)
	lw	$20, 72($sp)
	addiu	$21, $zero, 0
	b	$BB3_3
	addiu	$22, $zero, 1
$BB3_2:                                 #   in Loop: Header=BB3_3 Depth=1
	multu	$23, $23
	mfhi	$1
	mflo	$4
	mul	$2, $fp, $23
	addu	$1, $1, $2
	addu	$5, $1, $2
	addiu	$1, $zero, 1
	sltu	$1, $1, $18
	srl	$2, $18, 1
	sll	$3, $17, 31
	sltu	$6, $zero, $17
	movz	$6, $1, $17
	or	$18, $2, $3
	beqz	$6, $BB3_6
	srl	$17, $17, 1
$BB3_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	move	$7, $19
	.reloc ($tmp6), R_MIPS_JALR, __umoddi3
$tmp6:
	jalr	$25
	move	$gp, $16
	move	$23, $2
	andi	$1, $18, 1
	beqz	$1, $BB3_2
	move	$fp, $3
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	multu	$23, $22
	mfhi	$1
	mflo	$4
	mul	$2, $23, $21
	addu	$1, $1, $2
	mul	$2, $fp, $22
	addu	$5, $1, $2
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $20
	.reloc ($tmp7), R_MIPS_JALR, __umoddi3
$tmp7:
	jalr	$25
	move	$7, $19
	move	$22, $2
	b	$BB3_2
	move	$21, $3
$BB3_5:
	addiu	$21, $zero, 0
	addiu	$22, $zero, 1
$BB3_6:
	move	$2, $22
	move	$3, $21
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_decrypt
$func_end3:
	.size	rsa_decrypt, ($func_end3)-rsa_decrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
