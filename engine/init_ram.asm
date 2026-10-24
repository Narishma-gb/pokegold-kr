ClearHRAM::
	ldh a, [hCGB]
	ld b, a
	ldh a, [hAGB]
	ld c, a
	push bc
	xor a
	ld hl, STARTOF(HRAM)
	ld bc, SIZEOF(HRAM)
	call ByteFill
	pop bc
	ld a, b
	ldh [hCGB], a
	ld a, c
	ldh [hAGB], a
	ret

BlankAllBGMaps::
	ld hl, vTilemap0
	call .BlankBGMap
	ld hl, vTilemap1
	call .BlankBGMap
	ret

.BlankBGMap:
	ld a, ' '
	ld de, vTilemap1 - vTilemap0
.loop
	ld [hli], a
	dec e
	jr nz, .loop
	dec d
	jr nz, .loop
	ret
