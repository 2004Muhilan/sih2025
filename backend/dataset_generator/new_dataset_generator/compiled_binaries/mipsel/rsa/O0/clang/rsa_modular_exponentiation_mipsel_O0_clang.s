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
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
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
	move	$fp, $sp
	addu	$gp, $2, $25
	sw	$gp, 36($fp)                    # 4-byte Folded Spill
	lw	$2, 100($fp)
	lw	$1, 96($fp)
	sw	$4, 64($fp)
	sw	$5, 68($fp)
	sw	$7, 60($fp)
	sw	$6, 56($fp)
	sw	$2, 52($fp)
	sw	$1, 48($fp)
	addiu	$1, $zero, 1
	sw	$1, 40($fp)
	sw	$zero, 44($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$4, 64($fp)
	lw	$5, 68($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	nop
	sw	$3, 68($fp)
	sw	$2, 64($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 60($fp)
	lw	$1, 56($fp)
	or	$1, $1, $2
	beqz	$1, $BB0_7
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_3
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lbu	$1, 56($fp)
	andi	$1, $1, 1
	beqz	$1, $BB0_6
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_5
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$gp, 36($fp)                    # 4-byte Folded Reload
	lw	$2, 44($fp)
	lw	$1, 40($fp)
	lw	$3, 64($fp)
	lw	$4, 68($fp)
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
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	nop
	sw	$3, 44($fp)
	sw	$2, 40($fp)
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$gp, 36($fp)                    # 4-byte Folded Reload
	lw	$1, 64($fp)
	lw	$3, 68($fp)
	mul	$2, $3, $1
	mul	$3, $1, $3
	multu	$1, $1
	mfhi	$1
	addu	$1, $1, $3
	addu	$5, $1, $2
	mflo	$4
	lw	$6, 48($fp)
	lw	$7, 52($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	nop
	sw	$3, 68($fp)
	sw	$2, 64($fp)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sll	$3, $2, 31
	srl	$1, $1, 1
	or	$1, $1, $3
	srl	$2, $2, 1
	sw	$2, 60($fp)
	sw	$1, 56($fp)
	b	$BB0_1
	nop
$BB0_7:
	lw	$2, 40($fp)
	lw	$3, 44($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
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
