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
	addiu	$2, $3, 1
	andi	$5, $5, 255
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	move	$3, $5
	addiu	$5, $5, -1
	seb	$6, $5
	bltz	$6, $BB7_4
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$1, $4, $1
	lw	$1, 0($1)
	beqz	$1, $BB7_1
	nop
# %bb.3:
	b	$BB7_5
	move	$2, $3
$BB7_4:
	andi	$1, $2, 255
	beqz	$1, $BB7_12
	nop
$BB7_5:
	seb	$1, $2
	addiu	$2, $1, -1
	sll	$1, $2, 2
	addu	$1, $4, $1
	lw	$4, 0($1)
	beqz	$4, $BB7_9
	nop
# %bb.6:
	addiu	$3, $zero, 0
$BB7_7:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	srl	$1, $4, 1
	sltiu	$5, $4, 2
	beqz	$5, $BB7_7
	move	$4, $1
# %bb.8:
	b	$BB7_10
	nop
$BB7_9:
	addiu	$3, $zero, 0
$BB7_10:
	sll	$1, $2, 5
	addu	$2, $3, $1
$BB7_11:
	jr	$ra
	seh	$2, $2
$BB7_12:
	b	$BB7_11
	addiu	$2, $zero, 0
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
	addiu	$4, $4, 4
	bnez	$2, $BB8_2
	addiu	$5, $5, 4
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
	b	$BB9_7
	addiu	$2, $zero, 255
$BB9_5:
	b	$BB9_7
	addiu	$2, $zero, 0
$BB9_6:
	addiu	$2, $zero, 1
$BB9_7:
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
	addiu	$2, $zero, 0
	addiu	$6, $zero, -4
$BB10_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $3
	lw	$1, 0($1)
	addu	$7, $5, $3
	lw	$7, 0($7)
	xor	$1, $7, $1
	addiu	$3, $3, -4
	bne	$3, $6, $BB10_2
	or	$2, $1, $2
# %bb.3:
	jr	$ra
	sltu	$2, $zero, $2
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
	addiu	$4, $4, 4
	addiu	$6, $6, 4
	bnez	$3, $BB12_2
	addiu	$5, $5, 4
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
	blez	$6, $BB13_6
	nop
# %bb.1:
	addiu	$sp, $sp, -32
	andi	$3, $6, 255
	addiu	$2, $zero, 0
	addiu	$6, $sp, 0
	move	$7, $3
$BB13_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$8, 0($4)
	sltu	$9, $8, $1
	or	$2, $2, $9
	subu	$1, $8, $1
	sw	$1, 0($6)
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$7, $7, -1
	bnez	$7, $BB13_2
	addiu	$6, $6, 4
# %bb.3:
	addiu	$4, $zero, 0
	addiu	$5, $sp, 0
$BB13_4:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	or	$4, $1, $4
	addiu	$3, $3, -1
	bnez	$3, $BB13_4
	addiu	$5, $5, 4
# %bb.5:
	addiu	$1, $zero, -2
	movz	$1, $zero, $2
	sltiu	$2, $4, 1
	or	$1, $1, $2
	xori	$2, $1, 1
	jr	$ra
	addiu	$sp, $sp, 32
$BB13_6:
	jr	$ra
	addiu	$2, $zero, 0
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
	blez	$2, $BB14_7
	andi	$3, $2, 255
# %bb.1:
	addiu	$8, $zero, 0
	move	$9, $4
	move	$10, $3
$BB14_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$11, $1, $8
	lw	$12, 0($6)
	addu	$11, $11, $12
	xor	$12, $11, $1
	movn	$8, $zero, $12
	sltu	$1, $11, $1
	sw	$11, 0($9)
	or	$8, $8, $1
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$10, $10, -1
	bnez	$10, $BB14_2
	addiu	$9, $9, 4
# %bb.3:
	bnez	$8, $BB14_8
	nop
# %bb.4:
	b	$BB14_7
	nop
$BB14_5:                                #   in Loop: Header=BB14_7 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$5, $7, $1
	lw	$5, 0($5)
	addu	$1, $4, $1
	lw	$6, 0($1)
	sltu	$1, $6, $5
	bnez	$1, $BB14_11
	nop
# %bb.6:                                #   in Loop: Header=BB14_7 Depth=1
	sltu	$1, $5, $6
	bnez	$1, $BB14_8
	addiu	$3, $3, -1
$BB14_7:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$5, $1
	bgez	$5, $BB14_5
	nop
$BB14_8:
	blez	$2, $BB14_11
	nop
# %bb.9:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
$BB14_10:                               # =>This Inner Loop Header: Depth=1
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
	bnez	$2, $BB14_10
	addiu	$7, $7, 4
$BB14_11:
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
	blez	$2, $BB15_6
	nop
# %bb.1:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
	move	$8, $4
	move	$9, $2
$BB15_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($6)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$10, 0($5)
	sltu	$11, $10, $1
	subu	$1, $10, $1
	sw	$1, 0($8)
	or	$3, $3, $11
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$9, $9, -1
	bnez	$9, $BB15_2
	addiu	$8, $8, 4
# %bb.3:
	beqz	$3, $BB15_6
	nop
# %bb.4:
	addiu	$3, $zero, 0
$BB15_5:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$2, $BB15_5
	addiu	$7, $7, 4
$BB15_6:
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
	.frame	$sp,184,$ra
	.mask 	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -184
	sw	$ra, 180($sp)                   # 4-byte Folded Spill
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
	sw	$5, 20($sp)
	addiu	$1, $sp, 24
	sw	$1, 16($sp)
	lw	$25, %call16(uECC_vli_numBits)($19)
	move	$4, $6
	move	$5, $7
	.reloc ($tmp1), R_MIPS_JALR, uECC_vli_numBits
$tmp1:
	jalr	$25
	move	$gp, $19
	sll	$1, $17, 6
	subu	$1, $1, $2
	seh	$20, $1
	ext	$2, $20, 26, 5
	addu	$2, $1, $2
	seh	$22, $2
	andi	$2, $2, 65504
	subu	$1, $1, $2
	seh	$21, $1
	sra	$2, $22, 5
	seb	$1, $2
	blez	$1, $BB16_2
	nop
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	addiu	$4, $sp, 88
	lw	$25, %call16(memset)($19)
	addiu	$5, $zero, 0
	.reloc ($tmp2), R_MIPS_JALR, memset
$tmp2:
	jalr	$25
	move	$gp, $19
$BB16_2:
	blez	$21, $BB16_7
	ext	$3, $22, 5, 16
# %bb.3:
	beqz	$17, $BB16_9
	nop
# %bb.4:
	addiu	$1, $zero, 32
	subu	$2, $1, $21
	seb	$1, $3
	sll	$1, $1, 2
	addiu	$3, $sp, 88
	addu	$3, $3, $1
	addiu	$4, $zero, 0
	move	$5, $17
$BB16_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	sllv	$6, $1, $21
	or	$4, $6, $4
	sw	$4, 0($3)
	srlv	$4, $1, $2
	addiu	$18, $18, 4
	addiu	$5, $5, -1
	bnez	$5, $BB16_5
	addiu	$3, $3, 4
# %bb.6:
	b	$BB16_9
	nop
$BB16_7:
	blez	$17, $BB16_9
	nop
# %bb.8:
	seb	$1, $3
	sll	$1, $1, 2
	addiu	$2, $sp, 88
	addu	$4, $2, $1
	andi	$1, $17, 255
	sll	$6, $1, 2
	lw	$25, %call16(memcpy)($19)
	move	$5, $18
	.reloc ($tmp3), R_MIPS_JALR, memcpy
$tmp3:
	jalr	$25
	move	$gp, $19
$BB16_9:
	bltz	$20, $BB16_25
	addiu	$2, $sp, 16
# %bb.10:
	sll	$3, $17, 1
	sll	$1, $17, 2
	addiu	$4, $sp, 88
	addu	$6, $4, $1
	andi	$1, $17, 255
	sll	$1, $1, 2
	addu	$7, $6, $1
	addu	$8, $4, $1
	addiu	$9, $6, -4
	addiu	$5, $zero, 1
$BB16_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_13 Depth 2
                                        #     Child Loop BB16_16 Depth 2
                                        #     Child Loop BB16_18 Depth 2
	blez	$17, $BB16_20
	nop
# %bb.12:                               #   in Loop: Header=BB16_11 Depth=1
	sll	$1, $5, 2
	addu	$1, $2, $1
	lw	$10, 0($1)
	xori	$1, $5, 1
	sll	$1, $1, 2
	addu	$1, $2, $1
	lw	$11, 0($1)
	addiu	$14, $zero, 0
	addiu	$12, $zero, 0
	addiu	$13, $zero, 0
$BB16_13:                               #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sll	$1, $14, 2
	addu	$14, $4, $1
	lw	$14, 0($14)
	addu	$14, $14, $13
	addu	$15, $10, $1
	lw	$24, 0($15)
	sltu	$15, $24, $14
	subu	$24, $24, $14
	addu	$1, $11, $1
	sw	$24, 0($1)
	movz	$15, $13, $14
	addiu	$12, $12, 1
	seb	$14, $12
	slt	$1, $14, $3
	bnez	$1, $BB16_13
	move	$13, $15
# %bb.14:                               #   in Loop: Header=BB16_11 Depth=1
	xor	$1, $5, $15
	blez	$17, $BB16_21
	sltiu	$5, $1, 1
# %bb.15:                               #   in Loop: Header=BB16_11 Depth=1
	addiu	$11, $zero, 0
	move	$10, $8
$BB16_16:                               #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $4, $10
	bnez	$12, $BB16_16
	sll	$11, $1, 31
# %bb.17:                               #   in Loop: Header=BB16_11 Depth=1
	lw	$1, 0($9)
	lw	$10, 0($6)
	sll	$10, $10, 31
	or	$1, $1, $10
	sw	$1, 0($9)
	addiu	$11, $zero, 0
	move	$10, $7
$BB16_18:                               #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $6, $10
	bnez	$12, $BB16_18
	sll	$11, $1, 31
# %bb.19:                               #   in Loop: Header=BB16_11 Depth=1
	b	$BB16_22
	nop
$BB16_20:                               #   in Loop: Header=BB16_11 Depth=1
	sltiu	$5, $5, 1
$BB16_21:                               #   in Loop: Header=BB16_11 Depth=1
	lw	$1, 0($9)
	lw	$10, 0($6)
	sll	$10, $10, 31
	or	$1, $1, $10
	sw	$1, 0($9)
