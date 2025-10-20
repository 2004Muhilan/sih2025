	.arch armv8-a
	.file	"des_key_schedule.c"
	.text
	.align	2
	.global	des_key_schedule
	.type	des_key_schedule, %function
des_key_schedule:
.LFB0:
	.cfi_startproc
	mov	x2, 0
.L2:
	lsl	w3, w2, 2
	lsr	x3, x0, x3
	and	x3, x3, 281474976710655
	str	x3, [x1, x2, lsl 3]
	add	x2, x2, 1
	cmp	x2, 16
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
