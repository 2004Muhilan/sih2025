	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         # -- Begin function mod_exp
	.p2align	2
	.type	mod_exp,@function
	.set	nomicromips
	.set	nomips16
	.ent	mod_exp
mod_exp:                                # @mod_exp
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
	lw	$4, 64($fp)
	lw	$5, 68($fp)
	lw	$6, 48($fp)
	lw	$7, 52($fp)
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
	lw	$1, 56($fp)
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
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	sll	$3, $2, 31
	srl	$1, $1, 1
	or	$1, $1, $3
	srl	$2, $2, 1
	sw	$2, 60($fp)
	sw	$1, 56($fp)
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
	.end	mod_exp
$func_end0:
	.size	mod_exp, ($func_end0)-mod_exp
                                        # -- End function
	.globl	extended_gcd                    # -- Begin function extended_gcd
	.p2align	2
	.type	extended_gcd,@function
	.set	nomicromips
	.set	nomips16
	.ent	extended_gcd
extended_gcd:                           # @extended_gcd
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
	bnez	$1, $BB1_3
	nop
# %bb.1:
	b	$BB1_2
	nop
$BB1_2:
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
	b	$BB1_4
	nop
$BB1_3:
	lw	$gp, 60($fp)                    # 4-byte Folded Reload
	lw	$4, 88($fp)
	lw	$5, 92($fp)
	lw	$6, 96($fp)
	sw	$6, 28($fp)                     # 4-byte Folded Spill
	lw	$7, 100($fp)
	sw	$7, 32($fp)                     # 4-byte Folded Spill
	lw	$25, %call16(__moddi3)($gp)
	.reloc ($tmp3), R_MIPS_JALR, __moddi3
$tmp3:
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
	lw	$25, %call16(extended_gcd)($gp)
	.reloc ($tmp4), R_MIPS_JALR, extended_gcd
$tmp4:
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
	.reloc ($tmp5), R_MIPS_JALR, __divdi3
$tmp5:
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
$BB1_4:
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
	.end	extended_gcd
$func_end1:
	.size	extended_gcd, ($func_end1)-extended_gcd
                                        # -- End function
	.globl	rsa_encrypt                     # -- Begin function rsa_encrypt
	.p2align	2
	.type	rsa_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_encrypt
rsa_encrypt:                            # @rsa_encrypt
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
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
	move	$fp, $sp
	addu	$gp, $2, $25
	lw	$2, 76($fp)
	lw	$1, 72($fp)
	sw	$4, 40($fp)
	sw	$5, 44($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$5, 44($fp)
	lw	$4, 40($fp)
	lw	$7, 36($fp)
	lw	$6, 32($fp)
	lw	$1, 24($fp)
	lw	$3, 28($fp)
	move	$2, $sp
	sw	$3, 20($2)
	sw	$1, 16($2)
	lw	$25, %call16(mod_exp)($gp)
	.reloc ($tmp6), R_MIPS_JALR, mod_exp
$tmp6:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_encrypt
$func_end2:
	.size	rsa_encrypt, ($func_end2)-rsa_encrypt
                                        # -- End function
	.globl	rsa_decrypt                     # -- Begin function rsa_decrypt
	.p2align	2
	.type	rsa_decrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_decrypt
rsa_decrypt:                            # @rsa_decrypt
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
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
	move	$fp, $sp
	addu	$gp, $2, $25
	lw	$2, 76($fp)
	lw	$1, 72($fp)
	sw	$4, 40($fp)
	sw	$5, 44($fp)
	sw	$7, 36($fp)
	sw	$6, 32($fp)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$5, 44($fp)
	lw	$4, 40($fp)
	lw	$7, 36($fp)
	lw	$6, 32($fp)
	lw	$1, 24($fp)
	lw	$3, 28($fp)
	move	$2, $sp
	sw	$3, 20($2)
	sw	$1, 16($2)
	lw	$25, %call16(mod_exp)($gp)
	.reloc ($tmp7), R_MIPS_JALR, mod_exp
$tmp7:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_decrypt
$func_end3:
	.size	rsa_decrypt, ($func_end3)-rsa_decrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mod_exp
	.addrsig_sym extended_gcd
	.text
