SECTION "bank71", ROMX

Function1c5c00:
	call Function1c5ead
	dec hl
	ldd a, [hl]
	ld b, [hl]
	ld c, a
	cp $FF
	jr nz, .asm_1c5c12
	ld a, b
	cp $0B
	jr nz, .asm_1c5c12
	scf
	ret

.asm_1c5c12
	sla c
	rl b
	ld hl, Data1c4000
	add hl, bc
	ldi a, [hl]
	ld b, [hl]
	ld c, a
	and b
	cp $FF
	jr nz, .asm_1c5c24
	and a
	ret

.asm_1c5c24
	ld a, b
	and $7C
	ret z
	cp $04
	ret z
	cp $10
	ret z
	cp $20
	ret z
	cp $44
	ret z
	scf
	ret

Function1c5c36::
	ld a, [wNamingScreenLastCharacter]
	cp $7F
	jr nz, .asm_1c5c41
	ld bc, $0BFF
	ret

.asm_1c5c41:
	cp $E6
	jr nz, .asm_1c5c49
	ld bc, $0B67
	ret

.asm_1c5c49:
	cp $E7
	jr nz, .asm_1c5c51
	ld bc, $0B66
	ret

.asm_1c5c51:
	cp $F6
	jr c, .asm_1c5c5b
	sub $06
	ld c, a
	ld b, $0B
	ret

.asm_1c5c5b:
	ld a, [wNamingScreenCurNameLength]
	and a
	jr nz, .asm_1c5c6a
	ld a, [wNamingScreenLastCharacter]
	sub $A0
	ld c, a
	ld b, $0B
	ret

.asm_1c5c6a:
	add sp, -6
	ld hl, .asm_1c5c72
	push hl
	jr .asm_1c5c75

.asm_1c5c72:
	add sp, 6
	ret

.asm_1c5c75:
	ld a, [wNamingScreenLastCharacter]
	sub $A0
	ld c, a
	ld b, $0B
	ld hl, sp+2
	ldi [hl], a
	ld [hl], b
	sla c
	rl b
	ld hl, $4000
	add hl, bc
	ldi a, [hl]
	ld b, [hl]
	ld hl, sp+4
	ldi [hl], a
	ld [hl], b
	ld a, [wNamingScreenLastCharacter]
	cp $C0
	rl a
	and $01
	ld hl, sp+6
	ld [hl], a
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	call Function1c5ead
	ldi a, [hl]
	ld c, [hl]
	ld b, a
	sla c
	rl b
	ld hl, Data1c4000
	add hl, bc
	ldi a, [hl]
	ld b, [hl]
	ld c, a
	and b
	cp $FF
	jr nz, .asm_1c5cc1
.asm_1c5cb6:
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ld hl, sp+2
	ldi a, [hl]
	ld b, [hl]
	ld c, a
	ret

.asm_1c5cc1:
	ld a, b
	and $7F
	jr nz, .asm_1c5cde
	ld a, c
	and $E0
	jr nz, .asm_1c5cde
	ld hl, sp+6
	bit 0, [hl]
	jr z, .asm_1c5cd3
	jr .asm_1c5cb6

.asm_1c5cd3:
	ld hl, sp+4
	ldi a, [hl]
	or c
	ld c, a
	ld a, [hl]
	or b
	ld b, a
	jp .asm_1c5e21

.asm_1c5cde:
	ld a, b
	and $7C
	jr nz, .asm_1c5cea
	ld a, c
	and $1F
	jr nz, .asm_1c5cea
	jr .asm_1c5cb6

.asm_1c5cea:
	ld a, b
	and $7C
	jr nz, .asm_1c5d0e
	ld hl, sp+6
	bit 0, [hl]
	jr z, .asm_1c5d0c
	ld hl, sp+2
	ld a, [hl]
	ld e, a
	ld d, $00
	sla e
	rl d
	ld hl, Data1c5e4f
	add hl, de
	ldi a, [hl]
	or c
	ld c, a
	ld a, [hl]
	or b
	ld b, a
	jp .asm_1c5e21

.asm_1c5d0c:
	jr .asm_1c5cb6

