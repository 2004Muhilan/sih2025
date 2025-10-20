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
	.frame	$fp,88,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -88
	sw	$ra, 84($sp)                    # 4-byte Folded Spill
	sw	$fp, 80($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 20($fp)                    # 4-byte Folded Spill
	move	$8, $6
	sw	$4, 36($fp)                     # 4-byte Folded Spill
	lw	$2, 124($fp)
	lw	$1, 120($fp)
	lw	$4, 116($fp)
	lw	$3, 112($fp)
	lw	$5, 108($fp)
	lw	$6, 104($fp)
	sw	$8, 64($fp)
	sw	$7, 68($fp)
	sw	$6, 72($fp)
	sw	$5, 76($fp)
	sw	$4, 60($fp)
	sw	$3, 56($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	lw	$1, 64($fp)
	lw	$3, 68($fp)
	mul	$2, $3, $1
	mul	$3, $1, $3
	multu	$1, $1
	mfhi	$1
	addu	$1, $1, $3
	addu	$3, $1, $2
	mflo	$2
	sll	$1, $3, 1
	srl	$4, $2, 31
	or	$1, $1, $4
	addu	$1, $1, $3
	sll	$3, $2, 1
	addu	$2, $3, $2
	sltu	$3, $2, $3
	addu	$1, $1, $3
	lw	$3, 56($fp)
	lw	$4, 60($fp)
	addu	$1, $1, $4
	addu	$4, $2, $3
	sltu	$2, $4, $2
	addu	$5, $1, $2
	lw	$2, 76($fp)
	lw	$1, 72($fp)
	srl	$3, $1, 31
	sll	$2, $2, 1
	or	$7, $2, $3
	sll	$6, $1, 1
	lw	$25, %call16(__udivdi3)($gp)
	.reloc ($tmp0), R_MIPS_JALR, __udivdi3
$tmp0:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	lw	$1, 40($fp)
	lw	$3, 44($fp)
	mul	$2, $3, $1
	mul	$3, $1, $3
	multu	$1, $1
	mfhi	$1
	addu	$1, $1, $3
	addu	$3, $1, $2
	mflo	$1
	lw	$4, 68($fp)
	lw	$2, 64($fp)
	srl	$5, $2, 31
	sll	$4, $4, 1
	or	$4, $4, $5
	sll	$2, $2, 1
	subu	$3, $3, $4
	sltu	$4, $1, $2
	subu	$5, $3, $4
	subu	$4, $1, $2
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	lw	$5, 36($fp)                     # 4-byte Folded Reload
	sw	$3, 4($5)
	sw	$2, 0($5)
	lw	$2, 44($fp)
	lw	$1, 40($fp)
	lw	$4, 68($fp)
	lw	$3, 64($fp)
	lw	$7, 4($5)
	lw	$5, 0($5)
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
	addu	$3, $1, $2
	mflo	$1
	lw	$2, 72($fp)
	lw	$4, 76($fp)
	subu	$3, $3, $4
	sltu	$4, $1, $2
	subu	$5, $3, $4
	subu	$4, $1, $2
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp3), R_MIPS_JALR, __umoddi3
$tmp3:
	jalr	$25
	nop
	lw	$4, 36($fp)                     # 4-byte Folded Reload
	sw	$3, 12($4)
	sw	$2, 8($4)
	move	$sp, $fp
	lw	$fp, 80($sp)                    # 4-byte Folded Reload
	lw	$ra, 84($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 88
	jr	$ra
	nop
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