$BB16_22:                               #   in Loop: Header=BB16_11 Depth=1
	addiu	$1, $20, -1
	seh	$10, $20
	bgtz	$10, $BB16_11
	move	$20, $1
# %bb.23:
	bgtz	$17, $BB16_26
	nop
# %bb.24:
	b	$BB16_28
	nop
$BB16_25:
	blez	$17, $BB16_28
	addiu	$5, $zero, 1
$BB16_26:
	sll	$1, $5, 2
	addu	$1, $2, $1
	lw	$2, 0($1)
	andi	$3, $17, 255
$BB16_27:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($16)
	addiu	$2, $2, 4
	addiu	$3, $3, -1
	bnez	$3, $BB16_27
	addiu	$16, $16, 4
$BB16_28:
	lw	$16, 152($sp)                   # 4-byte Folded Reload
	lw	$17, 156($sp)                   # 4-byte Folded Reload
	lw	$18, 160($sp)                   # 4-byte Folded Reload
	lw	$19, 164($sp)                   # 4-byte Folded Reload
	lw	$20, 168($sp)                   # 4-byte Folded Reload
	lw	$21, 172($sp)                   # 4-byte Folded Reload
	lw	$22, 176($sp)                   # 4-byte Folded Reload
	lw	$ra, 180($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 184
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
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_mult
$tmp4:
	jalr	$25
	move	$7, $19
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $18
	move	$5, $20
	move	$6, $17
	move	$7, $19
	.reloc ($tmp5), R_MIPS_JALR, uECC_vli_mmod
$tmp5:
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
	move	$15, $7
$BB18_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	addiu	$12, $15, 1
	subu	$1, $12, $7
	seb	$1, $1
	slt	$1, $1, $7
	beqz	$1, $BB18_13
	addiu	$13, $zero, 0
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=1
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
$BB18_11:                               #   Parent Loop BB18_9 Depth=1
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
	bne	$16, $2, $BB18_11
	move	$gp, $25
# %bb.12:                               #   in Loop: Header=BB18_9 Depth=1
	b	$BB18_14
	nop
$BB18_13:                               #   in Loop: Header=BB18_9 Depth=1
	move	$25, $8
	move	$8, $3
$BB18_14:                               #   in Loop: Header=BB18_9 Depth=1
	sll	$1, $11, 2
	addu	$1, $4, $1
	sw	$25, 0($1)
	seb	$11, $12
	slt	$1, $11, $9
	addiu	$10, $10, 1
	move	$15, $12
	bnez	$1, $BB18_9
	move	$3, $13
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
	.reloc ($tmp6), R_MIPS_JALR, uECC_vli_mult
$tmp6:
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
	blez	$7, $BB20_44
	addu	$16, $2, $25
# %bb.1:
	move	$19, $7
	move	$20, $6
	andi	$fp, $7, 255
	sll	$18, $fp, 2
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$18, $2, $BB20_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB20_43
	nop
# %bb.4:
	sw	$4, 16($sp)                     # 4-byte Folded Spill
	addiu	$21, $sp, 128
	lw	$25, %call16(memcpy)($16)
	move	$4, $21
	move	$6, $18
	.reloc ($tmp7), R_MIPS_JALR, memcpy
$tmp7:
	jalr	$25
	move	$gp, $16
	addiu	$22, $sp, 96
	lw	$25, %call16(memcpy)($16)
	move	$4, $22
	move	$5, $20
	.reloc ($tmp8), R_MIPS_JALR, memcpy
$tmp8:
	jalr	$25
	move	$6, $18
	addiu	$4, $sp, 64
	lw	$25, %call16(memset)($16)
	sw	$4, 28($sp)                     # 4-byte Folded Spill
	addiu	$5, $zero, 0
	move	$6, $18
	.reloc ($tmp9), R_MIPS_JALR, memset
$tmp9:
	jalr	$25
	move	$gp, $16
	addiu	$4, $sp, 32
	addiu	$1, $zero, 1
	sw	$1, 64($sp)
	lw	$25, %call16(memset)($16)
	sw	$4, 20($sp)                     # 4-byte Folded Spill
	addiu	$5, $zero, 0
	.reloc ($tmp10), R_MIPS_JALR, memset
$tmp10:
	jalr	$25
	move	$6, $18
	addu	$23, $21, $18
	addu	$1, $22, $18
	sw	$1, 24($sp)                     # 4-byte Folded Spill
	lw	$1, %got(vli_modInv_update)($16)
	addiu	$17, $1, %lo(vli_modInv_update)
	move	$2, $fp
$BB20_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_30 Depth 2
                                        #     Child Loop BB20_32 Depth 2
                                        #     Child Loop BB20_34 Depth 2
                                        #     Child Loop BB20_38 Depth 2
                                        #     Child Loop BB20_40 Depth 2
                                        #     Child Loop BB20_17 Depth 2
                                        #     Child Loop BB20_19 Depth 2
                                        #     Child Loop BB20_21 Depth 2
                                        #     Child Loop BB20_25 Depth 2
                                        #     Child Loop BB20_27 Depth 2
                                        #     Child Loop BB20_13 Depth 2
                                        #     Child Loop BB20_9 Depth 2
	addiu	$2, $2, -1
	seb	$3, $2
	bltz	$3, $BB20_42
	nop
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $22, $1
	lw	$3, 0($3)
	addu	$1, $21, $1
	lw	$4, 0($1)
	beq	$4, $3, $BB20_5
	nop
# %bb.7:                                #   in Loop: Header=BB20_5 Depth=1
	lbu	$1, 131($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_11
	nop
# %bb.8:                                #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	move	$2, $23
$BB20_9:                                #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $21, $2
	bnez	$4, $BB20_9
	sll	$3, $1, 31
# %bb.10:                               #   in Loop: Header=BB20_5 Depth=1
	lw	$4, 28($sp)                     # 4-byte Folded Reload
	b	$BB20_41
	nop
$BB20_11:                               #   in Loop: Header=BB20_5 Depth=1
	lbu	$1, 99($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_15
	nop
# %bb.12:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	lw	$2, 24($sp)                     # 4-byte Folded Reload
$BB20_13:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $22, $2
	bnez	$4, $BB20_13
	sll	$3, $1, 31
# %bb.14:                               #   in Loop: Header=BB20_5 Depth=1
	lw	$4, 20($sp)                     # 4-byte Folded Reload
	b	$BB20_41
	nop
$BB20_15:                               #   in Loop: Header=BB20_5 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB20_29
	nop
# %bb.16:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_17:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $22, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addu	$4, $21, $2
	lw	$5, 0($4)
	subu	$6, $5, $1
	sw	$6, 0($4)
	sltu	$4, $5, $1
	movn	$3, $zero, $1
	addiu	$2, $2, 4
	bne	$18, $2, $BB20_17
	or	$3, $3, $4
# %bb.18:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	move	$2, $23
$BB20_19:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $21, $2
	bnez	$4, $BB20_19
	sll	$3, $1, 31
# %bb.20:                               #   in Loop: Header=BB20_5 Depth=1
	move	$3, $fp
$BB20_21:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $3, -1
	seb	$2, $1
	bltz	$2, $BB20_26
	nop
# %bb.22:                               #   in Loop: Header=BB20_21 Depth=2
	andi	$1, $2, 255
	sll	$1, $1, 2
	addiu	$2, $sp, 64
	addu	$4, $2, $1
	lw	$4, 0($4)
	addiu	$5, $sp, 32
	addu	$1, $5, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB20_26
	nop
# %bb.23:                               #   in Loop: Header=BB20_21 Depth=2
	sltu	$1, $4, $5
	beqz	$1, $BB20_21
	addiu	$3, $3, -1
# %bb.24:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	move	$4, $20
	move	$5, $fp
$BB20_25:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($2)
	addu	$6, $1, $3
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$3, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($2)
	or	$3, $3, $1
	addiu	$2, $2, 4
	addiu	$5, $5, -1
	bnez	$5, $BB20_25
	addiu	$4, $4, 4
$BB20_26:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_27:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $sp, 32
	addu	$1, $1, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addiu	$4, $sp, 64
	addu	$5, $4, $2
	lw	$6, 0($5)
	subu	$7, $6, $1
	sw	$7, 0($5)
	sltu	$5, $6, $1
	movn	$3, $zero, $1
	addiu	$2, $2, 4
	bne	$18, $2, $BB20_27
	or	$3, $3, $5
# %bb.28:                               #   in Loop: Header=BB20_5 Depth=1
	b	$BB20_41
	nop
$BB20_29:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_30:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $21, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addu	$4, $22, $2
	lw	$5, 0($4)
	subu	$6, $5, $1
	sw	$6, 0($4)
	sltu	$4, $5, $1
	movn	$3, $zero, $1
	addiu	$2, $2, 4
	bne	$18, $2, $BB20_30
	or	$3, $3, $4
# %bb.31:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	lw	$2, 24($sp)                     # 4-byte Folded Reload
$BB20_32:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $22, $2
	bnez	$4, $BB20_32
	sll	$3, $1, 31
# %bb.33:                               #   in Loop: Header=BB20_5 Depth=1
	move	$3, $fp
$BB20_34:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $3, -1
	seb	$2, $1
	bltz	$2, $BB20_39
	nop
# %bb.35:                               #   in Loop: Header=BB20_34 Depth=2
	andi	$1, $2, 255
	sll	$1, $1, 2
	addiu	$2, $sp, 32
	addu	$4, $2, $1
	lw	$4, 0($4)
	addiu	$5, $sp, 64
	addu	$1, $5, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB20_39
	nop
# %bb.36:                               #   in Loop: Header=BB20_34 Depth=2
	sltu	$1, $4, $5
	beqz	$1, $BB20_34
	addiu	$3, $3, -1
# %bb.37:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$3, $zero, 0
	move	$4, $20
	move	$5, $fp
$BB20_38:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($2)
	addu	$6, $1, $3
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$3, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($2)
	or	$3, $3, $1
	addiu	$2, $2, 4
	addiu	$5, $5, -1
	bnez	$5, $BB20_38
	addiu	$4, $4, 4
$BB20_39:                               #   in Loop: Header=BB20_5 Depth=1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_40:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $sp, 64
	addu	$1, $1, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addiu	$4, $sp, 32
	addu	$5, $4, $2
	lw	$6, 0($5)
	subu	$7, $6, $1
	sw	$7, 0($5)
	sltu	$5, $6, $1
	movn	$3, $zero, $1
	addiu	$2, $2, 4
	bne	$18, $2, $BB20_40
	or	$3, $3, $5
$BB20_41:                               #   in Loop: Header=BB20_5 Depth=1
	move	$5, $20
	move	$25, $17
	.reloc ($tmp11), R_MIPS_JALR, vli_modInv_update
$tmp11:
	jalr	$25
	move	$6, $19
	b	$BB20_5
	move	$2, $fp
$BB20_42:
	addiu	$5, $sp, 64
	lw	$25, %call16(memcpy)($16)
	lw	$4, 16($sp)                     # 4-byte Folded Reload
	.reloc ($tmp12), R_MIPS_JALR, memcpy
$tmp12:
	jalr	$25
	move	$6, $18
	b	$BB20_44
	nop
$BB20_43:
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	move	$6, $18
	.reloc ($tmp13), R_MIPS_JALR, memset
$tmp13:
	jalr	$25
	move	$gp, $16
$BB20_44:
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
	.end	uECC_vli_modInv
$func_end20:
	.size	uECC_vli_modInv, ($func_end20)-uECC_vli_modInv
                                        # -- End function
	.p2align	2                               # -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_modInv_update
vli_modInv_update:                      # @vli_modInv_update
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 3($4)
	andi	$1, $1, 1
	bnez	$1, $BB21_5
	nop
# %bb.1:
	blez	$6, $BB21_12
	nop
# %bb.2:
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$2, $4, $1
	addiu	$3, $zero, 0
$BB21_3:                                # =>This Inner Loop Header: Depth=1
	lw	$1, -4($2)
	srl	$5, $1, 1
	or	$3, $5, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$5, $4, $2
	bnez	$5, $BB21_3
	sll	$3, $1, 31
# %bb.4:
	b	$BB21_12
	nop
$BB21_5:
	blez	$6, $BB21_12
	nop
# %bb.6:
	andi	$1, $6, 255
	sll	$3, $1, 2
	addiu	$6, $zero, 0
	addiu	$2, $zero, 0
$BB21_7:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $6
	lw	$7, 0($1)
	addu	$8, $7, $2
	addu	$9, $5, $6
	lw	$9, 0($9)
	addu	$8, $8, $9
	xor	$9, $8, $7
	sw	$8, 0($1)
	movn	$2, $zero, $9
	sltu	$1, $8, $7
	addiu	$6, $6, 4
	bne	$3, $6, $BB21_7
	or	$2, $2, $1
# %bb.8:
	addu	$3, $4, $3
	addiu	$6, $zero, 0
	move	$5, $3
$BB21_9:                                # =>This Inner Loop Header: Depth=1
	lw	$1, -4($5)
	srl	$7, $1, 1
	or	$6, $7, $6
	sw	$6, -4($5)
	addiu	$5, $5, -4
	sltu	$7, $4, $5
	bnez	$7, $BB21_9
	sll	$6, $1, 31
# %bb.10:
	beqz	$2, $BB21_12
	nop
# %bb.11:
	lw	$1, -4($3)
	lui	$2, 32768
	or	$1, $1, $2
	jr	$ra
	sw	$1, -4($3)
$BB21_12:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	vli_modInv_update
$func_end21:
	.size	vli_modInv_update, ($func_end21)-vli_modInv_update
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	double_jacobian_default
double_jacobian_default:                # @double_jacobian_default
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
	move	$22, $7
	lbu	$16, 0($7)
	seb	$7, $16
	blez	$7, $BB22_18
	addu	$fp, $2, $25
# %bb.1:
	move	$18, $6
	move	$17, $5
	move	$20, $4
	sll	$19, $16, 2
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB22_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$19, $2, $BB22_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB22_18
	nop
# %bb.4:
	lw	$1, %got(uECC_vli_mult)($fp)
	sw	$1, 36($sp)                     # 4-byte Folded Spill
	addiu	$25, $1, %lo(uECC_vli_mult)
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	addiu	$23, $sp, 112
	move	$4, $23
	move	$5, $17
	move	$6, $17
	sw	$7, 44($sp)                     # 4-byte Folded Spill
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_mult
$tmp14:
	jalr	$25
	move	$fp, $25
	lw	$25, 172($22)
	addiu	$21, $sp, 80
	move	$4, $21
	jalr	$25
	move	$5, $23
	addiu	$23, $sp, 112
	lb	$7, 0($22)
	move	$4, $23
	move	$5, $20
	move	$25, $fp
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_mult
$tmp15:
	jalr	$25
	move	$6, $21
	addiu	$4, $sp, 48
	lw	$25, 172($22)
	jalr	$25
	move	$5, $23
	addiu	$23, $sp, 112
	lb	$7, 0($22)
	move	$4, $23
	move	$5, $21
	move	$25, $fp
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_mult
$tmp16:
	jalr	$25
	move	$6, $21
	lw	$25, 172($22)
	move	$4, $21
	jalr	$25
	move	$5, $23
	addiu	$21, $sp, 112
	lb	$7, 0($22)
	move	$4, $21
	move	$5, $17
	move	$6, $18
	move	$25, $fp
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_mult
$tmp17:
	jalr	$25
	sw	$fp, 28($sp)
	lw	$25, 172($22)
	move	$4, $17
	jalr	$25
	move	$5, $21
	addiu	$21, $sp, 112
	lb	$7, 0($22)
	move	$4, $21
	move	$5, $18
	move	$25, $fp
	.reloc ($tmp18), R_MIPS_JALR, uECC_vli_mult
$tmp18:
	jalr	$25
	move	$6, $18
	lw	$25, 172($22)
	move	$4, $18
	jalr	$25
	move	$5, $21
	addiu	$23, $22, 4
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	sw	$21, 16($sp)
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$25, %call16(uECC_vli_modAdd)($fp)
	move	$4, $20
	move	$5, $20
	move	$6, $18
	move	$7, $23
	.reloc ($tmp19), R_MIPS_JALR, uECC_vli_modAdd
$tmp19:
	jalr	$25
	move	$gp, $fp
	sw	$21, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($fp)
	move	$4, $18
	move	$5, $18
	move	$6, $18
	.reloc ($tmp20), R_MIPS_JALR, uECC_vli_modAdd
$tmp20:
	jalr	$25
	move	$7, $23
	sw	$21, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($fp)
	move	$4, $18
	move	$5, $20
	move	$6, $18
	move	$7, $23
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_modSub
$tmp21:
	jalr	$25
	move	$gp, $fp
	addiu	$21, $sp, 112
	lb	$7, 0($22)
	move	$4, $21
	move	$5, $20
	lw	$25, 28($sp)                    # 4-byte Folded Reload
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_mult
$tmp22:
	jalr	$25
	move	$6, $18
	sw	$22, 40($sp)                    # 4-byte Folded Spill
	lw	$25, 172($22)
	move	$4, $20
	jalr	$25
	move	$5, $21
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	sw	$21, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($fp)
	move	$4, $18
	move	$5, $20
	move	$6, $20
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_modAdd
$tmp23:
	jalr	$25
	move	$7, $23
	sw	$21, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($fp)
	move	$4, $20
	move	$5, $20
	move	$6, $18
	move	$7, $23
	.reloc ($tmp24), R_MIPS_JALR, uECC_vli_modAdd
$tmp24:
	jalr	$25
	move	$22, $fp
	lbu	$1, 3($20)
	andi	$1, $1, 1
	bnez	$1, $BB22_8
	nop
# %bb.5:
	addu	$2, $20, $19
	addiu	$3, $zero, 0
	lw	$8, 40($sp)                     # 4-byte Folded Reload
$BB22_6:                                # =>This Inner Loop Header: Depth=1
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $20, $2
	bnez	$4, $BB22_6
	sll	$3, $1, 31
# %bb.7:
	b	$BB22_13
	nop
$BB22_8:
	addiu	$3, $zero, 0
	addiu	$2, $zero, 0
$BB22_9:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $3
	lw	$4, 0($1)
	addu	$5, $4, $2
	addu	$6, $23, $3
	lw	$6, 0($6)
	addu	$5, $5, $6
	xor	$6, $5, $4
	sw	$5, 0($1)
	movn	$2, $zero, $6
	sltu	$1, $5, $4
	addiu	$3, $3, 4
	bne	$19, $3, $BB22_9
	or	$2, $2, $1
# %bb.10:
	addu	$3, $20, $19
	addiu	$5, $zero, 0
	move	$4, $3
	lw	$8, 40($sp)                     # 4-byte Folded Reload
$BB22_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -4($4)
	srl	$6, $1, 1
	or	$5, $6, $5
	sw	$5, -4($4)
	addiu	$4, $4, -4
	sltu	$6, $20, $4
	bnez	$6, $BB22_11
	sll	$5, $1, 31
# %bb.12:
	sll	$1, $2, 31
	lw	$2, -4($3)
	or	$1, $2, $1
	sw	$1, -4($3)
$BB22_13:
	lb	$7, 0($8)
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	sw	$25, 36($sp)                    # 4-byte Folded Spill
	move	$fp, $8
	addiu	$21, $sp, 112
	move	$4, $21
	move	$5, $20
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_mult
$tmp25:
	jalr	$25
	move	$6, $20
	lw	$25, 172($fp)
	move	$4, $18
	jalr	$25
	move	$5, $21
	addiu	$21, $sp, 48
	lw	$1, 44($sp)                     # 4-byte Folded Reload
	sw	$1, 16($sp)
	move	$fp, $1
	lw	$25, %call16(uECC_vli_modSub)($22)
	move	$4, $18
	move	$5, $18
	move	$6, $21
	.reloc ($tmp26), R_MIPS_JALR, uECC_vli_modSub
$tmp26:
	jalr	$25
	move	$7, $23
	sw	$fp, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($22)
	move	$4, $18
	move	$5, $18
	move	$6, $21
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_modSub
$tmp27:
	jalr	$25
	move	$7, $23
	sw	$fp, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($22)
	move	$4, $21
	move	$5, $21
	move	$6, $18
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_modSub
$tmp28:
	jalr	$25
	move	$7, $23
	addiu	$4, $sp, 112
	sw	$4, 28($sp)                     # 4-byte Folded Spill
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lb	$7, 0($fp)
	move	$5, $20
	lw	$25, 36($sp)                    # 4-byte Folded Reload
	.reloc ($tmp29), R_MIPS_JALR, uECC_vli_mult
$tmp29:
	jalr	$25
	move	$6, $21
	lw	$25, 172($fp)
	lw	$5, 28($sp)                     # 4-byte Folded Reload
	jalr	$25
	move	$4, $20
	addiu	$4, $sp, 80
	lw	$1, 44($sp)                     # 4-byte Folded Reload
	sw	$1, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($22)
	move	$5, $20
	move	$6, $4
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_modSub
$tmp30:
	jalr	$25
	move	$7, $23
	move	$2, $18
	move	$3, $16
$BB22_14:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($20)
	addiu	$2, $2, 4
	addiu	$3, $3, -1
	bnez	$3, $BB22_14
	addiu	$20, $20, 4
# %bb.15:
	addiu	$2, $zero, 0
$BB22_16:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	addu	$3, $17, $2
	lw	$3, 0($3)
	sw	$3, 0($1)
	addiu	$16, $16, -1
	bnez	$16, $BB22_16
	addiu	$2, $2, 4
# %bb.17:
	addiu	$5, $sp, 80
	lw	$25, %call16(memcpy)($22)
	move	$4, $17
	move	$6, $19
	.reloc ($tmp31), R_MIPS_JALR, memcpy
$tmp31:
	jalr	$25
	move	$gp, $22
$BB22_18:
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
	.end	double_jacobian_default
$func_end22:
	.size	double_jacobian_default, ($func_end22)-double_jacobian_default
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	x_side_default
x_side_default:                         # @x_side_default
	.frame	$sp,128,$ra
	.mask 	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -128
	sw	$ra, 124($sp)                   # 4-byte Folded Spill
	sw	$23, 120($sp)                   # 4-byte Folded Spill
	sw	$22, 116($sp)                   # 4-byte Folded Spill
	sw	$21, 112($sp)                   # 4-byte Folded Spill
	sw	$20, 108($sp)                   # 4-byte Folded Spill
	sw	$19, 104($sp)                   # 4-byte Folded Spill
	sw	$18, 100($sp)                   # 4-byte Folded Spill
	sw	$17, 96($sp)                    # 4-byte Folded Spill
	sw	$16, 92($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$18, $6
	move	$19, $5
	move	$17, $4
	lb	$20, 0($6)
	lw	$1, %got(uECC_vli_mult)($16)
	addiu	$21, $1, %lo(uECC_vli_mult)
	addiu	$22, $sp, 28
	move	$4, $22
	move	$6, $5
	move	$25, $21
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_mult
$tmp32:
	jalr	$25
	move	$7, $20
	lw	$25, 172($18)
	move	$4, $17
	jalr	$25
	move	$5, $22
	lw	$1, %got($__const.x_side_default._3)($16)
	addiu	$6, $1, %lo($__const.x_side_default._3)
	addiu	$22, $18, 4
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $17
	move	$5, $17
	move	$7, $22
	.reloc ($tmp33), R_MIPS_JALR, uECC_vli_modSub
$tmp33:
	jalr	$25
	move	$gp, $16
	addiu	$23, $sp, 28
	lb	$7, 0($18)
	move	$4, $23
	move	$5, $17
	move	$25, $21
	.reloc ($tmp34), R_MIPS_JALR, uECC_vli_mult
$tmp34:
	jalr	$25
	move	$6, $19
	lw	$25, 172($18)
	move	$4, $17
	jalr	$25
	move	$5, $23
	addiu	$6, $18, 132
	sw	$20, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($16)
	move	$4, $17
	move	$5, $17
	move	$7, $22
	.reloc ($tmp35), R_MIPS_JALR, uECC_vli_modAdd
$tmp35:
	jalr	$25
	move	$gp, $16
	lw	$16, 92($sp)                    # 4-byte Folded Reload
	lw	$17, 96($sp)                    # 4-byte Folded Reload
	lw	$18, 100($sp)                   # 4-byte Folded Reload
	lw	$19, 104($sp)                   # 4-byte Folded Reload
	lw	$20, 108($sp)                   # 4-byte Folded Reload
	lw	$21, 112($sp)                   # 4-byte Folded Reload
	lw	$22, 116($sp)                   # 4-byte Folded Reload
	lw	$23, 120($sp)                   # 4-byte Folded Reload
	lw	$ra, 124($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 128
	.set	at
	.set	macro
	.set	reorder
	.end	x_side_default
$func_end23:
	.size	x_side_default, ($func_end23)-x_side_default
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
$func_end24:
	.size	uECC_secp256r1, ($func_end24)-uECC_secp256r1
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
$BB25_1:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $3
	addu	$7, $5, $3
	lw	$7, 0($7)
	addiu	$3, $3, 4
	bne	$3, $6, $BB25_1
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
$BB25_3:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $7
	lw	$9, 0($1)
	sll	$10, $9, 1
	addu	$10, $10, $6
	xor	$11, $10, $9
	sw	$10, 0($1)
	movn	$6, $zero, $11
	sltu	$1, $10, $9
	addiu	$7, $7, 4
	bne	$7, $8, $BB25_3
	or	$6, $6, $1
# %bb.4:
	addiu	$8, $zero, 0
	addiu	$9, $zero, 32
	addiu	$7, $zero, 0
$BB25_5:                                # =>This Inner Loop Header: Depth=1
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
	bne	$8, $9, $BB25_5
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
$BB25_7:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $9
	lw	$11, 0($1)
	sll	$12, $11, 1
	addu	$12, $12, $8
	xor	$13, $12, $11
	sw	$12, 0($1)
	movn	$8, $zero, $13
	sltu	$1, $12, $11
	addiu	$9, $9, 4
	bne	$9, $10, $BB25_7
	or	$8, $8, $1
# %bb.8:
	addiu	$10, $zero, 0
	addiu	$11, $zero, 32
	addiu	$9, $zero, 0
$BB25_9:                                # =>This Inner Loop Header: Depth=1
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
	bne	$10, $11, $BB25_9
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
$BB25_11:                               # =>This Inner Loop Header: Depth=1
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
	bne	$11, $12, $BB25_11
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
$BB25_13:                               # =>This Inner Loop Header: Depth=1
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
	bne	$12, $13, $BB25_13
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
$BB25_15:                               # =>This Inner Loop Header: Depth=1
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
	bne	$13, $14, $BB25_15
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
$BB25_17:                               # =>This Inner Loop Header: Depth=1
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
	bne	$14, $15, $BB25_17
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
$BB25_19:                               # =>This Inner Loop Header: Depth=1
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
	bne	$15, $24, $BB25_19
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
$BB25_21:                               # =>This Inner Loop Header: Depth=1
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
	bne	$15, $24, $BB25_21
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
	bltz	$3, $BB25_32
	nop
# %bb.23:
	lw	$2, %got(curve_secp256r1)($2)
	addiu	$5, $2, %lo(curve_secp256r1)
	beqz	$3, $BB25_27
	addiu	$6, $zero, 32
$BB25_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_25 Depth 2
	addiu	$7, $zero, 0
	addiu	$8, $zero, 0
$BB25_25:                               #   Parent Loop BB25_24 Depth=1
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
	bne	$7, $6, $BB25_25
	or	$8, $8, $9
# %bb.26:                               #   in Loop: Header=BB25_24 Depth=1
	subu	$3, $3, $8
	bnez	$3, $BB25_24
	nop
$BB25_27:
	addiu	$7, $zero, 8
$BB25_28:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $7, -1
	seb	$8, $1
	bltz	$8, $BB25_24
	nop
# %bb.29:                               #   in Loop: Header=BB25_28 Depth=1
	andi	$1, $8, 255
	sll	$1, $1, 2
	addu	$8, $5, $1
	lw	$8, 4($8)
	addu	$1, $4, $1
	lw	$9, 0($1)
	sltu	$1, $9, $8
	bnez	$1, $BB25_36
	nop
# %bb.30:                               #   in Loop: Header=BB25_28 Depth=1
	sltu	$1, $8, $9
	beqz	$1, $BB25_28
	addiu	$7, $7, -1
# %bb.31:
	b	$BB25_24
	nop
$BB25_32:
	lw	$1, %got(curve_secp256r1)($2)
	addiu	$2, $1, %lo(curve_secp256r1)
	addiu	$5, $zero, 32
$BB25_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_34 Depth 2
	addiu	$6, $zero, 0
	addiu	$7, $zero, 0
$BB25_34:                               #   Parent Loop BB25_33 Depth=1
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
	bne	$6, $5, $BB25_34
	or	$7, $7, $1
# %bb.35:                               #   in Loop: Header=BB25_33 Depth=1
	addu	$3, $7, $3
	bltz	$3, $BB25_33
	nop
$BB25_36:
	lw	$16, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
$func_end25:
	.size	vli_mmod_fast_secp256r1, ($func_end25)-vli_mmod_fast_secp256r1
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
	blez	$2, $BB26_4
	nop
# %bb.1:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB26_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB26_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	sltiu	$2, $2, 1
$BB26_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_isZero
$func_end26:
	.size	EccPoint_isZero, ($func_end26)-EccPoint_isZero
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
	.reloc ($tmp36), R_MIPS_JALR, uECC_vli_mult
$tmp36:
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
	.reloc ($tmp37), R_MIPS_JALR, uECC_vli_mult
$tmp37:
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
	.reloc ($tmp38), R_MIPS_JALR, uECC_vli_mult
$tmp38:
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
	.reloc ($tmp39), R_MIPS_JALR, uECC_vli_mult
$tmp39:
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
$func_end27:
	.size	apply_z, ($func_end27)-apply_z
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_add
XYcZ_add:                               # @XYcZ_add
	.frame	$sp,176,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -176
	sw	$ra, 172($sp)                   # 4-byte Folded Spill
	sw	$fp, 168($sp)                   # 4-byte Folded Spill
	sw	$23, 164($sp)                   # 4-byte Folded Spill
	sw	$22, 160($sp)                   # 4-byte Folded Spill
	sw	$21, 156($sp)                   # 4-byte Folded Spill
	sw	$20, 152($sp)                   # 4-byte Folded Spill
	sw	$19, 148($sp)                   # 4-byte Folded Spill
	sw	$18, 144($sp)                   # 4-byte Folded Spill
	sw	$17, 140($sp)                   # 4-byte Folded Spill
	sw	$16, 136($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$19, $7
	move	$17, $6
	sw	$5, 36($sp)                     # 4-byte Folded Spill
	move	$23, $4
	lw	$22, 192($sp)
	lb	$18, 0($22)
	sw	$18, 16($sp)
	addiu	$7, $22, 4
	sw	$7, 24($sp)                     # 4-byte Folded Spill
	addiu	$fp, $sp, 40
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $6
	move	$6, $23
	sw	$23, 32($sp)                    # 4-byte Folded Spill
	.reloc ($tmp40), R_MIPS_JALR, uECC_vli_modSub
$tmp40:
	jalr	$25
	move	$gp, $16
	lw	$1, %got(uECC_vli_mult)($16)
	addiu	$21, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 72
	move	$4, $20
	move	$5, $fp
	move	$6, $fp
	move	$25, $21
	.reloc ($tmp41), R_MIPS_JALR, uECC_vli_mult
$tmp41:
	jalr	$25
	move	$7, $18
	lw	$25, 172($22)
	move	$4, $fp
	jalr	$25
	move	$5, $20
	addiu	$20, $sp, 72
	lb	$7, 0($22)
	move	$4, $20
	move	$5, $23
	move	$25, $21
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_mult
$tmp42:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($22)
	move	$4, $23
	jalr	$25
	move	$5, $20
	addiu	$20, $sp, 72
	lb	$7, 0($22)
	move	$4, $20
	move	$5, $17
	move	$25, $21
	.reloc ($tmp43), R_MIPS_JALR, uECC_vli_mult
$tmp43:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($22)
	move	$4, $17
	jalr	$25
	move	$5, $20
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $19
	move	$5, $19
	lw	$6, 36($sp)                     # 4-byte Folded Reload
	lw	$23, 24($sp)                    # 4-byte Folded Reload
	.reloc ($tmp44), R_MIPS_JALR, uECC_vli_modSub
$tmp44:
	jalr	$25
	move	$7, $23
	addiu	$20, $sp, 72
	lb	$7, 0($22)
	move	$4, $20
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	move	$5, $19
	move	$6, $19
	move	$25, $21
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_mult
$tmp45:
	jalr	$25
	move	$19, $21
	lw	$25, 172($22)
	move	$4, $fp
	jalr	$25
	move	$5, $20
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $fp
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	move	$6, $20
	.reloc ($tmp46), R_MIPS_JALR, uECC_vli_modSub
$tmp46:
	jalr	$25
	move	$7, $23
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $fp
	move	$6, $17
	.reloc ($tmp47), R_MIPS_JALR, uECC_vli_modSub
$tmp47:
	jalr	$25
	move	$7, $23
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $17
	move	$5, $17
	move	$6, $20
	.reloc ($tmp48), R_MIPS_JALR, uECC_vli_modSub
$tmp48:
	jalr	$25
	move	$7, $23
	addiu	$20, $sp, 72
	lb	$7, 0($22)
	move	$4, $20
	lw	$21, 36($sp)                    # 4-byte Folded Reload
	move	$5, $21
	move	$25, $19
	.reloc ($tmp49), R_MIPS_JALR, uECC_vli_mult
$tmp49:
	jalr	$25
	move	$6, $17
	lw	$25, 172($22)
	move	$4, $21
	jalr	$25
	move	$5, $20
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $17
	lw	$5, 32($sp)                     # 4-byte Folded Reload
	move	$6, $fp
	.reloc ($tmp50), R_MIPS_JALR, uECC_vli_modSub
$tmp50:
	jalr	$25
	move	$7, $23
	addiu	$20, $sp, 72
	lb	$7, 0($22)
	move	$4, $20
	lw	$fp, 28($sp)                    # 4-byte Folded Reload
	move	$5, $fp
	move	$25, $19
	.reloc ($tmp51), R_MIPS_JALR, uECC_vli_mult
$tmp51:
	jalr	$25
	move	$6, $17
	lw	$25, 172($22)
	move	$4, $fp
	jalr	$25
	move	$5, $20
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $fp
	move	$6, $21
	.reloc ($tmp52), R_MIPS_JALR, uECC_vli_modSub
$tmp52:
	jalr	$25
	move	$7, $23
	blez	$18, $BB28_2
	nop
# %bb.1:
	andi	$1, $18, 255
	sll	$6, $1, 2
	addiu	$5, $sp, 40
	lw	$25, %call16(memcpy)($16)
	move	$4, $17
	.reloc ($tmp53), R_MIPS_JALR, memcpy
$tmp53:
	jalr	$25
	move	$gp, $16
$BB28_2:
	lw	$16, 136($sp)                   # 4-byte Folded Reload
	lw	$17, 140($sp)                   # 4-byte Folded Reload
	lw	$18, 144($sp)                   # 4-byte Folded Reload
	lw	$19, 148($sp)                   # 4-byte Folded Reload
	lw	$20, 152($sp)                   # 4-byte Folded Reload
	lw	$21, 156($sp)                   # 4-byte Folded Reload
	lw	$22, 160($sp)                   # 4-byte Folded Reload
	lw	$23, 164($sp)                   # 4-byte Folded Reload
	lw	$fp, 168($sp)                   # 4-byte Folded Reload
	lw	$ra, 172($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 176
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_add
$func_end28:
	.size	XYcZ_add, ($func_end28)-XYcZ_add
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_mult
EccPoint_mult:                          # @EccPoint_mult
	.frame	$sp,336,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -336
	sw	$ra, 332($sp)                   # 4-byte Folded Spill
	sw	$fp, 328($sp)                   # 4-byte Folded Spill
	sw	$23, 324($sp)                   # 4-byte Folded Spill
	sw	$22, 320($sp)                   # 4-byte Folded Spill
	sw	$21, 316($sp)                   # 4-byte Folded Spill
	sw	$20, 312($sp)                   # 4-byte Folded Spill
	sw	$19, 308($sp)                   # 4-byte Folded Spill
	sw	$18, 304($sp)                   # 4-byte Folded Spill
	sw	$17, 300($sp)                   # 4-byte Folded Spill
	sw	$16, 296($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$21, $7
	move	$20, $6
	move	$17, $5
	sw	$4, 32($sp)                     # 4-byte Folded Spill
	lw	$1, 352($sp)
	sw	$1, 68($sp)                     # 4-byte Folded Spill
	lw	$fp, 356($sp)
	addiu	$1, $sp, 168
	addiu	$23, $1, 32
	lbu	$19, 0($fp)
	seb	$2, $19
	addiu	$18, $sp, 104
	sw	$19, 28($sp)                    # 4-byte Folded Spill
	sw	$2, 56($sp)                     # 4-byte Folded Spill
	blez	$2, $BB29_3
	sw	$5, 48($sp)
# %bb.1:
	move	$22, $20
	sll	$20, $19, 2
	lw	$25, %call16(memcpy)($16)
	move	$4, $23
	move	$5, $17
	move	$6, $20
	.reloc ($tmp54), R_MIPS_JALR, memcpy
$tmp54:
	jalr	$25
	move	$gp, $16
	addu	$5, $17, $20
	addiu	$17, $18, 32
	lw	$25, %call16(memcpy)($16)
	move	$4, $17
	sw	$5, 52($sp)                     # 4-byte Folded Spill
	.reloc ($tmp55), R_MIPS_JALR, memcpy
$tmp55:
	jalr	$25
	move	$6, $20
	beqz	$21, $BB29_5
	nop
# %bb.2:
	addiu	$4, $sp, 232
	lw	$25, %call16(memcpy)($16)
	move	$5, $21
	.reloc ($tmp56), R_MIPS_JALR, memcpy
$tmp56:
	jalr	$25
	move	$6, $20
	b	$BB29_6
	nop
$BB29_3:
	sll	$1, $2, 2
	addu	$1, $17, $1
	sw	$1, 52($sp)                     # 4-byte Folded Spill
	beqz	$21, $BB29_13
	addiu	$17, $18, 32
# %bb.4:
	b	$BB29_7
	sw	$2, 24($sp)
$BB29_5:
	addiu	$4, $sp, 232
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	move	$6, $20
	.reloc ($tmp57), R_MIPS_JALR, memset
$tmp57:
	jalr	$25
	move	$gp, $16
	addiu	$1, $zero, 1
	sw	$1, 232($sp)
$BB29_6:
	addiu	$4, $sp, 168
	lw	$25, %call16(memmove)($16)
	move	$5, $23
	move	$6, $20
	.reloc ($tmp58), R_MIPS_JALR, memmove
$tmp58:
	jalr	$25
	move	$gp, $16
	addiu	$5, $18, 32
	lw	$25, %call16(memmove)($16)
	move	$4, $18
	.reloc ($tmp59), R_MIPS_JALR, memmove
$tmp59:
	jalr	$25
	move	$6, $20
	sw	$19, 24($sp)                    # 4-byte Folded Spill
	move	$20, $22
$BB29_7:
	addiu	$18, $sp, 232
	lw	$25, %call16(apply_z)($16)
	move	$4, $23
	move	$5, $17
	move	$6, $18
	move	$7, $fp
	.reloc ($tmp60), R_MIPS_JALR, apply_z
$tmp60:
	jalr	$25
	move	$gp, $16
	lw	$25, 164($fp)
	sw	$23, 44($sp)                    # 4-byte Folded Spill
	move	$4, $23
	move	$5, $17
	move	$6, $18
	jalr	$25
	move	$7, $fp
	addiu	$22, $sp, 168
	addiu	$21, $sp, 104
	lw	$25, %call16(apply_z)($16)
	move	$4, $22
	move	$5, $21
	move	$6, $18
	.reloc ($tmp61), R_MIPS_JALR, apply_z
$tmp61:
	jalr	$25
	move	$7, $fp
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	addiu	$1, $1, -2
	seh	$2, $1
	sw	$16, 68($sp)                    # 4-byte Folded Spill
	blez	$2, $BB29_10
	move	$18, $fp
# %bb.8:
	andi	$19, $2, 65535
	lui	$1, 8191
	ori	$1, $1, 65532
	sw	$1, 64($sp)                     # 4-byte Folded Spill
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$1, $1, %lo(XYcZ_addC)
	sw	$1, 60($sp)                     # 4-byte Folded Spill
$BB29_9:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $zero, 1
	sllv	$1, $1, $19
	srl	$2, $19, 3
	lw	$3, 64($sp)                     # 4-byte Folded Reload
	and	$2, $2, $3
	addu	$2, $20, $2
	lw	$2, 0($2)
	and	$1, $2, $1
	sltu	$2, $zero, $1
	sll	$2, $2, 5
	move	$17, $20
	addu	$20, $22, $2
	addu	$16, $21, $2
	sltiu	$1, $1, 1
	sll	$1, $1, 5
	move	$fp, $22
	addu	$22, $22, $1
	addu	$23, $21, $1
	move	$4, $20
	move	$5, $16
	move	$6, $22
	move	$7, $23
	lw	$25, 60($sp)                    # 4-byte Folded Reload
	.reloc ($tmp62), R_MIPS_JALR, XYcZ_addC
$tmp62:
	jalr	$25
	move	$8, $18
	sw	$18, 16($sp)
	lw	$gp, 68($sp)                    # 4-byte Folded Reload
	lw	$25, %call16(XYcZ_add)($gp)
	move	$4, $22
	move	$22, $fp
	move	$5, $23
	move	$6, $20
	move	$20, $17
	.reloc ($tmp63), R_MIPS_JALR, XYcZ_add
$tmp63:
	jalr	$25
	move	$7, $16
	addiu	$1, $19, -1
	sltiu	$2, $19, 2
	beqz	$2, $BB29_9
	move	$19, $1
$BB29_10:
	sw	$21, 40($sp)                    # 4-byte Folded Spill
	lw	$1, 0($20)
	andi	$1, $1, 1
	xori	$2, $1, 1
	sll	$1, $1, 5
	addu	$23, $22, $1
	addu	$16, $21, $1
	sll	$1, $2, 5
	addu	$6, $22, $1
	sw	$6, 60($sp)                     # 4-byte Folded Spill
	addu	$7, $21, $1
	sw	$7, 64($sp)                     # 4-byte Folded Spill
	lw	$fp, 68($sp)                    # 4-byte Folded Reload
	lw	$1, %got(XYcZ_addC)($fp)
	addiu	$25, $1, %lo(XYcZ_addC)
	move	$4, $23
	move	$5, $16
	move	$17, $18
	.reloc ($tmp64), R_MIPS_JALR, XYcZ_addC
$tmp64:
	jalr	$25
	move	$8, $18
	addiu	$21, $18, 4
	move	$6, $22
	sw	$22, 36($sp)                    # 4-byte Folded Spill
	addiu	$22, $sp, 72
	lw	$19, 56($sp)                    # 4-byte Folded Reload
	sw	$19, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($fp)
	move	$4, $22
	lw	$5, 44($sp)                     # 4-byte Folded Reload
	move	$7, $21
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_modSub
$tmp65:
	jalr	$25
	move	$gp, $fp
	lw	$1, %got(uECC_vli_mult)($fp)
	addiu	$18, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 232
	lb	$7, 0($17)
	move	$4, $20
	move	$5, $22
	move	$25, $18
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_mult
$tmp66:
	jalr	$25
	move	$6, $16
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	addiu	$20, $sp, 232
	lb	$7, 0($17)
	move	$4, $20
	lw	$6, 48($sp)                     # 4-byte Folded Reload
	move	$25, $18
	.reloc ($tmp67), R_MIPS_JALR, uECC_vli_mult
$tmp67:
	jalr	$25
	move	$5, $22
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	lw	$25, %call16(uECC_vli_modInv)($fp)
	move	$4, $22
	move	$5, $22
	move	$6, $21
	move	$7, $19
	.reloc ($tmp68), R_MIPS_JALR, uECC_vli_modInv
$tmp68:
	jalr	$25
	move	$gp, $fp
	addiu	$20, $sp, 232
	lb	$7, 0($17)
	move	$4, $20
	lw	$6, 52($sp)                     # 4-byte Folded Reload
	move	$25, $18
	.reloc ($tmp69), R_MIPS_JALR, uECC_vli_mult
$tmp69:
	jalr	$25
	move	$5, $22
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	addiu	$20, $sp, 232
	lb	$7, 0($17)
	move	$4, $20
	move	$5, $22
	move	$25, $18
	.reloc ($tmp70), R_MIPS_JALR, uECC_vli_mult
$tmp70:
	jalr	$25
	move	$6, $23
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	sw	$17, 16($sp)
	lw	$25, %call16(XYcZ_add)($fp)
	lw	$4, 60($sp)                     # 4-byte Folded Reload
	lw	$5, 64($sp)                     # 4-byte Folded Reload
	move	$6, $23
	move	$7, $16
	.reloc ($tmp71), R_MIPS_JALR, XYcZ_add
$tmp71:
	jalr	$25
	move	$gp, $fp
	lw	$25, %call16(apply_z)($fp)
	lw	$4, 36($sp)                     # 4-byte Folded Reload
	lw	$5, 40($sp)                     # 4-byte Folded Reload
	move	$6, $22
	.reloc ($tmp72), R_MIPS_JALR, apply_z
$tmp72:
	jalr	$25
	move	$7, $17
	blez	$19, $BB29_12
	nop
# %bb.11:
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	sll	$17, $1, 2
	addiu	$5, $sp, 168
	lw	$25, %call16(memcpy)($fp)
	lw	$18, 32($sp)                    # 4-byte Folded Reload
	move	$4, $18
	move	$6, $17
	.reloc ($tmp73), R_MIPS_JALR, memcpy
$tmp73:
	jalr	$25
	move	$gp, $fp
	lw	$1, 24($sp)                     # 4-byte Folded Reload
	sll	$1, $1, 2
	addu	$4, $18, $1
	addiu	$5, $sp, 104
	lw	$25, %call16(memcpy)($fp)
	.reloc ($tmp74), R_MIPS_JALR, memcpy
$tmp74:
	jalr	$25
	move	$6, $17
$BB29_12:
	lw	$16, 296($sp)                   # 4-byte Folded Reload
	lw	$17, 300($sp)                   # 4-byte Folded Reload
	lw	$18, 304($sp)                   # 4-byte Folded Reload
	lw	$19, 308($sp)                   # 4-byte Folded Reload
	lw	$20, 312($sp)                   # 4-byte Folded Reload
	lw	$21, 316($sp)                   # 4-byte Folded Reload
	lw	$22, 320($sp)                   # 4-byte Folded Reload
	lw	$23, 324($sp)                   # 4-byte Folded Reload
	lw	$fp, 328($sp)                   # 4-byte Folded Reload
	lw	$ra, 332($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 336
$BB29_13:
	addiu	$1, $zero, 1
	sw	$1, 232($sp)
	b	$BB29_7
	sw	$2, 24($sp)
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_mult
$func_end29:
	.size	EccPoint_mult, ($func_end29)-EccPoint_mult
                                        # -- End function
	.p2align	2                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_addC
XYcZ_addC:                              # @XYcZ_addC
	.frame	$sp,248,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -248
	sw	$ra, 244($sp)                   # 4-byte Folded Spill
	sw	$fp, 240($sp)                   # 4-byte Folded Spill
	sw	$23, 236($sp)                   # 4-byte Folded Spill
	sw	$22, 232($sp)                   # 4-byte Folded Spill
	sw	$21, 228($sp)                   # 4-byte Folded Spill
	sw	$20, 224($sp)                   # 4-byte Folded Spill
	sw	$19, 220($sp)                   # 4-byte Folded Spill
	sw	$18, 216($sp)                   # 4-byte Folded Spill
	sw	$17, 212($sp)                   # 4-byte Folded Spill
	sw	$16, 208($sp)                   # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$21, $8
	move	$fp, $7
	move	$17, $6
	sw	$5, 44($sp)                     # 4-byte Folded Spill
	move	$23, $4
	lb	$18, 0($8)
	sw	$18, 16($sp)
	addiu	$7, $8, 4
	sw	$7, 32($sp)                     # 4-byte Folded Spill
	addiu	$20, $sp, 112
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $20
	move	$5, $6
	move	$6, $23
	.reloc ($tmp75), R_MIPS_JALR, uECC_vli_modSub
$tmp75:
	jalr	$25
	move	$gp, $16
	lw	$1, %got(uECC_vli_mult)($16)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$19, $sp, 144
	move	$4, $19
	move	$5, $20
	move	$6, $20
	move	$7, $18
	.reloc ($tmp76), R_MIPS_JALR, uECC_vli_mult
$tmp76:
	jalr	$25
	move	$22, $25
	lw	$25, 172($21)
	move	$4, $20
	jalr	$25
	move	$5, $19
	addiu	$19, $sp, 144
	lb	$7, 0($21)
	move	$4, $19
	sw	$23, 40($sp)                    # 4-byte Folded Spill
	move	$5, $23
	move	$6, $20
	move	$25, $22
	.reloc ($tmp77), R_MIPS_JALR, uECC_vli_mult
$tmp77:
	jalr	$25
	sw	$22, 28($sp)
	lw	$25, 172($21)
	move	$4, $23
	jalr	$25
	move	$5, $19
	addiu	$19, $sp, 144
	lb	$7, 0($21)
	move	$4, $19
	move	$5, $17
	sw	$20, 36($sp)                    # 4-byte Folded Spill
	move	$25, $22
	.reloc ($tmp78), R_MIPS_JALR, uECC_vli_mult
$tmp78:
	jalr	$25
	move	$6, $20
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $19
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($16)
	move	$4, $20
	move	$5, $fp
	lw	$23, 44($sp)                    # 4-byte Folded Reload
	move	$6, $23
	lw	$20, 32($sp)                    # 4-byte Folded Reload
	move	$7, $20
	.reloc ($tmp79), R_MIPS_JALR, uECC_vli_modAdd
$tmp79:
	jalr	$25
	move	$gp, $16
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$4, $fp
	move	$5, $fp
	move	$6, $23
	move	$fp, $23
	.reloc ($tmp80), R_MIPS_JALR, uECC_vli_modSub
$tmp80:
	jalr	$25
	move	$7, $20
	addiu	$19, $sp, 80
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $19
	move	$5, $17
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	move	$6, $22
	.reloc ($tmp81), R_MIPS_JALR, uECC_vli_modSub
$tmp81:
	jalr	$25
	move	$7, $20
	addiu	$23, $sp, 144
	lb	$7, 0($21)
	move	$4, $23
	move	$5, $fp
	lw	$20, 28($sp)                    # 4-byte Folded Reload
	move	$25, $20
	.reloc ($tmp82), R_MIPS_JALR, uECC_vli_mult
$tmp82:
	jalr	$25
	move	$6, $19
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $23
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modAdd)($16)
	move	$4, $19
	move	$5, $22
	move	$6, $17
	lw	$22, 32($sp)                    # 4-byte Folded Reload
	.reloc ($tmp83), R_MIPS_JALR, uECC_vli_modAdd
$tmp83:
	jalr	$25
	move	$7, $22
	addiu	$23, $sp, 144
	lb	$7, 0($21)
	move	$4, $23
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	move	$5, $fp
	move	$25, $20
	.reloc ($tmp84), R_MIPS_JALR, uECC_vli_mult
$tmp84:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $23
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $17
	move	$5, $17
	move	$6, $19
	.reloc ($tmp85), R_MIPS_JALR, uECC_vli_modSub
$tmp85:
	jalr	$25
	move	$7, $22
	addiu	$23, $sp, 48
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $23
	lw	$5, 40($sp)                     # 4-byte Folded Reload
	move	$6, $17
	.reloc ($tmp86), R_MIPS_JALR, uECC_vli_modSub
$tmp86:
	jalr	$25
	move	$7, $22
	addiu	$17, $sp, 144
	lb	$7, 0($21)
	move	$4, $17
	move	$5, $fp
	move	$25, $20
	.reloc ($tmp87), R_MIPS_JALR, uECC_vli_mult
$tmp87:
	jalr	$25
	move	$6, $23
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $17
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $fp
	move	$5, $fp
	lw	$6, 44($sp)                     # 4-byte Folded Reload
	.reloc ($tmp88), R_MIPS_JALR, uECC_vli_modSub
$tmp88:
	jalr	$25
	move	$7, $22
	addiu	$17, $sp, 144
	lb	$7, 0($21)
	move	$4, $17
	lw	$5, 36($sp)                     # 4-byte Folded Reload
	move	$25, $20
	.reloc ($tmp89), R_MIPS_JALR, uECC_vli_mult
$tmp89:
	jalr	$25
	move	$6, $5
	lw	$25, 172($21)
	move	$4, $23
	jalr	$25
	move	$5, $17
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $23
	move	$5, $23
	move	$6, $19
	.reloc ($tmp90), R_MIPS_JALR, uECC_vli_modSub
$tmp90:
	jalr	$25
	move	$7, $22
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	move	$4, $19
	move	$5, $23
	lw	$23, 40($sp)                    # 4-byte Folded Reload
	move	$6, $23
	.reloc ($tmp91), R_MIPS_JALR, uECC_vli_modSub
$tmp91:
	jalr	$25
	move	$7, $22
	addiu	$17, $sp, 144
	lb	$7, 0($21)
	move	$4, $17
	lw	$6, 36($sp)                     # 4-byte Folded Reload
	move	$25, $20
	.reloc ($tmp92), R_MIPS_JALR, uECC_vli_mult
$tmp92:
	jalr	$25
	move	$5, $19
	lw	$25, 172($21)
	move	$4, $19
	jalr	$25
	move	$5, $17
	sw	$18, 16($sp)
	lw	$25, %call16(uECC_vli_modSub)($16)
	lw	$4, 44($sp)                     # 4-byte Folded Reload
	move	$5, $19
	move	$6, $4
	.reloc ($tmp93), R_MIPS_JALR, uECC_vli_modSub
$tmp93:
	jalr	$25
	move	$7, $22
	blez	$18, $BB30_2
	nop
# %bb.1:
	andi	$1, $18, 255
	sll	$6, $1, 2
	addiu	$5, $sp, 48
	lw	$25, %call16(memcpy)($16)
	move	$4, $23
	.reloc ($tmp94), R_MIPS_JALR, memcpy
$tmp94:
	jalr	$25
	move	$gp, $16
$BB30_2:
	lw	$16, 208($sp)                   # 4-byte Folded Reload
	lw	$17, 212($sp)                   # 4-byte Folded Reload
	lw	$18, 216($sp)                   # 4-byte Folded Reload
	lw	$19, 220($sp)                   # 4-byte Folded Reload
	lw	$20, 224($sp)                   # 4-byte Folded Reload
	lw	$21, 228($sp)                   # 4-byte Folded Reload
	lw	$22, 232($sp)                   # 4-byte Folded Reload
	lw	$23, 236($sp)                   # 4-byte Folded Reload
	lw	$fp, 240($sp)                   # 4-byte Folded Reload
	lw	$ra, 244($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 248
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_addC
$func_end30:
	.size	XYcZ_addC, ($func_end30)-XYcZ_addC
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
	blez	$10, $BB31_4
	addiu	$3, $7, 36
# %bb.1:
	andi	$2, $8, 255
	addiu	$7, $zero, 0
	move	$11, $3
	move	$12, $5
$BB31_2:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$2, $BB31_2
	addiu	$12, $12, 4
# %bb.3:
	bnez	$7, $BB31_6
	addiu	$2, $zero, 1
$BB31_4:
	sll	$1, $8, 24
	sra	$1, $1, 19
	slt	$1, $9, $1
	beqz	$1, $BB31_6
	addiu	$2, $zero, 0
# %bb.5:
	sra	$1, $9, 5
	sll	$1, $1, 2
	addu	$1, $5, $1
	lw	$1, 0($1)
	srlv	$1, $1, $9
	andi	$2, $1, 1
$BB31_6:
	blez	$10, $BB31_9
	nop
# %bb.7:
	andi	$4, $8, 255
	addiu	$7, $zero, 0
$BB31_8:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$4, $BB31_8
	addiu	$6, $6, 4
$BB31_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	regularize_k
$func_end31:
	.size	regularize_k, ($func_end31)-regularize_k
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_compute_public_key
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.frame	$sp,120,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$19, 112($sp)                   # 4-byte Folded Spill
	sw	$18, 108($sp)                   # 4-byte Folded Spill
	sw	$17, 104($sp)                   # 4-byte Folded Spill
	sw	$16, 100($sp)                   # 4-byte Folded Spill
	addu	$18, $2, $25
	move	$19, $6
	move	$1, $5
	move	$16, $4
	addiu	$6, $sp, 36
	sw	$6, 32($sp)
	addiu	$5, $sp, 68
	sw	$5, 28($sp)
	lw	$25, %call16(regularize_k)($18)
	move	$4, $1
	move	$7, $19
	.reloc ($tmp95), R_MIPS_JALR, regularize_k
$tmp95:
	jalr	$25
	move	$gp, $18
	addiu	$1, $sp, 28
	addiu	$5, $19, 68
	addiu	$17, $zero, 0
	xori	$2, $2, 1
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$6, 0($1)
	lhu	$1, 2($19)
	sw	$19, 20($sp)
	addiu	$1, $1, 1
	seh	$1, $1
	sw	$1, 16($sp)
	lw	$25, %call16(EccPoint_mult)($18)
	move	$4, $16
	addiu	$7, $zero, 0
	.reloc ($tmp96), R_MIPS_JALR, EccPoint_mult
$tmp96:
	jalr	$25
	move	$gp, $18
	lbu	$1, 0($19)
	sll	$1, $1, 1
	seb	$2, $1
	blez	$2, $BB32_4
	nop
# %bb.1:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB32_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($16)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB32_2
	addiu	$16, $16, 4
# %bb.3:
	sltu	$17, $zero, $2
$BB32_4:
	move	$2, $17
	lw	$16, 100($sp)                   # 4-byte Folded Reload
	lw	$17, 104($sp)                   # 4-byte Folded Reload
	lw	$18, 108($sp)                   # 4-byte Folded Reload
	lw	$19, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
$func_end32:
	.size	EccPoint_compute_public_key, ($func_end32)-EccPoint_compute_public_key
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
	blez	$5, $BB33_3
	nop
# %bb.1:
	addiu	$3, $zero, 0
	addiu	$2, $zero, -4
	addiu	$7, $zero, 0
$BB33_2:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$1, $BB33_2
	nop
$BB33_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
$func_end33:
	.size	uECC_vli_nativeToBytes, ($func_end33)-uECC_vli_nativeToBytes
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
	blez	$1, $BB34_2
	move	$18, $4
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	lw	$25, %call16(memset)($gp)
	move	$4, $18
	.reloc ($tmp97), R_MIPS_JALR, memset
$tmp97:
	jalr	$25
	addiu	$5, $zero, 0
$BB34_2:
	blez	$16, $BB34_5
	nop
# %bb.3:
	addiu	$4, $zero, 0
	addiu	$2, $zero, -4
	addiu	$3, $zero, 0
$BB34_4:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$1, $BB34_4
	nop
$BB34_5:
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
$func_end34:
	.size	uECC_vli_bytesToNative, ($func_end34)-uECC_vli_bytesToNative
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_generate_random_int
uECC_generate_random_int:               # @uECC_generate_random_int
	.frame	$sp,64,$ra
	.mask 	0xc0ff0000,-4
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
	sw	$23, 52($sp)                    # 4-byte Folded Spill
	sw	$22, 48($sp)                    # 4-byte Folded Spill
	sw	$21, 44($sp)                    # 4-byte Folded Spill
	sw	$20, 40($sp)                    # 4-byte Folded Spill
	sw	$19, 36($sp)                    # 4-byte Folded Spill
	sw	$18, 32($sp)                    # 4-byte Folded Spill
	sw	$17, 28($sp)                    # 4-byte Folded Spill
	sw	$16, 24($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $6
	move	$19, $4
	lw	$25, %call16(uECC_vli_numBits)($16)
	sw	$5, 20($sp)                     # 4-byte Folded Spill
	move	$4, $5
	move	$5, $6
	.reloc ($tmp98), R_MIPS_JALR, uECC_vli_numBits
$tmp98:
	jalr	$25
	move	$gp, $16
	lw	$21, %got(g_rng_function)($16)
	lw	$1, %lo(g_rng_function)($21)
	beqz	$1, $BB35_10
	nop
# %bb.1:
	sll	$20, $17, 2
	addu	$1, $19, $20
	sll	$3, $17, 5
	subu	$2, $3, $2
	addiu	$3, $zero, -1
	srlv	$22, $3, $2
	addiu	$23, $1, -4
	andi	$1, $17, 255
	sll	$fp, $1, 2
	addiu	$18, $zero, 0
$BB35_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_5 Depth 2
	lw	$25, %lo(g_rng_function)($21)
	move	$4, $19
	jalr	$25
	move	$5, $20
	beqz	$2, $BB35_11
	nop
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	lw	$1, 0($23)
	and	$1, $1, $22
	blez	$17, $BB35_8
	sw	$1, 0($23)
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB35_5:                                #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $19, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$fp, $2, $BB35_5
	or	$3, $1, $3
# %bb.6:                                #   in Loop: Header=BB35_2 Depth=1
	beqz	$3, $BB35_8
	nop
# %bb.7:                                #   in Loop: Header=BB35_2 Depth=1
	lw	$25, %call16(uECC_vli_cmp)($16)
	lw	$4, 20($sp)                     # 4-byte Folded Reload
	move	$5, $19
	move	$6, $17
	.reloc ($tmp99), R_MIPS_JALR, uECC_vli_cmp
$tmp99:
	jalr	$25
	move	$gp, $16
	move	$1, $2
	addiu	$2, $zero, 1
	beq	$1, $2, $BB35_12
	nop
$BB35_8:                                #   in Loop: Header=BB35_2 Depth=1
	addiu	$18, $18, 1
	addiu	$1, $zero, 64
	bne	$18, $1, $BB35_2
	nop
# %bb.9:
	b	$BB35_12
	addiu	$2, $zero, 0
$BB35_10:
	b	$BB35_12
	addiu	$2, $zero, 0
$BB35_11:
	addiu	$2, $zero, 0
$BB35_12:
	lw	$16, 24($sp)                    # 4-byte Folded Reload
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$18, 32($sp)                    # 4-byte Folded Reload
	lw	$19, 36($sp)                    # 4-byte Folded Reload
	lw	$20, 40($sp)                    # 4-byte Folded Reload
	lw	$21, 44($sp)                    # 4-byte Folded Reload
	lw	$22, 48($sp)                    # 4-byte Folded Reload
	lw	$23, 52($sp)                    # 4-byte Folded Reload
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 64
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
$func_end35:
	.size	uECC_generate_random_int, ($func_end35)-uECC_generate_random_int
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
	addiu	$sp, $sp, -136
	sw	$ra, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	addu	$3, $2, $25
	move	$16, $5
	move	$17, $4
	lbu	$4, 0($5)
	sll	$1, $4, 1
	seb	$5, $1
	blez	$5, $BB36_19
	addiu	$2, $zero, -1
# %bb.1:
	seb	$18, $4
	andi	$1, $5, 255
	sll	$5, $1, 2
	addiu	$7, $zero, 0
	addiu	$6, $zero, 0
$BB36_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $7
	lw	$1, 0($1)
	addiu	$7, $7, 4
	bne	$5, $7, $BB36_2
	or	$6, $1, $6
# %bb.3:
	beqz	$6, $BB36_19
	nop
# %bb.4:
	addiu	$6, $16, 4
	move	$5, $4
	addiu	$2, $zero, -2
$BB36_5:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $5, -1
	seb	$7, $1
	bltz	$7, $BB36_19
	nop
# %bb.6:                                #   in Loop: Header=BB36_5 Depth=1
	andi	$1, $7, 255
	sll	$1, $1, 2
	addu	$7, $6, $1
	lw	$7, 0($7)
	addu	$1, $17, $1
	lw	$8, 0($1)
	sltu	$1, $8, $7
	bnez	$1, $BB36_9
	nop
# %bb.7:                                #   in Loop: Header=BB36_5 Depth=1
	sltu	$1, $7, $8
	beqz	$1, $BB36_5
	addiu	$5, $5, -1
# %bb.8:
	b	$BB36_19
	nop
$BB36_9:
	sll	$1, $18, 2
	addu	$5, $17, $1
$BB36_10:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $4, -1
	seb	$7, $1
	bltz	$7, $BB36_19
	nop
# %bb.11:                               #   in Loop: Header=BB36_10 Depth=1
	andi	$1, $7, 255
	sll	$1, $1, 2
	addu	$7, $6, $1
	lw	$7, 0($7)
	addu	$1, $5, $1
	lw	$8, 0($1)
	sltu	$1, $8, $7
	bnez	$1, $BB36_14
	nop
# %bb.12:                               #   in Loop: Header=BB36_10 Depth=1
	sltu	$1, $7, $8
	beqz	$1, $BB36_10
	addiu	$4, $4, -1
# %bb.13:
	b	$BB36_19
	nop
$BB36_14:
	lw	$1, %got(uECC_vli_mult)($3)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 48
	move	$4, $20
	move	$6, $5
	.reloc ($tmp100), R_MIPS_JALR, uECC_vli_mult
$tmp100:
	jalr	$25
	move	$7, $18
	lw	$25, 172($16)
	addiu	$19, $sp, 16
	move	$4, $19
	jalr	$25
	move	$5, $20
	addiu	$20, $sp, 48
	lw	$25, 168($16)
	move	$4, $20
	move	$5, $17
	jalr	$25
	move	$6, $16
	addiu	$1, $18, -1
	seb	$2, $1
	bltz	$2, $BB36_18
	nop
# %bb.15:
	andi	$1, $2, 255
	sll	$2, $1, 2
	addiu	$3, $zero, 0
	addiu	$4, $zero, -4
$BB36_16:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $2
	lw	$1, 0($1)
	addu	$5, $20, $2
	lw	$5, 0($5)
	xor	$1, $5, $1
	addiu	$2, $2, -4
	bne	$2, $4, $BB36_16
	or	$3, $1, $3
# %bb.17:
	bnez	$3, $BB36_19
	addiu	$2, $zero, -3
$BB36_18:
	addiu	$2, $zero, 0
$BB36_19:
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$ra, 132($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 136
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_point
$func_end36:
	.size	uECC_valid_point, ($func_end36)-uECC_valid_point
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_public_key
uECC_valid_public_key:                  # @uECC_valid_public_key
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
	move	$17, $5
	move	$19, $4
	lb	$20, 1($5)
	addiu	$18, $sp, 16
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	move	$4, $18
	move	$5, $19
	move	$6, $20
	.reloc ($tmp101), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp101:
	jalr	$25
	move	$gp, $16
	addu	$5, $19, $20
	lb	$1, 0($17)
	sll	$1, $1, 2
	addu	$4, $18, $1
	lw	$25, %call16(uECC_vli_bytesToNative)($16)
	.reloc ($tmp102), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp102:
	jalr	$25
	move	$6, $20
	addiu	$2, $17, 68
	addiu	$3, $zero, 16
$BB37_1:                                # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, -1
	seb	$4, $3
	bltz	$4, $BB37_4
	nop
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $2, $1
	lw	$4, 0($4)
	addu	$1, $18, $1
	lw	$1, 0($1)
	beq	$1, $4, $BB37_1
	nop
# %bb.3:
	addiu	$4, $sp, 16
	lw	$25, %call16(uECC_valid_point)($16)
	move	$5, $17
	.reloc ($tmp103), R_MIPS_JALR, uECC_valid_point
$tmp103:
	jalr	$25
	move	$gp, $16
	b	$BB37_5
	nop
$BB37_4:
	addiu	$2, $zero, -4
$BB37_5:
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
	.end	uECC_valid_public_key
$func_end37:
	.size	uECC_valid_public_key, ($func_end37)-uECC_valid_public_key
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_compute_public_key
uECC_compute_public_key:                # @uECC_compute_public_key
	.frame	$sp,136,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -136
	sw	$ra, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	addu	$19, $2, $25
	move	$18, $6
	move	$17, $5
	move	$5, $4
	lh	$20, 2($6)
	addiu	$1, $20, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$6, $1, 3
	addiu	$16, $sp, 80
	lw	$25, %call16(uECC_vli_bytesToNative)($19)
	move	$4, $16
	.reloc ($tmp104), R_MIPS_JALR, uECC_vli_bytesToNative
$tmp104:
	jalr	$25
	move	$gp, $19
	addiu	$1, $20, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$2, $1, 5
	seb	$6, $2
	blez	$6, $BB38_13
	nop
# %bb.1:
	andi	$1, $2, 255
	sll	$2, $1, 2
	addiu	$4, $zero, 0
	addiu	$3, $zero, 0
$BB38_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $16, $4
	lw	$1, 0($1)
	addiu	$4, $4, 4
	bne	$2, $4, $BB38_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB38_14
	addiu	$16, $zero, 0
# %bb.4:
	addiu	$4, $18, 36
	addiu	$5, $sp, 80
	lw	$25, %call16(uECC_vli_cmp)($19)
	.reloc ($tmp105), R_MIPS_JALR, uECC_vli_cmp
$tmp105:
	jalr	$25
	move	$gp, $19
	addiu	$1, $zero, 1
	bne	$2, $1, $BB38_14
	nop
# %bb.5:
	addiu	$20, $sp, 16
	addiu	$5, $sp, 80
	lw	$25, %call16(EccPoint_compute_public_key)($19)
	move	$4, $20
	move	$6, $18
	.reloc ($tmp106), R_MIPS_JALR, EccPoint_compute_public_key
$tmp106:
	jalr	$25
	move	$gp, $19
	beqz	$2, $BB38_14
	nop
# %bb.6:
	lb	$4, 1($18)
	blez	$4, $BB38_14
	addiu	$16, $zero, 1
# %bb.7:
	andi	$2, $4, 255
	addiu	$3, $4, -1
	sll	$1, $4, 3
	addiu	$4, $1, -8
	addiu	$5, $zero, -4
	move	$6, $17
$BB38_8:                                # =>This Inner Loop Header: Depth=1
	and	$1, $3, $5
	addu	$1, $20, $1
	lw	$1, 0($1)
	andi	$7, $4, 24
	srlv	$1, $1, $7
	sb	$1, 0($6)
	addiu	$2, $2, -1
	addiu	$6, $6, 1
	addiu	$3, $3, -1
	bnez	$2, $BB38_8
	addiu	$4, $4, -8
# %bb.9:
	lb	$6, 1($18)
	blez	$6, $BB38_14
	nop
# %bb.10:
	lb	$1, 0($18)
	addu	$2, $17, $6
	sll	$1, $1, 2
	addu	$3, $20, $1
	andi	$4, $6, 255
	addiu	$5, $6, -1
	sll	$1, $6, 3
	addiu	$6, $1, -8
	addiu	$7, $zero, -4
$BB38_11:                               # =>This Inner Loop Header: Depth=1
	and	$1, $5, $7
	addu	$1, $3, $1
	lw	$1, 0($1)
	andi	$8, $6, 24
	srlv	$1, $1, $8
	sb	$1, 0($2)
	addiu	$4, $4, -1
	addiu	$2, $2, 1
	addiu	$5, $5, -1
	bnez	$4, $BB38_11
	addiu	$6, $6, -8
# %bb.12:
	b	$BB38_14
	nop
$BB38_13:
	addiu	$16, $zero, 0
$BB38_14:
	move	$2, $16
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$ra, 132($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 136
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
$func_end38:
	.size	uECC_compute_public_key, ($func_end38)-uECC_compute_public_key
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
