	.file	"rc4_prga.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r25
	std Y+2,r24
	std Y+5,r23
	std Y+4,r22
	std Y+7,r21
	std Y+6,r20
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	adiw r24,1
	andi r25,128
	tst r25
	brge .L2
	sbiw r24,1
	ori r25,255
	adiw r24,1
.L2:
	mov r18,r24
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	st Z,r18
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	ld r20,Z
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r18,r20
	add r18,r24
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	st Z,r18
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+1,r24
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r18,r24
	adc r19,r25
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r20,Y+2
	ldd r21,Y+3
	add r24,r20
	adc r25,r21
	movw r30,r18
	ld r18,Z
	movw r30,r24
	st Z,r18
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	add r24,r20
	mov r24,r24
	ldi r25,0
	ldd r18,Y+2
	ldd r19,Y+3
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (GNU) 7.3.0"
