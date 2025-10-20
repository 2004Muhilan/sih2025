	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            # -- Begin function uECC_make_key_with_d
	.p2align	2
	.type	uECC_make_key_with_d,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_make_key_with_d
uECC_make_key_with_d:                   # @uECC_make_key_with_d
	.frame	$sp,144,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$21, 136($sp)                   # 4-byte Folded Spill
	sw	$20, 132($sp)                   # 4-byte Folded Spill
	sw	$19, 128($sp)                   # 4-byte Folded Spill
	sw	$18, 124($sp)                   # 4-byte Folded Spill
	sw	$17, 120($sp)                   # 4-byte Folded Spill
	sw	$16, 116($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$21, $5
	move	$18, $4
	lw	$1, 16($6)
	lw	$2, 12($6)
	lw	$3, 8($6)
	lw	$4, 4($6)
	lw	$5, 0($6)
	addiu	$20, $sp, 20
	addiu	$19, $sp, 84
	move	$17, $7
	lw	$25, %call16(EccPoint_compute_public_key)($16)
	move	$gp, $16
	sw	$5, 84($sp)
	sw	$4, 88($sp)
	sw	$3, 92($sp)
	sw	$2, 96($sp)
	sw	$1, 100($sp)
	move	$4, $20
	move	$5, $19
	lw	$1, 20($6)
	sw	$1, 104($sp)
	lw	$1, 24($6)
	sw	$1, 108($sp)
	lw	$1, 28($6)
	move	$6, $7
	.reloc ($tmp0), R_MIPS_JALR, EccPoint_compute_public_key
$tmp0:
	jalr	$25
	sw	$1, 112($sp)
	beqz	$2, $BB0_2
	nop
# %bb.1:
	lh	$1, 2($17)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $21
	move	$6, $19
	move	$gp, $16
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	.reloc ($tmp1), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp1:
	jalr	$25
	sra	$5, $1, 3
	lb	$5, 1($17)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $18
	.reloc ($tmp2), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp2:
	jalr	$25
	move	$6, $20
	lb	$1, 0($17)
	lb	$5, 1($17)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	sll	$1, $1, 2
	addu	$4, $18, $5
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp3:
	jalr	$25
	addu	$6, $20, $1
	sw	$19, 16($sp)
	sw	$zero, 112($sp)
	sw	$zero, 108($sp)
	sw	$zero, 104($sp)
	sw	$zero, 100($sp)
	sw	$zero, 96($sp)
	sw	$zero, 92($sp)
	sw	$zero, 88($sp)
	sw	$zero, 84($sp)
	addiu	$2, $zero, 1
	#APP
	#NO_APP
	b	$BB0_3
	nop
$BB0_2:
	addiu	$2, $zero, 0
$BB0_3:
	lw	$16, 116($sp)                   # 4-byte Folded Reload
	lw	$17, 120($sp)                   # 4-byte Folded Reload
	lw	$18, 124($sp)                   # 4-byte Folded Reload
	lw	$19, 128($sp)                   # 4-byte Folded Reload
	lw	$20, 132($sp)                   # 4-byte Folded Reload
	lw	$21, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 144
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_make_key_with_d
$func_end0:
	.size	uECC_make_key_with_d, ($func_end0)-uECC_make_key_with_d
                                        # -- End function
	.globl	uECC_make_key                   # -- Begin function uECC_make_key
	.p2align	2
	.type	uECC_make_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_make_key
uECC_make_key:                          # @uECC_make_key
	.frame	$sp,224,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -224
	sw	$ra, 220($sp)                   # 4-byte Folded Spill
	sw	$fp, 216($sp)                   # 4-byte Folded Spill
	sw	$23, 212($sp)                   # 4-byte Folded Spill
	sw	$22, 208($sp)                   # 4-byte Folded Spill
	sw	$21, 204($sp)                   # 4-byte Folded Spill
	sw	$20, 200($sp)                   # 4-byte Folded Spill
	sw	$19, 196($sp)                   # 4-byte Folded Spill
	sw	$18, 192($sp)                   # 4-byte Folded Spill
	sw	$17, 188($sp)                   # 4-byte Folded Spill
	sw	$16, 184($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$18, $6
	sw	$5, 16($sp)                     # 4-byte Folded Spill
	move	$19, $4
	addiu	$23, $6, 36
	addiu	$21, $zero, 64
	addiu	$fp, $sp, 120
	addiu	$17, $sp, 88
	addiu	$20, $sp, 24
	addiu	$22, $zero, 0
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(uECC_get_rng)($16)
	.reloc ($tmp4), R_MIPS_JALR, uECC_get_rng
$tmp4:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB1_7
	nop
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	move	$4, $fp
	move	$25, $2
	jalr	$25
	addiu	$5, $zero, 64
	beqz	$2, $BB1_7
	nop
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	lh	$1, 2($18)
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $17
	move	$5, $fp
	move	$6, $23
	move	$gp, $16
	addiu	$1, $1, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	srl	$1, $1, 5
	.reloc ($tmp5), R_MIPS_JALR, uECC_vli_mmod
$tmp5:
	jalr	$25
	seb	$7, $1
	lw	$25, %call16(EccPoint_compute_public_key)($16)
	move	$4, $20
	move	$5, $17
	move	$6, $18
	.reloc ($tmp6), R_MIPS_JALR, EccPoint_compute_public_key
$tmp6:
	jalr	$25
	move	$gp, $16
	bnez	$2, $BB1_6
	nop
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	addiu	$21, $21, -1
	bnez	$21, $BB1_1
	nop
# %bb.5:
	b	$BB1_7
	nop
$BB1_6:
	lh	$1, 2($18)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	lw	$4, 16($sp)                     # 4-byte Folded Reload
	move	$6, $17
	move	$gp, $16
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	.reloc ($tmp7), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp7:
	jalr	$25
	sra	$5, $1, 3
	lb	$5, 1($18)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $19
	.reloc ($tmp8), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp8:
	jalr	$25
	move	$6, $20
	lb	$1, 0($18)
	lb	$5, 1($18)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	sll	$1, $1, 2
	addu	$4, $19, $5
	.reloc ($tmp9), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp9:
	jalr	$25
	addu	$6, $20, $1
	sw	$17, 20($sp)
	sw	$zero, 116($sp)
	sw	$zero, 112($sp)
	sw	$zero, 108($sp)
	sw	$zero, 104($sp)
	sw	$zero, 100($sp)
	sw	$zero, 96($sp)
	sw	$zero, 92($sp)
	sw	$zero, 88($sp)
	addiu	$22, $zero, 1
	#APP
	#NO_APP
$BB1_7:
	move	$2, $22
	lw	$16, 184($sp)                   # 4-byte Folded Reload
	lw	$17, 188($sp)                   # 4-byte Folded Reload
	lw	$18, 192($sp)                   # 4-byte Folded Reload
	lw	$19, 196($sp)                   # 4-byte Folded Reload
	lw	$20, 200($sp)                   # 4-byte Folded Reload
	lw	$21, 204($sp)                   # 4-byte Folded Reload
	lw	$22, 208($sp)                   # 4-byte Folded Reload
	lw	$23, 212($sp)                   # 4-byte Folded Reload
	lw	$fp, 216($sp)                   # 4-byte Folded Reload
	lw	$ra, 220($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 224
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_make_key
$func_end1:
	.size	uECC_make_key, ($func_end1)-uECC_make_key
                                        # -- End function
	.globl	uECC_shared_secret              # -- Begin function uECC_shared_secret
	.p2align	2
	.type	uECC_shared_secret,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_shared_secret
uECC_shared_secret:                     # @uECC_shared_secret
	.frame	$sp,216,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -216
	sw	$ra, 212($sp)                   # 4-byte Folded Spill
	sw	$fp, 208($sp)                   # 4-byte Folded Spill
	sw	$23, 204($sp)                   # 4-byte Folded Spill
	sw	$22, 200($sp)                   # 4-byte Folded Spill
	sw	$21, 196($sp)                   # 4-byte Folded Spill
	sw	$20, 192($sp)                   # 4-byte Folded Spill
	sw	$19, 188($sp)                   # 4-byte Folded Spill
	sw	$18, 184($sp)                   # 4-byte Folded Spill
	sw	$17, 180($sp)                   # 4-byte Folded Spill
	sw	$16, 176($sp)                   # 4-byte Folded Spill
	addiu	$17, $sp, 48
	addiu	$16, $sp, 80
	addu	$18, $2, $25
	move	$23, $4
	sw	$6, 24($sp)                     # 4-byte Folded Spill
	move	$19, $7
	sw	$17, 44($sp)
	sw	$16, 40($sp)
	lw	$25, %call16(uECC_vli_bytesToNative)($18)
	move	$4, $16
	move	$gp, $18
	lh	$1, 2($7)
	lb	$22, 0($7)
	lb	$21, 1($7)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp10:
	jalr	$25
	sra	$6, $1, 3
	addiu	$fp, $sp, 112
	lw	$25, %call16(uECC_vli_bytesToNative)($18)
	move	$5, $23
	move	$6, $21
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp11:
	jalr	$25
	move	$4, $fp
	sll	$1, $22, 2
	lw	$25, %call16(uECC_vli_bytesToNative)($18)
	addu	$5, $23, $21
	move	$6, $21
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp12:
	jalr	$25
	addu	$4, $fp, $1
	lw	$25, %call16(regularize_k)($18)
	move	$4, $16
	move	$5, $16
	move	$6, $17
	move	$7, $19
	.reloc ($tmp13), R_MIPS_JALR, regularize_k
$tmp13:
	jalr	$25
	move	$gp, $18
	lw	$25, %call16(uECC_get_rng)($18)
	move	$gp, $18
	.reloc ($tmp14), R_MIPS_JALR, uECC_get_rng
$tmp14:
	jalr	$25
	move	$fp, $2
	beqz	$2, $BB2_3
	addiu	$20, $sp, 40
# %bb.1:
	sll	$1, $fp, 2
	lw	$25, %call16(uECC_generate_random_int)($18)
	addiu	$5, $19, 4
	move	$6, $22
	move	$gp, $18
	addu	$1, $20, $1
	lw	$23, 0($1)
	.reloc ($tmp15), R_MIPS_JALR, uECC_generate_random_int
$tmp15:
	jalr	$25
	move	$4, $23
	bnez	$2, $BB2_4
	nop
# %bb.2:
	b	$BB2_5
	addiu	$2, $zero, 0
$BB2_3:
	addiu	$23, $zero, 0
$BB2_4:
	sltiu	$1, $fp, 1
	addiu	$22, $sp, 112
	move	$7, $23
	move	$gp, $18
	sll	$1, $1, 2
	move	$4, $22
	or	$1, $20, $1
	lw	$6, 0($1)
	lhu	$1, 2($19)
	sw	$19, 20($sp)
	addiu	$1, $1, 1
	seh	$1, $1
	sw	$1, 16($sp)
	lw	$25, %call16(EccPoint_mult)($18)
	.reloc ($tmp16), R_MIPS_JALR, EccPoint_mult
$tmp16:
	jalr	$25
	move	$5, $22
	lw	$25, %call16(uECC_vli_nativeToBytes)($18)
	lw	$4, 24($sp)                     # 4-byte Folded Reload
	move	$5, $21
	move	$6, $22
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp17:
	jalr	$25
	move	$gp, $18
	lw	$25, %call16(EccPoint_isZero)($18)
	move	$4, $22
	move	$5, $19
	.reloc ($tmp18), R_MIPS_JALR, EccPoint_isZero
$tmp18:
	jalr	$25
	move	$gp, $18
	sltiu	$2, $2, 1
$BB2_5:
	sw	$20, 36($sp)
	sw	$zero, 44($sp)
	sw	$zero, 40($sp)
	#APP
	#NO_APP
	sw	$17, 32($sp)
	sw	$zero, 76($sp)
	sw	$zero, 72($sp)
	sw	$zero, 68($sp)
	sw	$zero, 64($sp)
	sw	$zero, 60($sp)
	sw	$zero, 56($sp)
	sw	$zero, 52($sp)
	sw	$zero, 48($sp)
	#APP
	#NO_APP
	sw	$16, 28($sp)
	sw	$zero, 108($sp)
	sw	$zero, 104($sp)
	sw	$zero, 100($sp)
	sw	$zero, 96($sp)
	sw	$zero, 92($sp)
	sw	$zero, 88($sp)
	sw	$zero, 84($sp)
	sw	$zero, 80($sp)
	#APP
	#NO_APP
	lw	$16, 176($sp)                   # 4-byte Folded Reload
	lw	$17, 180($sp)                   # 4-byte Folded Reload
	lw	$18, 184($sp)                   # 4-byte Folded Reload
	lw	$19, 188($sp)                   # 4-byte Folded Reload
	lw	$20, 192($sp)                   # 4-byte Folded Reload
	lw	$21, 196($sp)                   # 4-byte Folded Reload
	lw	$22, 200($sp)                   # 4-byte Folded Reload
	lw	$23, 204($sp)                   # 4-byte Folded Reload
	lw	$fp, 208($sp)                   # 4-byte Folded Reload
	lw	$ra, 212($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 216
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_shared_secret
$func_end2:
	.size	uECC_shared_secret, ($func_end2)-uECC_shared_secret
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
