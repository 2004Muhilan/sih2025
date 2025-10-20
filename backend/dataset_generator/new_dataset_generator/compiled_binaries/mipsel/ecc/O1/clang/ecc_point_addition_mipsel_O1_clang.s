	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   # -- Begin function ecc_point_add
	.p2align	2
	.type	ecc_point_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_point_add
ecc_point_add:                          # @ecc_point_add
	.frame	$sp,72,$ra
	.mask 	0xc0ff0000,-4
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
	sw	$23, 60($sp)                    # 4-byte Folded Spill
	sw	$22, 56($sp)                    # 4-byte Folded Spill
	sw	$21, 52($sp)                    # 4-byte Folded Spill
	sw	$20, 48($sp)                    # 4-byte Folded Spill
	sw	$19, 44($sp)                    # 4-byte Folded Spill
	sw	$18, 40($sp)                    # 4-byte Folded Spill
	sw	$17, 36($sp)                    # 4-byte Folded Spill
	sw	$16, 32($sp)                    # 4-byte Folded Spill
	addu	$17, $2, $25
	move	$21, $7
	move	$19, $6
	move	$16, $4
	lw	$18, 96($sp)
	subu	$1, $18, $6
	lw	$fp, 88($sp)
	lw	$2, 104($sp)
	subu	$3, $2, $fp
	multu	$3, $1
	mfhi	$5
	mflo	$4
	sltu	$6, $18, $6
	lw	$20, 100($sp)
	subu	$8, $20, $7
	subu	$6, $8, $6
	mul	$3, $3, $6
	addu	$3, $5, $3
	sltu	$2, $2, $fp
	lw	$5, 92($sp)
	sw	$5, 28($sp)                     # 4-byte Folded Spill
	addu	$2, $5, $2
	lw	$5, 108($sp)
	subu	$2, $5, $2
	mul	$1, $2, $1
	addu	$5, $3, $1
	lw	$6, 112($sp)
	sw	$6, 20($sp)                     # 4-byte Folded Spill
	lw	$23, 116($sp)
	lw	$25, %call16(__umoddi3)($17)
	move	$7, $23
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	move	$gp, $17
	move	$22, $2
	sw	$3, 24($sp)                     # 4-byte Folded Spill
	multu	$2, $2
	mflo	$1
	mfhi	$2
	mul	$7, $22, $3
	addu	$4, $20, $21
	addu	$6, $18, $19
	sltu	$5, $6, $18
	addu	$4, $4, $5
	lw	$25, %call16(__umoddi3)($17)
	addu	$2, $2, $7
	addu	$2, $2, $7
	subu	$2, $2, $4
	sltu	$3, $1, $6
	subu	$5, $2, $3
	subu	$4, $1, $6
	lw	$18, 20($sp)                    # 4-byte Folded Reload
	move	$6, $18
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	move	$7, $23
	subu	$1, $19, $2
	multu	$1, $22
	mfhi	$4
	mflo	$6
	lw	$25, %call16(__umoddi3)($17)
	sltu	$5, $19, $2
	subu	$7, $21, $3
	subu	$5, $7, $5
	mul	$5, $5, $22
	lw	$7, 24($sp)                     # 4-byte Folded Reload
	mul	$1, $1, $7
	addu	$1, $4, $1
	addu	$1, $1, $5
	sw	$2, 0($16)
	sw	$3, 4($16)
	lw	$2, 28($sp)                     # 4-byte Folded Reload
	subu	$1, $1, $2
	sltu	$2, $6, $fp
	subu	$5, $1, $2
	subu	$4, $6, $fp
	move	$6, $18
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	move	$7, $23
	sw	$2, 8($16)
	sw	$3, 12($16)
	move	$2, $16
	lw	$16, 32($sp)                    # 4-byte Folded Reload
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lw	$18, 40($sp)                    # 4-byte Folded Reload
	lw	$19, 44($sp)                    # 4-byte Folded Reload
	lw	$20, 48($sp)                    # 4-byte Folded Reload
	lw	$21, 52($sp)                    # 4-byte Folded Reload
	lw	$22, 56($sp)                    # 4-byte Folded Reload
	lw	$23, 60($sp)                    # 4-byte Folded Reload
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 72
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_point_add
$func_end0:
	.size	ecc_point_add, ($func_end0)-ecc_point_add
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
