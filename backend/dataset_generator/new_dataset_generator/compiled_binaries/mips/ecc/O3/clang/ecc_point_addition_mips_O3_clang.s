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
	lw	$18, 100($sp)
	lw	$fp, 92($sp)
	lw	$2, 108($sp)
	lw	$20, 96($sp)
	move	$19, $7
	move	$21, $6
	move	$16, $4
	lw	$22, 116($sp)
	lw	$25, %call16(__umoddi3)($17)
	move	$gp, $17
	subu	$3, $2, $fp
	subu	$1, $18, $7
	sltu	$8, $18, $7
	subu	$7, $20, $6
	sltu	$2, $2, $fp
	multu	$3, $1
	subu	$6, $7, $8
	move	$7, $22
	mfhi	$4
	mflo	$5
	mul	$3, $3, $6
	lw	$6, 112($sp)
	sw	$6, 20($sp)                     # 4-byte Folded Spill
	addu	$3, $4, $3
	lw	$4, 88($sp)
	sw	$4, 28($sp)                     # 4-byte Folded Spill
	addu	$2, $4, $2
	lw	$4, 104($sp)
	subu	$2, $4, $2
	mul	$1, $2, $1
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	addu	$4, $3, $1
	multu	$3, $3
	move	$23, $3
	addu	$5, $18, $19
	sw	$2, 24($sp)                     # 4-byte Folded Spill
	addu	$4, $20, $21
	lw	$25, %call16(__umoddi3)($17)
	mflo	$1
	mfhi	$7
	mul	$3, $3, $2
	sltu	$6, $5, $18
	lw	$18, 20($sp)                    # 4-byte Folded Reload
	addu	$4, $4, $6
	move	$6, $18
	addu	$2, $7, $3
	move	$7, $22
	addu	$2, $2, $3
	sltu	$3, $1, $5
	subu	$5, $1, $5
	subu	$2, $2, $4
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	subu	$4, $2, $3
	sltu	$6, $19, $3
	subu	$7, $21, $2
	subu	$1, $19, $3
	sw	$2, 0($16)
	lw	$2, 28($sp)                     # 4-byte Folded Reload
	lw	$25, %call16(__umoddi3)($17)
	sw	$3, 4($16)
	subu	$6, $7, $6
	lw	$7, 24($sp)                     # 4-byte Folded Reload
	multu	$1, $23
	mfhi	$4
	mflo	$5
	mul	$6, $6, $23
	mul	$1, $1, $7
	move	$7, $22
	addu	$1, $4, $1
	addu	$1, $1, $6
	move	$6, $18
	subu	$1, $1, $2
	sltu	$2, $5, $fp
	subu	$5, $5, $fp
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	subu	$4, $1, $2
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
