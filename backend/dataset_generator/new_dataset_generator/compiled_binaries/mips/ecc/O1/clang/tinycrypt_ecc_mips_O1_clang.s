	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_set_rng
uECC_set_rng:                           # @uECC_set_rng
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(g_rng_function)($1)
	jr	$ra
	sw	$4, %lo(g_rng_function)($1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_set_rng
$func_end0:
	.size	uECC_set_rng, ($func_end0)-uECC_set_rng
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.p2align	2
	.type	uECC_get_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_get_rng
uECC_get_rng:                           # @uECC_get_rng
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(g_rng_function)($1)
	jr	$ra
	lw	$2, %lo(g_rng_function)($1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_get_rng
$func_end1:
	.size	uECC_get_rng, ($func_end1)-uECC_get_rng
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.p2align	2
	.type	uECC_curve_private_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_private_key_size
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lh	$1, 2($4)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	jr	$ra
	sra	$2, $1, 3
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_private_key_size
$func_end2:
	.size	uECC_curve_private_key_size, ($func_end2)-uECC_curve_private_key_size
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.p2align	2
	.type	uECC_curve_public_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_public_key_size
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lb	$1, 1($4)
	jr	$ra
	sll	$2, $1, 1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_public_key_size
$func_end3:
	.size	uECC_curve_public_key_size, ($func_end3)-uECC_curve_public_key_size
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.p2align	2
	.type	uECC_vli_clear,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_clear
uECC_vli_clear:                         # @uECC_vli_clear
	.frame	$sp,24,$ra
	.mask 	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	blez	$5, $BB4_2
	addu	$gp, $2, $25
# %bb.1:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	andi	$1, $5, 255
	sll	$6, $1, 2
	lw	$25, %call16(memset)($gp)
	.reloc ($tmp0), R_MIPS_JALR, memset
$tmp0:
	jalr	$25
	addiu	$5, $zero, 0
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
$BB4_2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_clear
$func_end4:
	.size	uECC_vli_clear, ($func_end4)-uECC_vli_clear
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.p2align	2
	.type	uECC_vli_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_isZero
uECC_vli_isZero:                        # @uECC_vli_isZero
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$5, $BB5_4
	nop
# %bb.1:
	andi	$3, $5, 255
	addiu	$2, $zero, 0
$BB5_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB5_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	sltiu	$2, $2, 1
$BB5_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_isZero
$func_end5:
	.size	uECC_vli_isZero, ($func_end5)-uECC_vli_isZero
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.p2align	2
	.type	uECC_vli_testBit,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_testBit
uECC_vli_testBit:                       # @uECC_vli_testBit
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $zero, 1
	sllv	$1, $1, $5
	sra	$2, $5, 5
	sll	$2, $2, 2
	addu	$2, $4, $2
	lw	$2, 0($2)
	jr	$ra
	and	$2, $2, $1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_testBit
$func_end6:
	.size	uECC_vli_testBit, ($func_end6)-uECC_vli_testBit
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.p2align	2
	.type	uECC_vli_numBits,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_numBits
uECC_vli_numBits:                       # @uECC_vli_numBits
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $5, -1
	seb	$1, $1
	slti	$2, $1, -1
	addiu	$3, $zero, -1
	movn	$3, $1, $2
	addiu	$3, $3, 1
	andi	$5, $5, 255
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	move	$2, $5
	addiu	$5, $5, -1
	seb	$6, $5
	bltz	$6, $BB7_8
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$1, $4, $1
	lw	$1, 0($1)
	beqz	$1, $BB7_1
	nop
# %bb.3:
	andi	$1, $2, 255
	beqz	$1, $BB7_9
	nop
$BB7_4:
	seb	$1, $2
	addiu	$2, $1, -1
	sll	$1, $2, 2
	addu	$1, $4, $1
	lw	$4, 0($1)
	beqz	$4, $BB7_10
	nop
# %bb.5:
	addiu	$3, $zero, 0
$BB7_6:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	srl	$1, $4, 1
	sltiu	$5, $4, 2
	beqz	$5, $BB7_6
	move	$4, $1
# %bb.7:
	b	$BB7_11
	nop
$BB7_8:
	move	$2, $3
	andi	$1, $2, 255
	bnez	$1, $BB7_4
	nop
$BB7_9:
	addiu	$2, $zero, 0
	jr	$ra
	seh	$2, $2
$BB7_10:
	addiu	$3, $zero, 0
$BB7_11:
	sll	$1, $2, 5
	addu	$2, $3, $1
	jr	$ra
	seh	$2, $2
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_numBits
$func_end7:
	.size	uECC_vli_numBits, ($func_end7)-uECC_vli_numBits
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_set
uECC_vli_set:                           # @uECC_vli_set
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$6, $BB8_3
	nop
# %bb.1:
	andi	$2, $6, 255
$BB8_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	sw	$1, 0($4)
	addiu	$2, $2, -1
	addiu	$5, $5, 4
	bnez	$2, $BB8_2
	addiu	$4, $4, 4
$BB8_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_set
$func_end8:
	.size	uECC_vli_set, ($func_end8)-uECC_vli_set
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp_unsafe
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	andi	$2, $6, 255
$BB9_1:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB9_5
	nop
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $4, $1
	lw	$3, 0($3)
	addu	$1, $5, $1
	lw	$6, 0($1)
	sltu	$1, $6, $3
	bnez	$1, $BB9_6
	nop
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	sltu	$1, $3, $6
	beqz	$1, $BB9_1
	addiu	$2, $2, -1
# %bb.4:
	addiu	$2, $zero, 255
	jr	$ra
	seb	$2, $2
$BB9_5:
	addiu	$2, $zero, 0
	jr	$ra
	seb	$2, $2
$BB9_6:
	addiu	$2, $zero, 1
	jr	$ra
	seb	$2, $2
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp_unsafe
$func_end9:
	.size	uECC_vli_cmp_unsafe, ($func_end9)-uECC_vli_cmp_unsafe
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_equal
uECC_vli_equal:                         # @uECC_vli_equal
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $6, -1
	seb	$2, $1
	bltz	$2, $BB10_4
	nop
# %bb.1:
	andi	$1, $2, 255
	sll	$3, $1, 2
	addu	$2, $5, $3
	addu	$3, $4, $3
	addiu	$5, $1, 1
	addiu	$4, $zero, 0
$BB10_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	lw	$6, 0($2)
	xor	$1, $6, $1
	or	$4, $1, $4
	addiu	$2, $2, -4
	addiu	$5, $5, -1
	bgtz	$5, $BB10_2
	addiu	$3, $3, -4
# %bb.3:
	jr	$ra
	sltu	$2, $zero, $4
$BB10_4:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_equal
$func_end10:
	.size	uECC_vli_equal, ($func_end10)-uECC_vli_equal
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	2
	.type	cond_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	cond_set
cond_set:                               # @cond_set
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	movn	$5, $zero, $6
	mul	$1, $6, $4
	jr	$ra
	or	$2, $5, $1
	.set	at
	.set	macro
	.set	reorder
	.end	cond_set
$func_end11:
	.size	cond_set, ($func_end11)-cond_set
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_sub
uECC_vli_sub:                           # @uECC_vli_sub
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$7, $BB12_4
	nop
# %bb.1:
	andi	$3, $7, 255
	addiu	$2, $zero, 0
$BB12_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($6)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($5)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($4)
	or	$2, $2, $8
	addiu	$3, $3, -1
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	bnez	$3, $BB12_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	nop
$BB12_4:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_sub
$func_end12:
	.size	uECC_vli_sub, ($func_end12)-uECC_vli_sub
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp
uECC_vli_cmp:                           # @uECC_vli_cmp
	.frame	$sp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	blez	$6, $BB13_7
	nop
# %bb.1:
	andi	$2, $6, 255
	addiu	$3, $zero, 0
	addiu	$7, $sp, 0
$BB13_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$8, 0($4)
	sltu	$9, $8, $1
	subu	$1, $8, $1
	sw	$1, 0($7)
	or	$3, $3, $9
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$2, $2, -1
	bnez	$2, $BB13_2
	addiu	$7, $7, 4
# %bb.3:
	addiu	$2, $zero, -2
	blez	$6, $BB13_8
	movz	$2, $zero, $3
$BB13_4:
	andi	$3, $6, 255
	addiu	$5, $sp, 0
	addiu	$4, $zero, 0
$BB13_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	or	$4, $1, $4
	addiu	$3, $3, -1
	bnez	$3, $BB13_5
	addiu	$5, $5, 4
# %bb.6:
	b	$BB13_9
	sltiu	$3, $4, 1
$BB13_7:
	bgtz	$6, $BB13_4
	addiu	$2, $zero, 0
$BB13_8:
	addiu	$3, $zero, 1
$BB13_9:
	or	$1, $3, $2
	xori	$2, $1, 1
	jr	$ra
	addiu	$sp, $sp, 32
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp
$func_end13:
	.size	uECC_vli_cmp, ($func_end13)-uECC_vli_cmp
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modAdd
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	blez	$2, $BB14_6
	nop
# %bb.1:
	andi	$8, $2, 255
	addiu	$3, $zero, 0
	move	$9, $4
$BB14_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$10, $1, $3
	lw	$11, 0($6)
	addu	$10, $10, $11
	xor	$11, $10, $1
	movn	$3, $zero, $11
	sltu	$1, $10, $1
	sw	$10, 0($9)
	or	$3, $3, $1
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$8, $8, -1
	bnez	$8, $BB14_2
	addiu	$9, $9, 4
# %bb.3:
	beqz	$3, $BB14_6
	nop
# %bb.4:
	bgtz	$2, $BB14_14
	nop
# %bb.5:
	b	$BB14_16
	nop
$BB14_6:
	andi	$5, $2, 255
	addiu	$3, $zero, 0
$BB14_7:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $5, -1
	seb	$6, $1
	bltz	$6, $BB14_10
	nop
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$6, $7, $1
	lw	$6, 0($6)
	addu	$1, $4, $1
	lw	$8, 0($1)
	sltu	$1, $8, $6
	bnez	$1, $BB14_12
	nop
# %bb.9:                                #   in Loop: Header=BB14_7 Depth=1
	sltu	$1, $6, $8
	beqz	$1, $BB14_7
	addiu	$5, $5, -1
$BB14_10:
	bgtz	$2, $BB14_13
	nop
# %bb.11:
	b	$BB14_16
	nop
$BB14_12:
	blez	$2, $BB14_16
	addiu	$3, $zero, 1
$BB14_13:
	bnez	$3, $BB14_16
	nop
$BB14_14:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
$BB14_15:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($7)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$5, 0($4)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($4)
	or	$3, $3, $6
	addiu	$4, $4, 4
	addiu	$2, $2, -1
	bnez	$2, $BB14_15
	addiu	$7, $7, 4
$BB14_16:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
$func_end14:
	.size	uECC_vli_modAdd, ($func_end14)-uECC_vli_modAdd
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modSub
uECC_vli_modSub:                        # @uECC_vli_modSub
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	blez	$2, $BB15_5
	nop
# %bb.1:
	andi	$8, $2, 255
	addiu	$3, $zero, 0
	move	$9, $4
$BB15_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($6)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$10, 0($5)
	sltu	$11, $10, $1
	subu	$1, $10, $1
	sw	$1, 0($9)
	or	$3, $3, $11
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$8, $8, -1
	bnez	$8, $BB15_2
	addiu	$9, $9, 4
# %bb.3:
	bgtz	$2, $BB15_6
	sltiu	$3, $3, 1
# %bb.4:
	b	$BB15_9
	nop
$BB15_5:
	blez	$2, $BB15_9
	addiu	$3, $zero, 1
$BB15_6:
	bnez	$3, $BB15_9
	nop
# %bb.7:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
$BB15_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$5, $1, $3
	lw	$6, 0($7)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$3, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($4)
	or	$3, $3, $1
	addiu	$4, $4, 4
	addiu	$2, $2, -1
	bnez	$2, $BB15_8
	addiu	$7, $7, 4
$BB15_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
$func_end15:
	.size	uECC_vli_modSub, ($func_end15)-uECC_vli_modSub
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	2
	.type	uECC_vli_mmod,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mmod
uECC_vli_mmod:                          # @uECC_vli_mmod
	.frame	$sp,192,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -192
	sw	$ra, 188($sp)                   # 4-byte Folded Spill
	sw	$fp, 184($sp)                   # 4-byte Folded Spill
	sw	$23, 180($sp)                   # 4-byte Folded Spill
	sw	$22, 176($sp)                   # 4-byte Folded Spill
	sw	$21, 172($sp)                   # 4-byte Folded Spill
	sw	$20, 168($sp)                   # 4-byte Folded Spill
	sw	$19, 164($sp)                   # 4-byte Folded Spill
	sw	$18, 160($sp)                   # 4-byte Folded Spill
	sw	$17, 156($sp)                   # 4-byte Folded Spill
	sw	$16, 152($sp)                   # 4-byte Folded Spill
	addu	$19, $2, $25
	move	$17, $7
	move	$18, $6
	move	$16, $4
	addiu	$1, $7, -1
	seb	$1, $1
	slti	$2, $1, -1
	addiu	$3, $zero, -1
	movn	$3, $1, $2
	addiu	$1, $sp, 24
	sw	$5, 20($sp)
	sw	$1, 16($sp)
	addiu	$3, $3, 1
	andi	$20, $7, 255
	sll	$21, $7, 1
	move	$4, $20
$BB16_1:                                # =>This Inner Loop Header: Depth=1
	move	$2, $4
	addiu	$4, $4, -1
	seb	$5, $4
	bltz	$5, $BB16_8
	nop
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$1, $18, $1
	lw	$1, 0($1)
	beqz	$1, $BB16_1
	nop
# %bb.3:
	andi	$1, $2, 255
	beqz	$1, $BB16_9
	nop
$BB16_4:
	seb	$1, $2
	addiu	$2, $1, -1
	sll	$1, $2, 2
	addu	$1, $18, $1
	lw	$4, 0($1)
	beqz	$4, $BB16_10
	nop
# %bb.5:
	addiu	$3, $zero, 0
$BB16_6:                                # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	srl	$1, $4, 1
	sltiu	$5, $4, 2
	beqz	$5, $BB16_6
	move	$4, $1
# %bb.7:
	b	$BB16_11
	nop
$BB16_8:
	move	$2, $3
	andi	$1, $2, 255
	bnez	$1, $BB16_4
	nop
$BB16_9:
	b	$BB16_12
	addiu	$2, $zero, 0
$BB16_10:
	addiu	$3, $zero, 0
$BB16_11:
	sll	$1, $2, 5
	addu	$2, $3, $1
$BB16_12:
	sll	$1, $17, 6
	subu	$1, $1, $2
	seh	$22, $1
	srl	$1, $22, 27
	addu	$1, $22, $1
	addiu	$2, $zero, -32
	and	$2, $1, $2
	subu	$23, $22, $2
	sra	$2, $1, 5
	seb	$fp, $2
	blez	$fp, $BB16_14
	nop
# %bb.13:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	addiu	$4, $sp, 88
	lw	$25, %call16(memset)($19)
	addiu	$5, $zero, 0
	.reloc ($tmp1), R_MIPS_JALR, memset
$tmp1:
	jalr	$25
	move	$gp, $19
$BB16_14:
	blez	$23, $BB16_19
	nop
# %bb.15:
	beqz	$17, $BB16_21
	nop
# %bb.16:
	addiu	$1, $zero, 32
	subu	$2, $1, $23
	sll	$1, $fp, 2
	addiu	$3, $sp, 88
	addu	$3, $3, $1
	addiu	$4, $zero, 0
	move	$5, $17
$BB16_17:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	sllv	$6, $1, $23
	or	$4, $6, $4
	sw	$4, 0($3)
	srlv	$4, $1, $2
	addiu	$18, $18, 4
	addiu	$5, $5, -1
	bnez	$5, $BB16_17
	addiu	$3, $3, 4
# %bb.18:
	b	$BB16_21
	nop
$BB16_19:
	blez	$17, $BB16_21
	nop
# %bb.20:
	sll	$1, $fp, 2
	addiu	$2, $sp, 88
	addu	$4, $2, $1
	sll	$6, $20, 2
	lw	$25, %call16(memcpy)($19)
	move	$5, $18
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	move	$gp, $19
$BB16_21:
	bltz	$22, $BB16_37
	addiu	$2, $sp, 16
# %bb.22:
	sll	$1, $17, 2
	sll	$3, $20, 2
	addiu	$4, $sp, 88
	addu	$5, $4, $3
	addu	$6, $4, $1
	addu	$7, $6, $3
	addiu	$8, $6, -4
	b	$BB16_25
	addiu	$3, $zero, 1
$BB16_23:                               #   in Loop: Header=BB16_25 Depth=1
	lw	$1, 0($8)
	lw	$11, 0($6)
	sll	$11, $11, 31
	or	$1, $1, $11
	sw	$1, 0($8)
$BB16_24:                               #   in Loop: Header=BB16_25 Depth=1
	xor	$1, $3, $10
	sltiu	$3, $1, 1
	seh	$1, $9
	blez	$1, $BB16_38
	addiu	$22, $9, -1
$BB16_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_27 Depth 2
                                        #     Child Loop BB16_32 Depth 2
                                        #     Child Loop BB16_35 Depth 2
	blez	$17, $BB16_30
	move	$9, $22
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	sll	$1, $3, 2
	addu	$1, $2, $1
	lw	$11, 0($1)
	xori	$1, $3, 1
	sll	$1, $1, 2
	addu	$1, $2, $1
	lw	$12, 0($1)
	addiu	$15, $zero, 0
	addiu	$13, $zero, 0
	addiu	$14, $zero, 0
$BB16_27:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sll	$1, $15, 2
	addu	$10, $4, $1
	lw	$10, 0($10)
	addu	$15, $10, $14
	addu	$10, $11, $1
	lw	$24, 0($10)
	sltu	$10, $24, $15
	subu	$24, $24, $15
	addu	$1, $12, $1
	sw	$24, 0($1)
	movz	$10, $14, $15
	addiu	$13, $13, 1
	seb	$15, $13
	slt	$1, $15, $21
	bnez	$1, $BB16_27
	move	$14, $10
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	bgtz	$17, $BB16_31
	nop
# %bb.29:                               #   in Loop: Header=BB16_25 Depth=1
	b	$BB16_23
	nop
$BB16_30:                               #   in Loop: Header=BB16_25 Depth=1
	blez	$17, $BB16_23
	addiu	$10, $zero, 0
$BB16_31:                               #   in Loop: Header=BB16_25 Depth=1
	addiu	$12, $zero, 0
	move	$11, $5
$BB16_32:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($11)
	srl	$13, $1, 1
	or	$12, $13, $12
	sw	$12, -4($11)
	addiu	$11, $11, -4
	sltu	$13, $4, $11
	bnez	$13, $BB16_32
	sll	$12, $1, 31
# %bb.33:                               #   in Loop: Header=BB16_25 Depth=1
	lw	$1, 0($8)
	lw	$11, 0($6)
	sll	$11, $11, 31
	or	$1, $1, $11
	blez	$17, $BB16_24
	sw	$1, 0($8)
# %bb.34:                               #   in Loop: Header=BB16_25 Depth=1
	addiu	$12, $zero, 0
	move	$11, $7
$BB16_35:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($11)
	srl	$13, $1, 1
	or	$12, $13, $12
	sw	$12, -4($11)
	addiu	$11, $11, -4
	sltu	$13, $6, $11
	bnez	$13, $BB16_35
	sll	$12, $1, 31
# %bb.36:                               #   in Loop: Header=BB16_25 Depth=1
	b	$BB16_24
	nop
$BB16_37:
	addiu	$3, $zero, 1
$BB16_38:
	blez	$17, $BB16_41
	nop
# %bb.39:
	sll	$1, $3, 2
	addu	$1, $2, $1
	lw	$2, 0($1)
$BB16_40:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($16)
	addiu	$2, $2, 4
	addiu	$20, $20, -1
	bnez	$20, $BB16_40
	addiu	$16, $16, 4
$BB16_41:
	lw	$16, 152($sp)                   # 4-byte Folded Reload
	lw	$17, 156($sp)                   # 4-byte Folded Reload
	lw	$18, 160($sp)                   # 4-byte Folded Reload
	lw	$19, 164($sp)                   # 4-byte Folded Reload
	lw	$20, 168($sp)                   # 4-byte Folded Reload
	lw	$21, 172($sp)                   # 4-byte Folded Reload
	lw	$22, 176($sp)                   # 4-byte Folded Reload
	lw	$23, 180($sp)                   # 4-byte Folded Reload
	lw	$fp, 184($sp)                   # 4-byte Folded Reload
	lw	$ra, 188($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 192
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mmod
$func_end16:
	.size	uECC_vli_mmod, ($func_end16)-uECC_vli_mmod
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult
uECC_vli_modMult:                       # @uECC_vli_modMult
	.frame	$sp,104,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -104
	sw	$ra, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $7
	move	$18, $4
	lw	$19, 120($sp)
	lw	$1, %got(uECC_vli_mult)($16)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 16
	move	$4, $20
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_mult
$tmp3:
	jalr	$25
	move	$7, $19
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $18
	move	$5, $20
	move	$6, $17
	move	$7, $19
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_mmod
$tmp4:
	jalr	$25
	move	$gp, $16
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$ra, 100($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 104
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult
$func_end17:
	.size	uECC_vli_modMult, ($func_end17)-uECC_vli_modMult
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mult
uECC_vli_mult:                          # @uECC_vli_mult
	.frame	$sp,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -8
	sw	$16, 4($sp)                     # 4-byte Folded Spill
	blez	$7, $BB18_6
	andi	$2, $7, 255
# %bb.1:
	addiu	$9, $zero, 0
	addiu	$10, $zero, -4
	addiu	$11, $zero, 0
	addiu	$12, $zero, 0
	addiu	$15, $zero, 0
$BB18_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	move	$13, $5
	move	$14, $9
	addiu	$3, $zero, 0
$BB18_3:                                #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $6, $14
	lw	$1, 0($1)
	lw	$8, 0($13)
	multu	$1, $8
	mfhi	$1
	mflo	$8
	addu	$24, $15, $8
	addu	$1, $12, $1
	sltu	$15, $24, $15
	addiu	$13, $13, 4
	addiu	$14, $14, -4
	addu	$8, $1, $15
	sltu	$1, $8, $12
	xor	$12, $8, $12
	movz	$1, $15, $12
	addu	$3, $3, $1
	move	$12, $8
	bne	$14, $10, $BB18_3
	move	$15, $24
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	sll	$1, $11, 2
	addu	$1, $4, $1
	sw	$24, 0($1)
	addiu	$9, $9, 4
	addiu	$11, $11, 1
	move	$12, $3
	bne	$11, $2, $BB18_2
	move	$15, $8
# %bb.5:
	b	$BB18_7
	nop
$BB18_6:
	addiu	$8, $zero, 0
	addiu	$3, $zero, 0
$BB18_7:
	sll	$1, $7, 1
	addiu	$9, $1, -1
	slt	$1, $7, $9
	beqz	$1, $BB18_15
	nop
# %bb.8:
	addiu	$10, $zero, 1
	move	$11, $7
	b	$BB18_11
	move	$15, $7
$BB18_9:                                #   in Loop: Header=BB18_11 Depth=1
	move	$25, $8
	move	$8, $3
$BB18_10:                               #   in Loop: Header=BB18_11 Depth=1
	sll	$1, $11, 2
	addu	$1, $4, $1
	sw	$25, 0($1)
	seb	$11, $12
	slt	$1, $11, $9
	addiu	$10, $10, 1
	move	$15, $12
	beqz	$1, $BB18_15
	move	$3, $13
$BB18_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
	addiu	$12, $15, 1
	subu	$1, $12, $7
	seb	$1, $1
	slt	$1, $1, $7
	beqz	$1, $BB18_9
	addiu	$13, $zero, 0
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	seb	$1, $10
	sll	$13, $1, 2
	addu	$14, $5, $13
	seb	$15, $15
	sll	$15, $15, 2
	subu	$13, $15, $13
	addu	$15, $6, $13
	addiu	$24, $1, 1
	addiu	$13, $zero, 0
	move	$gp, $8
$BB18_13:                               #   Parent Loop BB18_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($14)
	lw	$8, 0($15)
	multu	$8, $1
	mflo	$1
	mfhi	$8
	addu	$8, $3, $8
	addu	$25, $gp, $1
	sltu	$1, $25, $gp
	addu	$8, $8, $1
	addiu	$gp, $24, 1
	addiu	$14, $14, 4
	addiu	$15, $15, -4
	andi	$16, $24, 255
	sltu	$24, $8, $3
	xor	$3, $8, $3
	movz	$24, $1, $3
	addu	$13, $13, $24
	move	$24, $gp
	move	$3, $8
	bne	$16, $2, $BB18_13
	move	$gp, $25
# %bb.14:                               #   in Loop: Header=BB18_11 Depth=1
	b	$BB18_10
	nop
$BB18_15:
	sll	$1, $9, 2
	addu	$1, $4, $1
	sw	$8, 0($1)
	lw	$16, 4($sp)                     # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 8
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mult
$func_end18:
	.size	uECC_vli_mult, ($func_end18)-uECC_vli_mult
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult_fast
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.frame	$sp,96,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$1, $2, $25
	move	$16, $7
	move	$17, $4
	lb	$7, 0($7)
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 16
	.reloc ($tmp5), R_MIPS_JALR, uECC_vli_mult
$tmp5:
	jalr	$25
	move	$4, $18
	lw	$25, 172($16)
	move	$4, $17
	jalr	$25
	move	$5, $18
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
$func_end19:
	.size	uECC_vli_modMult_fast, ($func_end19)-uECC_vli_modMult_fast
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modInv
uECC_vli_modInv:                        # @uECC_vli_modInv
	.frame	$sp,176,$ra
	.mask 	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -176
	sw	$ra, 172($sp)                   # 4-byte Folded Spill
	sw	$22, 168($sp)                   # 4-byte Folded Spill
	sw	$21, 164($sp)                   # 4-byte Folded Spill
	sw	$20, 160($sp)                   # 4-byte Folded Spill
	sw	$19, 156($sp)                   # 4-byte Folded Spill
	sw	$18, 152($sp)                   # 4-byte Folded Spill
	sw	$17, 148($sp)                   # 4-byte Folded Spill
	sw	$16, 144($sp)                   # 4-byte Folded Spill
	blez	$7, $BB20_118
	addu	$16, $2, $25
# %bb.1:
	move	$18, $6
	andi	$20, $7, 255
	sll	$17, $20, 2
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$17, $2, $BB20_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB20_6
	nop
# %bb.4:
	blez	$7, $BB20_8
	nop
# %bb.5:
	andi	$1, $7, 255
	sll	$19, $1, 2
	addiu	$1, $sp, 112
	lw	$25, %call16(memcpy)($16)
	move	$21, $4
	move	$4, $1
	move	$6, $19
	move	$gp, $16
	.reloc ($tmp6), R_MIPS_JALR, memcpy
$tmp6:
	jalr	$25
	move	$22, $7
	addiu	$4, $sp, 80
	lw	$25, %call16(memcpy)($16)
	move	$5, $18
	.reloc ($tmp7), R_MIPS_JALR, memcpy
$tmp7:
	jalr	$25
	move	$6, $19
	addiu	$4, $sp, 48
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	move	$6, $19
	.reloc ($tmp8), R_MIPS_JALR, memset
$tmp8:
	jalr	$25
	move	$gp, $16
	addiu	$4, $sp, 16
	addiu	$1, $zero, 1
	sw	$1, 48($sp)
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	.reloc ($tmp9), R_MIPS_JALR, memset
$tmp9:
	jalr	$25
	move	$6, $19
	move	$7, $22
	b	$BB20_9
	move	$4, $21
$BB20_6:
	blez	$7, $BB20_118
	nop
# %bb.7:
	andi	$1, $7, 255
	sll	$6, $1, 2
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	.reloc ($tmp10), R_MIPS_JALR, memset
$tmp10:
	jalr	$25
	move	$gp, $16
	b	$BB20_118
	nop
$BB20_8:
	addiu	$1, $zero, 1
	sw	$1, 48($sp)
$BB20_9:
	addiu	$2, $sp, 16
	addiu	$3, $sp, 112
	addu	$5, $3, $17
	addu	$6, $2, $17
	addiu	$8, $sp, 48
	addu	$9, $8, $17
	addiu	$10, $sp, 80
	addu	$11, $10, $17
	addiu	$12, $9, -4
	addiu	$13, $6, -4
	lui	$14, 32768
	b	$BB20_11
	move	$15, $20
$BB20_10:                               #   in Loop: Header=BB20_11 Depth=1
	lw	$1, 0($25)
	or	$1, $1, $14
	sw	$1, 0($25)
	move	$15, $20
$BB20_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_67 Depth 2
                                        #     Child Loop BB20_70 Depth 2
                                        #     Child Loop BB20_72 Depth 2
                                        #     Child Loop BB20_77 Depth 2
                                        #     Child Loop BB20_80 Depth 2
                                        #     Child Loop BB20_98 Depth 2
                                        #     Child Loop BB20_113 Depth 2
                                        #     Child Loop BB20_84 Depth 2
                                        #     Child Loop BB20_41 Depth 2
                                        #     Child Loop BB20_44 Depth 2
                                        #     Child Loop BB20_46 Depth 2
                                        #     Child Loop BB20_51 Depth 2
                                        #     Child Loop BB20_54 Depth 2
                                        #     Child Loop BB20_93 Depth 2
                                        #     Child Loop BB20_108 Depth 2
                                        #     Child Loop BB20_58 Depth 2
                                        #     Child Loop BB20_27 Depth 2
                                        #     Child Loop BB20_62 Depth 2
                                        #     Child Loop BB20_103 Depth 2
                                        #     Child Loop BB20_31 Depth 2
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_35 Depth 2
                                        #     Child Loop BB20_88 Depth 2
                                        #     Child Loop BB20_22 Depth 2
	addiu	$1, $15, -1
	seb	$24, $1
	bltz	$24, $BB20_14
	addiu	$25, $zero, 0
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=1
	andi	$1, $24, 255
	sll	$1, $1, 2
	addu	$25, $3, $1
	lw	$gp, 0($25)
	addu	$1, $10, $1
	lw	$19, 0($1)
	sltu	$1, $19, $gp
	bnez	$1, $BB20_14
	addiu	$25, $zero, 1
# %bb.13:                               #   in Loop: Header=BB20_11 Depth=1
	sltu	$1, $gp, $19
	addiu	$15, $15, -1
	beqz	$1, $BB20_11
	addiu	$25, $zero, 0
$BB20_14:                               #   in Loop: Header=BB20_11 Depth=1
	bltz	$24, $BB20_116
	nop
# %bb.15:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 115($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_24
	nop
# %bb.16:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_19
	nop
# %bb.17:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $5
$BB20_18:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	sltu	$25, $3, $15
	bnez	$25, $BB20_18
	sll	$24, $1, 31
$BB20_19:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 51($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_33
	nop
# %bb.20:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_11
	move	$15, $20
# %bb.21:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $9
$BB20_22:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	sltu	$25, $8, $15
	bnez	$25, $BB20_22
	sll	$24, $1, 31
# %bb.23:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_11
	move	$15, $20
$BB20_24:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 83($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_38
	nop
# %bb.25:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_28
	nop
# %bb.26:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $11
$BB20_27:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	sltu	$25, $10, $15
	bnez	$25, $BB20_27
	sll	$24, $1, 31
$BB20_28:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 19($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_60
	nop
# %bb.29:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_11
	move	$15, $20
# %bb.30:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $6
$BB20_31:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	addiu	$24, $sp, 16
	sltu	$25, $24, $15
	bnez	$25, $BB20_31
	sll	$24, $1, 31
# %bb.32:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_11
	move	$15, $20
$BB20_33:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_86
	nop
# %bb.34:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $sp, 48
	move	$25, $18
	move	$gp, $20
$BB20_35:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($24)
	addu	$19, $1, $15
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$15, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($24)
	or	$15, $15, $1
	addiu	$24, $24, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_35
	addiu	$25, $25, 4
# %bb.36:                               #   in Loop: Header=BB20_11 Depth=1
	bgtz	$7, $BB20_87
	sltiu	$24, $15, 1
# %bb.37:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_89
	nop
$BB20_38:                               #   in Loop: Header=BB20_11 Depth=1
	beqz	$25, $BB20_65
	nop
# %bb.39:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_45
	nop
# %bb.40:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $zero, 0
$BB20_41:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $10, $15
	lw	$1, 0($1)
	addu	$1, $1, $24
	addu	$25, $3, $15
	lw	$gp, 0($25)
	subu	$19, $gp, $1
	sw	$19, 0($25)
	sltu	$25, $gp, $1
	movn	$24, $zero, $1
	addiu	$15, $15, 4
	bne	$17, $15, $BB20_41
	or	$24, $24, $25
# %bb.42:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_45
	nop
# %bb.43:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $5
$BB20_44:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	sltu	$25, $3, $15
	bnez	$25, $BB20_44
	sll	$24, $1, 31
$BB20_45:                               #   in Loop: Header=BB20_11 Depth=1
	move	$24, $20
$BB20_46:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $24, -1
	seb	$15, $1
	bltz	$15, $BB20_52
	nop
# %bb.47:                               #   in Loop: Header=BB20_46 Depth=2
	andi	$1, $15, 255
	sll	$1, $1, 2
	addiu	$15, $sp, 48
	addu	$25, $15, $1
	lw	$25, 0($25)
	addiu	$gp, $sp, 16
	addu	$1, $gp, $1
	lw	$gp, 0($1)
	sltu	$1, $gp, $25
	bnez	$1, $BB20_52
	nop
# %bb.48:                               #   in Loop: Header=BB20_46 Depth=2
	sltu	$1, $25, $gp
	beqz	$1, $BB20_46
	addiu	$24, $24, -1
# %bb.49:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_55
	nop
# %bb.50:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$25, $18
	move	$gp, $20
$BB20_51:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($15)
	addu	$19, $1, $24
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$24, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($15)
	or	$24, $24, $1
	addiu	$15, $15, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_51
	addiu	$25, $25, 4
$BB20_52:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_55
	nop
# %bb.53:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $sp, 16
	addiu	$25, $sp, 48
	move	$gp, $20
$BB20_54:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($24)
	addu	$1, $1, $15
	movn	$15, $zero, $1
	lw	$19, 0($25)
	sltu	$21, $19, $1
	subu	$1, $19, $1
	sw	$1, 0($25)
	or	$15, $15, $21
	addiu	$25, $25, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_54
	addiu	$24, $24, 4
$BB20_55:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 51($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_91
	nop
# %bb.56:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_11
	move	$15, $20
# %bb.57:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $9
$BB20_58:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	addiu	$24, $sp, 48
	sltu	$25, $24, $15
	bnez	$25, $BB20_58
	sll	$24, $1, 31
# %bb.59:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_11
	move	$15, $20
$BB20_60:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_101
	nop
# %bb.61:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $sp, 16
	move	$25, $18
	move	$gp, $20
$BB20_62:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($24)
	addu	$19, $1, $15
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$15, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($24)
	or	$15, $15, $1
	addiu	$24, $24, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_62
	addiu	$25, $25, 4
# %bb.63:                               #   in Loop: Header=BB20_11 Depth=1
	bgtz	$7, $BB20_102
	sltiu	$24, $15, 1
# %bb.64:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_104
	nop
$BB20_65:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_71
	nop
# %bb.66:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $zero, 0
$BB20_67:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $3, $15
	lw	$1, 0($1)
	addu	$1, $1, $24
	addu	$25, $10, $15
	lw	$gp, 0($25)
	subu	$19, $gp, $1
	sw	$19, 0($25)
	sltu	$25, $gp, $1
	movn	$24, $zero, $1
	addiu	$15, $15, 4
	bne	$17, $15, $BB20_67
	or	$24, $24, $25
# %bb.68:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_71
	nop
# %bb.69:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $11
$BB20_70:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	sltu	$25, $10, $15
	bnez	$25, $BB20_70
	sll	$24, $1, 31
$BB20_71:                               #   in Loop: Header=BB20_11 Depth=1
	move	$24, $20
$BB20_72:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $24, -1
	seb	$15, $1
	bltz	$15, $BB20_78
	nop
# %bb.73:                               #   in Loop: Header=BB20_72 Depth=2
	andi	$1, $15, 255
	sll	$1, $1, 2
	addiu	$15, $sp, 16
	addu	$25, $15, $1
	lw	$25, 0($25)
	addiu	$gp, $sp, 48
	addu	$1, $gp, $1
	lw	$gp, 0($1)
	sltu	$1, $gp, $25
	bnez	$1, $BB20_78
	nop
# %bb.74:                               #   in Loop: Header=BB20_72 Depth=2
	sltu	$1, $25, $gp
	beqz	$1, $BB20_72
	addiu	$24, $24, -1
# %bb.75:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_81
	nop
# %bb.76:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$25, $18
	move	$gp, $20
$BB20_77:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($15)
	addu	$19, $1, $24
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$24, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($15)
	or	$24, $24, $1
	addiu	$15, $15, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_77
	addiu	$25, $25, 4
$BB20_78:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_81
	nop
# %bb.79:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $sp, 16
	move	$25, $8
	move	$gp, $20
$BB20_80:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($25)
	addu	$1, $1, $15
	movn	$15, $zero, $1
	lw	$19, 0($24)
	sltu	$21, $19, $1
	subu	$1, $19, $1
	sw	$1, 0($24)
	or	$15, $15, $21
	addiu	$24, $24, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_80
	addiu	$25, $25, 4
$BB20_81:                               #   in Loop: Header=BB20_11 Depth=1
	lbu	$1, 19($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_96
	nop
# %bb.82:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_11
	move	$15, $20
# %bb.83:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$24, $zero, 0
	move	$15, $6
$BB20_84:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$25, $1, 1
	or	$24, $25, $24
	sw	$24, -4($15)
	addiu	$15, $15, -4
	addiu	$24, $sp, 16
	sltu	$25, $24, $15
	bnez	$25, $BB20_84
	sll	$24, $1, 31
# %bb.85:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_11
	move	$15, $20
$BB20_86:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_89
	addiu	$24, $zero, 1
$BB20_87:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$25, $zero, 0
	move	$15, $9
$BB20_88:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$gp, $1, 1
	or	$25, $gp, $25
	sw	$25, -4($15)
	addiu	$15, $15, -4
	addiu	$25, $sp, 48
	sltu	$gp, $25, $15
	bnez	$gp, $BB20_88
	sll	$25, $1, 31
$BB20_89:                               #   in Loop: Header=BB20_11 Depth=1
	move	$15, $20
	bnez	$24, $BB20_11
	move	$25, $12
# %bb.90:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_10
	nop
$BB20_91:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_106
	nop
# %bb.92:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	addiu	$24, $sp, 48
	move	$25, $18
	move	$gp, $20
$BB20_93:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($24)
	addu	$19, $1, $15
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$15, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($24)
	or	$15, $15, $1
	addiu	$24, $24, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_93
	addiu	$25, $25, 4
# %bb.94:                               #   in Loop: Header=BB20_11 Depth=1
	bgtz	$7, $BB20_107
	sltiu	$24, $15, 1
# %bb.95:                               #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_109
	nop
$BB20_96:                               #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_111
	nop
# %bb.97:                               #   in Loop: Header=BB20_11 Depth=1
	addiu	$15, $zero, 0
	move	$24, $2
	move	$25, $18
	move	$gp, $20
$BB20_98:                               #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($24)
	addu	$19, $1, $15
	lw	$21, 0($25)
	addu	$19, $19, $21
	xor	$21, $19, $1
	movn	$15, $zero, $21
	sltu	$1, $19, $1
	sw	$19, 0($24)
	or	$15, $15, $1
	addiu	$24, $24, 4
	addiu	$gp, $gp, -1
	bnez	$gp, $BB20_98
	addiu	$25, $25, 4
# %bb.99:                               #   in Loop: Header=BB20_11 Depth=1
	bgtz	$7, $BB20_112
	sltiu	$24, $15, 1
# %bb.100:                              #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_114
	nop
$BB20_101:                              #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_104
	addiu	$24, $zero, 1
$BB20_102:                              #   in Loop: Header=BB20_11 Depth=1
	addiu	$25, $zero, 0
	move	$15, $6
$BB20_103:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$gp, $1, 1
	or	$25, $gp, $25
	sw	$25, -4($15)
	addiu	$15, $15, -4
	addiu	$25, $sp, 16
	sltu	$gp, $25, $15
	bnez	$gp, $BB20_103
	sll	$25, $1, 31
$BB20_104:                              #   in Loop: Header=BB20_11 Depth=1
	move	$15, $20
	bnez	$24, $BB20_11
	move	$25, $13
# %bb.105:                              #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_10
	nop
$BB20_106:                              #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_109
	addiu	$24, $zero, 1
$BB20_107:                              #   in Loop: Header=BB20_11 Depth=1
	addiu	$25, $zero, 0
	move	$15, $9
$BB20_108:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$gp, $1, 1
	or	$25, $gp, $25
	sw	$25, -4($15)
	addiu	$15, $15, -4
	addiu	$25, $sp, 48
	sltu	$gp, $25, $15
	bnez	$gp, $BB20_108
	sll	$25, $1, 31
$BB20_109:                              #   in Loop: Header=BB20_11 Depth=1
	move	$15, $20
	bnez	$24, $BB20_11
	move	$25, $12
# %bb.110:                              #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_10
	nop
$BB20_111:                              #   in Loop: Header=BB20_11 Depth=1
	blez	$7, $BB20_114
	addiu	$24, $zero, 1
$BB20_112:                              #   in Loop: Header=BB20_11 Depth=1
	addiu	$25, $zero, 0
	move	$15, $6
$BB20_113:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($15)
	srl	$gp, $1, 1
	or	$25, $gp, $25
	sw	$25, -4($15)
	addiu	$15, $15, -4
	sltu	$gp, $2, $15
	bnez	$gp, $BB20_113
	sll	$25, $1, 31
$BB20_114:                              #   in Loop: Header=BB20_11 Depth=1
	move	$15, $20
	bnez	$24, $BB20_11
	move	$25, $13
# %bb.115:                              #   in Loop: Header=BB20_11 Depth=1
	b	$BB20_10
	nop
$BB20_116:
	blez	$7, $BB20_118
	nop
# %bb.117:
	addiu	$5, $sp, 48
	lw	$25, %call16(memcpy)($16)
	move	$6, $17
	.reloc ($tmp11), R_MIPS_JALR, memcpy
$tmp11:
	jalr	$25
	move	$gp, $16
$BB20_118:
	lw	$16, 144($sp)                   # 4-byte Folded Reload
	lw	$17, 148($sp)                   # 4-byte Folded Reload
	lw	$18, 152($sp)                   # 4-byte Folded Reload
	lw	$19, 156($sp)                   # 4-byte Folded Reload
	lw	$20, 160($sp)                   # 4-byte Folded Reload
	lw	$21, 164($sp)                   # 4-byte Folded Reload
	lw	$22, 168($sp)                   # 4-byte Folded Reload
	lw	$ra, 172($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 176
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modInv
$func_end20:
	.size	uECC_vli_modInv, ($func_end20)-uECC_vli_modInv
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	double_jacobian_default
double_jacobian_default:                # @double_jacobian_default
	.frame	$sp,200,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -200
	sw	$ra, 196($sp)                   # 4-byte Folded Spill
	sw	$fp, 192($sp)                   # 4-byte Folded Spill
	sw	$23, 188($sp)                   # 4-byte Folded Spill
	sw	$22, 184($sp)                   # 4-byte Folded Spill
	sw	$21, 180($sp)                   # 4-byte Folded Spill
	sw	$20, 176($sp)                   # 4-byte Folded Spill
	sw	$19, 172($sp)                   # 4-byte Folded Spill
	sw	$18, 168($sp)                   # 4-byte Folded Spill
	sw	$17, 164($sp)                   # 4-byte Folded Spill
	sw	$16, 160($sp)                   # 4-byte Folded Spill
	addu	$8, $2, $25
	move	$18, $6
	lbu	$21, 0($7)
	seb	$9, $21
	blez	$9, $BB21_5
	move	$20, $4
# %bb.1:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $21
$BB21_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	or	$2, $1, $2
	addiu	$4, $4, -1
	bnez	$4, $BB21_2
	addiu	$3, $3, 4
# %bb.3:
	sltiu	$2, $2, 1
	bnez	$2, $BB21_127
	nop
# %bb.4:
	b	$BB21_6
	nop
$BB21_5:
	addiu	$2, $zero, 1
	bnez	$2, $BB21_127
	nop
$BB21_6:
	sw	$8, 20($sp)                     # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($8)
	sw	$1, 28($sp)                     # 4-byte Folded Spill
	addiu	$fp, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 96
	move	$4, $23
	move	$6, $5
	sw	$9, 24($sp)                     # 4-byte Folded Spill
	move	$19, $7
	lw	$7, 24($sp)                     # 4-byte Folded Reload
	move	$25, $fp
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_mult
$tmp12:
	jalr	$25
	move	$17, $5
	lw	$25, 172($19)
	addiu	$22, $sp, 64
	move	$4, $22
	jalr	$25
	move	$5, $23
	addiu	$16, $sp, 96
	lb	$7, 0($19)
	move	$4, $16
	move	$5, $20
	move	$25, $fp
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_mult
$tmp13:
	jalr	$25
	move	$6, $22
	addiu	$23, $sp, 32
	lw	$25, 172($19)
	move	$4, $23
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 96
	lb	$7, 0($19)
	move	$4, $16
	move	$5, $22
	move	$25, $fp
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_mult
$tmp14:
	jalr	$25
	move	$6, $22
	lw	$25, 172($19)
	move	$4, $22
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 96
	lb	$7, 0($19)
	move	$4, $16
	move	$5, $17
	move	$25, $fp
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_mult
$tmp15:
	jalr	$25
	move	$6, $18
	lw	$25, 172($19)
	sw	$17, 16($sp)                    # 4-byte Folded Spill
	move	$4, $17
	move	$17, $21
	move	$21, $19
	lw	$19, 24($sp)                    # 4-byte Folded Reload
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 96
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $18
	move	$25, $fp
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_mult
$tmp16:
	jalr	$25
	move	$6, $18
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	blez	$19, $BB21_10
	addiu	$fp, $21, 4
# %bb.7:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $18
	move	$5, $17
$BB21_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_8
	addiu	$4, $4, 4
# %bb.9:
	bnez	$2, $BB21_18
	nop
$BB21_10:
	move	$3, $17
	addiu	$2, $zero, 0
$BB21_11:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB21_16
	nop
# %bb.12:                               #   in Loop: Header=BB21_11 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $fp, $1
	lw	$4, 0($4)
	addu	$1, $20, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB21_15
	nop
# %bb.13:                               #   in Loop: Header=BB21_11 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB21_11
	addiu	$3, $3, -1
# %bb.14:
	b	$BB21_16
	nop
$BB21_15:
	addiu	$2, $zero, 1
$BB21_16:
	blez	$19, $BB21_20
	nop
# %bb.17:
	bnez	$2, $BB21_20
	nop
$BB21_18:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $fp
	move	$5, $17
$BB21_19:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_19
	addiu	$4, $4, 4
$BB21_20:
	blez	$19, $BB21_24
	nop
# %bb.21:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $17
$BB21_22:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	sll	$5, $1, 1
	addu	$5, $5, $2
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($3)
	or	$2, $2, $1
	addiu	$4, $4, -1
	bnez	$4, $BB21_22
	addiu	$3, $3, 4
# %bb.23:
	bnez	$2, $BB21_32
	nop
$BB21_24:
	move	$3, $17
	addiu	$2, $zero, 0
$BB21_25:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB21_30
	nop
# %bb.26:                               #   in Loop: Header=BB21_25 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $fp, $1
	lw	$4, 0($4)
	addu	$1, $18, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB21_29
	nop
# %bb.27:                               #   in Loop: Header=BB21_25 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB21_25
	addiu	$3, $3, -1
# %bb.28:
	b	$BB21_30
	nop
$BB21_29:
	addiu	$2, $zero, 1
$BB21_30:
	blez	$19, $BB21_34
	nop
# %bb.31:
	bnez	$2, $BB21_34
	nop
$BB21_32:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $17
$BB21_33:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_33
	addiu	$4, $4, 4
$BB21_34:
	blez	$19, $BB21_39
	nop
# %bb.35:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $18
	move	$5, $17
$BB21_36:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_36
	addiu	$4, $4, 4
# %bb.37:
	bgtz	$19, $BB21_40
	sltiu	$2, $2, 1
# %bb.38:
	b	$BB21_43
	nop
$BB21_39:
	blez	$19, $BB21_43
	addiu	$2, $zero, 1
$BB21_40:
	bnez	$2, $BB21_43
	nop
# %bb.41:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $17
$BB21_42:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_42
	addiu	$4, $4, 4
$BB21_43:
	lb	$7, 0($21)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 96
	move	$4, $16
	move	$5, $20
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_mult
$tmp17:
	jalr	$25
	move	$6, $18
	lw	$25, 172($21)
	move	$4, $20
	jalr	$25
	move	$5, $16
	blez	$19, $BB21_47
	nop
# %bb.44:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $18
	move	$5, $17
$BB21_45:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	sll	$6, $1, 1
	addu	$6, $6, $2
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($4)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_45
	addiu	$4, $4, 4
# %bb.46:
	bnez	$2, $BB21_55
	nop
$BB21_47:
	move	$3, $17
	addiu	$2, $zero, 0
$BB21_48:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB21_53
	nop
# %bb.49:                               #   in Loop: Header=BB21_48 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $fp, $1
	lw	$4, 0($4)
	addu	$1, $18, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB21_52
	nop
# %bb.50:                               #   in Loop: Header=BB21_48 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB21_48
	addiu	$3, $3, -1
# %bb.51:
	b	$BB21_53
	nop
$BB21_52:
	addiu	$2, $zero, 1
$BB21_53:
	blez	$19, $BB21_57
	nop
# %bb.54:
	bnez	$2, $BB21_57
	nop
$BB21_55:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $17
$BB21_56:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_56
	addiu	$4, $4, 4
$BB21_57:
	blez	$19, $BB21_61
	nop
# %bb.58:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $18
	move	$5, $17
$BB21_59:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_59
	addiu	$4, $4, 4
# %bb.60:
	bnez	$2, $BB21_69
	nop
$BB21_61:
	move	$3, $17
	addiu	$2, $zero, 0
$BB21_62:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB21_67
	nop
# %bb.63:                               #   in Loop: Header=BB21_62 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $fp, $1
	lw	$4, 0($4)
	addu	$1, $20, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB21_66
	nop
# %bb.64:                               #   in Loop: Header=BB21_62 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB21_62
	addiu	$3, $3, -1
# %bb.65:
	b	$BB21_67
	nop
$BB21_66:
	addiu	$2, $zero, 1
$BB21_67:
	blez	$19, $BB21_71
	nop
# %bb.68:
	bnez	$2, $BB21_71
	nop
$BB21_69:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $fp
	move	$5, $17
$BB21_70:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_70
	addiu	$4, $4, 4
$BB21_71:
	lbu	$1, 3($20)
	andi	$1, $1, 1
	bnez	$1, $BB21_76
	nop
# %bb.72:
	blez	$19, $BB21_83
	nop
# %bb.73:
	sll	$1, $17, 2
	addu	$2, $20, $1
	addiu	$3, $zero, 0
$BB21_74:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $20, $2
	bnez	$4, $BB21_74
	sll	$3, $1, 31
# %bb.75:
	b	$BB21_83
	nop
$BB21_76:
	blez	$19, $BB21_79
	addiu	$2, $zero, 0
# %bb.77:
	move	$3, $20
	move	$4, $fp
	move	$5, $17
$BB21_78:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_78
	addiu	$4, $4, 4
$BB21_79:
	blez	$19, $BB21_82
	nop
# %bb.80:
	sll	$1, $17, 2
	addu	$3, $20, $1
	addiu	$4, $zero, 0
$BB21_81:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -4($3)
	srl	$5, $1, 1
	or	$4, $5, $4
	sw	$4, -4($3)
	addiu	$3, $3, -4
	sltu	$5, $20, $3
	bnez	$5, $BB21_81
	sll	$4, $1, 31
$BB21_82:
	sll	$1, $19, 2
	addu	$1, $20, $1
	lw	$3, -4($1)
	sll	$2, $2, 31
	or	$2, $3, $2
	sw	$2, -4($1)
$BB21_83:
	lb	$7, 0($21)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 96
	move	$4, $16
	move	$5, $20
	.reloc ($tmp18), R_MIPS_JALR, uECC_vli_mult
$tmp18:
	jalr	$25
	move	$6, $20
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	blez	$19, $BB21_88
	nop
# %bb.84:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $17
$BB21_85:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($23)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($3)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($3)
	or	$2, $2, $6
	addiu	$3, $3, 4
	addiu	$4, $4, -1
	bnez	$4, $BB21_85
	addiu	$23, $23, 4
# %bb.86:
	bgtz	$19, $BB21_89
	sltiu	$2, $2, 1
# %bb.87:
	b	$BB21_92
	nop
$BB21_88:
	blez	$19, $BB21_92
	addiu	$2, $zero, 1
$BB21_89:
	bnez	$2, $BB21_92
	nop
# %bb.90:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $17
$BB21_91:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_91
	addiu	$4, $4, 4
$BB21_92:
	blez	$19, $BB21_97
	nop
# %bb.93:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $18
	move	$5, $17
$BB21_94:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($4)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_94
	addiu	$3, $3, 4
# %bb.95:
	bgtz	$19, $BB21_98
	sltiu	$2, $2, 1
# %bb.96:
	b	$BB21_101
	nop
$BB21_97:
	blez	$19, $BB21_101
	addiu	$2, $zero, 1
$BB21_98:
	bnez	$2, $BB21_101
	nop
# %bb.99:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $17
$BB21_100:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_100
	addiu	$4, $4, 4
$BB21_101:
	blez	$19, $BB21_106
	nop
# %bb.102:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $18
	move	$5, $17
$BB21_103:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_103
	addiu	$4, $4, 4
# %bb.104:
	bgtz	$19, $BB21_107
	sltiu	$2, $2, 1
# %bb.105:
	b	$BB21_110
	nop
$BB21_106:
	blez	$19, $BB21_110
	addiu	$2, $zero, 1
$BB21_107:
	bnez	$2, $BB21_110
	nop
# %bb.108:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $fp
	move	$5, $17
$BB21_109:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_109
	addiu	$4, $4, 4
$BB21_110:
	lb	$7, 0($21)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 96
	addiu	$6, $sp, 32
	move	$4, $16
	.reloc ($tmp19), R_MIPS_JALR, uECC_vli_mult
$tmp19:
	jalr	$25
	move	$5, $20
	lw	$25, 172($21)
	move	$4, $20
	jalr	$25
	move	$5, $16
	blez	$19, $BB21_115
	nop
# %bb.111:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$7, $17
	lw	$gp, 20($sp)                    # 4-byte Folded Reload
	lw	$4, 16($sp)                     # 4-byte Folded Reload
$BB21_112:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($22)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($3)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($22)
	or	$2, $2, $6
	addiu	$3, $3, 4
	addiu	$7, $7, -1
	bnez	$7, $BB21_112
	addiu	$22, $22, 4
# %bb.113:
	bgtz	$19, $BB21_116
	sltiu	$2, $2, 1
# %bb.114:
	b	$BB21_119
	nop
$BB21_115:
	lw	$gp, 20($sp)                    # 4-byte Folded Reload
	lw	$4, 16($sp)                     # 4-byte Folded Reload
	blez	$19, $BB21_119
	addiu	$2, $zero, 1
$BB21_116:
	bnez	$2, $BB21_119
	nop
# %bb.117:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 64
	move	$7, $17
$BB21_118:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$5, $1, $2
	lw	$6, 0($fp)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$7, $7, -1
	bnez	$7, $BB21_118
	addiu	$fp, $fp, 4
$BB21_119:
	blez	$19, $BB21_127
	nop
# %bb.120:
	move	$2, $18
	move	$3, $17
$BB21_121:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($20)
	addiu	$2, $2, 4
	addiu	$3, $3, -1
	bnez	$3, $BB21_121
	addiu	$20, $20, 4
# %bb.122:
	blez	$19, $BB21_127
	nop
# %bb.123:
	sll	$6, $17, 2
	addiu	$2, $zero, 0
$BB21_124:                              # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	addu	$3, $4, $2
	lw	$3, 0($3)
	addiu	$2, $2, 4
	bne	$6, $2, $BB21_124
	sw	$3, 0($1)
# %bb.125:
	blez	$19, $BB21_127
	nop
# %bb.126:
	lw	$25, %call16(memcpy)($gp)
	.reloc ($tmp20), R_MIPS_JALR, memcpy
$tmp20:
	jalr	$25
	addiu	$5, $sp, 64
$BB21_127:
	lw	$16, 160($sp)                   # 4-byte Folded Reload
	lw	$17, 164($sp)                   # 4-byte Folded Reload
	lw	$18, 168($sp)                   # 4-byte Folded Reload
	lw	$19, 172($sp)                   # 4-byte Folded Reload
	lw	$20, 176($sp)                   # 4-byte Folded Reload
	lw	$21, 180($sp)                   # 4-byte Folded Reload
	lw	$22, 184($sp)                   # 4-byte Folded Reload
	lw	$23, 188($sp)                   # 4-byte Folded Reload
	lw	$fp, 192($sp)                   # 4-byte Folded Reload
	lw	$ra, 196($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 200
	.set	at
	.set	macro
	.set	reorder
	.end	double_jacobian_default
$func_end21:
	.size	double_jacobian_default, ($func_end21)-double_jacobian_default
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	x_side_default
x_side_default:                         # @x_side_default
	.frame	$sp,120,$ra
	.mask 	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$23, 112($sp)                   # 4-byte Folded Spill
	sw	$22, 108($sp)                   # 4-byte Folded Spill
	sw	$21, 104($sp)                   # 4-byte Folded Spill
	sw	$20, 100($sp)                   # 4-byte Folded Spill
	sw	$19, 96($sp)                    # 4-byte Folded Spill
	sw	$18, 92($sp)                    # 4-byte Folded Spill
	sw	$17, 88($sp)                    # 4-byte Folded Spill
	sw	$16, 84($sp)                    # 4-byte Folded Spill
	addu	$22, $2, $25
	move	$18, $6
	move	$19, $5
	move	$16, $4
	lbu	$21, 0($6)
	lw	$23, %got(uECC_vli_mult)($22)
	addiu	$25, $23, %lo(uECC_vli_mult)
	seb	$17, $21
	addiu	$20, $sp, 20
	move	$4, $20
	move	$6, $5
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_mult
$tmp21:
	jalr	$25
	move	$7, $17
	lw	$25, 172($18)
	move	$4, $16
	jalr	$25
	move	$5, $20
	blez	$17, $BB22_5
	nop
# %bb.1:
	lw	$1, %got($__const.x_side_default._3)($22)
	addiu	$3, $1, %lo($__const.x_side_default._3)
	addiu	$2, $zero, 0
	move	$4, $16
	move	$5, $21
$BB22_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($4)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_2
	addiu	$3, $3, 4
# %bb.3:
	sltiu	$2, $2, 1
	bgtz	$17, $BB22_6
	addiu	$22, $18, 4
# %bb.4:
	b	$BB22_9
	nop
$BB22_5:
	addiu	$2, $zero, 1
	blez	$17, $BB22_9
	addiu	$22, $18, 4
$BB22_6:
	bnez	$2, $BB22_9
	nop
# %bb.7:
	addiu	$2, $zero, 0
	move	$3, $16
	move	$4, $22
	move	$5, $21
$BB22_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_8
	addiu	$4, $4, 4
$BB22_9:
	lb	$7, 0($18)
	addiu	$25, $23, %lo(uECC_vli_mult)
	addiu	$20, $sp, 20
	move	$4, $20
	move	$5, $16
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_mult
$tmp22:
	jalr	$25
	move	$6, $19
	lw	$25, 172($18)
	move	$4, $16
	jalr	$25
	move	$5, $20
	blez	$17, $BB22_13
	nop
# %bb.10:
	addiu	$3, $18, 132
	addiu	$2, $zero, 0
	move	$4, $16
	move	$5, $21
$BB22_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$6, $1, $2
	lw	$7, 0($3)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($4)
	or	$2, $2, $1
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_11
	addiu	$3, $3, 4
# %bb.12:
	bnez	$2, $BB22_21
	nop
$BB22_13:
	move	$3, $21
	addiu	$2, $zero, 0
$BB22_14:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB22_17
	nop
# %bb.15:                               #   in Loop: Header=BB22_14 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $22, $1
	lw	$4, 0($4)
	addu	$1, $16, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB22_19
	nop
# %bb.16:                               #   in Loop: Header=BB22_14 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB22_14
	addiu	$3, $3, -1
$BB22_17:
	bgtz	$17, $BB22_20
	nop
# %bb.18:
	b	$BB22_23
	nop
$BB22_19:
	blez	$17, $BB22_23
	addiu	$2, $zero, 1
$BB22_20:
	bnez	$2, $BB22_23
	nop
$BB22_21:
	addiu	$2, $zero, 0
$BB22_22:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($22)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$3, 0($16)
	sltu	$4, $3, $1
	subu	$1, $3, $1
	sw	$1, 0($16)
	or	$2, $2, $4
	addiu	$16, $16, 4
	addiu	$21, $21, -1
	bnez	$21, $BB22_22
	addiu	$22, $22, 4
$BB22_23:
	lw	$16, 84($sp)                    # 4-byte Folded Reload
	lw	$17, 88($sp)                    # 4-byte Folded Reload
	lw	$18, 92($sp)                    # 4-byte Folded Reload
	lw	$19, 96($sp)                    # 4-byte Folded Reload
	lw	$20, 100($sp)                   # 4-byte Folded Reload
	lw	$21, 104($sp)                   # 4-byte Folded Reload
	lw	$22, 108($sp)                   # 4-byte Folded Reload
	lw	$23, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	x_side_default
$func_end22:
	.size	x_side_default, ($func_end22)-x_side_default
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	2
	.type	uECC_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_secp256r1
uECC_secp256r1:                         # @uECC_secp256r1
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(curve_secp256r1)($1)
	jr	$ra
	addiu	$2, $1, %lo(curve_secp256r1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_secp256r1
$func_end23:
	.size	uECC_secp256r1, ($func_end23)-uECC_secp256r1
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_mmod_fast_secp256r1
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.frame	$sp,40,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$2, $2, $25
	addiu	$3, $zero, 0
	addiu	$6, $zero, 32
$BB24_1:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $3
	addu	$7, $5, $3
	lw	$7, 0($7)
	addiu	$3, $3, 4
	bne	$3, $6, $BB24_1
	sw	$7, 0($1)
# %bb.2:
	addiu	$sp, $sp, -40
	sw	$16, 36($sp)                    # 4-byte Folded Spill
	sw	$zero, 8($sp)
	sw	$zero, 12($sp)
	sw	$zero, 4($sp)
	lw	$1, 44($5)
	sw	$1, 16($sp)
	lw	$1, 48($5)
	sw	$1, 20($sp)
	lw	$1, 52($5)
	sw	$1, 24($sp)
	addiu	$7, $zero, 0
	lw	$1, 56($5)
	sw	$1, 28($sp)
	lw	$1, 60($5)
	sw	$1, 32($sp)
	addiu	$3, $sp, 4
	addiu	$8, $zero, 32
	addiu	$6, $zero, 0
$BB24_3:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $7
	lw	$9, 0($1)
	sll	$10, $9, 1
	addu	$10, $10, $6
	xor	$11, $10, $9
	sw	$10, 0($1)
	movn	$6, $zero, $11
	sltu	$1, $10, $9
	addiu	$7, $7, 4
	bne	$7, $8, $BB24_3
	or	$6, $6, $1
# %bb.4:
	addiu	$8, $zero, 0
	addiu	$9, $zero, 32
	addiu	$7, $zero, 0
$BB24_5:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $8
	lw	$10, 0($1)
	addu	$11, $10, $7
	addu	$12, $3, $8
	lw	$12, 0($12)
	addu	$11, $11, $12
	xor	$12, $11, $10
	sw	$11, 0($1)
	movn	$7, $zero, $12
	sltu	$1, $11, $10
	addiu	$8, $8, 4
	bne	$8, $9, $BB24_5
	or	$7, $7, $1
# %bb.6:
	lw	$1, 48($5)
	sw	$1, 16($sp)
	lw	$1, 52($5)
	sw	$1, 20($sp)
	lw	$1, 56($5)
	sw	$1, 24($sp)
	addiu	$9, $zero, 0
	lw	$1, 60($5)
	sw	$1, 28($sp)
	sw	$zero, 32($sp)
	addiu	$10, $zero, 32
	addiu	$8, $zero, 0
$BB24_7:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $9
	lw	$11, 0($1)
	sll	$12, $11, 1
	addu	$12, $12, $8
	xor	$13, $12, $11
	sw	$12, 0($1)
	movn	$8, $zero, $13
	sltu	$1, $12, $11
	addiu	$9, $9, 4
	bne	$9, $10, $BB24_7
	or	$8, $8, $1
# %bb.8:
	addiu	$10, $zero, 0
	addiu	$11, $zero, 32
	addiu	$9, $zero, 0
$BB24_9:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $10
	lw	$12, 0($1)
	addu	$13, $12, $9
	addu	$14, $3, $10
	lw	$14, 0($14)
	addu	$13, $13, $14
	xor	$14, $13, $12
	sw	$13, 0($1)
	movn	$9, $zero, $14
	sltu	$1, $13, $12
	addiu	$10, $10, 4
	bne	$10, $11, $BB24_9
	or	$9, $9, $1
# %bb.10:
	lw	$1, 32($5)
	sw	$1, 4($sp)
	lw	$1, 36($5)
	sw	$1, 8($sp)
	lw	$1, 40($5)
	sw	$1, 12($sp)
	sw	$zero, 24($sp)
	sw	$zero, 20($sp)
	sw	$zero, 16($sp)
	addiu	$11, $zero, 0
	lw	$1, 56($5)
	sw	$1, 28($sp)
	lw	$1, 60($5)
	sw	$1, 32($sp)
	addiu	$12, $zero, 32
	addiu	$10, $zero, 0
$BB24_11:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $11
	lw	$13, 0($1)
	addu	$14, $13, $10
	addu	$15, $3, $11
	lw	$15, 0($15)
	addu	$14, $14, $15
	xor	$15, $14, $13
	sw	$14, 0($1)
	movn	$10, $zero, $15
	sltu	$1, $14, $13
	addiu	$11, $11, 4
	bne	$11, $12, $BB24_11
	or	$10, $10, $1
# %bb.12:
	lw	$1, 36($5)
	sw	$1, 4($sp)
	lw	$1, 40($5)
	sw	$1, 8($sp)
	lw	$1, 44($5)
	sw	$1, 12($sp)
	addiu	$12, $zero, 0
	lw	$1, 52($5)
	sw	$1, 16($sp)
	lw	$11, 56($5)
	sw	$11, 20($sp)
	lw	$11, 60($5)
	sw	$1, 28($sp)
	sw	$11, 24($sp)
	lw	$1, 32($5)
	sw	$1, 32($sp)
	addiu	$13, $zero, 32
	addiu	$11, $zero, 0
$BB24_13:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $12
	lw	$14, 0($1)
	addu	$15, $14, $11
	addu	$24, $3, $12
	lw	$24, 0($24)
	addu	$15, $15, $24
	xor	$24, $15, $14
	sw	$15, 0($1)
	movn	$11, $zero, $24
	sltu	$1, $15, $14
	addiu	$12, $12, 4
	bne	$12, $13, $BB24_13
	or	$11, $11, $1
# %bb.14:
	lw	$1, 44($5)
	sw	$1, 4($sp)
	lw	$1, 48($5)
	sw	$1, 8($sp)
	lw	$1, 52($5)
	sw	$1, 12($sp)
	sw	$zero, 24($sp)
	sw	$zero, 20($sp)
	sw	$zero, 16($sp)
	addiu	$13, $zero, 0
	lw	$1, 32($5)
	sw	$1, 28($sp)
	lw	$1, 40($5)
	sw	$1, 32($sp)
	addiu	$14, $zero, 32
	addiu	$12, $zero, 0
$BB24_15:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $13
	lw	$1, 0($1)
	addu	$1, $1, $12
	addu	$15, $4, $13
	lw	$24, 0($15)
	subu	$25, $24, $1
	sw	$25, 0($15)
	sltu	$15, $24, $1
	movn	$12, $zero, $1
	addiu	$13, $13, 4
	bne	$13, $14, $BB24_15
	or	$12, $12, $15
# %bb.16:
	lw	$1, 48($5)
	sw	$1, 4($sp)
	lw	$1, 52($5)
	sw	$1, 8($sp)
	lw	$1, 56($5)
	sw	$1, 12($sp)
	addiu	$14, $zero, 0
	lw	$1, 60($5)
	sw	$1, 16($sp)
	sw	$zero, 24($sp)
	sw	$zero, 20($sp)
	lw	$1, 36($5)
	sw	$1, 28($sp)
	lw	$1, 44($5)
	sw	$1, 32($sp)
	addiu	$15, $zero, 32
	addiu	$13, $zero, 0
$BB24_17:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $14
	lw	$1, 0($1)
	addu	$1, $1, $13
	addu	$24, $4, $14
	lw	$25, 0($24)
	subu	$gp, $25, $1
	sw	$gp, 0($24)
	sltu	$24, $25, $1
	movn	$13, $zero, $1
	addiu	$14, $14, 4
	bne	$14, $15, $BB24_17
	or	$13, $13, $24
# %bb.18:
	lw	$1, 52($5)
	sw	$1, 4($sp)
	lw	$1, 56($5)
	sw	$1, 8($sp)
	lw	$1, 60($5)
	sw	$1, 12($sp)
	addiu	$15, $zero, 0
	lw	$1, 32($5)
	sw	$1, 16($sp)
	lw	$1, 36($5)
	sw	$1, 20($sp)
	lw	$1, 40($5)
	sw	$1, 24($sp)
	sw	$zero, 28($sp)
	lw	$1, 48($5)
	sw	$1, 32($sp)
	addiu	$24, $zero, 32
	addiu	$14, $zero, 0
$BB24_19:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $15
	lw	$1, 0($1)
	addu	$1, $1, $14
	addu	$25, $4, $15
	lw	$gp, 0($25)
	subu	$16, $gp, $1
	sw	$16, 0($25)
	sltu	$25, $gp, $1
	movn	$14, $zero, $1
	addiu	$15, $15, 4
	bne	$15, $24, $BB24_19
	or	$14, $14, $25
# %bb.20:
	lw	$1, 56($5)
	sw	$1, 4($sp)
	lw	$1, 60($5)
	sw	$1, 8($sp)
	sw	$zero, 12($sp)
	lw	$1, 36($5)
	sw	$1, 16($sp)
	addiu	$15, $zero, 0
	lw	$1, 40($5)
	sw	$1, 20($sp)
	lw	$1, 44($5)
	sw	$1, 24($sp)
	sw	$zero, 28($sp)
	lw	$1, 52($5)
	sw	$1, 32($sp)
	addiu	$24, $zero, 32
	addiu	$5, $zero, 0
$BB24_21:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $15
	lw	$1, 0($1)
	addu	$1, $1, $5
	addu	$25, $4, $15
	lw	$gp, 0($25)
	subu	$16, $gp, $1
	sw	$16, 0($25)
	sltu	$25, $gp, $1
	movn	$5, $zero, $1
	addiu	$15, $15, 4
	bne	$15, $24, $BB24_21
	or	$5, $5, $25
# %bb.22:
	addu	$1, $7, $6
	addu	$3, $12, $13
	addu	$3, $3, $14
	addu	$3, $3, $5
	addu	$1, $1, $8
	addu	$1, $1, $9
	addu	$1, $1, $10
	addu	$1, $1, $11
	subu	$3, $1, $3
	bltz	$3, $BB24_32
	nop
# %bb.23:
	lw	$2, %got(curve_secp256r1)($2)
	addiu	$5, $2, %lo(curve_secp256r1)
	beqz	$3, $BB24_27
	addiu	$6, $zero, 32
$BB24_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_25 Depth 2
	addiu	$7, $zero, 0
	addiu	$8, $zero, 0
$BB24_25:                               #   Parent Loop BB24_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $2, %lo(curve_secp256r1)
	addu	$1, $1, $7
	lw	$1, 4($1)
	addu	$1, $1, $8
	addu	$9, $4, $7
	lw	$10, 0($9)
	subu	$11, $10, $1
	sw	$11, 0($9)
	sltu	$9, $10, $1
	movn	$8, $zero, $1
	addiu	$7, $7, 4
	bne	$7, $6, $BB24_25
	or	$8, $8, $9
# %bb.26:                               #   in Loop: Header=BB24_24 Depth=1
	subu	$3, $3, $8
	bnez	$3, $BB24_24
	nop
$BB24_27:
	addiu	$7, $zero, 8
$BB24_28:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $7, -1
	seb	$8, $1
	bltz	$8, $BB24_24
	nop
# %bb.29:                               #   in Loop: Header=BB24_28 Depth=1
	andi	$1, $8, 255
	sll	$1, $1, 2
	addu	$8, $5, $1
	lw	$8, 4($8)
	addu	$1, $4, $1
	lw	$9, 0($1)
	sltu	$1, $9, $8
	bnez	$1, $BB24_36
	nop
# %bb.30:                               #   in Loop: Header=BB24_28 Depth=1
	sltu	$1, $8, $9
	beqz	$1, $BB24_28
	addiu	$7, $7, -1
# %bb.31:
	b	$BB24_24
	nop
$BB24_32:
	lw	$1, %got(curve_secp256r1)($2)
	addiu	$2, $1, %lo(curve_secp256r1)
	addiu	$5, $zero, 32
$BB24_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_34 Depth 2
	addiu	$6, $zero, 0
	addiu	$7, $zero, 0
$BB24_34:                               #   Parent Loop BB24_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $4, $6
	lw	$8, 0($1)
	addu	$9, $8, $7
	addu	$10, $2, $6
	lw	$10, 4($10)
	addu	$9, $9, $10
	xor	$10, $9, $8
	sw	$9, 0($1)
	movn	$7, $zero, $10
	sltu	$1, $9, $8
	addiu	$6, $6, 4
	bne	$6, $5, $BB24_34
	or	$7, $7, $1
# %bb.35:                               #   in Loop: Header=BB24_33 Depth=1
	addu	$3, $7, $3
	bltz	$3, $BB24_33
	nop
$BB24_36:
	lw	$16, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
$func_end24:
	.size	vli_mmod_fast_secp256r1, ($func_end24)-vli_mmod_fast_secp256r1
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_isZero
EccPoint_isZero:                        # @EccPoint_isZero
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 0($5)
	sll	$1, $1, 1
	seb	$2, $1
	blez	$2, $BB25_4
	nop
# %bb.1:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB25_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB25_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	sltiu	$2, $2, 1
$BB25_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_isZero
$func_end25:
	.size	EccPoint_isZero, ($func_end25)-EccPoint_isZero
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
	.set	nomicromips
	.set	nomips16
	.ent	apply_z
apply_z:                                # @apply_z
	.frame	$sp,144,$ra
	.mask 	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$22, 136($sp)                   # 4-byte Folded Spill
	sw	$21, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	addu	$1, $2, $25
	move	$17, $7
	move	$19, $6
	move	$16, $5
	move	$20, $4
	lb	$7, 0($7)
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$18, $1, %lo(uECC_vli_mult)
	addiu	$21, $sp, 48
	move	$4, $21
	move	$25, $18
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_mult
$tmp23:
	jalr	$25
	move	$5, $6
	lw	$25, 172($17)
	addiu	$22, $sp, 16
	move	$4, $22
	jalr	$25
	move	$5, $21
	addiu	$21, $sp, 48
	lb	$7, 0($17)
	move	$4, $21
	move	$5, $20
	move	$25, $18
	.reloc ($tmp24), R_MIPS_JALR, uECC_vli_mult
$tmp24:
	jalr	$25
	move	$6, $22
	lw	$25, 172($17)
	move	$4, $20
	jalr	$25
	move	$5, $21
	addiu	$20, $sp, 48
	lb	$7, 0($17)
	move	$4, $20
	move	$5, $22
	move	$25, $18
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_mult
$tmp25:
	jalr	$25
	move	$6, $19
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	addiu	$19, $sp, 48
	lb	$7, 0($17)
	move	$4, $19
	move	$5, $16
	move	$25, $18
	.reloc ($tmp26), R_MIPS_JALR, uECC_vli_mult
$tmp26:
	jalr	$25
	move	$6, $22
	lw	$25, 172($17)
	move	$4, $16
	jalr	$25
	move	$5, $19
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$21, 132($sp)                   # 4-byte Folded Reload
	lw	$22, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 144
	.set	at
	.set	macro
	.set	reorder
	.end	apply_z
$func_end26:
	.size	apply_z, ($func_end26)-apply_z
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_add
XYcZ_add:                               # @XYcZ_add
	.frame	$sp,168,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -168
	sw	$ra, 164($sp)                   # 4-byte Folded Spill
	sw	$fp, 160($sp)                   # 4-byte Folded Spill
	sw	$23, 156($sp)                   # 4-byte Folded Spill
	sw	$22, 152($sp)                   # 4-byte Folded Spill
	sw	$21, 148($sp)                   # 4-byte Folded Spill
	sw	$20, 144($sp)                   # 4-byte Folded Spill
	sw	$19, 140($sp)                   # 4-byte Folded Spill
	sw	$18, 136($sp)                   # 4-byte Folded Spill
	sw	$17, 132($sp)                   # 4-byte Folded Spill
	sw	$16, 128($sp)                   # 4-byte Folded Spill
	addu	$9, $2, $25
	move	$18, $7
	move	$20, $5
	lw	$16, 184($sp)
	lbu	$11, 0($16)
	seb	$19, $11
	blez	$19, $BB27_4
	move	$21, $4
# %bb.1:
	addiu	$3, $sp, 32
	addiu	$2, $zero, 0
	move	$4, $6
	move	$5, $21
	move	$10, $11
$BB27_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($4)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$10, $10, -1
	bnez	$10, $BB27_2
	addiu	$3, $3, 4
# %bb.3:
	b	$BB27_5
	sltiu	$2, $2, 1
$BB27_4:
	addiu	$2, $zero, 1
$BB27_5:
	sw	$6, 16($sp)                     # 4-byte Folded Spill
	blez	$19, $BB27_9
	addiu	$17, $16, 4
# %bb.6:
	bnez	$2, $BB27_9
	nop
# %bb.7:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $17
	move	$5, $11
$BB27_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_8
	addiu	$4, $4, 4
$BB27_9:
	sw	$11, 24($sp)                    # 4-byte Folded Spill
	sw	$9, 20($sp)                     # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($9)
	sw	$1, 28($sp)                     # 4-byte Folded Spill
	addiu	$22, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 64
	addiu	$fp, $sp, 32
	move	$4, $23
	move	$5, $fp
	move	$6, $fp
	move	$25, $22
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_mult
$tmp27:
	jalr	$25
	move	$7, $19
	lw	$25, 172($16)
	move	$4, $fp
	jalr	$25
	move	$5, $23
	addiu	$23, $sp, 64
	lb	$7, 0($16)
	move	$4, $23
	move	$5, $21
	move	$25, $22
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_mult
$tmp28:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($16)
	move	$4, $21
	jalr	$25
	move	$5, $23
	addiu	$23, $sp, 64
	lb	$7, 0($16)
	move	$4, $23
	lw	$5, 16($sp)                     # 4-byte Folded Reload
	move	$6, $fp
	move	$25, $22
	.reloc ($tmp29), R_MIPS_JALR, uECC_vli_mult
$tmp29:
	jalr	$25
	move	$fp, $5
	lw	$25, 172($16)
	move	$4, $fp
	jalr	$25
	move	$5, $23
	blez	$19, $BB27_14
	nop
# %bb.10:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $20
	lw	$8, 24($sp)                     # 4-byte Folded Reload
	move	$5, $8
$BB27_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_11
	addiu	$4, $4, 4
# %bb.12:
	bgtz	$19, $BB27_15
	sltiu	$2, $2, 1
# %bb.13:
	b	$BB27_18
	nop
$BB27_14:
	lw	$8, 24($sp)                     # 4-byte Folded Reload
	blez	$19, $BB27_18
	addiu	$2, $zero, 1
$BB27_15:
	bnez	$2, $BB27_18
	nop
# %bb.16:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $17
	move	$5, $8
$BB27_17:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_17
	addiu	$4, $4, 4
$BB27_18:
	lb	$7, 0($16)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 64
	move	$4, $23
	move	$5, $18
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_mult
$tmp30:
	jalr	$25
	move	$6, $18
	lw	$25, 172($16)
	addiu	$22, $sp, 32
	move	$4, $22
	jalr	$25
	move	$5, $23
	blez	$19, $BB27_23
	nop
# %bb.19:
	addiu	$2, $zero, 0
	move	$3, $21
	lw	$23, 24($sp)                    # 4-byte Folded Reload
	move	$4, $23
$BB27_20:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($22)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($22)
	or	$2, $2, $6
	addiu	$22, $22, 4
	addiu	$4, $4, -1
	bnez	$4, $BB27_20
	addiu	$3, $3, 4
# %bb.21:
	bgtz	$19, $BB27_24
	sltiu	$2, $2, 1
# %bb.22:
	b	$BB27_27
	nop
$BB27_23:
	lw	$23, 24($sp)                    # 4-byte Folded Reload
	blez	$19, $BB27_27
	addiu	$2, $zero, 1
$BB27_24:
	bnez	$2, $BB27_27
	nop
# %bb.25:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $17
	move	$5, $23
$BB27_26:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_26
	addiu	$4, $4, 4
$BB27_27:
	blez	$19, $BB27_32
	nop
# %bb.28:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $fp
	move	$5, $23
$BB27_29:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_29
	addiu	$4, $4, 4
# %bb.30:
	bgtz	$19, $BB27_33
	sltiu	$2, $2, 1
# %bb.31:
	b	$BB27_36
	nop
$BB27_32:
	blez	$19, $BB27_36
	addiu	$2, $zero, 1
$BB27_33:
	bnez	$2, $BB27_36
	nop
# %bb.34:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $17
	move	$5, $23
$BB27_35:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_35
	addiu	$4, $4, 4
$BB27_36:
	blez	$19, $BB27_41
	nop
# %bb.37:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $21
	move	$5, $23
$BB27_38:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_38
	addiu	$4, $4, 4
# %bb.39:
	bgtz	$19, $BB27_42
	sltiu	$2, $2, 1
# %bb.40:
	b	$BB27_45
	nop
$BB27_41:
	blez	$19, $BB27_45
	addiu	$2, $zero, 1
$BB27_42:
	bnez	$2, $BB27_45
	nop
# %bb.43:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $17
	move	$5, $23
$BB27_44:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_44
	addiu	$4, $4, 4
$BB27_45:
	lb	$7, 0($16)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$22, $sp, 64
	move	$4, $22
	move	$5, $20
	.reloc ($tmp31), R_MIPS_JALR, uECC_vli_mult
$tmp31:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($16)
	move	$4, $20
	jalr	$25
	move	$5, $22
	blez	$19, $BB27_50
	nop
# %bb.46:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 32
	move	$4, $fp
	move	$5, $23
$BB27_47:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($21)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$21, $21, 4
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_47
	addiu	$4, $4, 4
# %bb.48:
	bgtz	$19, $BB27_51
	sltiu	$2, $2, 1
# %bb.49:
	b	$BB27_54
	nop
$BB27_50:
	blez	$19, $BB27_54
	addiu	$2, $zero, 1
$BB27_51:
	bnez	$2, $BB27_54
	nop
# %bb.52:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $17
	move	$5, $23
$BB27_53:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_53
	addiu	$4, $4, 4
$BB27_54:
	lb	$7, 0($16)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$21, $sp, 64
	move	$4, $21
	move	$5, $18
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_mult
$tmp32:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($16)
	move	$4, $18
	jalr	$25
	move	$5, $21
	blez	$19, $BB27_59
	nop
# %bb.55:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $23
	lw	$gp, 20($sp)                    # 4-byte Folded Reload
$BB27_56:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($20)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($3)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($3)
	or	$2, $2, $6
	addiu	$3, $3, 4
	addiu	$4, $4, -1
	bnez	$4, $BB27_56
	addiu	$20, $20, 4
# %bb.57:
	bgtz	$19, $BB27_60
	sltiu	$2, $2, 1
# %bb.58:
	b	$BB27_63
	nop
$BB27_59:
	lw	$gp, 20($sp)                    # 4-byte Folded Reload
	blez	$19, $BB27_63
	addiu	$2, $zero, 1
$BB27_60:
	bnez	$2, $BB27_63
	nop
# %bb.61:
	addiu	$2, $zero, 0
	move	$3, $23
$BB27_62:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	addu	$4, $1, $2
	lw	$5, 0($17)
	addu	$4, $4, $5
	xor	$5, $4, $1
	movn	$2, $zero, $5
	sltu	$1, $4, $1
	sw	$4, 0($18)
	or	$2, $2, $1
	addiu	$18, $18, 4
	addiu	$3, $3, -1
	bnez	$3, $BB27_62
	addiu	$17, $17, 4
$BB27_63:
	blez	$19, $BB27_65
	nop
# %bb.64:
	sll	$6, $23, 2
	addiu	$5, $sp, 32
	lw	$25, %call16(memcpy)($gp)
	.reloc ($tmp33), R_MIPS_JALR, memcpy
$tmp33:
	jalr	$25
	move	$4, $fp
$BB27_65:
	lw	$16, 128($sp)                   # 4-byte Folded Reload
	lw	$17, 132($sp)                   # 4-byte Folded Reload
	lw	$18, 136($sp)                   # 4-byte Folded Reload
	lw	$19, 140($sp)                   # 4-byte Folded Reload
	lw	$20, 144($sp)                   # 4-byte Folded Reload
	lw	$21, 148($sp)                   # 4-byte Folded Reload
	lw	$22, 152($sp)                   # 4-byte Folded Reload
	lw	$23, 156($sp)                   # 4-byte Folded Reload
	lw	$fp, 160($sp)                   # 4-byte Folded Reload
	lw	$ra, 164($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 168
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_add
$func_end27:
	.size	XYcZ_add, ($func_end27)-XYcZ_add
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_mult
EccPoint_mult:                          # @EccPoint_mult
	.frame	$sp,376,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -376
	sw	$ra, 372($sp)                   # 4-byte Folded Spill
	sw	$fp, 368($sp)                   # 4-byte Folded Spill
	sw	$23, 364($sp)                   # 4-byte Folded Spill
	sw	$22, 360($sp)                   # 4-byte Folded Spill
	sw	$21, 356($sp)                   # 4-byte Folded Spill
	sw	$20, 352($sp)                   # 4-byte Folded Spill
	sw	$19, 348($sp)                   # 4-byte Folded Spill
	sw	$18, 344($sp)                   # 4-byte Folded Spill
	sw	$17, 340($sp)                   # 4-byte Folded Spill
	sw	$16, 336($sp)                   # 4-byte Folded Spill
	addu	$19, $2, $25
	move	$18, $7
	move	$fp, $6
	move	$16, $5
	sw	$4, 36($sp)                     # 4-byte Folded Spill
	lw	$23, 396($sp)
	addiu	$1, $sp, 144
	lbu	$20, 0($23)
	seb	$21, $20
	blez	$21, $BB28_2
	addiu	$22, $1, 32
# %bb.1:
	sll	$6, $20, 2
	lw	$25, %call16(memcpy)($19)
	move	$4, $22
	move	$5, $16
	.reloc ($tmp34), R_MIPS_JALR, memcpy
$tmp34:
	jalr	$25
	move	$gp, $19
$BB28_2:
	sll	$1, $21, 2
	sw	$1, 32($sp)                     # 4-byte Folded Spill
	sw	$16, 44($sp)                    # 4-byte Folded Spill
	addu	$16, $16, $1
	addiu	$1, $sp, 80
	blez	$21, $BB28_4
	addiu	$17, $1, 32
# %bb.3:
	sll	$6, $20, 2
	lw	$25, %call16(memcpy)($19)
	move	$4, $17
	move	$5, $16
	.reloc ($tmp35), R_MIPS_JALR, memcpy
$tmp35:
	jalr	$25
	move	$gp, $19
$BB28_4:
	sw	$16, 48($sp)                    # 4-byte Folded Spill
	lw	$1, 392($sp)
	beqz	$18, $BB28_15
	sw	$1, 64($sp)
# %bb.5:
	blez	$21, $BB28_8
	nop
# %bb.6:
	sll	$6, $20, 2
	addiu	$4, $sp, 208
	lw	$25, %call16(memcpy)($19)
	move	$5, $18
	.reloc ($tmp36), R_MIPS_JALR, memcpy
$tmp36:
	jalr	$25
	move	$gp, $19
	blez	$21, $BB28_8
	nop
$BB28_7:
	sll	$18, $20, 2
	addiu	$4, $sp, 144
	lw	$25, %call16(memmove)($19)
	move	$5, $22
	move	$6, $18
	.reloc ($tmp37), R_MIPS_JALR, memmove
$tmp37:
	jalr	$25
	move	$gp, $19
	addiu	$4, $sp, 80
	lw	$25, %call16(memmove)($19)
	move	$5, $17
	.reloc ($tmp38), R_MIPS_JALR, memmove
$tmp38:
	jalr	$25
	move	$6, $18
$BB28_8:
	sw	$20, 52($sp)                    # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($19)
	sw	$1, 40($sp)                     # 4-byte Folded Spill
	addiu	$16, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 272
	sw	$fp, 68($sp)                    # 4-byte Folded Spill
	addiu	$fp, $sp, 208
	move	$4, $18
	move	$5, $fp
	move	$6, $fp
	sw	$21, 56($sp)                    # 4-byte Folded Spill
	move	$25, $16
	.reloc ($tmp39), R_MIPS_JALR, uECC_vli_mult
$tmp39:
	jalr	$25
	move	$7, $21
	lw	$25, 172($23)
	sw	$19, 76($sp)                    # 4-byte Folded Spill
	addiu	$21, $sp, 240
	move	$4, $21
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($23)
	move	$4, $18
	move	$5, $22
	move	$25, $16
	.reloc ($tmp40), R_MIPS_JALR, uECC_vli_mult
$tmp40:
	jalr	$25
	move	$6, $21
	lw	$25, 172($23)
	move	$4, $22
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($23)
	move	$4, $18
	move	$5, $21
	move	$25, $16
	.reloc ($tmp41), R_MIPS_JALR, uECC_vli_mult
$tmp41:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($23)
	move	$4, $21
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($23)
	move	$4, $18
	move	$5, $17
	move	$25, $16
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_mult
$tmp42:
	jalr	$25
	move	$6, $21
	lw	$25, 172($23)
	move	$4, $17
	jalr	$25
	move	$5, $18
	lw	$25, 164($23)
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	move	$4, $22
	move	$5, $17
	move	$6, $fp
	jalr	$25
	move	$7, $23
	addiu	$17, $sp, 272
	lb	$7, 0($23)
	move	$4, $17
	move	$5, $fp
	move	$25, $16
	.reloc ($tmp43), R_MIPS_JALR, uECC_vli_mult
$tmp43:
	jalr	$25
	move	$6, $fp
	addiu	$20, $sp, 240
	lw	$25, 172($23)
	move	$4, $20
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	addiu	$18, $sp, 144
	lb	$7, 0($23)
	move	$4, $17
	move	$5, $18
	move	$25, $16
	.reloc ($tmp44), R_MIPS_JALR, uECC_vli_mult
$tmp44:
	jalr	$25
	move	$6, $20
	lw	$25, 172($23)
	move	$4, $18
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	lb	$7, 0($23)
	move	$4, $17
	move	$5, $20
	move	$25, $16
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_mult
$tmp45:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($23)
	move	$4, $20
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	addiu	$22, $sp, 80
	lb	$7, 0($23)
	move	$4, $17
	move	$5, $22
	move	$25, $16
	.reloc ($tmp46), R_MIPS_JALR, uECC_vli_mult
$tmp46:
	jalr	$25
	move	$6, $20
	sw	$23, 72($sp)                    # 4-byte Folded Spill
	lw	$25, 172($23)
	move	$4, $22
	jalr	$25
	move	$5, $17
	lw	$1, 64($sp)                     # 4-byte Folded Reload
	addiu	$1, $1, -2
	seh	$2, $1
	blez	$2, $BB28_11
	nop
# %bb.9:
	andi	$17, $2, 65535
	lui	$1, 8191
	ori	$1, $1, 65532
	sw	$1, 64($sp)                     # 4-byte Folded Spill
	lw	$1, 76($sp)                     # 4-byte Folded Reload
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$1, $1, %lo(XYcZ_addC)
	sw	$1, 60($sp)                     # 4-byte Folded Spill
	lw	$21, 72($sp)                    # 4-byte Folded Reload
$BB28_10:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $zero, 1
	sllv	$1, $1, $17
	srl	$2, $17, 3
	lw	$3, 64($sp)                     # 4-byte Folded Reload
	and	$2, $2, $3
	lw	$3, 68($sp)                     # 4-byte Folded Reload
	addu	$2, $3, $2
	lw	$2, 0($2)
	and	$1, $2, $1
	sltu	$2, $zero, $1
	sll	$2, $2, 5
	addu	$20, $18, $2
	addu	$23, $22, $2
	sltiu	$1, $1, 1
	sll	$1, $1, 5
	addu	$16, $18, $1
	addu	$19, $22, $1
	move	$4, $20
	move	$5, $23
	move	$6, $16
	move	$7, $19
	lw	$25, 60($sp)                    # 4-byte Folded Reload
	.reloc ($tmp47), R_MIPS_JALR, XYcZ_addC
$tmp47:
	jalr	$25
	move	$8, $21
	sw	$21, 16($sp)
	lw	$gp, 76($sp)                    # 4-byte Folded Reload
	lw	$25, %call16(XYcZ_add)($gp)
	move	$4, $16
	move	$5, $19
	move	$6, $20
	.reloc ($tmp48), R_MIPS_JALR, XYcZ_add
$tmp48:
	jalr	$25
	move	$7, $23
	addiu	$1, $17, -1
	slti	$2, $17, 2
	beqz	$2, $BB28_10
	move	$17, $1
$BB28_11:
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	lw	$1, 0($1)
	andi	$1, $1, 1
	xori	$2, $1, 1
	sll	$1, $1, 5
	addu	$23, $18, $1
	addu	$17, $22, $1
	sll	$1, $2, 5
	addu	$6, $18, $1
	addu	$7, $22, $1
	lw	$1, 76($sp)                     # 4-byte Folded Reload
	move	$19, $1
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$25, $1, %lo(XYcZ_addC)
	move	$4, $23
	move	$5, $17
	sw	$6, 68($sp)                     # 4-byte Folded Spill
	sw	$7, 64($sp)                     # 4-byte Folded Spill
	lw	$21, 72($sp)                    # 4-byte Folded Reload
	.reloc ($tmp49), R_MIPS_JALR, XYcZ_addC
$tmp49:
	jalr	$25
	move	$8, $21
	lw	$1, 56($sp)                     # 4-byte Folded Reload
	blez	$1, $BB28_19
	nop
# %bb.12:
	addiu	$2, $zero, 0
	lw	$3, 52($sp)                     # 4-byte Folded Reload
	lw	$6, 28($sp)                     # 4-byte Folded Reload
$BB28_13:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -32($6)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$4, 0($6)
	sltu	$5, $4, $1
	subu	$1, $4, $1
	sw	$1, 0($fp)
	or	$2, $2, $5
	addiu	$6, $6, 4
	addiu	$3, $3, -1
	bnez	$3, $BB28_13
	addiu	$fp, $fp, 4
# %bb.14:
	b	$BB28_20
	sltiu	$2, $2, 1
$BB28_15:
	blez	$21, $BB28_17
	nop
# %bb.16:
	sll	$6, $20, 2
	addiu	$4, $sp, 208
	lw	$25, %call16(memset)($19)
	addiu	$5, $zero, 0
	.reloc ($tmp50), R_MIPS_JALR, memset
$tmp50:
	jalr	$25
	move	$gp, $19
$BB28_17:
	addiu	$1, $zero, 1
	bgtz	$21, $BB28_7
	sw	$1, 208($sp)
# %bb.18:
	b	$BB28_8
	nop
$BB28_19:
	addiu	$2, $zero, 1
$BB28_20:
	lw	$1, 56($sp)                     # 4-byte Folded Reload
	blez	$1, $BB28_24
	addiu	$18, $21, 4
# %bb.21:
	bnez	$2, $BB28_24
	nop
# %bb.22:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 208
	move	$4, $18
	lw	$5, 52($sp)                     # 4-byte Folded Reload
$BB28_23:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB28_23
	addiu	$4, $4, 4
$BB28_24:
	lb	$7, 0($21)
	lw	$1, 40($sp)                     # 4-byte Folded Reload
	addiu	$22, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 272
	addiu	$fp, $sp, 208
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp51), R_MIPS_JALR, uECC_vli_mult
$tmp51:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	lw	$6, 44($sp)                     # 4-byte Folded Reload
	move	$25, $22
	.reloc ($tmp52), R_MIPS_JALR, uECC_vli_mult
$tmp52:
	jalr	$25
	move	$5, $fp
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	lw	$25, %call16(uECC_vli_modInv)($19)
	move	$4, $fp
	move	$5, $fp
	move	$6, $18
	lw	$20, 56($sp)                    # 4-byte Folded Reload
	move	$7, $20
	.reloc ($tmp53), R_MIPS_JALR, uECC_vli_modInv
$tmp53:
	jalr	$25
	move	$gp, $19
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	lw	$6, 48($sp)                     # 4-byte Folded Reload
	move	$25, $22
	.reloc ($tmp54), R_MIPS_JALR, uECC_vli_mult
$tmp54:
	jalr	$25
	move	$5, $fp
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp55), R_MIPS_JALR, uECC_vli_mult
$tmp55:
	jalr	$25
	move	$6, $23
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	sw	$21, 16($sp)
	lw	$25, %call16(XYcZ_add)($19)
	lw	$4, 68($sp)                     # 4-byte Folded Reload
	lw	$5, 64($sp)                     # 4-byte Folded Reload
	move	$6, $23
	move	$7, $17
	.reloc ($tmp56), R_MIPS_JALR, XYcZ_add
$tmp56:
	jalr	$25
	move	$gp, $19
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp57), R_MIPS_JALR, uECC_vli_mult
$tmp57:
	jalr	$25
	move	$6, $fp
	addiu	$17, $sp, 240
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	addiu	$18, $sp, 144
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $18
	move	$25, $22
	.reloc ($tmp58), R_MIPS_JALR, uECC_vli_mult
$tmp58:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $17
	move	$25, $22
	.reloc ($tmp59), R_MIPS_JALR, uECC_vli_mult
$tmp59:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	addiu	$18, $sp, 80
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $18
	move	$25, $22
	.reloc ($tmp60), R_MIPS_JALR, uECC_vli_mult
$tmp60:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	blez	$20, $BB28_26
	nop
# %bb.25:
	lw	$1, 52($sp)                     # 4-byte Folded Reload
	sll	$16, $1, 2
	addiu	$5, $sp, 144
	lw	$25, %call16(memcpy)($19)
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	move	$4, $17
	move	$6, $16
	.reloc ($tmp61), R_MIPS_JALR, memcpy
$tmp61:
	jalr	$25
	move	$gp, $19
	lw	$1, 32($sp)                     # 4-byte Folded Reload
	addu	$4, $17, $1
	addiu	$5, $sp, 80
	lw	$25, %call16(memcpy)($19)
	.reloc ($tmp62), R_MIPS_JALR, memcpy
$tmp62:
	jalr	$25
	move	$6, $16
$BB28_26:
	lw	$16, 336($sp)                   # 4-byte Folded Reload
	lw	$17, 340($sp)                   # 4-byte Folded Reload
	lw	$18, 344($sp)                   # 4-byte Folded Reload
	lw	$19, 348($sp)                   # 4-byte Folded Reload
	lw	$20, 352($sp)                   # 4-byte Folded Reload
	lw	$21, 356($sp)                   # 4-byte Folded Reload
	lw	$22, 360($sp)                   # 4-byte Folded Reload
	lw	$23, 364($sp)                   # 4-byte Folded Reload
	lw	$fp, 368($sp)                   # 4-byte Folded Reload
	lw	$ra, 372($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 376
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_mult
$func_end28:
	.size	EccPoint_mult, ($func_end28)-EccPoint_mult
                                        # -- End function
	.p2align	2                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_addC
XYcZ_addC:                              # @XYcZ_addC
	.frame	$sp,240,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -240
	sw	$ra, 236($sp)                   # 4-byte Folded Spill
	sw	$fp, 232($sp)                   # 4-byte Folded Spill
	sw	$23, 228($sp)                   # 4-byte Folded Spill
	sw	$22, 224($sp)                   # 4-byte Folded Spill
	sw	$21, 220($sp)                   # 4-byte Folded Spill
	sw	$20, 216($sp)                   # 4-byte Folded Spill
	sw	$19, 212($sp)                   # 4-byte Folded Spill
	sw	$18, 208($sp)                   # 4-byte Folded Spill
	sw	$17, 204($sp)                   # 4-byte Folded Spill
	sw	$16, 200($sp)                   # 4-byte Folded Spill
	addu	$9, $2, $25
	move	$21, $7
	move	$22, $6
	lbu	$12, 0($8)
	seb	$20, $12
	blez	$20, $BB29_4
	move	$18, $5
# %bb.1:
	addiu	$3, $sp, 104
	addiu	$2, $zero, 0
	move	$10, $22
	move	$5, $4
	move	$6, $12
$BB29_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$13, 0($10)
	sltu	$11, $13, $1
	subu	$1, $13, $1
	sw	$1, 0($3)
	or	$2, $2, $11
	addiu	$10, $10, 4
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_2
	addiu	$3, $3, 4
# %bb.3:
	b	$BB29_5
	sltiu	$2, $2, 1
$BB29_4:
	addiu	$2, $zero, 1
$BB29_5:
	sw	$4, 36($sp)                     # 4-byte Folded Spill
	sw	$8, 32($sp)                     # 4-byte Folded Spill
	blez	$20, $BB29_9
	addiu	$17, $8, 4
# %bb.6:
	bnez	$2, $BB29_9
	nop
# %bb.7:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 104
	move	$4, $17
	move	$5, $12
$BB29_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$8, 0($4)
	addu	$6, $6, $8
	xor	$8, $6, $1
	movn	$2, $zero, $8
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_8
	addiu	$4, $4, 4
$BB29_9:
	sw	$9, 24($sp)                     # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($9)
	sw	$1, 28($sp)                     # 4-byte Folded Spill
	addiu	$fp, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$23, $sp, 104
	move	$4, $16
	move	$5, $23
	move	$6, $23
	move	$7, $20
	move	$25, $fp
	.reloc ($tmp63), R_MIPS_JALR, uECC_vli_mult
$tmp63:
	jalr	$25
	sw	$12, 16($sp)
	lw	$19, 32($sp)                    # 4-byte Folded Reload
	lw	$25, 172($19)
	move	$4, $23
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 136
	lb	$7, 0($19)
	move	$4, $16
	sw	$20, 20($sp)                    # 4-byte Folded Spill
	lw	$20, 36($sp)                    # 4-byte Folded Reload
	move	$5, $20
	move	$25, $fp
	.reloc ($tmp64), R_MIPS_JALR, uECC_vli_mult
$tmp64:
	jalr	$25
	move	$6, $23
	lw	$25, 172($19)
	move	$4, $20
	lw	$20, 16($sp)                    # 4-byte Folded Reload
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 136
	lb	$7, 0($19)
	move	$4, $16
	move	$5, $22
	move	$25, $fp
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_mult
$tmp65:
	jalr	$25
	move	$6, $23
	lw	$25, 172($19)
	move	$fp, $20
	lw	$20, 20($sp)                    # 4-byte Folded Reload
	move	$4, $22
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_13
	nop
# %bb.10:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $18
	move	$5, $fp
$BB29_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($23)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_11
	addiu	$23, $23, 4
# %bb.12:
	bnez	$2, $BB29_21
	nop
$BB29_13:
	addiu	$3, $sp, 104
	move	$4, $fp
	addiu	$2, $zero, 0
$BB29_14:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $4, -1
	seb	$5, $1
	bltz	$5, $BB29_17
	nop
# %bb.15:                               #   in Loop: Header=BB29_14 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$5, $17, $1
	lw	$5, 0($5)
	addu	$1, $3, $1
	lw	$6, 0($1)
	sltu	$1, $6, $5
	bnez	$1, $BB29_19
	nop
# %bb.16:                               #   in Loop: Header=BB29_14 Depth=1
	sltu	$1, $5, $6
	beqz	$1, $BB29_14
	addiu	$4, $4, -1
$BB29_17:
	bgtz	$20, $BB29_20
	nop
# %bb.18:
	b	$BB29_23
	nop
$BB29_19:
	blez	$20, $BB29_23
	addiu	$2, $zero, 1
$BB29_20:
	bnez	$2, $BB29_23
	nop
$BB29_21:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 104
	move	$4, $17
	move	$5, $fp
$BB29_22:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_22
	addiu	$4, $4, 4
$BB29_23:
	lw	$10, 28($sp)                    # 4-byte Folded Reload
	blez	$20, $BB29_28
	nop
# %bb.24:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $18
	move	$5, $fp
	lw	$9, 32($sp)                     # 4-byte Folded Reload
$BB29_25:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_25
	addiu	$4, $4, 4
# %bb.26:
	bgtz	$20, $BB29_29
	sltiu	$2, $2, 1
# %bb.27:
	b	$BB29_32
	nop
$BB29_28:
	lw	$9, 32($sp)                     # 4-byte Folded Reload
	blez	$20, $BB29_32
	addiu	$2, $zero, 1
$BB29_29:
	bnez	$2, $BB29_32
	nop
# %bb.30:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $17
	move	$5, $fp
$BB29_31:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_31
	addiu	$4, $4, 4
$BB29_32:
	blez	$20, $BB29_37
	nop
# %bb.33:
	addiu	$3, $sp, 72
	addiu	$2, $zero, 0
	move	$4, $22
	lw	$5, 36($sp)                     # 4-byte Folded Reload
	move	$6, $fp
$BB29_34:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($4)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_34
	addiu	$3, $3, 4
# %bb.35:
	bgtz	$20, $BB29_38
	sltiu	$2, $2, 1
# %bb.36:
	b	$BB29_41
	nop
$BB29_37:
	blez	$20, $BB29_41
	addiu	$2, $zero, 1
$BB29_38:
	bnez	$2, $BB29_41
	nop
# %bb.39:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $17
	move	$5, $fp
$BB29_40:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_40
	addiu	$4, $4, 4
$BB29_41:
	lb	$7, 0($9)
	addiu	$25, $10, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	move	$19, $9
	addiu	$23, $sp, 72
	move	$4, $16
	move	$5, $18
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_mult
$tmp66:
	jalr	$25
	move	$6, $23
	lw	$25, 172($19)
	move	$19, $fp
	move	$4, $18
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_45
	nop
# %bb.42:
	addiu	$2, $zero, 0
	lw	$3, 36($sp)                     # 4-byte Folded Reload
	move	$4, $22
	move	$5, $19
$BB29_43:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($23)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_43
	addiu	$23, $23, 4
# %bb.44:
	bnez	$2, $BB29_53
	nop
$BB29_45:
	addiu	$3, $sp, 72
	move	$4, $19
	addiu	$2, $zero, 0
$BB29_46:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $4, -1
	seb	$5, $1
	bltz	$5, $BB29_49
	nop
# %bb.47:                               #   in Loop: Header=BB29_46 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$5, $17, $1
	lw	$5, 0($5)
	addu	$1, $3, $1
	lw	$6, 0($1)
	sltu	$1, $6, $5
	bnez	$1, $BB29_51
	nop
# %bb.48:                               #   in Loop: Header=BB29_46 Depth=1
	sltu	$1, $5, $6
	beqz	$1, $BB29_46
	addiu	$4, $4, -1
$BB29_49:
	bgtz	$20, $BB29_52
	nop
# %bb.50:
	b	$BB29_55
	nop
$BB29_51:
	blez	$20, $BB29_55
	addiu	$2, $zero, 1
$BB29_52:
	bnez	$2, $BB29_55
	nop
$BB29_53:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $17
	move	$5, $19
$BB29_54:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_54
	addiu	$4, $4, 4
$BB29_55:
	lw	$23, 32($sp)                    # 4-byte Folded Reload
	lb	$7, 0($23)
	lw	$fp, 28($sp)                    # 4-byte Folded Reload
	addiu	$25, $fp, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	move	$4, $16
	move	$5, $21
	.reloc ($tmp67), R_MIPS_JALR, uECC_vli_mult
$tmp67:
	jalr	$25
	move	$6, $21
	lw	$25, 172($23)
	move	$4, $22
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_60
	nop
# %bb.56:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $22
	move	$5, $19
$BB29_57:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($4)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_57
	addiu	$3, $3, 4
# %bb.58:
	bgtz	$20, $BB29_61
	sltiu	$2, $2, 1
# %bb.59:
	b	$BB29_64
	nop
$BB29_60:
	blez	$20, $BB29_64
	addiu	$2, $zero, 1
$BB29_61:
	bnez	$2, $BB29_64
	nop
# %bb.62:
	addiu	$2, $zero, 0
	move	$3, $22
	move	$4, $17
	move	$5, $19
$BB29_63:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_63
	addiu	$4, $4, 4
$BB29_64:
	blez	$20, $BB29_69
	nop
# %bb.65:
	addiu	$3, $sp, 40
	addiu	$2, $zero, 0
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	move	$5, $19
$BB29_66:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($22)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($4)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$4, $4, 4
	addiu	$22, $22, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_66
	addiu	$3, $3, 4
# %bb.67:
	bgtz	$20, $BB29_70
	sltiu	$2, $2, 1
# %bb.68:
	b	$BB29_73
	nop
$BB29_69:
	blez	$20, $BB29_73
	addiu	$2, $zero, 1
$BB29_70:
	bnez	$2, $BB29_73
	nop
# %bb.71:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 40
	move	$4, $17
	move	$5, $19
$BB29_72:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_72
	addiu	$4, $4, 4
$BB29_73:
	lb	$7, 0($23)
	addiu	$25, $fp, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$6, $sp, 40
	move	$4, $16
	.reloc ($tmp68), R_MIPS_JALR, uECC_vli_mult
$tmp68:
	jalr	$25
	move	$5, $21
	lw	$25, 172($23)
	move	$4, $21
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_78
	nop
# %bb.74:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $18
	move	$5, $19
$BB29_75:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_75
	addiu	$4, $4, 4
# %bb.76:
	bgtz	$20, $BB29_79
	sltiu	$2, $2, 1
# %bb.77:
	b	$BB29_82
	nop
$BB29_78:
	blez	$20, $BB29_82
	addiu	$2, $zero, 1
$BB29_79:
	bnez	$2, $BB29_82
	nop
# %bb.80:
	addiu	$2, $zero, 0
	move	$3, $17
	move	$4, $19
$BB29_81:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($21)
	addu	$5, $1, $2
	lw	$6, 0($3)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($21)
	or	$2, $2, $1
	addiu	$21, $21, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_81
	addiu	$3, $3, 4
$BB29_82:
	lb	$7, 0($23)
	addiu	$25, $fp, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$5, $sp, 104
	move	$4, $16
	.reloc ($tmp69), R_MIPS_JALR, uECC_vli_mult
$tmp69:
	jalr	$25
	move	$6, $5
	lw	$25, 172($23)
	addiu	$21, $sp, 40
	move	$4, $21
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_87
	nop
# %bb.83:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $19
$BB29_84:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($21)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($21)
	or	$2, $2, $6
	addiu	$21, $21, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_84
	addiu	$3, $3, 4
# %bb.85:
	bgtz	$20, $BB29_88
	sltiu	$2, $2, 1
# %bb.86:
	b	$BB29_91
	nop
$BB29_87:
	blez	$20, $BB29_91
	addiu	$2, $zero, 1
$BB29_88:
	bnez	$2, $BB29_91
	nop
# %bb.89:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 40
	move	$4, $17
	move	$5, $19
$BB29_90:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_90
	addiu	$4, $4, 4
$BB29_91:
	blez	$20, $BB29_96
	nop
# %bb.92:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	addiu	$4, $sp, 40
	lw	$5, 36($sp)                     # 4-byte Folded Reload
	move	$6, $19
$BB29_93:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($4)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_93
	addiu	$3, $3, 4
# %bb.94:
	bgtz	$20, $BB29_97
	sltiu	$2, $2, 1
# %bb.95:
	b	$BB29_100
	nop
$BB29_96:
	blez	$20, $BB29_100
	addiu	$2, $zero, 1
$BB29_97:
	bnez	$2, $BB29_100
	nop
# %bb.98:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $17
	move	$5, $19
$BB29_99:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_99
	addiu	$4, $4, 4
$BB29_100:
	lb	$7, 0($23)
	addiu	$25, $fp, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$21, $sp, 72
	addiu	$6, $sp, 104
	move	$4, $16
	.reloc ($tmp70), R_MIPS_JALR, uECC_vli_mult
$tmp70:
	jalr	$25
	move	$5, $21
	lw	$25, 172($23)
	move	$4, $21
	jalr	$25
	move	$5, $16
	blez	$20, $BB29_105
	nop
# %bb.101:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $19
	lw	$gp, 24($sp)                    # 4-byte Folded Reload
$BB29_102:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($21)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($3)
	or	$2, $2, $6
	addiu	$21, $21, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_102
	addiu	$3, $3, 4
# %bb.103:
	bgtz	$20, $BB29_106
	sltiu	$2, $2, 1
# %bb.104:
	b	$BB29_109
	nop
$BB29_105:
	lw	$gp, 24($sp)                    # 4-byte Folded Reload
	blez	$20, $BB29_109
	addiu	$2, $zero, 1
$BB29_106:
	bnez	$2, $BB29_109
	nop
# %bb.107:
	addiu	$2, $zero, 0
	move	$3, $19
$BB29_108:                              # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	addu	$4, $1, $2
	lw	$5, 0($17)
	addu	$4, $4, $5
	xor	$5, $4, $1
	movn	$2, $zero, $5
	sltu	$1, $4, $1
	sw	$4, 0($18)
	or	$2, $2, $1
	addiu	$18, $18, 4
	addiu	$3, $3, -1
	bnez	$3, $BB29_108
	addiu	$17, $17, 4
$BB29_109:
	blez	$20, $BB29_111
	nop
# %bb.110:
	sll	$6, $19, 2
	lw	$25, %call16(memcpy)($gp)
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	.reloc ($tmp71), R_MIPS_JALR, memcpy
$tmp71:
	jalr	$25
	addiu	$5, $sp, 40
$BB29_111:
	lw	$16, 200($sp)                   # 4-byte Folded Reload
	lw	$17, 204($sp)                   # 4-byte Folded Reload
	lw	$18, 208($sp)                   # 4-byte Folded Reload
	lw	$19, 212($sp)                   # 4-byte Folded Reload
	lw	$20, 216($sp)                   # 4-byte Folded Reload
	lw	$21, 220($sp)                   # 4-byte Folded Reload
	lw	$22, 224($sp)                   # 4-byte Folded Reload
	lw	$23, 228($sp)                   # 4-byte Folded Reload
	lw	$fp, 232($sp)                   # 4-byte Folded Reload
	lw	$ra, 236($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 240
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_addC
$func_end29:
	.size	XYcZ_addC, ($func_end29)-XYcZ_addC
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,@function
	.set	nomicromips
	.set	nomips16
	.ent	regularize_k
regularize_k:                           # @regularize_k
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lh	$9, 2($7)
	addiu	$1, $9, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$8, $1, 5
	seb	$10, $8
	blez	$10, $BB30_4
	addiu	$3, $7, 36
# %bb.1:
	andi	$2, $8, 255
	addiu	$7, $zero, 0
	move	$11, $3
	move	$12, $5
$BB30_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$13, $1, $7
	lw	$14, 0($11)
	addu	$13, $13, $14
	xor	$14, $13, $1
	movn	$7, $zero, $14
	sltu	$1, $13, $1
	sw	$13, 0($12)
	or	$7, $7, $1
	addiu	$4, $4, 4
	addiu	$11, $11, 4
	addiu	$2, $2, -1
	bnez	$2, $BB30_2
	addiu	$12, $12, 4
# %bb.3:
	bnez	$7, $BB30_6
	addiu	$2, $zero, 1
$BB30_4:
	sll	$1, $8, 24
	sra	$1, $1, 19
	slt	$1, $9, $1
	beqz	$1, $BB30_6
	addiu	$2, $zero, 0
# %bb.5:
	sra	$1, $9, 5
	sll	$1, $1, 2
	addu	$1, $5, $1
	lw	$1, 0($1)
	srlv	$1, $1, $9
	andi	$2, $1, 1
$BB30_6:
	blez	$10, $BB30_9
	nop
# %bb.7:
	andi	$4, $8, 255
	addiu	$7, $zero, 0
$BB30_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$8, $1, $7
	lw	$9, 0($3)
	addu	$8, $8, $9
	xor	$9, $8, $1
	movn	$7, $zero, $9
	sltu	$1, $8, $1
	sw	$8, 0($6)
	or	$7, $7, $1
	addiu	$5, $5, 4
	addiu	$3, $3, 4
	addiu	$4, $4, -1
	bnez	$4, $BB30_8
	addiu	$6, $6, 4
$BB30_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	regularize_k
$func_end30:
	.size	regularize_k, ($func_end30)-regularize_k
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_compute_public_key
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.frame	$sp,112,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$18, 104($sp)                   # 4-byte Folded Spill
	sw	$17, 100($sp)                   # 4-byte Folded Spill
	sw	$16, 96($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$17, $6
	move	$16, $4
	addiu	$3, $sp, 32
	sw	$3, 28($sp)
	addiu	$4, $sp, 64
	sw	$4, 24($sp)
	lh	$2, 2($6)
	addiu	$1, $2, 31
	srl	$6, $1, 27
	addu	$1, $1, $6
	sra	$7, $1, 5
	seb	$8, $7
	blez	$8, $BB31_4
	addiu	$6, $17, 36
# %bb.1:
	andi	$10, $7, 255
	addiu	$9, $zero, 0
	addiu	$11, $sp, 64
	move	$12, $6
$BB31_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$13, $1, $9
	lw	$14, 0($12)
	addu	$13, $13, $14
	xor	$14, $13, $1
	movn	$9, $zero, $14
	sltu	$1, $13, $1
	sw	$13, 0($11)
	or	$9, $9, $1
	addiu	$5, $5, 4
	addiu	$12, $12, 4
	addiu	$10, $10, -1
	bnez	$10, $BB31_2
	addiu	$11, $11, 4
# %bb.3:
	bnez	$9, $BB31_6
	addiu	$5, $zero, 0
$BB31_4:
	sll	$1, $7, 24
	sra	$1, $1, 19
	slt	$1, $2, $1
	beqz	$1, $BB31_6
	addiu	$5, $zero, 1
# %bb.5:
	sra	$1, $2, 5
	sll	$1, $1, 2
	addiu	$5, $sp, 64
	addu	$1, $5, $1
	lw	$1, 0($1)
	srlv	$1, $1, $2
	not	$1, $1
	andi	$5, $1, 1
$BB31_6:
	blez	$8, $BB31_9
	nop
# %bb.7:
	andi	$7, $7, 255
	addiu	$8, $zero, 0
$BB31_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$9, $1, $8
	lw	$10, 0($6)
	addu	$9, $9, $10
	xor	$10, $9, $1
	movn	$8, $zero, $10
	sltu	$1, $9, $1
	sw	$9, 0($3)
	or	$8, $8, $1
	addiu	$4, $4, 4
	addiu	$6, $6, 4
	addiu	$7, $7, -1
	bnez	$7, $BB31_8
	addiu	$3, $3, 4
$BB31_9:
	sll	$1, $5, 2
	addiu	$3, $sp, 24
	addu	$1, $3, $1
	lw	$6, 0($1)
	sw	$17, 20($sp)
	addiu	$1, $2, 1
	seh	$1, $1
	sw	$1, 16($sp)
	addiu	$5, $17, 68
	addiu	$18, $zero, 0
	lw	$25, %call16(EccPoint_mult)($gp)
	move	$4, $16
	.reloc ($tmp72), R_MIPS_JALR, EccPoint_mult
$tmp72:
	jalr	$25
	addiu	$7, $zero, 0
	lbu	$1, 0($17)
	sll	$1, $1, 1
	seb	$2, $1
	blez	$2, $BB31_13
	nop
# %bb.10:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB31_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($16)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB31_11
	addiu	$16, $16, 4
# %bb.12:
	sltu	$18, $zero, $2
$BB31_13:
	move	$2, $18
	lw	$16, 96($sp)                    # 4-byte Folded Reload
	lw	$17, 100($sp)                   # 4-byte Folded Reload
	lw	$18, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 112
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
$func_end31:
	.size	EccPoint_compute_public_key, ($func_end31)-EccPoint_compute_public_key
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_nativeToBytes
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$5, $BB32_3
	nop
# %bb.1:
	addiu	$3, $zero, 0
	addiu	$2, $zero, -4
	addiu	$7, $zero, 0
$BB32_2:                                # =>This Inner Loop Header: Depth=1
	not	$1, $3
	addu	$1, $1, $5
	sll	$8, $1, 3
	and	$1, $1, $2
	addu	$1, $6, $1
	lw	$1, 0($1)
	srlv	$1, $1, $8
	addu	$3, $4, $3
	sb	$1, 0($3)
	addiu	$7, $7, 1
	seb	$3, $7
	slt	$1, $3, $5
	bnez	$1, $BB32_2
	nop
$BB32_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
$func_end32:
	.size	uECC_vli_nativeToBytes, ($func_end32)-uECC_vli_nativeToBytes
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_bytesToNative
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.frame	$sp,32,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $6
	move	$17, $5
	addiu	$1, $6, 3
	sra	$2, $1, 31
	srl	$2, $2, 30
	addu	$1, $1, $2
	sra	$2, $1, 2
	seb	$1, $2
	blez	$1, $BB33_2
	move	$18, $4
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	lw	$25, %call16(memset)($gp)
	move	$4, $18
	.reloc ($tmp73), R_MIPS_JALR, memset
$tmp73:
	jalr	$25
	addiu	$5, $zero, 0
$BB33_2:
	blez	$16, $BB33_5
	nop
# %bb.3:
	addiu	$4, $zero, 0
	addiu	$2, $zero, -4
	addiu	$3, $zero, 0
$BB33_4:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $4
	lbu	$1, 0($1)
	not	$4, $4
	addu	$4, $4, $16
	sll	$5, $4, 3
	sllv	$1, $1, $5
	and	$4, $4, $2
	addu	$4, $18, $4
	lw	$5, 0($4)
	or	$1, $1, $5
	sw	$1, 0($4)
	addiu	$3, $3, 1
	seb	$4, $3
	slt	$1, $4, $16
	bnez	$1, $BB33_4
	nop
$BB33_5:
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 32
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_bytesToNative
$func_end33:
	.size	uECC_vli_bytesToNative, ($func_end33)-uECC_vli_bytesToNative
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_generate_random_int
uECC_generate_random_int:               # @uECC_generate_random_int
	.frame	$sp,96,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$fp, 88($sp)                    # 4-byte Folded Spill
	sw	$23, 84($sp)                    # 4-byte Folded Spill
	sw	$22, 80($sp)                    # 4-byte Folded Spill
	sw	$21, 76($sp)                    # 4-byte Folded Spill
	sw	$20, 72($sp)                    # 4-byte Folded Spill
	sw	$19, 68($sp)                    # 4-byte Folded Spill
	sw	$18, 64($sp)                    # 4-byte Folded Spill
	sw	$17, 60($sp)                    # 4-byte Folded Spill
	sw	$16, 56($sp)                    # 4-byte Folded Spill
	addu	$3, $2, $25
	move	$16, $6
	move	$17, $5
	move	$18, $4
	addiu	$1, $6, -1
	seb	$1, $1
	slti	$2, $1, -1
	addiu	$4, $zero, -1
	movn	$4, $1, $2
	addiu	$2, $4, 1
	andi	$20, $6, 255
	move	$5, $20
$BB34_1:                                # =>This Inner Loop Header: Depth=1
	move	$4, $5
	addiu	$5, $5, -1
	seb	$6, $5
	bltz	$6, $BB34_4
	nop
# %bb.2:                                #   in Loop: Header=BB34_1 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$1, $17, $1
	lw	$1, 0($1)
	beqz	$1, $BB34_1
	nop
# %bb.3:
	b	$BB34_5
	nop
$BB34_4:
	move	$4, $2
$BB34_5:
	andi	$1, $4, 255
	addiu	$2, $zero, 0
	beqz	$1, $BB34_12
	addiu	$5, $zero, 0
# %bb.6:
	seb	$1, $4
	addiu	$4, $1, -1
	sll	$1, $4, 2
	addu	$1, $17, $1
	lw	$6, 0($1)
	beqz	$6, $BB34_10
	nop
# %bb.7:
	addiu	$5, $zero, 0
$BB34_8:                                # =>This Inner Loop Header: Depth=1
	addiu	$5, $5, 1
	srl	$1, $6, 1
	sltiu	$7, $6, 2
	beqz	$7, $BB34_8
	move	$6, $1
# %bb.9:
	b	$BB34_11
	nop
$BB34_10:
	addiu	$5, $zero, 0
$BB34_11:
	sll	$1, $4, 5
	addu	$5, $5, $1
$BB34_12:
	lw	$21, %got(g_rng_function)($3)
	lw	$1, %lo(g_rng_function)($21)
	beqz	$1, $BB34_34
	nop
# %bb.13:
	sll	$1, $16, 5
	subu	$1, $1, $5
	addiu	$2, $zero, -1
	srlv	$22, $2, $1
	sll	$19, $16, 2
	addu	$1, $18, $19
	addiu	$23, $1, -4
	addiu	$1, $sp, 24
	sw	$1, 20($sp)                     # 4-byte Folded Spill
	b	$BB34_16
	addiu	$fp, $zero, 0
$BB34_14:                               #   in Loop: Header=BB34_16 Depth=1
	or	$1, $4, $3
	beqz	$1, $BB34_34
	nop
$BB34_15:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$fp, $fp, 1
	addiu	$1, $zero, 64
	beq	$fp, $1, $BB34_33
	nop
$BB34_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_19 Depth 2
                                        #     Child Loop BB34_25 Depth 2
                                        #     Child Loop BB34_30 Depth 2
	lw	$25, %lo(g_rng_function)($21)
	move	$4, $18
	jalr	$25
	move	$5, $19
	beqz	$2, $BB34_32
	nop
# %bb.17:                               #   in Loop: Header=BB34_16 Depth=1
	lw	$1, 0($23)
	and	$1, $1, $22
	blez	$16, $BB34_22
	sw	$1, 0($23)
# %bb.18:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $20
$BB34_19:                               #   Parent Loop BB34_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($3)
	or	$2, $1, $2
	addiu	$4, $4, -1
	bnez	$4, $BB34_19
	addiu	$3, $3, 4
# %bb.20:                               #   in Loop: Header=BB34_16 Depth=1
	sltiu	$2, $2, 1
	bnez	$2, $BB34_15
	nop
# %bb.21:                               #   in Loop: Header=BB34_16 Depth=1
	b	$BB34_23
	nop
$BB34_22:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$2, $zero, 1
	bnez	$2, $BB34_15
	nop
$BB34_23:                               #   in Loop: Header=BB34_16 Depth=1
	blez	$16, $BB34_27
	nop
# %bb.24:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$2, $zero, 0
	move	$3, $17
	move	$4, $18
	lw	$5, 20($sp)                     # 4-byte Folded Reload
	move	$6, $20
$BB34_25:                               #   Parent Loop BB34_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($3)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($5)
	or	$2, $2, $8
	addiu	$3, $3, 4
	addiu	$4, $4, 4
	addiu	$6, $6, -1
	bnez	$6, $BB34_25
	addiu	$5, $5, 4
# %bb.26:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$3, $zero, -2
	b	$BB34_28
	movz	$3, $zero, $2
$BB34_27:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$3, $zero, 0
$BB34_28:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$2, $zero, 1
	blez	$16, $BB34_14
	addiu	$4, $zero, 1
# %bb.29:                               #   in Loop: Header=BB34_16 Depth=1
	addiu	$4, $zero, 0
	addiu	$5, $sp, 24
	move	$6, $20
$BB34_30:                               #   Parent Loop BB34_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($5)
	or	$4, $1, $4
	addiu	$6, $6, -1
	bnez	$6, $BB34_30
	addiu	$5, $5, 4
# %bb.31:                               #   in Loop: Header=BB34_16 Depth=1
	b	$BB34_14
	sltiu	$4, $4, 1
$BB34_32:
	b	$BB34_34
	addiu	$2, $zero, 0
$BB34_33:
	addiu	$2, $zero, 0
$BB34_34:
	lw	$16, 56($sp)                    # 4-byte Folded Reload
	lw	$17, 60($sp)                    # 4-byte Folded Reload
	lw	$18, 64($sp)                    # 4-byte Folded Reload
	lw	$19, 68($sp)                    # 4-byte Folded Reload
	lw	$20, 72($sp)                    # 4-byte Folded Reload
	lw	$21, 76($sp)                    # 4-byte Folded Reload
	lw	$22, 80($sp)                    # 4-byte Folded Reload
	lw	$23, 84($sp)                    # 4-byte Folded Reload
	lw	$fp, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
$func_end34:
	.size	uECC_generate_random_int, ($func_end34)-uECC_generate_random_int
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_point
uECC_valid_point:                       # @uECC_valid_point
	.frame	$sp,136,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$3, $2, $25
	lbu	$7, 0($5)
	sll	$1, $7, 1
	seb	$6, $1
	blez	$6, $BB35_20
	addiu	$2, $zero, -1
# %bb.1:
	addiu	$sp, $sp, -136
	sw	$ra, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	seb	$16, $7
	andi	$1, $6, 255
	sll	$6, $1, 2
	addiu	$9, $zero, 0
	addiu	$8, $zero, 0
$BB35_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $9
	lw	$1, 0($1)
	addiu	$9, $9, 4
	bne	$6, $9, $BB35_2
	or	$8, $1, $8
# %bb.3:
	beqz	$8, $BB35_19
	nop
# %bb.4:
	addiu	$8, $5, 4
	move	$6, $7
	addiu	$2, $zero, -2
$BB35_5:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $6, -1
	seb	$9, $1
	bltz	$9, $BB35_19
	nop
# %bb.6:                                #   in Loop: Header=BB35_5 Depth=1
	andi	$1, $9, 255
	sll	$1, $1, 2
	addu	$9, $8, $1
	lw	$9, 0($9)
	addu	$1, $4, $1
	lw	$10, 0($1)
	sltu	$1, $10, $9
	bnez	$1, $BB35_9
	nop
# %bb.7:                                #   in Loop: Header=BB35_5 Depth=1
	sltu	$1, $9, $10
	beqz	$1, $BB35_5
	addiu	$6, $6, -1
# %bb.8:
	b	$BB35_19
	nop
$BB35_9:
	sll	$1, $16, 2
	addu	$6, $4, $1
$BB35_10:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $7, -1
	seb	$9, $1
	bltz	$9, $BB35_19
	nop
# %bb.11:                               #   in Loop: Header=BB35_10 Depth=1
	andi	$1, $9, 255
	sll	$1, $1, 2
	addu	$9, $8, $1
	lw	$9, 0($9)
	addu	$1, $6, $1
	lw	$10, 0($1)
	sltu	$1, $10, $9
	bnez	$1, $BB35_14
	nop
# %bb.12:                               #   in Loop: Header=BB35_10 Depth=1
	sltu	$1, $9, $10
	beqz	$1, $BB35_10
	addiu	$7, $7, -1
# %bb.13:
	b	$BB35_19
	nop
$BB35_14:
	lw	$1, %got(uECC_vli_mult)($3)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 48
	move	$19, $4
	move	$4, $18
	move	$20, $5
	move	$5, $6
	.reloc ($tmp74), R_MIPS_JALR, uECC_vli_mult
$tmp74:
	jalr	$25
	move	$7, $16
	lw	$25, 172($20)
	addiu	$17, $sp, 16
	move	$4, $17
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 48
	lw	$25, 168($20)
	move	$4, $18
	move	$5, $19
	jalr	$25
	move	$6, $20
	addiu	$1, $16, -1
	seb	$2, $1
	bltz	$2, $BB35_18
	nop
# %bb.15:
	andi	$1, $2, 255
	sll	$3, $1, 2
	addu	$2, $17, $3
	addu	$4, $18, $3
	addiu	$5, $1, 1
	addiu	$3, $zero, 0
$BB35_16:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	lw	$6, 0($4)
	xor	$1, $6, $1
	or	$3, $1, $3
	addiu	$2, $2, -4
	addiu	$5, $5, -1
	bgtz	$5, $BB35_16
	addiu	$4, $4, -4
# %bb.17:
	addiu	$2, $zero, -3
	b	$BB35_19
	movz	$2, $zero, $3
$BB35_18:
	addiu	$2, $zero, 0
$BB35_19:
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$ra, 132($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 136
$BB35_20:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_point
$func_end35:
	.size	uECC_valid_point, ($func_end35)-uECC_valid_point
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_public_key
uECC_valid_public_key:                  # @uECC_valid_public_key
	.frame	$sp,120,$ra
	.mask 	0xc0ff0000,-4
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
	sw	$23, 108($sp)                   # 4-byte Folded Spill
	sw	$22, 104($sp)                   # 4-byte Folded Spill
	sw	$21, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$17, $5
	move	$19, $4
	lbu	$20, 1($5)
	seb	$22, $20
	addiu	$1, $22, 3
	srl	$2, $1, 30
	addu	$1, $1, $2
	sra	$18, $1, 2
	blez	$18, $BB36_2
	sll	$fp, $18, 2
# %bb.1:
	andi	$6, $fp, 1020
	addiu	$4, $sp, 16
	lw	$25, %call16(memset)($gp)
	addiu	$5, $zero, 0
	.reloc ($tmp75), R_MIPS_JALR, memset
$tmp75:
	jalr	$25
	move	$16, $gp
	move	$gp, $16
$BB36_2:
	sll	$23, $22, 3
	blez	$22, $BB36_5
	addiu	$21, $sp, 16
# %bb.3:
	addiu	$2, $22, -1
	addiu	$3, $23, -8
	addiu	$4, $zero, -4
	move	$5, $20
	move	$6, $19
$BB36_4:                                # =>This Inner Loop Header: Depth=1
	andi	$1, $3, 24
	lbu	$7, 0($6)
	sllv	$1, $7, $1
	and	$7, $2, $4
	addu	$7, $21, $7
	lw	$8, 0($7)
	or	$1, $1, $8
	sw	$1, 0($7)
	addiu	$5, $5, -1
	addiu	$6, $6, 1
	addiu	$3, $3, -8
	bnez	$5, $BB36_4
	addiu	$2, $2, -1
$BB36_5:
	move	$16, $19
	lb	$1, 0($17)
	sll	$1, $1, 2
	blez	$18, $BB36_7
	addu	$19, $21, $1
# %bb.6:
	andi	$6, $fp, 1020
	lw	$25, %call16(memset)($gp)
	move	$4, $19
	addiu	$5, $zero, 0
	.reloc ($tmp76), R_MIPS_JALR, memset
$tmp76:
	jalr	$25
	move	$18, $gp
	move	$gp, $18
$BB36_7:
	blez	$22, $BB36_10
	nop
# %bb.8:
	addu	$2, $16, $22
	addiu	$3, $22, -1
	addiu	$4, $23, -8
	addiu	$5, $zero, -4
$BB36_9:                                # =>This Inner Loop Header: Depth=1
	andi	$1, $4, 24
	lbu	$6, 0($2)
	sllv	$1, $6, $1
	and	$6, $3, $5
	addu	$6, $19, $6
	lw	$7, 0($6)
	or	$1, $1, $7
	sw	$1, 0($6)
	addiu	$20, $20, -1
	addiu	$2, $2, 1
	addiu	$4, $4, -8
	bnez	$20, $BB36_9
	addiu	$3, $3, -1
$BB36_10:
	addiu	$3, $17, 68
	addiu	$4, $zero, 16
	addiu	$2, $zero, -4
$BB36_11:                               # =>This Inner Loop Header: Depth=1
	addiu	$4, $4, -1
	seb	$5, $4
	bltz	$5, $BB36_15
	nop
# %bb.12:                               #   in Loop: Header=BB36_11 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$6, $3, $1
	lw	$6, 0($6)
	addu	$1, $21, $1
	lw	$1, 0($1)
	beq	$1, $6, $BB36_11
	nop
# %bb.13:
	bltz	$5, $BB36_15
	nop
# %bb.14:
	addiu	$4, $sp, 16
	lw	$25, %call16(uECC_valid_point)($gp)
	.reloc ($tmp77), R_MIPS_JALR, uECC_valid_point
$tmp77:
	jalr	$25
	move	$5, $17
$BB36_15:
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$21, 100($sp)                   # 4-byte Folded Reload
	lw	$22, 104($sp)                   # 4-byte Folded Reload
	lw	$23, 108($sp)                   # 4-byte Folded Reload
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_public_key
$func_end36:
	.size	uECC_valid_public_key, ($func_end36)-uECC_valid_public_key
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_compute_public_key
uECC_compute_public_key:                # @uECC_compute_public_key
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
	addu	$18, $2, $25
	move	$17, $6
	move	$16, $5
	lh	$20, 2($6)
	addiu	$1, $20, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$21, $1, 3
	addiu	$1, $21, 3
	srl	$2, $1, 30
	addu	$1, $1, $2
	sra	$2, $1, 2
	seb	$1, $2
	blez	$1, $BB37_2
	move	$19, $4
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	addiu	$4, $sp, 84
	lw	$25, %call16(memset)($18)
	addiu	$5, $zero, 0
	.reloc ($tmp78), R_MIPS_JALR, memset
$tmp78:
	jalr	$25
	move	$gp, $18
$BB37_2:
	blez	$20, $BB37_5
	nop
# %bb.3:
	addiu	$5, $zero, 0
	addiu	$2, $zero, -4
	addiu	$3, $sp, 84
	addiu	$4, $zero, 0
$BB37_4:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $5
	lbu	$1, 0($1)
	not	$5, $5
	addu	$5, $21, $5
	sll	$6, $5, 3
	sllv	$1, $1, $6
	and	$5, $5, $2
	addu	$5, $3, $5
	lw	$6, 0($5)
	or	$1, $1, $6
	sw	$1, 0($5)
	addiu	$4, $4, 1
	seb	$5, $4
	slt	$1, $5, $21
	bnez	$1, $BB37_4
	nop
$BB37_5:
	addiu	$1, $20, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$5, $1, 5
	seb	$3, $5
	blez	$3, $BB37_16
	nop
# %bb.6:
	addiu	$4, $sp, 84
	andi	$2, $5, 255
	sll	$6, $2, 2
	addiu	$7, $zero, 0
	addiu	$8, $zero, 0
$BB37_7:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $7
	lw	$1, 0($1)
	addiu	$7, $7, 4
	bne	$6, $7, $BB37_7
	or	$8, $1, $8
# %bb.8:
	beqz	$8, $BB37_17
	nop
# %bb.9:
	blez	$3, $BB37_18
	nop
# %bb.10:
	addiu	$6, $17, 36
	andi	$7, $5, 255
	addiu	$5, $zero, 0
	addiu	$8, $sp, 20
$BB37_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $5
	movn	$5, $zero, $1
	lw	$9, 0($6)
	sltu	$10, $9, $1
	subu	$1, $9, $1
	sw	$1, 0($8)
	or	$5, $5, $10
	addiu	$6, $6, 4
	addiu	$4, $4, 4
	addiu	$7, $7, -1
	bnez	$7, $BB37_11
	addiu	$8, $8, 4
# %bb.12:
	addiu	$4, $zero, -2
	blez	$3, $BB37_19
	movz	$4, $zero, $5
$BB37_13:
	addiu	$5, $sp, 20
	addiu	$3, $zero, 0
$BB37_14:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	or	$3, $1, $3
	addiu	$2, $2, -1
	bnez	$2, $BB37_14
	addiu	$5, $5, 4
# %bb.15:
	b	$BB37_20
	sltiu	$2, $3, 1
$BB37_16:
	b	$BB37_21
	addiu	$2, $zero, 0
$BB37_17:
	b	$BB37_21
	addiu	$2, $zero, 0
$BB37_18:
	bgtz	$3, $BB37_13
	addiu	$4, $zero, 0
$BB37_19:
	addiu	$2, $zero, 1
$BB37_20:
	or	$1, $2, $4
	beqz	$1, $BB37_22
	addiu	$2, $zero, 0
$BB37_21:
	lw	$16, 116($sp)                   # 4-byte Folded Reload
	lw	$17, 120($sp)                   # 4-byte Folded Reload
	lw	$18, 124($sp)                   # 4-byte Folded Reload
	lw	$19, 128($sp)                   # 4-byte Folded Reload
	lw	$20, 132($sp)                   # 4-byte Folded Reload
	lw	$21, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 144
$BB37_22:
	addiu	$19, $sp, 20
	addiu	$5, $sp, 84
	lw	$25, %call16(EccPoint_compute_public_key)($18)
	move	$4, $19
	move	$6, $17
	.reloc ($tmp79), R_MIPS_JALR, EccPoint_compute_public_key
$tmp79:
	jalr	$25
	move	$gp, $18
	move	$1, $2
	beqz	$1, $BB37_21
	addiu	$2, $zero, 0
# %bb.23:
	lb	$4, 1($17)
	blez	$4, $BB37_26
	nop
# %bb.24:
	andi	$2, $4, 255
	addiu	$3, $4, -1
	sll	$1, $4, 3
	addiu	$4, $1, -8
	addiu	$5, $zero, -4
	move	$6, $16
$BB37_25:                               # =>This Inner Loop Header: Depth=1
	and	$1, $3, $5
	addu	$1, $19, $1
	lw	$1, 0($1)
	andi	$7, $4, 24
	srlv	$1, $1, $7
	sb	$1, 0($6)
	addiu	$2, $2, -1
	addiu	$6, $6, 1
	addiu	$3, $3, -1
	bnez	$2, $BB37_25
	addiu	$4, $4, -8
$BB37_26:
	lb	$7, 1($17)
	blez	$7, $BB37_21
	addiu	$2, $zero, 1
# %bb.27:
	lb	$1, 0($17)
	addu	$3, $16, $7
	sll	$1, $1, 2
	addu	$4, $19, $1
	andi	$5, $7, 255
	addiu	$6, $7, -1
	sll	$1, $7, 3
	addiu	$7, $1, -8
	addiu	$8, $zero, -4
$BB37_28:                               # =>This Inner Loop Header: Depth=1
	and	$1, $6, $8
	addu	$1, $4, $1
	lw	$1, 0($1)
	andi	$9, $7, 24
	srlv	$1, $1, $9
	sb	$1, 0($3)
	addiu	$5, $5, -1
	addiu	$3, $3, 1
	addiu	$6, $6, -1
	bnez	$5, $BB37_28
	addiu	$7, $7, -8
# %bb.29:
	b	$BB37_21
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
$func_end37:
	.size	uECC_compute_public_key, ($func_end37)-uECC_compute_public_key
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.data
	.p2align	2, 0x0
g_rng_function:
	.4byte	default_CSPRNG
	.size	g_rng_function, 4

	.type	$__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
$__const.x_side_default._3:
	.4byte	3                               # 0x3
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.size	$__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	2, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.2byte	256                             # 0x100
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	1                               # 0x1
	.4byte	4294967295                      # 0xffffffff
	.4byte	4234356049                      # 0xfc632551
	.4byte	4089039554                      # 0xf3b9cac2
	.4byte	2803342980                      # 0xa7179e84
	.4byte	3169254061                      # 0xbce6faad
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	4294967295                      # 0xffffffff
	.4byte	3633889942                      # 0xd898c296
	.4byte	4104206661                      # 0xf4a13945
	.4byte	770388896                       # 0x2deb33a0
	.4byte	1996717441                      # 0x77037d81
	.4byte	1671708914                      # 0x63a440f2
	.4byte	4173129445                      # 0xf8bce6e5
	.4byte	3777774151                      # 0xe12c4247
	.4byte	1796723186                      # 0x6b17d1f2
	.4byte	935285237                       # 0x37bf51f5
	.4byte	3417718888                      # 0xcbb64068
	.4byte	1798397646                      # 0x6b315ece
	.4byte	734933847                       # 0x2bce3357
	.4byte	2081398294                      # 0x7c0f9e16
	.4byte	2397563722                      # 0x8ee7eb4a
	.4byte	4263149467                      # 0xfe1a7f9b
	.4byte	1340293858                      # 0x4fe342e2
	.4byte	668098635                       # 0x27d2604b
	.4byte	1003371582                      # 0x3bce3c3e
	.4byte	3428036854                      # 0xcc53b0f6
	.4byte	1696401072                      # 0x651d06b0
	.4byte	1989707452                      # 0x769886bc
	.4byte	3018571093                      # 0xb3ebbd55
	.4byte	2855965671                      # 0xaa3a93e7
	.4byte	1522939352                      # 0x5ac635d8
	.4byte	double_jacobian_default
	.4byte	x_side_default
	.4byte	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 176

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
	.text
