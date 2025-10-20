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
	move	$18, $7
	move	$21, $5
	move	$19, $4
	addiu	$17, $sp, 84
	lw	$25, %call16(memcpy)($16)
	move	$4, $17
	move	$5, $6
	addiu	$6, $zero, 32
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$gp, $16
	addiu	$20, $sp, 20
	lw	$25, %call16(EccPoint_compute_public_key)($16)
	move	$4, $20
	move	$5, $17
	move	$6, $18
	.reloc ($tmp1), R_MIPS_JALR, EccPoint_compute_public_key
$tmp1:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB0_2
	nop
# %bb.1:
	lh	$1, 2($18)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$5, $1, 3
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $21
	move	$6, $17
	.reloc ($tmp2), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp2:
	jalr	$25
	move	$gp, $16
	lb	$5, 1($18)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $19
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp3:
	jalr	$25
	move	$6, $20
	lb	$5, 1($18)
	addu	$4, $19, $5
	lb	$1, 0($18)
	sll	$1, $1, 2
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp4:
	jalr	$25
	addu	$6, $20, $1
	lw	$25, %call16(memset)($16)
	move	$4, $17
	addiu	$5, $zero, 0
	addiu	$6, $zero, 32
	.reloc ($tmp5), R_MIPS_JALR, memset
$tmp5:
	jalr	$25
	move	$gp, $16
	addiu	$2, $zero, 1
	sw	$17, 16($sp)
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
	addiu	$22, $6, 36
	addiu	$21, $zero, 64
	addiu	$23, $sp, 120
	addiu	$17, $sp, 88
	addiu	$20, $sp, 24
	addiu	$fp, $zero, 0
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$25, %call16(uECC_get_rng)($16)
	.reloc ($tmp6), R_MIPS_JALR, uECC_get_rng
$tmp6:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB1_7
	nop
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	move	$4, $23
	move	$25, $2
	jalr	$25
	addiu	$5, $zero, 64
	beqz	$2, $BB1_7
	nop
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	lh	$1, 2($18)
	addiu	$1, $1, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	srl	$1, $1, 5
	seb	$7, $1
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $17
	move	$5, $23
	move	$6, $22
	.reloc ($tmp7), R_MIPS_JALR, uECC_vli_mmod
$tmp7:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(EccPoint_compute_public_key)($16)
	move	$4, $20
	move	$5, $17
	move	$6, $18
	.reloc ($tmp8), R_MIPS_JALR, EccPoint_compute_public_key
$tmp8:
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
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$5, $1, 3
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	lw	$4, 16($sp)                     # 4-byte Folded Reload
	move	$6, $17
	.reloc ($tmp9), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp9:
	jalr	$25
	move	$gp, $16
	lb	$5, 1($18)
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	move	$4, $19
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp10:
	jalr	$25
	move	$6, $20
	lb	$5, 1($18)
	addu	$4, $19, $5
	lb	$1, 0($18)
	sll	$1, $1, 2
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp11:
	jalr	$25
	addu	$6, $20, $1
	lw	$25, %call16(memset)($16)
	move	$4, $17
	addiu	$5, $zero, 0
	addiu	$6, $zero, 32
	.reloc ($tmp12), R_MIPS_JALR, memset
$tmp12:
	jalr	$25
	move	$gp, $16
	addiu	$fp, $zero, 1
	sw	$17, 20($sp)
	#APP
	#NO_APP
$BB1_7:
	move	$2, $fp
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
	addu	$16, $2, $25
	move	$19, $7
	sw	$6, 24($sp)                     # 4-byte Folded Spill
	move	$23, $4
	addiu	$18, $sp, 48
	sw	$18, 44($sp)
	addiu	$17, $sp, 80
	sw	$17, 40($sp)
	lh	$1, 2($7)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$6, $1, 3
	lb	$22, 0($7)
	lb	$21, 1($7)
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $17
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp13:
	jalr	$25
	move	$gp, $16
	addiu	$fp, $sp, 112
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $fp
	move	$5, $23
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp14:
	jalr	$25
	move	$6, $21
	addu	$5, $23, $21
	sll	$1, $22, 2
	addu	$4, $fp, $1
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp15:
	jalr	$25
	move	$6, $21
	lw	$25, %call16(regularize_k)($16)
	move	$4, $17
	move	$5, $17
	move	$6, $18
	move	$7, $19
	.reloc ($tmp16), R_MIPS_JALR, regularize_k
$tmp16:
	jalr	$25
	move	$gp, $16
	move	$fp, $2
	lw	$25, %call16(uECC_get_rng)($16)
	.reloc ($tmp17), R_MIPS_JALR, uECC_get_rng
$tmp17:
	jalr	$25
	move	$gp, $16
	beqz	$2, $BB2_3
	addiu	$20, $sp, 40
# %bb.1:
	sll	$1, $fp, 2
	addu	$1, $20, $1
	lw	$23, 0($1)
	addiu	$5, $19, 4
	lw	$25, %call16(uECC_generate_random_int)($16)
	move	$4, $23
	move	$6, $22
	.reloc ($tmp18), R_MIPS_JALR, uECC_generate_random_int
$tmp18:
	jalr	$25
	move	$gp, $16
	bnez	$2, $BB2_4
	nop
# %bb.2:
	b	$BB2_5
	addiu	$19, $zero, 0
$BB2_3:
	addiu	$23, $zero, 0
$BB2_4:
	sltiu	$1, $fp, 1
	sll	$1, $1, 2
	or	$1, $20, $1
	lw	$6, 0($1)
	lhu	$1, 2($19)
	addiu	$22, $sp, 112
	sw	$19, 20($sp)
	addiu	$1, $1, 1
	seh	$1, $1
	sw	$1, 16($sp)
	lw	$25, %call16(EccPoint_mult)($16)
	move	$4, $22
	move	$5, $22
	move	$7, $23
	.reloc ($tmp19), R_MIPS_JALR, EccPoint_mult
$tmp19:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(uECC_vli_nativeToBytes)($16)
	lw	$4, 24($sp)                     # 4-byte Folded Reload
	move	$5, $21
	move	$6, $22
	.reloc ($tmp20), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp20:
	jalr	$25
	move	$gp, $16
	lw	$25, %call16(EccPoint_isZero)($16)
	move	$4, $22
	move	$5, $19
	.reloc ($tmp21), R_MIPS_JALR, EccPoint_isZero
$tmp21:
	jalr	$25
	move	$gp, $16
	sltiu	$19, $2, 1
$BB2_5:
	sw	$20, 36($sp)
	sw	$zero, 44($sp)
	sw	$zero, 40($sp)
	#APP
	#NO_APP
	lw	$25, %call16(memset)($16)
	move	$4, $18
	addiu	$5, $zero, 0
	addiu	$6, $zero, 32
	.reloc ($tmp22), R_MIPS_JALR, memset
$tmp22:
	jalr	$25
	move	$gp, $16
	sw	$18, 32($sp)
	#APP
	#NO_APP
	lw	$25, %call16(memset)($16)
	move	$4, $17
	addiu	$5, $zero, 0
	.reloc ($tmp23), R_MIPS_JALR, memset
$tmp23:
	jalr	$25
	addiu	$6, $zero, 32
	sw	$17, 28($sp)
	#APP
	#NO_APP
	move	$2, $19
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
