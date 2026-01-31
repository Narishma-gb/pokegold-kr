Function2e73::
	push hl
	push hl
	push af
	push bc
	push hl
	ld hl, sp + 14
	ldh a, [hROMBank]
	ld b, a
	ld a, [hl]
	rst Bankswitch
	ld [hl], b
	dec hl
	ld b, [hl]
	dec hl
	ld c, [hl]
	dec hl
	dec hl
	dec hl
	ld [hl], HIGH(Function2e94)
	dec hl
	ld [hl], LOW(Function2e94)
	dec hl
	ld [hl], b
	dec hl
	ld [hl], c
	pop hl
	pop bc
	pop af
	ret

Function2e94::
	push af
	push hl
	ld hl, sp + 8
	ld a, [hl]
	rst Bankswitch
	pop hl
	pop af
	ret

DummyEndPredef::
; Unused function at the end of PredefPointers.
rept 16
	nop
endr
	ret

FarCall_hl::
; Call a:hl.
; Preserves other registers.
	ld [wTempBank], a
	ldh a, [hROMBank]
	push af
	ld a, [wTempBank]
	rst Bankswitch
	call FarCall_JumpToHL

; We want to retain the contents of f.
; To do this, we can pop to bc instead of af.
	ld a, b
	ld [wFarCallBC], a
	ld a, c
	ld [wFarCallBC + 1], a

; Restore the working bank.
	pop bc
	ld a, b
	rst Bankswitch

; Restore the contents of bc.
	ld a, [wFarCallBC]
	ld b, a
	ld a, [wFarCallBC + 1]
	ld c, a
	ret

FarCall_JumpToHL::
	jp hl
