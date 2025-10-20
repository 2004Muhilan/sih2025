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
	.frame	$fp,144,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$fp, 136($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 128($fp)
	sw	$5, 124($fp)
	sw	$6, 120($fp)
	sw	$7, 116($fp)
	addiu	$4, $fp, 84
	lw	$5, 120($fp)
	addiu	$6, $zero, 32
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 20
	addiu	$5, $fp, 84
	lw	$6, 116($fp)
	lw	$25, %got(EccPoint_compute_public_key)($1)
	.reloc ($tmp1), R_MIPS_JALR, EccPoint_compute_public_key
$tmp1:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_3
	nop
$BB0_2:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 124($fp)
	lw	$2, 116($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 7
	addu	$3, $2, $3
	addiu	$2, $zero, 8
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$5
	addiu	$6, $fp, 84
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp2), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp2:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 128($fp)
	lw	$2, 116($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$6, $fp, 20
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp3:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 128($fp)
	lw	$3, 116($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$4, $2, $3
	lw	$2, 116($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$2, $fp, 20
	lw	$3, 116($fp)
	lbu	$3, 0($3)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$6, $2, $3
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp4:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 84
	addiu	$2, $zero, 0
	addiu	$6, $zero, 32
	andi	$5, $zero, 255
	lw	$1, %got(_set_secure)($1)
	addiu	$25, $1, %lo(_set_secure)
	.reloc ($tmp5), R_MIPS_JALR, _set_secure
$tmp5:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 132($fp)
	b	$BB0_4
	nop
$BB0_3:
	addiu	$1, $zero, 0
	sw	$zero, 132($fp)
$BB0_4:
	lw	$2, 132($fp)
	move	$sp, $fp
	lw	$fp, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 144
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_make_key_with_d
$func_end0:
	.size	uECC_make_key_with_d, ($func_end0)-uECC_make_key_with_d
                                        # -- End function
	.p2align	2                               # -- Begin function _set_secure
	.type	_set_secure,@function
	.set	nomicromips
	.set	nomips16
	.ent	_set_secure
_set_secure:                            # @_set_secure
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$4, 28($fp)
	sb	$5, 27($fp)
	sw	$6, 20($fp)
	lw	$4, 28($fp)
	lbu	$2, 27($fp)
	andi	$2, $2, 255
	lw	$6, 20($fp)
	seb	$5, $2
	lw	$25, %got(memset)($1)
	.reloc ($tmp6), R_MIPS_JALR, memset
$tmp6:
	jalr	$25
	nop
	lw	$1, 28($fp)
	sw	$1, 16($fp)
	#APP
	#NO_APP
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_set_secure
$func_end1:
	.size	_set_secure, ($func_end1)-_set_secure
                                        # -- End function
	.globl	uECC_make_key                   # -- Begin function uECC_make_key
	.p2align	2
	.type	uECC_make_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_make_key
uECC_make_key:                          # @uECC_make_key
	.frame	$fp,216,$ra
	.mask 	0xc0000000,-4
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
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	sw	$4, 200($fp)
	sw	$5, 196($fp)
	sw	$6, 192($fp)
	addiu	$1, $zero, 0
	sw	$zero, 28($fp)
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 64
	sltu	$1, $1, $2
	bgtz	$1, $BB2_3
	nop
# %bb.2:
	b	$BB2_12
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$25, %got(uECC_get_rng)($1)
	.reloc ($tmp7), R_MIPS_JALR, uECC_get_rng
$tmp7:
	jalr	$25
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_5
	nop
# %bb.4:
	b	$BB2_6
	nop
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$25, 24($fp)
	addiu	$4, $fp, 128
	addiu	$5, $zero, 64
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_7
	nop
$BB2_6:
	addiu	$1, $zero, 0
	sw	$zero, 204($fp)
	b	$BB2_13
	nop
$BB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 96
	addiu	$5, $fp, 128
	lw	$2, 192($fp)
	addiu	$3, $zero, 36
	addu	$6, $2, $3
	lw	$2, 192($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 31
	addu	$3, $2, $3
	addiu	$2, $zero, 32
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$2
	seb	$7, $2
	lw	$25, %got(uECC_vli_mmod)($1)
	.reloc ($tmp8), R_MIPS_JALR, uECC_vli_mmod
$tmp8:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 32
	addiu	$5, $fp, 96
	lw	$6, 192($fp)
	lw	$25, %got(EccPoint_compute_public_key)($1)
	.reloc ($tmp9), R_MIPS_JALR, EccPoint_compute_public_key
$tmp9:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB2_9
	nop
# %bb.8:                                #   in Loop: Header=BB2_1 Depth=1
	b	$BB2_10
	nop
$BB2_9:
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 196($fp)
	lw	$2, 192($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 7
	addu	$3, $2, $3
	addiu	$2, $zero, 8
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$5
	addiu	$6, $fp, 96
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp10), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp10:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$4, 200($fp)
	lw	$2, 192($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$6, $fp, 32
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp11), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp11:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	lw	$2, 200($fp)
	lw	$3, 192($fp)
	lbu	$3, 1($3)
	seb	$3, $3
	addu	$4, $2, $3
	lw	$2, 192($fp)
	lbu	$2, 1($2)
	seb	$5, $2
	addiu	$2, $fp, 32
	lw	$3, 192($fp)
	lbu	$3, 0($3)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$6, $2, $3
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp12:
	jalr	$25
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 96
	addiu	$2, $zero, 0
	addiu	$6, $zero, 32
	andi	$5, $zero, 255
	lw	$1, %got(_set_secure)($1)
	addiu	$25, $1, %lo(_set_secure)
	.reloc ($tmp13), R_MIPS_JALR, _set_secure
$tmp13:
	jalr	$25
	nop
	addiu	$1, $zero, 1
	sw	$1, 204($fp)
	b	$BB2_13
	nop
$BB2_10:                                #   in Loop: Header=BB2_1 Depth=1
	b	$BB2_11
	nop
$BB2_11:                                #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 28($fp)
	b	$BB2_1
	nop
$BB2_12:
	addiu	$1, $zero, 0
	sw	$zero, 204($fp)
$BB2_13:
	lw	$2, 204($fp)
	move	$sp, $fp
	lw	$fp, 208($sp)                   # 4-byte Folded Reload
	lw	$ra, 212($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 216
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_make_key
$func_end2:
	.size	uECC_make_key, ($func_end2)-uECC_make_key
                                        # -- End function
	.globl	uECC_shared_secret              # -- Begin function uECC_shared_secret
	.p2align	2
	.type	uECC_shared_secret,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_shared_secret
uECC_shared_secret:                     # @uECC_shared_secret
	.frame	$fp,208,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -208
	sw	$ra, 204($sp)                   # 4-byte Folded Spill
	sw	$fp, 200($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 28($fp)                     # 4-byte Folded Spill
	sw	$4, 196($fp)
	sw	$5, 192($fp)
	sw	$6, 188($fp)
	sw	$7, 184($fp)
	addiu	$2, $fp, 88
	sw	$2, 48($fp)
	addiu	$2, $fp, 56
	sw	$2, 52($fp)
	addiu	$2, $zero, 0
	sw	$zero, 44($fp)
	lw	$2, 184($fp)
	lbu	$2, 0($2)
	sb	$2, 39($fp)
	lw	$2, 184($fp)
	lbu	$2, 1($2)
	sb	$2, 38($fp)
	addiu	$4, $fp, 88
	lw	$5, 192($fp)
	lw	$2, 184($fp)
	lhu	$2, 2($2)
	seh	$2, $2
	addiu	$3, $zero, 7
	addu	$3, $2, $3
	addiu	$2, $zero, 8
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mflo	$6
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp14:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	lw	$5, 196($fp)
	lbu	$2, 38($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp15:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$2, $fp, 120
	lbu	$3, 39($fp)
	seb	$3, $3
	sll	$3, $3, 2
	addu	$4, $2, $3
	lw	$2, 196($fp)
	lbu	$3, 38($fp)
	seb	$3, $3
	addu	$5, $2, $3
	lbu	$2, 38($fp)
	seb	$6, $2
	lw	$25, %got(uECC_vli_bytesToNative)($1)
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp16:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	addiu	$5, $fp, 88
	addiu	$6, $fp, 56
	lw	$7, 184($fp)
	lw	$25, %got(regularize_k)($1)
	.reloc ($tmp17), R_MIPS_JALR, regularize_k
$tmp17:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	sw	$2, 40($fp)
	lw	$25, %got(uECC_get_rng)($1)
	.reloc ($tmp18), R_MIPS_JALR, uECC_get_rng
$tmp18:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_2
	nop
# %bb.1:
	b	$BB3_5
	nop
$BB3_2:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$3, 40($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$4, 0($2)
	lw	$2, 184($fp)
	addiu	$3, $zero, 4
	addu	$5, $2, $3
	lbu	$2, 39($fp)
	seb	$6, $2
	lw	$25, %got(uECC_generate_random_int)($1)
	.reloc ($tmp19), R_MIPS_JALR, uECC_generate_random_int
$tmp19:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB3_4
	nop
# %bb.3:
	addiu	$1, $zero, 0
	sw	$zero, 32($fp)
	b	$BB3_6
	nop
$BB3_4:
	lw	$2, 40($fp)
	addiu	$1, $fp, 48
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 44($fp)
$BB3_5:
	lw	$gp, 28($fp)                    # 4-byte Folded Reload
	addiu	$4, $fp, 120
	addiu	$5, $fp, 120
	lw	$1, 40($fp)
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$2, $1, 1
	addiu	$1, $fp, 48
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$6, 0($1)
	lw	$7, 44($fp)
	lw	$1, 184($fp)
	lhu	$1, 2($1)
	seh	$1, $1
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lw	$3, 184($fp)
	move	$2, $sp
	sw	$3, 20($2)
	seh	$1, $1
	sw	$1, 16($2)
	lw	$25, %call16(EccPoint_mult)($gp)
	.reloc ($tmp20), R_MIPS_JALR, EccPoint_mult
$tmp20:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	lw	$4, 188($fp)
	lbu	$2, 38($fp)
	seb	$5, $2
	addiu	$6, $fp, 120
	lw	$25, %got(uECC_vli_nativeToBytes)($1)
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_nativeToBytes
$tmp21:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 120
	lw	$5, 184($fp)
	lw	$25, %got(EccPoint_isZero)($1)
	.reloc ($tmp22), R_MIPS_JALR, EccPoint_isZero
$tmp22:
	jalr	$25
	nop
	addiu	$1, $zero, 0
	xor	$1, $2, $zero
	sltu	$1, $zero, $1
	lui	$2, 65535
	ori	$2, $2, 65535
	xor	$1, $1, $2
	andi	$1, $1, 1
	sw	$1, 32($fp)
$BB3_6:
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 48
	addiu	$2, $zero, 0
	addiu	$6, $zero, 8
	andi	$5, $zero, 255
	lw	$1, %got(_set_secure)($1)
	addiu	$25, $1, %lo(_set_secure)
	.reloc ($tmp23), R_MIPS_JALR, _set_secure
$tmp23:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 56
	addiu	$2, $zero, 0
	addiu	$6, $zero, 32
	andi	$5, $zero, 255
	lw	$1, %got(_set_secure)($1)
	addiu	$25, $1, %lo(_set_secure)
	.reloc ($tmp24), R_MIPS_JALR, _set_secure
$tmp24:
	jalr	$25
	nop
	lw	$1, 28($fp)                     # 4-byte Folded Reload
	addiu	$4, $fp, 88
	addiu	$2, $zero, 0
	addiu	$6, $zero, 32
	andi	$5, $zero, 255
	lw	$1, %got(_set_secure)($1)
	addiu	$25, $1, %lo(_set_secure)
	.reloc ($tmp25), R_MIPS_JALR, _set_secure
$tmp25:
	jalr	$25
	nop
	lw	$2, 32($fp)
	move	$sp, $fp
	lw	$fp, 200($sp)                   # 4-byte Folded Reload
	lw	$ra, 204($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 208
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_shared_secret
$func_end3:
	.size	uECC_shared_secret, ($func_end3)-uECC_shared_secret
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym _set_secure
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym regularize_k
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym EccPoint_mult
	.addrsig_sym EccPoint_isZero
	.text