.asm_1c5d0e:
	ld hl, sp+6
	bit 0, [hl]
	jp z, .asm_1c5dc8
	ld hl, sp+4
	ld a, [hl]
	and $1F
	ld e, a
	ld a, b
	and $7C
	cp $04
	jr nz, .asm_1c5d31
	ld a, e
	cp $0A
	jp nz, .asm_1c5cb6
	ld a, b
	and $03
	or $0C
	ld b, a
	jp .asm_1c5e21

.asm_1c5d31:
	cp $10
	jr nz, .asm_1c5d51
	ld a, e
	cp $0D
	jr nz, .asm_1c5d43
	ld a, b
	and $03
	or $14
	ld b, a
	jp .asm_1c5e21

.asm_1c5d43:
	cp $13
	jp nz, .asm_1c5cb6
	ld a, b
	and $03
	or $18
	ld b, a
	jp .asm_1c5e21

.asm_1c5d51:
	cp $20
	jr nz, .asm_1c5db2
	ld a, e
	cp $01
	jr nz, .asm_1c5d63
	ld a, b
	and $03
	or $24
	ld b, a
	jp .asm_1c5e21

.asm_1c5d63:
	cp $07
	jr nz, .asm_1c5d70
	ld a, b
	and $03
	or $28
	ld b, a
	jp .asm_1c5e21

.asm_1c5d70:
	cp $08
	jr nz, .asm_1c5d7d
	ld a, b
	and $03
	or $2C
	ld b, a
	jp .asm_1c5e21

.asm_1c5d7d:
	cp $0A
	jr nz, .asm_1c5d8a
	ld a, b
	and $03
	or $30
	ld b, a
	jp .asm_1c5e21

.asm_1c5d8a:
	cp $11
	jr nz, .asm_1c5d97
	ld a, b
	and $03
	or $34
	ld b, a
	jp .asm_1c5e21

.asm_1c5d97:
	cp $12
	jr nz, .asm_1c5da4
	ld a, b
	and $03
	or $38
	ld b, a
	jp .asm_1c5e21

.asm_1c5da4:
	cp $13
	jp nz, .asm_1c5cb6
	ld a, b
	and $03
	or $3C
	ld b, a
	jp .asm_1c5e21

.asm_1c5db2:
	cp $44
	jr nz, .asm_1c5dc5
	ld a, e
	cp $0A
	jp nz, .asm_1c5cb6
	ld a, b
	and $03
	or $48
	ld b, a
	jp .asm_1c5e21

.asm_1c5dc5:
	jp .asm_1c5cb6

.asm_1c5dc8:
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ld a, [wNamingScreenMaxNameLength]
	ld e, a
	ld a, [wNamingScreenCurNameLength]
	cp e
	ret nc
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	ld a, b
	and $7C
	ld e, a
	ld d, $00
	srl e
	rr d
	srl e
	rr d
	push bc
	ld hl, Data1c5e91
	add hl, de
	ld c, [hl]
	ld hl, sp+6
	ldi a, [hl]
	and $E0
	or c
	ld c, a
	ld b, [hl]
	push de
	call Function1c5e28
	pop de
	pop hl
	jp nc, .asm_1c5cb6
	push bc
	ld c, l
	ld b, h
	ld hl, Data1c5e75
	add hl, de
	ld a, b
	and $03
	or [hl]
	ld b, a
	call Function1c5e28
	pop hl
	jp nc, .asm_1c5cb6
	push hl
	call Function1c5ead
	ld a, b
	ldi [hl], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	pop bc
	ret

.asm_1c5e21:
	call Function1c5e28
	jp nc, .asm_1c5cb6
	ret

Function1c5e28:
	ld hl, Data1c4200
	ld d, $0A
.asm_1c5e2d
	ld e, $00
.asm_1c5e2f
	ld a, [hl]
	cp c
	jr nz, .asm_1c5e45
	inc hl
	ldi a, [hl]
	cp b
	jr nz, .asm_1c5e47
	ld de, $C000
	add hl, de
	srl h
	rr l
	dec hl
	ld c, l
	ld b, h
	scf
	ret

.asm_1c5e45
	inc hl
	inc hl
.asm_1c5e47
	dec e
	jr nz, .asm_1c5e2f
	dec d
	jr nz, .asm_1c5e2d
	and a
	ret

Data1c5e4f:
db $00, $04, $00, $10, $00, $1C, $00, $20, $00, $40, $00, $44, $00, $4C, $00, $54
db $00, $58, $00, $5C, $00, $60, $00, $64, $00, $68, $00, $6C, $00, $08, $00, $7C
db $00, $7C, $00, $50, $00, $7C

