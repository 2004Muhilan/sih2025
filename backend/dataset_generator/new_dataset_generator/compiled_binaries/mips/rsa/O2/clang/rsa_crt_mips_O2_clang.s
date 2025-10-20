	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 # -- Begin function rsa_crt_decrypt
	.p2align	2
	.type	rsa_crt_decrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_crt_decrypt
rsa_crt_decrypt:                        # @rsa_crt_decrypt
	.frame	$sp,56,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	sw	$21, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $5
	move	$18, $4
	lw	$19, 72($sp)
	lw	$20, 76($sp)
	lw	$25, %call16(__umoddi3)($16)
	move	$6, $19
	move	$7, $20
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	move	$gp, $16
	move	$21, $2
	move	$22, $3
	lw	$23, 80($sp)
	lw	$fp, 84($sp)
	lw	$25, %call16(__umoddi3)($16)
	move	$4, $18
	move	$5, $17
	move	$6, $23
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	move	$7, $fp
	multu	$22, $fp
	mfhi	$1
	mflo	$4
	multu	$3, $20
	mfhi	$6
	mflo	$8
	multu	$fp, $20
	mflo	$7
	mfhi	$9
	mul	$10, $22, $23
	addu	$5, $8, $4
	addu	$1, $1, $10
	mul	$4, $21, $fp
	addu	$1, $1, $4
	mul	$3, $3, $19
	addu	$3, $6, $3
	mul	$2, $2, $20
	addu	$2, $3, $2
	addu	$1, $2, $1
	sltu	$2, $5, $8
	mul	$3, $fp, $19
	addu	$3, $9, $3
	mul	$4, $23, $20
	addu	$6, $3, $4
	lw	$25, %call16(__umoddi3)($16)
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	addu	$4, $1, $2
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_crt_decrypt
$func_end0:
	.size	rsa_crt_decrypt, ($func_end0)-rsa_crt_decrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
