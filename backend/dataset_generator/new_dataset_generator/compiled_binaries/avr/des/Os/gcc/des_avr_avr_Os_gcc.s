	.file	"des_avr.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_encrypt_avr
	.type	des_encrypt_avr, @function
des_encrypt_avr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	movw r30,r20
	movw r20,r24
	subi r20,-8
	sbci r21,-1
.L3:
	ld r24,X+
	st Z,r24
	ldi r19,0
	ldi r18,0
.L2:
	movw r28,r18
	andi r28,7
	clr r29
	add r28,r22
	adc r29,r23
	ld r25,Y
	ld r24,Z
	eor r25,r24
	lsl r25
	adc r25,__zero_reg__
	st Z,r25
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L2
	adiw r30,1
	cp r20,r26
	cpc r21,r27
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	des_encrypt_avr, .-des_encrypt_avr
.global	des_decrypt_avr
	.type	des_decrypt_avr, @function
des_decrypt_avr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r20
	movw r28,r24
	adiw r28,8
.L8:
	movw r26,r24
	ld r18,X+
	movw r24,r26
	st Z,r18
	ldi r18,lo8(15)
	ldi r19,0
.L7:
	ld r20,Z
	bst r20,0
	ror r20
	bld r20,7
	st Z,r20
	movw r26,r18
	andi r26,7
	clr r27
	add r26,r22
	adc r27,r23
	ld r21,X
	eor r20,r21
	st Z,r20
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L7
	adiw r30,1
	cp r28,r24
	cpc r29,r25
	brne .L8
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	des_decrypt_avr, .-des_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"
