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
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 40($fp)
	sw	$5, 36($fp)
	sw	$6, 32($fp)
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_4
	nop
# %bb.1:
	lw	$1, 36($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_4
	nop
# %bb.2:
	lw	$2, 32($fp)
	lui	$1, 65535
	ori	$1, $1, 65535
	sltu	$1, $1, $2
	bgtz	$1, $BB0_4
	nop
# %bb.3:
	b	$BB0_5
	nop
$BB0_4:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	b	$BB0_6
	nop
$BB0_5:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 40($fp)
	addiu	$3, $zero, 240
	addu	$4, $2, $3
	addiu	$2, $zero, 0
	addiu	$6, $zero, 32
	andi	$5, $zero, 255
	lw	$25, %got(_set)($1)
	.reloc ($tmp0), R_MIPS_JALR, _set
$tmp0:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$2, 40($fp)
	addiu	$3, $zero, 272
	addu	$4, $2, $3
	addiu	$2, $zero, 1
	addiu	$6, $zero, 32
	andi	$5, $2, 255
	lw	$25, %got(_set)($1)
	.reloc ($tmp1), R_MIPS_JALR, _set
$tmp1:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	move	$2, $sp
	sw	$zero, 16($2)
	lw	$1, %got(update)($1)
	addiu	$25, $1, %lo(update)
	addiu	$7, $zero, 0
	.reloc ($tmp2), R_MIPS_JALR, update
$tmp2:
	jalr	$25
	nop
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	sw	$zero, 304($1)
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
$BB0_6:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	lw	$2, 64($fp)
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	addiu	$2, $zero, 0
	sb	$zero, 23($fp)
	addiu	$2, $zero, 1
	sb	$2, 22($fp)
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_set_key)($1)
	.reloc ($tmp3), R_MIPS_JALR, tc_hmac_set_key
$tmp3:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$25, %got(tc_hmac_init)($1)
	.reloc ($tmp4), R_MIPS_JALR, tc_hmac_init
$tmp4:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp5), R_MIPS_JALR, tc_hmac_update
$tmp5:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	addiu	$5, $fp, 23
	addiu	$6, $zero, 1
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp6), R_MIPS_JALR, tc_hmac_update
$tmp6:
	jalr	$25
	nop
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_2
	nop
# %bb.1:
	b	$BB1_5
	nop
$BB1_2:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_4
	nop
# %bb.3:
	b	$BB1_5
	nop
$BB1_4:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp7), R_MIPS_JALR, tc_hmac_update
$tmp7:
	jalr	$25
	nop
$BB1_5:
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_7
	nop
# %bb.6:
	b	$BB1_10
	nop
$BB1_7:
	lw	$1, 64($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_9
	nop
# %bb.8:
	b	$BB1_10
	nop
$BB1_9:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 24($fp)
	lw	$6, 64($fp)
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp8), R_MIPS_JALR, tc_hmac_update
$tmp8:
	jalr	$25
	nop
$BB1_10:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$4, $2, $3
	lw	$6, 36($fp)
	addiu	$5, $zero, 32
	lw	$25, %got(tc_hmac_final)($1)
	.reloc ($tmp9), R_MIPS_JALR, tc_hmac_final
$tmp9:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_set_key)($1)
	.reloc ($tmp10), R_MIPS_JALR, tc_hmac_set_key
$tmp10:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$25, %got(tc_hmac_init)($1)
	.reloc ($tmp11), R_MIPS_JALR, tc_hmac_init
$tmp11:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp12), R_MIPS_JALR, tc_hmac_update
$tmp12:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$4, $2, $3
	lw	$6, 36($fp)
	addiu	$5, $zero, 32
	lw	$25, %got(tc_hmac_final)($1)
	.reloc ($tmp13), R_MIPS_JALR, tc_hmac_final
$tmp13:
	jalr	$25
	nop
	lw	$1, 32($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB1_13
	nop
# %bb.11:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB1_13
	nop
# %bb.12:
	b	$BB1_14
	nop
$BB1_13:
	b	$BB1_20
	nop
$BB1_14:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_set_key)($1)
	.reloc ($tmp14), R_MIPS_JALR, tc_hmac_set_key
$tmp14:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$25, %got(tc_hmac_init)($1)
	.reloc ($tmp15), R_MIPS_JALR, tc_hmac_init
