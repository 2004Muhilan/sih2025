	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_hmac_prng.c"
	.globl	tc_hmac_prng_init               # -- Begin function tc_hmac_prng_init
	.p2align	2
	.type	tc_hmac_prng_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_hmac_prng_init
tc_hmac_prng_init:                      # @tc_hmac_prng_init
	.frame	$sp,40,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$20, 32($sp)                    # 4-byte Folded Spill
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	beqz	$4, $BB0_3
	addiu	$17, $zero, 0
# %bb.1:
	beqz	$5, $BB0_3
	nop
# %bb.2:
	addiu	$1, $4, 240
	lw	$25, %call16(_set)($16)
	move	$18, $4
	move	$19, $5
	move	$20, $6
	addiu	$5, $zero, 0
	addiu	$6, $zero, 32
	move	$gp, $16
	.reloc ($tmp0), R_MIPS_JALR, _set
$tmp0:
	jalr	$25
	move	$4, $1
	lw	$25, %call16(_set)($16)
	addiu	$4, $18, 272
	addiu	$5, $zero, 1
	addiu	$6, $zero, 32
	.reloc ($tmp1), R_MIPS_JALR, _set
$tmp1:
	jalr	$25
	addiu	$17, $zero, 1
	lw	$1, %got(update)($16)
	move	$4, $18
	move	$5, $19
	move	$6, $20
	addiu	$7, $zero, 0
	addiu	$25, $1, %lo(update)
	.reloc ($tmp2), R_MIPS_JALR, update
$tmp2:
	jalr	$25
	addiu	$8, $zero, 0
	sw	$zero, 304($18)
$BB0_3:
	move	$2, $17
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$19, 28($sp)                    # 4-byte Folded Reload
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	tc_hmac_prng_init
$func_end0:
	.size	tc_hmac_prng_init, ($func_end0)-tc_hmac_prng_init
                                        # -- End function
	.p2align	2                               # -- Begin function update
	.type	update,@function
	.set	nomicromips
	.set	nomips16
	.ent	update
update:                                 # @update
	.frame	$sp,72,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -72
	sw	$ra, 68($sp)                    # 4-byte Folded Spill
	sw	$fp, 64($sp)                    # 4-byte Folded Spill
	sw	$23, 60($sp)                    # 4-byte Folded Spill
	sw	$22, 56($sp)                    # 4-byte Folded Spill
	sw	$21, 52($sp)                    # 4-byte Folded Spill
	sw	$20, 48($sp)                    # 4-byte Folded Spill
	sw	$19, 44($sp)                    # 4-byte Folded Spill
	sw	$18, 40($sp)                    # 4-byte Folded Spill
	sw	$17, 36($sp)                    # 4-byte Folded Spill
	sw	$16, 32($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	addiu	$19, $4, 240
	move	$22, $6
	move	$23, $5
	addiu	$20, $zero, 1
	addiu	$6, $zero, 32
	move	$fp, $8
	move	$21, $7
	move	$17, $4
	sb	$zero, 28($sp)
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$5, $19
	move	$gp, $16
	.reloc ($tmp3), R_MIPS_JALR, tc_hmac_set_key
$tmp3:
	jalr	$25
	sb	$20, 24($sp)
	lw	$25, %call16(tc_hmac_init)($16)
	move	$4, $17
	.reloc ($tmp4), R_MIPS_JALR, tc_hmac_init
$tmp4:
	jalr	$25
	move	$gp, $16
	addiu	$18, $17, 272
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	addiu	$6, $zero, 32
	move	$gp, $16
	.reloc ($tmp5), R_MIPS_JALR, tc_hmac_update
$tmp5:
	jalr	$25
	move	$5, $18
	lw	$25, %call16(tc_hmac_update)($16)
	addiu	$5, $sp, 28
	move	$4, $17
	.reloc ($tmp6), R_MIPS_JALR, tc_hmac_update
$tmp6:
	jalr	$25
	addiu	$6, $zero, 1
	beqz	$23, $BB1_3
	nop
# %bb.1:
	beqz	$22, $BB1_3
	nop
# %bb.2:
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $23
	.reloc ($tmp7), R_MIPS_JALR, tc_hmac_update
$tmp7:
	jalr	$25
	move	$6, $22
$BB1_3:
	sltu	$1, $zero, $fp
	sltu	$2, $zero, $21
	sw	$fp, 20($sp)                    # 4-byte Folded Spill
	and	$fp, $2, $1
	bne	$fp, $20, $BB1_5
	nop
# %bb.4:
	lw	$25, %call16(tc_hmac_update)($16)
	lw	$6, 20($sp)                     # 4-byte Folded Reload
	move	$4, $17
	.reloc ($tmp8), R_MIPS_JALR, tc_hmac_update
$tmp8:
	jalr	$25
	move	$5, $21
$BB1_5:
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $19
	addiu	$5, $zero, 32
	move	$6, $17
	.reloc ($tmp9), R_MIPS_JALR, tc_hmac_final
$tmp9:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	move	$5, $19
	.reloc ($tmp10), R_MIPS_JALR, tc_hmac_set_key
$tmp10:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_init)($16)
	.reloc ($tmp11), R_MIPS_JALR, tc_hmac_init
