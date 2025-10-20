	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 # -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_ecdh_shared
ecc_ecdh_shared:                        # @ecc_ecdh_shared
	.frame	$sp,24,$ra
	.mask 	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	lw	$2, 44($sp)
	multu	$5, $2
	mfhi	$3
	mflo	$1
	lw	$6, 40($sp)
	mul	$5, $5, $6
	addu	$3, $3, $5
	mul	$2, $4, $2
	addu	$4, $3, $2
	lw	$25, %call16(__umoddi3)($gp)
	move	$5, $1
	addiu	$6, $zero, 0
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	addiu	$7, $zero, -1
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_ecdh_shared
$func_end0:
	.size	ecc_ecdh_shared, ($func_end0)-ecc_ecdh_shared
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
