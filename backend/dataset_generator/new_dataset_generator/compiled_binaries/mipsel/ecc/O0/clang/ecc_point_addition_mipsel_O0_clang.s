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
	.frame	$fp,112,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$fp, 104($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 36($fp)                    # 4-byte Folded Spill
	move	$9, $7
	move	$10, $6
	sw	$4, 52($fp)                     # 4-byte Folded Spill
	lw	$2, 156($fp)
	lw	$1, 152($fp)
	lw	$3, 148($fp)
	lw	$4, 144($fp)
	lw	$5, 140($fp)
	lw	$6, 136($fp)
	lw	$7, 132($fp)
	lw	$8, 128($fp)
	sw	$10, 88($fp)
	sw	$9, 92($fp)
	sw	$8, 96($fp)
	sw	$7, 100($fp)
	sw	$6, 72($fp)
	sw	$5, 76($fp)
	sw	$4, 80($fp)
	sw	$3, 84($fp)
	sw	$2, 68($fp)
	sw	$1, 64($fp)
	lw	$2, 84($fp)
	lw	$1, 80($fp)
	lw	$5, 100($fp)
	lw	$3, 96($fp)
	sltu	$4, $1, $3
	subu	$2, $2, $5
	subu	$2, $2, $4
	subu	$1, $1, $3
	lw	$4, 76($fp)
	lw	$3, 72($fp)
	lw	$7, 92($fp)
	lw	$5, 88($fp)
	sltu	$6, $3, $5
	subu	$4, $4, $7
	subu	$4, $4, $6
	subu	$3, $3, $5
	mul	$4, $1, $4
	multu	$1, $3
	mflo	$1
	sw	$1, 24($fp)                     # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 28($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$3, 24($fp)                     # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 28($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$5, $1, $2
	mflo	$4
	lw	$6, 64($fp)
	lw	$7, 68($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	nop
	lw	$gp, 36($fp)                    # 4-byte Folded Reload
	sw	$3, 60($fp)
	sw	$2, 56($fp)
	lw	$1, 56($fp)
	lw	$3, 60($fp)
	mul	$2, $3, $1
	mul	$3, $1, $3
	multu	$1, $1
	mfhi	$1
	addu	$1, $1, $3
	addu	$3, $1, $2
	mflo	$1
	lw	$2, 88($fp)
	lw	$4, 92($fp)
	subu	$3, $3, $4
	sltu	$4, $1, $2
	subu	$3, $3, $4
	subu	$1, $1, $2
	lw	$2, 72($fp)
	lw	$4, 76($fp)
	subu	$3, $3, $4
	sltu	$4, $1, $2
	subu	$5, $3, $4
	subu	$4, $1, $2
	lw	$6, 64($fp)
	lw	$7, 68($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	nop
	lw	$gp, 36($fp)                    # 4-byte Folded Reload
	lw	$5, 52($fp)                     # 4-byte Folded Reload
	sw	$3, 4($5)
	sw	$2, 0($5)
	lw	$2, 60($fp)
	lw	$1, 56($fp)
	lw	$4, 92($fp)
	lw	$3, 88($fp)
	lw	$7, 4($5)
	lw	$5, 0($5)
	sltu	$6, $3, $5
	subu	$4, $4, $7
	subu	$4, $4, $6
	subu	$3, $3, $5
	mul	$4, $1, $4
	multu	$1, $3
	mflo	$1
	sw	$1, 40($fp)                     # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 44($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$3, 40($fp)                     # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 44($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$3, $1, $2
	mflo	$1
	lw	$2, 96($fp)
	lw	$4, 100($fp)
	subu	$3, $3, $4
	sltu	$4, $1, $2
	subu	$5, $3, $4
	subu	$4, $1, $2
	lw	$6, 64($fp)
	lw	$7, 68($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	nop
	lw	$4, 52($fp)                     # 4-byte Folded Reload
	sw	$3, 12($4)
	sw	$2, 8($4)
	move	$sp, $fp
	lw	$fp, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 112
	jr	$ra
	nop
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