$tmp11:
	jalr	$25
	move	$4, $17
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $18
	.reloc ($tmp12), R_MIPS_JALR, tc_hmac_update
$tmp12:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $18
	addiu	$5, $zero, 32
	.reloc ($tmp13), R_MIPS_JALR, tc_hmac_final
$tmp13:
	jalr	$25
	move	$6, $17
	beqz	$23, $BB1_10
	nop
# %bb.6:
	beqz	$22, $BB1_10
	nop
# %bb.7:
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	move	$5, $19
	.reloc ($tmp14), R_MIPS_JALR, tc_hmac_set_key
$tmp14:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_init)($16)
	.reloc ($tmp15), R_MIPS_JALR, tc_hmac_init
$tmp15:
	jalr	$25
	move	$4, $17
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $18
	.reloc ($tmp16), R_MIPS_JALR, tc_hmac_update
$tmp16:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_update)($16)
	addiu	$5, $sp, 24
	move	$4, $17
	.reloc ($tmp17), R_MIPS_JALR, tc_hmac_update
$tmp17:
	jalr	$25
	addiu	$6, $zero, 1
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $23
	.reloc ($tmp18), R_MIPS_JALR, tc_hmac_update
$tmp18:
	jalr	$25
	move	$6, $22
	beqz	$fp, $BB1_9
	nop
# %bb.8:
	lw	$25, %call16(tc_hmac_update)($16)
	lw	$6, 20($sp)                     # 4-byte Folded Reload
	move	$4, $17
	.reloc ($tmp19), R_MIPS_JALR, tc_hmac_update
$tmp19:
	jalr	$25
	move	$5, $21
$BB1_9:
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $19
	addiu	$5, $zero, 32
	.reloc ($tmp20), R_MIPS_JALR, tc_hmac_final
$tmp20:
	jalr	$25
	move	$6, $17
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	move	$5, $19
	.reloc ($tmp21), R_MIPS_JALR, tc_hmac_set_key
$tmp21:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_init)($16)
	.reloc ($tmp22), R_MIPS_JALR, tc_hmac_init
$tmp22:
	jalr	$25
	move	$4, $17
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $18
	.reloc ($tmp23), R_MIPS_JALR, tc_hmac_update
$tmp23:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $18
	addiu	$5, $zero, 32
	.reloc ($tmp24), R_MIPS_JALR, tc_hmac_final
$tmp24:
	jalr	$25
	move	$6, $17
