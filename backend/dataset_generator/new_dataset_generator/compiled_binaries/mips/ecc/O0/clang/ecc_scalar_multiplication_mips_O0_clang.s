	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 # -- Begin function ecc_scalar_mult
	.p2align	2
	.type	ecc_scalar_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_scalar_mult
ecc_scalar_mult:                        # @ecc_scalar_mult
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
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	move	$9, $7
	move	$10, $6
                                        # kill: def $v0 killed $a0
	lw	$3, 116($fp)
	lw	$2, 112($fp)
	lw	$6, 108($fp)
	lw	$5, 104($fp)
	lw	$7, 100($fp)
	lw	$8, 96($fp)
	sw	$10, 56($fp)
	sw	$9, 60($fp)
	sw	$8, 64($fp)
	sw	$7, 68($fp)
	sw	$6, 52($fp)
	sw	$5, 48($fp)
	sw	$3, 44($fp)
	sw	$2, 40($fp)
	addiu	$2, $zero, 0
	addiu	$6, $zero, 16
	seb	$5, $zero
	lw	$25, %got(memset)($1)
	.reloc ($tmp0), R_MIPS_JALR, memset
$tmp0:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 24
	addiu	$5, $fp, 56
	addiu	$6, $zero, 16
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	nop
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 48($fp)
	lw	$1, 52($fp)
	or	$1, $1, $2
	beqz	$1, $BB0_7
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_3
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lbu	$1, 55($fp)
	andi	$1, $1, 1
	beqz	$1, $BB0_6
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_5
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 52($fp)
	lw	$2, 48($fp)
	sll	$3, $2, 31
	srl	$1, $1, 1
	or	$1, $1, $3
	srl	$2, $2, 1
	sw	$2, 48($fp)
	sw	$1, 52($fp)
	b	$BB0_1
	nop
$BB0_7:
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_scalar_mult
$func_end0:
	.size	ecc_scalar_mult, ($func_end0)-ecc_scalar_mult
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
