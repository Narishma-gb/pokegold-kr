Function1fc5a0::
	call MenuBoxCoord2Tile
	call GetMenuBoxDims
	inc b
	inc c
.asm_1fc5a8
	push bc
	push hl
.asm_1fc5aa
	push bc
	push hl
	di
	ld a, $04
	ldh [rWBK], a
	ld a, [de]
	bit 3, a
	ld a, $01
	ldh [rWBK], a
	ei
	jr z, .asm_1fc5f7
	di
	ld a, $05
	ldh [rWBK], a
	ld a, [de]
	ld b, a
	ld a, $06
	ldh [rWBK], a
	ld a, [de]
	ld c, a
	ld a, $01
	ldh [rWBK], a
	ei
	push hl
	push de
	push bc
	call IsHangulCharDrawn
	jr nc, .got_slot
	call FindNextEmptyHangulSlot
	jr nc, .got_slot
	call TrimUnusedHangulChars
	call FindNextEmptyHangulSlot

.got_slot
	pop bc
	push af
	call DrawHangulChar
	pop bc
	pop de
	pop hl
	di
	ld a, $03
	ldh [rWBK], a
	ld a, [de]
	and $01
	or b
	ld [de], a
	ld a, $01
	ldh [rWBK], a
	ei
.asm_1fc5f7
	di
	ld a, $03
	ldh [rWBK], a
	ld a, [de]
	ld [hl], a
	ld a, $04
	ldh [rWBK], a
	ld bc, $0940
	add hl, bc
	ld a, [de]
	ld [hl], a
	ld a, $01
	ldh [rWBK], a
	ei
	pop hl
	pop bc
	inc hl
	dec de
	dec c
	jr nz, .asm_1fc5aa
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_1fc5a8
	ret

_ClearWindowData::
	ld hl, wMenuMetadata
	call .ClearMenuData
	ld hl, wMenuHeader
	call .ClearMenuData
	ld hl, wMenuData
	call .ClearMenuData
	ld hl, wMoreMenuData
	call .ClearMenuData

	di
	ld a, BANK("WRAM Window Stack")
	ldh [rWBK], a
	xor a
	ld hl, wWindowStackTop
	ld [hld], a
	ld [hld], a
	ld a, l
	ld [wWindowStackPointer], a
	ld a, h
	ld [wWindowStackPointer + 1], a
	ld a, $01
	ldh [rWBK], a
	ei
	ret

.ClearMenuData:
	ld bc, wMenuMetadataEnd - wMenuMetadata
	assert wMenuMetadataEnd - wMenuMetadata == wMenuHeaderEnd - wMenuHeader
	assert wMenuMetadataEnd - wMenuMetadata == wMenuDataEnd - wMenuData
	assert wMenuMetadataEnd - wMenuMetadata == wMoreMenuDataEnd - wMoreMenuData
	xor a
	call ByteFill
	ret
