	.file	"tinycrypt_hmac_prng.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	update, @function
update:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s7,24(sp)
	.cfi_offset 23, -72
	la	s7,__stack_chk_guard
	sd	s2,64(sp)
	ld	a5, 0(s7)
	sd	a5, 8(sp)
	li	a5, 0
	.cfi_offset 18, -32
	addi	s2,a0,240
	li	a5,1
	sd	s5,40(sp)
	sd	s6,32(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s5,a1
	mv	s6,a2
	mv	a1,s2
	li	a2,32
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	sd	s3,56(sp)
	sd	s4,48(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a3
	mv	s4,a4
	sb	a5,7(sp)
	sb	zero,6(sp)
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	addi	s1,s0,272
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_update@plt
	li	a2,1
	addi	a1,sp,6
	mv	a0,s0
	call	tc_hmac_update@plt
	beq	s5,zero,.L2
	beq	s6,zero,.L2
	mv	a2,s6
	mv	a1,s5
	mv	a0,s0
	call	tc_hmac_update@plt
.L2:
	beq	s3,zero,.L3
	beq	s4,zero,.L3
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	tc_hmac_update@plt
.L3:
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	beq	s5,zero,.L1
	beq	s6,zero,.L1
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_update@plt
	li	a2,1
	addi	a1,sp,7
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s6
	mv	a1,s5
	mv	a0,s0
	call	tc_hmac_update@plt
	beq	s3,zero,.L5
	beq	s4,zero,.L5
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	tc_hmac_update@plt
.L5:
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
.L1:
	ld	a4, 8(sp)
	ld	a5, 0(s7)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	ld	s4,48(sp)
	.cfi_restore 20
	ld	s5,40(sp)
	.cfi_restore 21
	ld	s6,32(sp)
	.cfi_restore 22
	ld	s7,24(sp)
	.cfi_restore 23
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.align	1
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	beq	a0,zero,.L34
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	mv	s0,a0
	mv	s1,a1
	li	a0,0
	beq	a1,zero,.L33
	mv	s2,a2
	li	a1,0
	li	a2,32
	addi	a0,s0,240
	call	_set@plt
	li	a2,32
	li	a1,1
	addi	a0,s0,272
	call	_set@plt
	mv	a0,s0
	li	a4,0
	li	a3,0
	mv	a2,s2
	mv	a1,s1
	call	update
	li	a0,1
	sw	zero,304(s0)
.L33:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L34:
	li	a0,0
	ret
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB17:
	.cfi_startproc
	beq	a0,zero,.L44
	li	a5,0
	beq	a1,zero,.L50
	li	t3,31
	bleu	a2,t3,.L50
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	beq	a3,zero,.L42
	beq	a4,zero,.L41
.L53:
	call	update
	li	a5,-1
	sw	a5,304(s0)
	li	a5,1
.L41:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L42:
	.cfi_restore_state
	li	a4,0
	j	.L53
.L44:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	li	a5,0
.L50:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	beq	a0,zero,.L59
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s2,a0
	mv	s0,a2
	li	a0,0
	beq	a2,zero,.L55
	addiw	a5,a1,-1
	li	a4,524288
	mv	s1,a1
	bgeu	a5,a4,.L55
	lw	a5,304(a2)
	li	a0,-1
	beq	a5,zero,.L55
	addiw	a5,a5,-1
	sw	a5,304(a2)
	addi	s5,a2,240
	addi	s4,a2,272
.L58:
	li	a2,32
	mv	a1,s5
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s4
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s4
	call	tc_hmac_final@plt
	li	a5,32
	mv	s3,s1
	bleu	s1,a5,.L56
	li	s3,32
.L56:
	sext.w	a3,s3
	mv	a0,s2
	mv	a2,s4
	mv	a1,a3
	call	_copy@plt
	slli	s3,s3,32
	srli	s3,s3,32
	li	a4,32
	add	s2,s2,s3
	mv	a5,s1
	bgeu	s1,a4,.L57
	li	a5,32
.L57:
	addiw	s1,a5,-32
	bne	s1,zero,.L58
	mv	a0,s0
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	call	update
	li	a0,1
.L55:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L59:
	li	a0,0
	ret
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
