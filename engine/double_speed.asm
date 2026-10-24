DoubleSpeed:
	ldh a, [hCGB]
	and a
	ret z
	ld hl, rSPD
	bit B_SPD_DOUBLE, [hl]
	ret nz
	set B_SPD_PREPARE, [hl]
	ldh a, [rIE]
	push af
	xor a
	ldh [rIF], a
	ldh [rIE], a
	ld a, JOYP_GET_NONE
	ldh [rJOYP], a
	stop ; rgbasm adds a nop after this instruction by default
	ld a, $10
	call Function1fc07f
	xor a
	ldh [rIF], a
	pop af
	ldh [rIE], a
	ret

NormalSpeed:
	ldh a, [hCGB]
	and a
	ret z
	ld hl, rSPD
	bit B_SPD_DOUBLE, [hl]
	ret z
	set B_SPD_PREPARE, [hl]
	ldh a, [rIE]
	push af
	xor a
	ldh [rIF], a
	ldh [rIE], a
	ld a, JOYP_GET_NONE
	ldh [rJOYP], a
	stop ; rgbasm adds a nop after this instruction by default
	ld a, $40
	call Function1fc07f
	xor a
	ldh [rIF], a
	pop af
	ldh [rIE], a
	ret

Function1fc07f:
	push af
	ld a, $cf
.loop
	nop
	dec a
	jr nz, .loop
	pop af
	nop
	nop
	dec a
	jr nz, Function1fc07f
	ret
