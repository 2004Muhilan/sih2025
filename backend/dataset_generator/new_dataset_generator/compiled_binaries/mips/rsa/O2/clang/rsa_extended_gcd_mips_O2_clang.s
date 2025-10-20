	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                # -- Begin function rsa_extended_gcd
	.p2align	2
	.type	rsa_extended_gcd,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_extended_gcd
rsa_extended_gcd:                       # @rsa_extended_gcd
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
	or	$1, $5, $4
	lw	$21, 100($sp)
	lw	$22, 96($sp)
	beqz	$1, $BB0_2
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
	move	$23, $3
	.reloc ($tmp0), R_MIPS_JALR, __divdi3
$tmp0:
	jalr	$25
	move	$fp, $2
	move	$19, $2
	move	$20, $3
	multu	$3, $17
	mflo	$1
	mfhi	$2
	mul	$3, $3, $18
	addiu	$4, $sp, 32
	addiu	$5, $sp, 24
	sw	$5, 20($sp)
	sw	$4, 16($sp)
	addu	$2, $2, $3
	mul	$3, $19, $17
	addu	$2, $2, $3
	subu	$2, $fp, $2
	sltu	$3, $23, $1
	subu	$4, $2, $3
	subu	$5, $23, $1
	lw	$25, %call16(rsa_extended_gcd)($16)
	move	$6, $18
	move	$7, $17
	.reloc ($tmp1), R_MIPS_JALR, rsa_extended_gcd
$tmp1:
	jalr	$25
	move	$gp, $16
	lw	$4, 36($sp)
	multu	$4, $20
	mfhi	$1
	mflo	$7
	mul	$5, $4, $19
	addu	$1, $1, $5
	lw	$5, 32($sp)
	mul	$6, $5, $20
	addu	$1, $1, $6
	lw	$6, 24($sp)
	subu	$1, $6, $1
	lw	$8, 28($sp)
	sltu	$6, $8, $7
	subu	$6, $1, $6
	b	$BB0_3
	subu	$7, $8, $7
$BB0_2:
	addiu	$4, $zero, 1
	addiu	$6, $zero, 0
	addiu	$7, $zero, 0
	addiu	$5, $zero, 0
$BB0_3:
	sw	$6, 0($22)
	sw	$7, 4($22)
	sw	$5, 0($21)
	sw	$4, 4($21)
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
	.end	rsa_extended_gcd
$func_end0:
	.size	rsa_extended_gcd, ($func_end0)-rsa_extended_gcd
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
