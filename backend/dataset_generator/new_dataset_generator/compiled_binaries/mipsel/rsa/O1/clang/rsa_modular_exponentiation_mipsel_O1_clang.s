	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     # -- Begin function rsa_mod_exp
	.p2align	2
	.type	rsa_mod_exp,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_mod_exp
rsa_mod_exp:                            # @rsa_mod_exp
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
	.end	rsa_mod_exp
$func_end0:
	.size	rsa_mod_exp, ($func_end0)-rsa_mod_exp
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
