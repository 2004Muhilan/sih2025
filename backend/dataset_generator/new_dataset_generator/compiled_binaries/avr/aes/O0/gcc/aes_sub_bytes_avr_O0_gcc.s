	.file	"aes_sub_bytes.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.zero	240
	.text
.global	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	subi r18,lo8(-(sbox))
	sbci r19,hi8(-(sbox))
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brlt .L3
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	aes_sub_bytes, .-aes_sub_bytes
.global	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L5
.L6:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	subi r18,lo8(-(inv_sbox.1501))
	sbci r19,hi8(-(inv_sbox.1501))
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L5:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brlt .L6
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.type	inv_sbox.1501, @object
	.size	inv_sbox.1501, 256
inv_sbox.1501:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.zero	248
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