$tmp15:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp16), R_MIPS_JALR, tc_hmac_update
$tmp16:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	addiu	$5, $fp, 22
	addiu	$6, $zero, 1
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp17), R_MIPS_JALR, tc_hmac_update
$tmp17:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 32($fp)
	lw	$6, 28($fp)
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp18), R_MIPS_JALR, tc_hmac_update
$tmp18:
	jalr	$25
	nop
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_16
	nop
# %bb.15:
	b	$BB1_19
	nop
$BB1_16:
	lw	$1, 64($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_18
	nop
# %bb.17:
	b	$BB1_19
	nop
$BB1_18:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$5, 24($fp)
	lw	$6, 64($fp)
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp19), R_MIPS_JALR, tc_hmac_update
$tmp19:
	jalr	$25
	nop
$BB1_19:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$4, $2, $3
	lw	$6, 36($fp)
	addiu	$5, $zero, 32
	lw	$25, %got(tc_hmac_final)($1)
	.reloc ($tmp20), R_MIPS_JALR, tc_hmac_final
$tmp20:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 240
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_set_key)($1)
	.reloc ($tmp21), R_MIPS_JALR, tc_hmac_set_key
$tmp21:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$25, %got(tc_hmac_init)($1)
	.reloc ($tmp22), R_MIPS_JALR, tc_hmac_init
$tmp22:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 36($fp)
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp23), R_MIPS_JALR, tc_hmac_update
$tmp23:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 36($fp)
	addiu	$3, $zero, 272
	addu	$4, $2, $3
	lw	$6, 36($fp)
	addiu	$5, $zero, 32
	lw	$25, %got(tc_hmac_final)($1)
	.reloc ($tmp24), R_MIPS_JALR, tc_hmac_final
$tmp24:
	jalr	$25
	nop
$BB1_20:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
	addu	$1, $2, $25
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	lw	$1, 72($fp)
	sw	$4, 40($fp)
	sw	$5, 36($fp)
	sw	$6, 32($fp)
	sw	$7, 28($fp)
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB2_5
	nop