Data1c5e75:
db $00, $00, $00, $04, $00, $10, $10, $00, $00, $20, $20, $20, $20, $20, $20, $20
db $00, $00, $44
ds 9, $00

Data1c5e91:
db $00, $01, $02, $0A, $03, $0D, $13, $04, $06, $01, $07, $08, $0A, $11, $12, $13
db $07, $08, $0A, $0A, $0B, $0C, $0D, $0F, $10, $11, $12, $13

Function1c5ead:
	push af
	ld hl, wNamingScreenDestinationPointer
	ldi a, [hl]
	ld h, [hl]
	ld l, a
	ld a, [wNamingScreenCurNameLength]
	ld e, a
	ld d, $00
	add hl, de
	pop af
	ret

Function1c5ebd::
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	call Function1c5ead
	ldi a, [hl]
	ld c, [hl]
	ld b, a
	sla c
	rl b
	ld hl, Data1c4000
	add hl, bc
	ldi a, [hl]
	ld b, [hl]
	ld c, a
	and b
	cp $FF
	jr nz, .asm_1c5eef
.asm_1c5ed8:
	call Function1c5ead
	ld [hl], $0B
	inc hl
	ld [hl], $3E
	inc hl
	ldi a, [hl]
	cp $0B
	ret nz
	ldd a, [hl]
	cp $3E
	ret nz
	ld [hl], $0B
	inc hl
	ld [hl], $3F
	ret

.asm_1c5eef:
	ld a, b
	and $7C
	jr z, .asm_1c5f06
	ld hl, Data1c5f93
	srl a
	srl a
	ld e, a
	ld d, $00
	add hl, de
	ld a, b
	and $03
	or [hl]
	ld b, a
	jr .asm_1c5f61

.asm_1c5f06:
	ld a, b
	and $03
	jr nz, .asm_1c5f10
	ld a, c
	and $E0
	jr z, .asm_1c5ed8
.asm_1c5f10:
	call Function1c5ead
	ld [hl], $0B
	inc hl
	ld [hl], $3E
	inc hl
	ldi a, [hl]
	cp $0B
	jr nz, .asm_1c5f28
	ldd a, [hl]
	cp $3E
	jr nz, .asm_1c5f28
	ld [hl], $0B
	inc hl
	ld [hl], $3F
.asm_1c5f28:
	ld b, $00
	ld a, c
	and $1F
	ret z
	ld c, a
	ld hl, Data1c5faf
	add hl, bc
	ld a, [hl]
	ld [wNamingScreenLastCharacter], a
	call Function1c5c36
	ld a, [wNamingScreenMaxNameLength]
	ld e, a
	ld a, [wNamingScreenCurNameLength]
	cp e
	ret nc
	call Function1c5ead
	ld a, b
	ldi [hl], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	call Function1c5ead
	ld a, [hl]
	cp $50
	jr z, .asm_1c5f5d
	ld [hl], $0B
	inc hl
	ld [hl], $3E
	and a
	ret

.asm_1c5f5d:
	call Function1c5c00
	ret

.asm_1c5f61:
	ld hl, Data1c4200
	ld d, $0B
.asm_1c5f66:
	ld e, $00
.asm_1c5f68:
	ld a, [hl]
	cp c
	jr nz, .asm_1c5f88
	inc hl
	ldi a, [hl]
	cp b
	jr nz, .asm_1c5f8a
	ld de, $C000
	add hl, de
	srl h
	rr l
	dec hl
	ld c, l
	ld b, h
	call Function1c5ead
	ld a, b
	ldi [hl], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ret

.asm_1c5f88:
	inc hl
	inc hl
.asm_1c5f8a:
	dec e
	jr nz, .asm_1c5f68
	dec d
	jr nz, .asm_1c5f66
	jp .asm_1c5ed8

Data1c5f93:
db $00, $00, $00, $04, $00, $10, $10, $00, $00, $20, $20, $20, $20, $20, $20, $20
db $00, $00, $44
ds 9, $00

Data1c5faf:
db $7F, $A0, $AE, $A1, $A2, $AF, $A3, $A4, $A5, $B0, $A6, $B1, $A7, $A8, $B2, $A9
db $AA, $AB, $AC, $AD
