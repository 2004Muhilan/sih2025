	.file	"md5_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	md5_padding
	.type	md5_padding, @function
md5_padding:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+12,r25
	std Y+11,r24
	std Y+14,r23
	std Y+13,r22
	std Y+16,r21
	std Y+15,r20
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r24,Y+15
	ldd r25,Y+16
	movw r22,r18
	call memcpy
	ldd r18,Y+15
	ldd r19,Y+16
	ldd r24,Y+13
	ldd r25,Y+14
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-128)
	movw r30,r24
	st Z,r18
	ldi r18,lo8(55)
	ldi r19,0
	ldd r24,Y+13
	ldd r25,Y+14
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	movw r24,r20
	andi r24,63
	clr r25
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+13
	ldd r25,Y+14
	adiw r24,1
	ldd r18,Y+15
	ldd r19,Y+16
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	movw r20,r18
	ldi r22,0
	ldi r23,0
	call memset
	ldd r24,Y+13
	ldd r25,Y+14
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r18,r24
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	movw r24,r22
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	adiw r24,1
	ldd r18,Y+15
	ldd r19,Y+16
	movw r30,r18
	add r30,r24
	adc r31,r25
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,r24
	std Z+7,r25
	nop
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (GNU) 7.3.0"
