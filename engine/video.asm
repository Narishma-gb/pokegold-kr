_UpdateBGMap::
; Update the BG Map, in thirds, from wTilemap and wAttrmap.
	ldh a, [hBGMapMode]
	and a
	ret z

	ld b, a
	ldh a, [hCGB]
	and a
	jr z, .normal_speed

	ldh a, [rSPD]
	bit B_SPD_DOUBLE, a
	jr nz, .double_speed

.normal_speed
	dec b
	jr z, .Tiles
	jr .Attr

.double_speed
	ldh a, [hVBlank]
	cp $01
	jr z, .asm_1fc2ff
	dec b
	jr z, .asm_1fc2f4
	ld c, $F8
	jp .asm_1fc3a1

.asm_1fc2f4:
	ld hl, wTilemap
	call Function1fc4d5
	ld c, $07
	jp .asm_1fc3a1

.asm_1fc2ff:
	dec b
	jr z, .asm_1fc307
	ld c, $F8
	jp .asm_1fc3b0

.asm_1fc307:
	ld hl, wTilemap
	call Function1fc52a
	ld c, $07
	jp .asm_1fc3b0

.Attr:
	ld a, 1
	ldh [rVBK], a

	hlcoord 0, 0, wAttrmap
	call .update

	ld a, 0
	ldh [rVBK], a
	ret

.Tiles:
	hlcoord 0, 0

.update:
	ld [hSPBuffer], sp

; Which third?
	ldh a, [hBGMapThird]
	and a ; 0
	jr z, .top
	dec a ; 1
	jr z, .middle
	; 2

DEF THIRD_HEIGHT EQU SCREEN_HEIGHT / 3

; bottom
	ld de, 2 * THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

	ld de, 2 * THIRD_HEIGHT * TILEMAP_WIDTH
	add hl, de

; Next time: top third
	xor a
	jr .start

.middle
	ld de, THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

	ld de, THIRD_HEIGHT * TILEMAP_WIDTH
	add hl, de

; Next time: bottom third
	ld a, 2
	jr .start

.top
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

; Next time: middle third
	ld a, 1

.start
; Which third to update next time
	ldh [hBGMapThird], a

; Rows of tiles in a third
	ld a, THIRD_HEIGHT

; Discrepancy between wTilemap and BGMap
	ld bc, TILEMAP_WIDTH - (SCREEN_WIDTH - 1)

.row
; Copy a row of 20 tiles
rept SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	add hl, bc
	dec a
	jr nz, .row

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

.asm_1fc3a1:
	ld a, $01
	ldh [rVBK], a
	ld hl, wAttrmap
	call Function1fc3bf
	ld a, $00
	ldh [rVBK], a
	ret

.asm_1fc3b0:
	ld a, $01
	ldh [rVBK], a
	ld hl, wAttrmap
	call Function1fc41a
	ld a, $00
	ldh [rVBK], a
	ret

Function1fc3bf:
	ld [hSPBuffer], sp
	ldh a, [hBGMapThird]
	and a
	jr z, .asm_1fc40b
	dec a
	jr z, .asm_1fc3f6
	dec a
	jr z, .asm_1fc3e1
	ld de, $0104
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $01A0
	add hl, de
	ld b, $05
	xor a
	jr .asm_1fc416

.asm_1fc3e1:
	ld de, $00A0
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $0100
	add hl, de
	ld b, $05
	ld a, $03
	jr .asm_1fc416

.asm_1fc3f6:
	ld de, $0050
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $80
	add hl, de
	ld b, $04
	ld a, $02
	jr .asm_1fc416

.asm_1fc40b:
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld b, $04
	ld a, $01
.asm_1fc416:
	ldh [hBGMapThird], a
	jr Function1fc457

Function1fc41a:
	ld [hSPBuffer], sp
	ldh a, [hBGMapThird]
	and a
	jr z, .asm_1fc44a
	dec a
	jr z, .asm_1fc437
	ld de, $00F0
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $0180
	add hl, de
	xor a
	jr .asm_1fc453

.asm_1fc437:
	ld de, $0078
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $c0
	add hl, de
	ld a, $02
	jr .asm_1fc453

.asm_1fc44a:
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld a, $01
.asm_1fc453:
	ldh [hBGMapThird], a
	ld b, $06
Function1fc457:
rept 10
	pop de
	ld a, [hl]
	xor e
	and c
	xor e
	ld [hli], a
	ld a, [hl]
	xor d
	and c
	xor d
	ld [hli], a
endr

	ld de, $0c
	add hl, de
	dec b
	jp nz, Function1fc457
	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Function1fc4d5:
	ld [hSPBuffer], sp
	ldh a, [hBGMapThird]
	and a
	jr z, .asm_1fc51c
	dec a
	jr z, .asm_1fc509
	dec a
	jr z, .asm_1fc4f6
	ld de, $0104
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $01A0
	add hl, de
	ld a, $05
	jr .asm_1fc525

.asm_1fc4f6:
	ld de, $00A0
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $0100
	add hl, de
	ld a, $05
	jr .asm_1fc525

.asm_1fc509:
	ld de, $0050
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $0080
	add hl, de
	ld a, $04
	jr .asm_1fc525

.asm_1fc51c:
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld a, $04
.asm_1fc525:
	ld bc, $000D
	jr Function1fc563

Function1fc52a:
	ld [hSPBuffer], sp
	ldh a, [hBGMapThird]
	and a
	jr z, .asm_1fc557
	dec a
	jr z, .asm_1fc546
	ld de, $00F0
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $0180
	add hl, de
	jr .asm_1fc55e

.asm_1fc546:
	ld de, $0078
	add hl, de
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
	ld de, $00C0
	add hl, de
	jr .asm_1fc55e

.asm_1fc557:
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a
.asm_1fc55e:
	ld a, $06
	ld bc, $000D
Function1fc563:
rept 9
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr

	pop de
	ld [hl], e
	inc l
	ld [hl], d

	add hl, bc
	dec a
	jr nz, Function1fc563

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret
