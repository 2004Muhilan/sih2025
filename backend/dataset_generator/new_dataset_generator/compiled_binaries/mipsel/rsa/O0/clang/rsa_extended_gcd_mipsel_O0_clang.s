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
	.frame	$fp,120,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$fp, 112($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 60($fp)                     # 4-byte Folded Spill
	lw	$1, 140($fp)
	lw	$1, 136($fp)
	sw	$4, 96($fp)
	sw	$5, 100($fp)
	sw	$7, 92($fp)
	sw	$6, 88($fp)
	lw	$2, 100($fp)
	lw	$1, 96($fp)
	or	$1, $1, $2
	bnez	$1, $BB0_3
	nop
# %bb.1:
	b	$BB0_2
	nop
$BB0_2:
	lw	$1, 136($fp)
	sw	$zero, 4($1)
	sw	$zero, 0($1)
	lw	$1, 140($fp)
	addiu	$2, $zero, 1
	sw	$2, 0($1)
	sw	$zero, 4($1)
	lw	$1, 88($fp)
	lw	$2, 92($fp)
	sw	$2, 108($fp)
	sw	$1, 104($fp)
	b	$BB0_4
	nop
$BB0_3:
	lw	$gp, 60($fp)                    # 4-byte Folded Reload
	lw	$4, 88($fp)
	lw	$5, 92($fp)
	lw	$6, 96($fp)
	sw	$6, 28($fp)                     # 4-byte Folded Spill
	lw	$7, 100($fp)
	sw	$7, 32($fp)                     # 4-byte Folded Spill
	lw	$25, %call16(__moddi3)($gp)
	.reloc ($tmp0), R_MIPS_JALR, __moddi3
$tmp0:
	jalr	$25
	nop
	lw	$6, 28($fp)                     # 4-byte Folded Reload
	lw	$7, 32($fp)                     # 4-byte Folded Reload
	lw	$gp, 60($fp)                    # 4-byte Folded Reload
	move	$4, $2
	move	$5, $3
	move	$2, $sp
	addiu	$1, $fp, 72
	sw	$1, 20($2)
	addiu	$1, $fp, 80
	sw	$1, 16($2)
	lw	$25, %call16(rsa_extended_gcd)($gp)
	.reloc ($tmp1), R_MIPS_JALR, rsa_extended_gcd
$tmp1:
	jalr	$25
	nop
	lw	$gp, 60($fp)                    # 4-byte Folded Reload
	sw	$3, 68($fp)
	sw	$2, 64($fp)
	lw	$1, 72($fp)
	sw	$1, 40($fp)                     # 4-byte Folded Spill
	lw	$1, 76($fp)
	sw	$1, 36($fp)                     # 4-byte Folded Spill
	lw	$4, 88($fp)
	lw	$5, 92($fp)
	lw	$6, 96($fp)
	lw	$7, 100($fp)
	lw	$25, %call16(__divdi3)($gp)
	.reloc ($tmp2), R_MIPS_JALR, __divdi3
$tmp2:
	jalr	$25
	nop
	lw	$1, 36($fp)                     # 4-byte Folded Reload
	move	$4, $2
	lw	$2, 40($fp)                     # 4-byte Folded Reload
	sw	$4, 44($fp)                     # 4-byte Folded Spill
	move	$4, $3
	lw	$3, 44($fp)                     # 4-byte Folded Reload
	lw	$5, 80($fp)
	lw	$6, 84($fp)
	mul	$6, $3, $6
	multu	$3, $5
	mflo	$3
	sw	$3, 48($fp)                     # 8-byte Folded Spill
	mfhi	$3
	sw	$3, 52($fp)                     # 8-byte Folded Spill
	mfhi	$3
	addu	$3, $3, $6
	mul	$4, $4, $5
	lw	$5, 48($fp)                     # 8-byte Folded Reload
	mtlo	$5
	lw	$5, 52($fp)                     # 8-byte Folded Reload
	mthi	$5
	addu	$4, $3, $4
	mflo	$3
	subu	$1, $1, $4
	sltu	$4, $2, $3
	subu	$1, $1, $4
	subu	$3, $2, $3
	lw	$2, 136($fp)
	sw	$3, 0($2)
	sw	$1, 4($2)
	lw	$1, 80($fp)
	lw	$3, 84($fp)
	lw	$2, 140($fp)
	sw	$3, 4($2)
	sw	$1, 0($2)
	lw	$1, 64($fp)
	lw	$2, 68($fp)
	sw	$2, 108($fp)
	sw	$1, 104($fp)
$BB0_4:
	lw	$2, 104($fp)
	lw	$3, 108($fp)
	move	$sp, $fp
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 120
	jr	$ra
	nop
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
	.addrsig_sym rsa_extended_gcd
	.text
