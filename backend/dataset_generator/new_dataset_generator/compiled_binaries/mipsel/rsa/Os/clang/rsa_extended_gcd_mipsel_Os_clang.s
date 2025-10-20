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
	addu	$18, $2, $25
	move	$17, $7
	or	$1, $4, $5
	lw	$23, 100($sp)
	lw	$fp, 96($sp)
	beqz	$1, $BB0_2
	move	$16, $6
# %bb.1:
	move	$19, $5
	move	$20, $4
	lw	$25, %call16(__divdi3)($18)
	move	$4, $16
	move	$5, $17
	move	$6, $20
	move	$7, $19
	.reloc ($tmp0), R_MIPS_JALR, __divdi3
$tmp0:
	jalr	$25
	move	$gp, $18
	move	$21, $2
	move	$22, $3
	multu	$2, $20
	mflo	$1
	mfhi	$2
	mul	$3, $21, $19
	addiu	$4, $sp, 32
	addiu	$5, $sp, 24
	sw	$5, 20($sp)
	sw	$4, 16($sp)
	addu	$2, $2, $3
	mul	$3, $22, $20
	addu	$2, $2, $3
	subu	$2, $17, $2
	sltu	$3, $16, $1
	subu	$5, $2, $3
	subu	$4, $16, $1
	lw	$25, %call16(rsa_extended_gcd)($18)
	move	$6, $20
	move	$7, $19
	.reloc ($tmp1), R_MIPS_JALR, rsa_extended_gcd
$tmp1:
	jalr	$25
	move	$gp, $18
	move	$16, $2
	move	$17, $3
	lw	$2, 32($sp)
	multu	$2, $21
	mfhi	$1
	mflo	$4
	mul	$3, $2, $22
	addu	$1, $1, $3
	lw	$3, 36($sp)
	mul	$5, $3, $21
	addu	$1, $1, $5
	lw	$5, 28($sp)
	subu	$1, $5, $1
	lw	$6, 24($sp)
	sltu	$5, $6, $4
	subu	$5, $1, $5
	b	$BB0_3
	subu	$4, $6, $4
$BB0_2:
	addiu	$4, $zero, 0
	addiu	$2, $zero, 1
	addiu	$5, $zero, 0
	addiu	$3, $zero, 0
$BB0_3:
	sw	$4, 0($fp)
	sw	$5, 4($fp)
	sw	$2, 0($23)
	sw	$3, 4($23)
	move	$2, $16
	move	$3, $17
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