$BB1_10:
	lw	$16, 32($sp)                    # 4-byte Folded Reload
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lw	$18, 40($sp)                    # 4-byte Folded Reload
	lw	$19, 44($sp)                    # 4-byte Folded Reload
	lw	$20, 48($sp)                    # 4-byte Folded Reload
	lw	$21, 52($sp)                    # 4-byte Folded Reload
	lw	$22, 56($sp)                    # 4-byte Folded Reload
	lw	$23, 60($sp)                    # 4-byte Folded Reload
	lw	$fp, 64($sp)                    # 4-byte Folded Reload
	lw	$ra, 68($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 72
	.set	at
	.set	macro
	.set	reorder
	.end	update
$func_end1:
	.size	update, ($func_end1)-update
                                        # -- End function
	.globl	tc_hmac_prng_reseed             # -- Begin function tc_hmac_prng_reseed
	.p2align	2
	.type	tc_hmac_prng_reseed,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_hmac_prng_reseed
tc_hmac_prng_reseed:                    # @tc_hmac_prng_reseed
	.frame	$sp,8,$ra
	.mask 	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$3, $2, $25
	beqz	$4, $BB2_9
	addiu	$2, $zero, 0
# %bb.1:
	beqz	$5, $BB2_9
	nop
# %bb.2:
	sltiu	$1, $6, 32
	bnez	$1, $BB2_9
	nop
# %bb.3:
	addiu	$sp, $sp, -8
	sw	$ra, 4($sp)                     # 4-byte Folded Spill
	sw	$16, 0($sp)                     # 4-byte Folded Spill
	beqz	$7, $BB2_6
	move	$16, $4
# %bb.4:
	lw	$8, 24($sp)
	beqz	$8, $BB2_8
	nop
# %bb.5:
	lw	$1, %got(update)($3)
	addiu	$25, $1, %lo(update)
	.reloc ($tmp25), R_MIPS_JALR, update
$tmp25:
	jalr	$25
	move	$4, $16
	b	$BB2_7
	nop
$BB2_6:
	lw	$1, %got(update)($3)
	move	$4, $16
	addiu	$7, $zero, 0
	addiu	$25, $1, %lo(update)
	.reloc ($tmp26), R_MIPS_JALR, update
$tmp26:
	jalr	$25
	addiu	$8, $zero, 0
$BB2_7:
	addiu	$1, $zero, -1
	addiu	$2, $zero, 1
	sw	$1, 304($16)
$BB2_8:
	lw	$16, 0($sp)                     # 4-byte Folded Reload
	lw	$ra, 4($sp)                     # 4-byte Folded Reload
	addiu	$sp, $sp, 8
$BB2_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	tc_hmac_prng_reseed
$func_end2:
	.size	tc_hmac_prng_reseed, ($func_end2)-tc_hmac_prng_reseed
                                        # -- End function
	.globl	tc_hmac_prng_generate           # -- Begin function tc_hmac_prng_generate
	.p2align	2
	.type	tc_hmac_prng_generate,@function
	.set	nomicromips
	.set	nomips16
	.ent	tc_hmac_prng_generate
tc_hmac_prng_generate:                  # @tc_hmac_prng_generate
	.frame	$sp,56,$ra
	.mask 	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$22, 48($sp)                    # 4-byte Folded Spill
	sw	$21, 44($sp)                    # 4-byte Folded Spill
	sw	$20, 40($sp)                    # 4-byte Folded Spill
	sw	$19, 36($sp)                    # 4-byte Folded Spill
	sw	$18, 32($sp)                    # 4-byte Folded Spill
	sw	$17, 28($sp)                    # 4-byte Folded Spill
	sw	$16, 24($sp)                    # 4-byte Folded Spill
	lui	$1, 65527
	addu	$16, $2, $25
	lui	$2, 65528
	ori	$1, $1, 65535
	addu	$1, $5, $1
	sltu	$1, $1, $2
	bnez	$1, $BB3_8
	addiu	$2, $zero, 0
# %bb.1:
	beqz	$4, $BB3_8
	move	$18, $4
# %bb.2:
	beqz	$6, $BB3_8
	move	$17, $6
# %bb.3:
	lw	$2, 304($17)
	beqz	$2, $BB3_7
	nop
# %bb.4:
	addiu	$1, $2, -1
	move	$19, $5
	addiu	$20, $17, 272
	addiu	$21, $17, 240
	sw	$1, 304($17)
$BB3_5:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	move	$5, $21
	addiu	$6, $zero, 32
	.reloc ($tmp27), R_MIPS_JALR, tc_hmac_set_key
$tmp27:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(tc_hmac_init)($16)
	move	$4, $17
	.reloc ($tmp28), R_MIPS_JALR, tc_hmac_init
$tmp28:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $20
	addiu	$6, $zero, 32
	.reloc ($tmp29), R_MIPS_JALR, tc_hmac_update
$tmp29:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $20
	addiu	$5, $zero, 32
	move	$6, $17
	.reloc ($tmp30), R_MIPS_JALR, tc_hmac_final
$tmp30:
	jalr	$25
	move	$gp, $16
	sltiu	$1, $19, 32
	addiu	$22, $zero, 32
	lw	$25, %call16(_copy)($16)
	move	$4, $18
	move	$6, $20
	move	$gp, $16
	movn	$22, $19, $1
	move	$5, $22
	.reloc ($tmp31), R_MIPS_JALR, _copy
$tmp31:
	jalr	$25
	move	$7, $22
	addiu	$1, $19, -32
	sltiu	$2, $19, 33
	addu	$18, $18, $22
	beqz	$2, $BB3_5
	move	$19, $1
# %bb.6:
	addiu	$19, $17, 240
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	addiu	$6, $zero, 32
	sb	$zero, 20($sp)
	.reloc ($tmp32), R_MIPS_JALR, tc_hmac_set_key
$tmp32:
	jalr	$25
	move	$5, $19
	lw	$25, %call16(tc_hmac_init)($16)
	.reloc ($tmp33), R_MIPS_JALR, tc_hmac_init
$tmp33:
	jalr	$25
	move	$4, $17
	addiu	$18, $17, 272
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	addiu	$6, $zero, 32
	.reloc ($tmp34), R_MIPS_JALR, tc_hmac_update
$tmp34:
	jalr	$25
	move	$5, $18
	lw	$25, %call16(tc_hmac_update)($16)
	addiu	$5, $sp, 20
	move	$4, $17
	.reloc ($tmp35), R_MIPS_JALR, tc_hmac_update
$tmp35:
	jalr	$25
	addiu	$6, $zero, 1
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $19
	addiu	$5, $zero, 32
	.reloc ($tmp36), R_MIPS_JALR, tc_hmac_final
$tmp36:
	jalr	$25
	move	$6, $17
	lw	$25, %call16(tc_hmac_set_key)($16)
	move	$4, $17
	move	$5, $19
	.reloc ($tmp37), R_MIPS_JALR, tc_hmac_set_key
$tmp37:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_init)($16)
	.reloc ($tmp38), R_MIPS_JALR, tc_hmac_init
$tmp38:
	jalr	$25
	move	$4, $17
	lw	$25, %call16(tc_hmac_update)($16)
	move	$4, $17
	move	$5, $18
	.reloc ($tmp39), R_MIPS_JALR, tc_hmac_update
$tmp39:
	jalr	$25
	addiu	$6, $zero, 32
	lw	$25, %call16(tc_hmac_final)($16)
	move	$4, $18
	addiu	$5, $zero, 32
	.reloc ($tmp40), R_MIPS_JALR, tc_hmac_final
$tmp40:
	jalr	$25
	move	$6, $17
	b	$BB3_8
	addiu	$2, $zero, 1
$BB3_7:
	addiu	$2, $zero, -1
$BB3_8:
	lw	$16, 24($sp)                    # 4-byte Folded Reload
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$18, 32($sp)                    # 4-byte Folded Reload
	lw	$19, 36($sp)                    # 4-byte Folded Reload
	lw	$20, 40($sp)                    # 4-byte Folded Reload
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	lw	$22, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 56
	.set	at
	.set	macro
	.set	reorder
	.end	tc_hmac_prng_generate
$func_end3:
	.size	tc_hmac_prng_generate, ($func_end3)-tc_hmac_prng_generate
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
