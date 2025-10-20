	.arch armv8-a
	.file	"des_key_schedule.c"
	.text
	.align	2
	.global	des_key_schedule
	.type	des_key_schedule, %function
des_key_schedule:
.LFB0:
	.cfi_startproc
	mov	x3, 0
.L2:
	lsl	w2, w3, 2
	lsr	x2, x0, x2
	and	x2, x2, 281474976710655
	str	x2, [x1, x3, lsl 3]
	add	x3, x3, 1
	cmp	x3, 16
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
