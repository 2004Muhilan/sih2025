	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                # -- Begin function ecc_point_double
	.p2align	2
	.type	ecc_point_double,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_point_double
ecc_point_double:                       # @ecc_point_double
	.frame	$sp,64,$ra
	.mask 	0xc0ff0000,-4
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
	sw	$23, 52($sp)                    # 4-byte Folded Spill
	sw	$22, 48($sp)                    # 4-byte Folded Spill
	sw	$21, 44($sp)                    # 4-byte Folded Spill
	sw	$20, 40($sp)                    # 4-byte Folded Spill
	sw	$19, 36($sp)                    # 4-byte Folded Spill
	sw	$18, 32($sp)                    # 4-byte Folded Spill
	sw	$17, 28($sp)                    # 4-byte Folded Spill
	sw	$16, 24($sp)                    # 4-byte Folded Spill
	multu	$6, $6
	addu	$17, $2, $25
	lw	$5, 84($sp)
	move	$16, $4
	lw	$fp, 80($sp)
	move	$18, $7
	move	$19, $6
	mflo	$1
	mfhi	$2
	mul	$3, $7, $6
	lw	$25, %call16(__udivdi3)($17)
	move	$gp, $17
	sw	$5, 20($sp)                     # 4-byte Folded Spill
	sll	$5, $5, 1
	sll	$6, $fp, 1
	addu	$2, $2, $3
	srl	$4, $1, 31
	addu	$2, $2, $3
	sll	$3, $2, 1
	or	$3, $3, $4
	srl	$4, $fp, 31
	addu	$2, $3, $2
	sll	$3, $1, 1
	or	$7, $5, $4
	lw	$4, 88($sp)
	lw	$5, 92($sp)
	addu	$1, $3, $1
	sltu	$3, $1, $3
	addu	$4, $1, $4
	addu	$2, $2, $3
	sltu	$1, $4, $1
	addu	$2, $2, $5
	.reloc ($tmp0), R_MIPS_JALR, __udivdi3
$tmp0:
	jalr	$25
	addu	$5, $2, $1
	lw	$20, 96($sp)
	lw	$21, 100($sp)
	lw	$25, %call16(__umoddi3)($17)
	move	$4, $2
	move	$5, $3
	move	$gp, $17
	move	$6, $20
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	move	$7, $21
	move	$23, $3
	multu	$2, $2
	move	$22, $2
	srl	$3, $19, 31
	sll	$4, $18, 1
	lw	$25, %call16(__umoddi3)($17)
	move	$6, $20
	move	$7, $21
	mflo	$1
	mfhi	$2
	mul	$5, $22, $23
	or	$3, $4, $3
	sll	$4, $19, 1
	addu	$2, $2, $5
	addu	$2, $2, $5
	subu	$2, $2, $3
	sltu	$3, $1, $4
	subu	$4, $1, $4
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	subu	$5, $2, $3
	subu	$1, $19, $2
	sltu	$5, $19, $2
	subu	$7, $18, $3
	sw	$2, 0($16)
	lw	$2, 20($sp)                     # 4-byte Folded Reload
	lw	$25, %call16(__umoddi3)($17)
	sw	$3, 4($16)
	multu	$1, $22
	subu	$5, $7, $5
	move	$7, $21
	mfhi	$4
	mflo	$6
	mul	$1, $1, $23
	mul	$5, $5, $22
	addu	$1, $4, $1
	subu	$4, $6, $fp
	addu	$1, $1, $5
	subu	$1, $1, $2
	sltu	$2, $6, $fp
	move	$6, $20
	.reloc ($tmp3), R_MIPS_JALR, __umoddi3
$tmp3:
	jalr	$25
	subu	$5, $1, $2
	sw	$2, 8($16)
	sw	$3, 12($16)
	move	$2, $16
	lw	$16, 24($sp)                    # 4-byte Folded Reload
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$18, 32($sp)                    # 4-byte Folded Reload
	lw	$19, 36($sp)                    # 4-byte Folded Reload
	lw	$20, 40($sp)                    # 4-byte Folded Reload
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	lw	$22, 48($sp)                    # 4-byte Folded Reload
	lw	$23, 52($sp)                    # 4-byte Folded Reload
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 64
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_point_double
$func_end0:
	.size	ecc_point_double, ($func_end0)-ecc_point_double
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
