	.arch armv8-a
	.file	"des_key_schedule.c"
	.text
	.align	2
	.global	des_key_schedule
	.type	des_key_schedule, %function
des_key_schedule:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	w0, [sp, 28]
	lsl	w0, w0, 2
	ldr	x1, [sp, 8]
	lsr	x1, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	and	x1, x1, 281474976710655
	str	x1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	ble	.L3
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