# %bb.1:
	lw	$1, 36($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB2_5
	nop
# %bb.2:
	lw	$1, 32($fp)
	addiu	$2, $zero, 32
	sltu	$1, $1, $2
	bgtz	$1, $BB2_5
	nop
# %bb.3:
	lw	$2, 32($fp)
	lui	$1, 65535
	ori	$1, $1, 65535
	sltu	$1, $1, $2
	bgtz	$1, $BB2_5
	nop
# %bb.4:
	b	$BB2_6
	nop
$BB2_5:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	b	$BB2_16
	nop
$BB2_6:
	lw	$1, 28($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_8
	nop
# %bb.7:
	b	$BB2_14
	nop
$BB2_8:
	lw	$1, 72($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB2_11
	nop
# %bb.9:
	lw	$2, 72($fp)
	lui	$1, 65535
	ori	$1, $1, 65535
	sltu	$1, $1, $2
	bgtz	$1, $BB2_11
	nop
# %bb.10:
	b	$BB2_12
	nop
$BB2_11:
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
	b	$BB2_16
	nop
$BB2_12:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	lw	$7, 28($fp)
	lw	$2, 72($fp)
	move	$3, $sp
	sw	$2, 16($3)
	lw	$1, %got(update)($1)
	addiu	$25, $1, %lo(update)
	.reloc ($tmp25), R_MIPS_JALR, update
$tmp25:
	jalr	$25
	nop
# %bb.13:
	b	$BB2_15
	nop
$BB2_14:
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$5, 36($fp)
	lw	$6, 32($fp)
	move	$2, $sp
	sw	$zero, 16($2)
	lw	$1, %got(update)($1)
	addiu	$25, $1, %lo(update)
	addiu	$7, $zero, 0
	.reloc ($tmp26), R_MIPS_JALR, update
$tmp26:
	jalr	$25
	nop
$BB2_15:
	lw	$2, 40($fp)
	lui	$1, 65535
	ori	$1, $1, 65535
	sw	$1, 304($2)
	addiu	$1, $zero, 1
	sw	$1, 44($fp)
$BB2_16:
	lw	$2, 44($fp)
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
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
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 32($fp)                     # 4-byte Folded Spill
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	lw	$1, 48($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB3_5
	nop
# %bb.1:
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB3_5
	nop
# %bb.2:
	lw	$1, 44($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB3_5
	nop
# %bb.3:
	lw	$2, 44($fp)
	lui	$1, 8
	sltu	$1, $1, $2
	bgtz	$1, $BB3_5
	nop
# %bb.4:
	b	$BB3_6
	nop
$BB3_5:
	addiu	$1, $zero, 0
	sw	$zero, 52($fp)
	b	$BB3_23
	nop
$BB3_6:
	lw	$1, 40($fp)
	lw	$1, 304($1)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltiu	$1, $1, 1
	bgtz	$1, $BB3_8
	nop
# %bb.7:
	b	$BB3_9
	nop
$BB3_8:
	lui	$1, 65535
	ori	$1, $1, 65535
	sw	$1, 52($fp)
	b	$BB3_23
	nop
$BB3_9:
	b	$BB3_10
	nop
$BB3_10:
	lw	$2, 40($fp)
	lw	$1, 304($2)
	lui	$3, 65535
	ori	$3, $3, 65535
	addu	$1, $1, $3
	sw	$1, 304($2)
$BB3_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_13
	nop
# %bb.12:
	b	$BB3_22
	nop
$BB3_13:                                #   in Loop: Header=BB3_11 Depth=1
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 240
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_set_key)($1)
	.reloc ($tmp27), R_MIPS_JALR, tc_hmac_set_key
$tmp27:
	jalr	$25
	nop
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$25, %got(tc_hmac_init)($1)
	.reloc ($tmp28), R_MIPS_JALR, tc_hmac_init
$tmp28:
	jalr	$25
	nop
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 272
	addu	$5, $2, $3
	addiu	$6, $zero, 32
	lw	$25, %got(tc_hmac_update)($1)
	.reloc ($tmp29), R_MIPS_JALR, tc_hmac_update
$tmp29:
	jalr	$25
	nop
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$2, 40($fp)
	addiu	$3, $zero, 272
	addu	$4, $2, $3
	lw	$6, 40($fp)
	addiu	$5, $zero, 32
	lw	$25, %got(tc_hmac_final)($1)
	.reloc ($tmp30), R_MIPS_JALR, tc_hmac_final
$tmp30:
	jalr	$25
	nop
	lw	$1, 44($fp)
	addiu	$2, $zero, 32
	sltu	$1, $1, $2
	bgtz	$1, $BB3_15
	nop
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=1
	b	$BB3_16
	nop
$BB3_15:                                #   in Loop: Header=BB3_11 Depth=1
	lw	$1, 44($fp)
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	b	$BB3_17
	nop
$BB3_16:                                #   in Loop: Header=BB3_11 Depth=1
	addiu	$1, $zero, 32
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	b	$BB3_17
	nop
$BB3_17:                                #   in Loop: Header=BB3_11 Depth=1
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 36($fp)
	lw	$4, 48($fp)
	lw	$5, 36($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 272
	addu	$6, $2, $3
	lw	$7, 36($fp)
	lw	$25, %got(_copy)($1)
	.reloc ($tmp31), R_MIPS_JALR, _copy
$tmp31:
	jalr	$25
	nop
	lw	$2, 36($fp)
	lw	$1, 48($fp)
	addu	$1, $1, $2
	sw	$1, 48($fp)
	lw	$2, 44($fp)
	addiu	$1, $zero, 32
	sltu	$1, $1, $2
	bgtz	$1, $BB3_19
	nop
# %bb.18:                               #   in Loop: Header=BB3_11 Depth=1
	b	$BB3_20
	nop
$BB3_19:                                #   in Loop: Header=BB3_11 Depth=1
	lw	$1, 44($fp)
	addiu	$2, $zero, 32
	subu	$1, $1, $2
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	$BB3_21
	nop
$BB3_20:                                #   in Loop: Header=BB3_11 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	b	$BB3_21
	nop
$BB3_21:                                #   in Loop: Header=BB3_11 Depth=1
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	sw	$1, 44($fp)
	b	$BB3_11
	nop
$BB3_22:
	lw	$1, 32($fp)                     # 4-byte Folded Reload
	lw	$4, 40($fp)
	move	$2, $sp
	sw	$zero, 16($2)
	lw	$1, %got(update)($1)
	addiu	$25, $1, %lo(update)
	addiu	$7, $zero, 0
	move	$5, $7
	move	$6, $7
	.reloc ($tmp32), R_MIPS_JALR, update
$tmp32:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 52($fp)
$BB3_23:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
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
	.addrsig_sym _set
	.addrsig_sym update
	.addrsig_sym tc_hmac_set_key
	.addrsig_sym tc_hmac_init
	.addrsig_sym tc_hmac_update
	.addrsig_sym tc_hmac_final
	.addrsig_sym _copy
	.text
