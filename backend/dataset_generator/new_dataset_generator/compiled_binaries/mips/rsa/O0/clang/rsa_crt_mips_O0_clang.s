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
	addu	$gp, $2, $25
	sw	$gp, 20($fp)                    # 4-byte Folded Spill
	move	$8, $4
	lw	$2, 148($fp)
	lw	$1, 144($fp)
	lw	$4, 140($fp)
	lw	$3, 136($fp)
	sw	$8, 104($fp)
	sw	$5, 108($fp)
	sw	$7, 100($fp)
	sw	$6, 96($fp)
	sw	$4, 92($fp)
	sw	$3, 88($fp)
	sw	$2, 84($fp)
	sw	$1, 80($fp)
	lw	$4, 96($fp)
	lw	$5, 100($fp)
	lw	$2, 88($fp)
	lw	$1, 92($fp)
	sltiu	$3, $1, 1
	subu	$6, $2, $3
	addiu	$7, $1, -1
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp0), R_MIPS_JALR, __umoddi3
$tmp0:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	sw	$3, 76($fp)
	sw	$2, 72($fp)
	lw	$4, 96($fp)
	lw	$5, 100($fp)
	lw	$2, 80($fp)
	lw	$1, 84($fp)
	sltiu	$3, $1, 1
	subu	$6, $2, $3
	addiu	$7, $1, -1
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp1), R_MIPS_JALR, __umoddi3
$tmp1:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	sw	$3, 68($fp)
	sw	$2, 64($fp)
	lw	$4, 104($fp)
	lw	$5, 108($fp)
	lw	$6, 88($fp)
	lw	$7, 92($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp2), R_MIPS_JALR, __umoddi3
$tmp2:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	sw	$3, 60($fp)
	sw	$2, 56($fp)
	lw	$4, 104($fp)
	lw	$5, 108($fp)
	lw	$6, 80($fp)
	lw	$7, 84($fp)
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp3), R_MIPS_JALR, __umoddi3
$tmp3:
	jalr	$25
	nop
	lw	$gp, 20($fp)                    # 4-byte Folded Reload
	sw	$3, 52($fp)
	sw	$2, 48($fp)
	lw	$2, 56($fp)
	lw	$1, 60($fp)
	lw	$3, 84($fp)
	lw	$6, 80($fp)
	mul	$4, $1, $6
	multu	$1, $3
	mflo	$1
	sw	$1, 24($fp)                     # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 28($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$4, 24($fp)                     # 8-byte Folded Reload
	mtlo	$4
	lw	$4, 28($fp)                     # 8-byte Folded Reload
	mthi	$4
	addu	$4, $1, $2
	mflo	$7
	lw	$8, 48($fp)
	lw	$5, 52($fp)
	lw	$1, 92($fp)
	lw	$2, 88($fp)
	mul	$9, $5, $2
	multu	$5, $1
	mflo	$5
	sw	$5, 32($fp)                     # 8-byte Folded Spill
	mfhi	$5
	sw	$5, 36($fp)                     # 8-byte Folded Spill
	mfhi	$5
	addu	$5, $5, $9
	mul	$8, $8, $1
	lw	$9, 32($fp)                     # 8-byte Folded Reload
	mtlo	$9
	lw	$9, 36($fp)                     # 8-byte Folded Reload
	mthi	$9
	addu	$8, $5, $8
	mflo	$5
	addu	$4, $4, $8
	addu	$5, $7, $5
	sltu	$7, $5, $7
	addu	$4, $4, $7
	mul	$6, $1, $6
	multu	$1, $3
	mflo	$1
	sw	$1, 40($fp)                     # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 44($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $6
	mul	$2, $2, $3
	lw	$3, 40($fp)                     # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 44($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$6, $1, $2
	mflo	$7
	lw	$25, %call16(__umoddi3)($gp)
	.reloc ($tmp4), R_MIPS_JALR, __umoddi3
$tmp4:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 120
	jr	$ra
	nop
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
