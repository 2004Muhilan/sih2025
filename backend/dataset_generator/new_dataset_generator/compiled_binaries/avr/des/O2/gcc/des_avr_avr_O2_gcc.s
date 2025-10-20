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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r26,r20
	movw r16,r24
	subi r16,-8
	sbci r17,-1
.L3:
	ld r25,Y+
	st X,r25
	ldi r19,0
	ldi r18,0
.L2:
	movw r30,r18
	andi r30,7
	clr r31
	add r30,r22
	adc r31,r23
	ld r20,Z
	eor r25,r20
	lsl r25
	adc r25,__zero_reg__
	st X,r25
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L2
	adiw r26,1
	cp r16,r28
	cpc r17,r29
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	des_encrypt_avr, .-des_encrypt_avr
.global	des_decrypt_avr
	.type	des_decrypt_avr, @function
des_decrypt_avr:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r26,r20
	movw r16,r24
	subi r16,-8
	sbci r17,-1
.L9:
	ld r25,Y+
	ldi r18,lo8(15)
	ldi r19,0
.L8:
	bst r25,0
	ror r25
	bld r25,7
	st X,r25
	movw r30,r18
	andi r30,7
	clr r31
	add r30,r22
	adc r31,r23
	ld r20,Z
	eor r25,r20
	st X,r25
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L8
	adiw r26,1
	cp r16,r28
	cpc r17,r29
	brne .L9
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	des_decrypt_avr, .-des_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"
