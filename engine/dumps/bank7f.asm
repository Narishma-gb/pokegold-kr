SECTION "bank7F", ROMX

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
	ld hl, vBGMap0
	call .BlankBGMap
	ld hl, vBGMap1
	call .BlankBGMap
	ret

.BlankBGMap:
	ld a, ' '
	ld de, vBGMap1 - vBGMap0
.loop
	ld [hli], a
	dec e
	jr nz, .loop
	dec d
	jr nz, .loop
	ret

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

_ClearBox::
	push hl
	push bc
	ld de, wAttrmap - wTilemap
	add hl, de
	ld de, SCREEN_WIDTH
.attr_row
	push hl
	push bc
.attr_col
	res B_BG_BANK1, [hl]
	inc hl
	dec c
	jr nz, .attr_col
	pop bc
	pop hl
	add hl, de
	dec b
	jr nz, .attr_row
	pop bc
	pop hl

	ld a, ' '
	ld de, SCREEN_WIDTH
.row
	push hl
	push bc
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop bc
	pop hl
	add hl, de
	dec b
	jr nz, .row
	ret

_Textbox::
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a
	push bc
	push hl
	call .TextboxBorder
	pop hl
	pop bc
	call _TextboxPalette
	pop af
	ldh [hBGMapMode], a
	ret

.TextboxBorder:
	; Top
	push hl
	ld a, '┌'
	ld [hli], a
	inc a ; '─'
	call .PlaceChars
	inc a ; '┐'
	ld [hl], a
	pop hl

	; Middle
	ld de, SCREEN_WIDTH
	add hl, de
.row
	push hl
	ld a, '│'
	ld [hli], a
	ld a, ' '
	call .PlaceChars
	ld [hl], '│'
	pop hl

	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .row

	; Bottom
	ld a, '└'
	ld [hli], a
	ld a, '─'
	call .PlaceChars
	ld [hl], '┘'
	ret

.PlaceChars:
; Place char a c times.
	ld d, c
.loop
	ld [hli], a
	dec d
	jr nz, .loop
	ret

_TextboxPalette::
	ld de, wAttrmap - wTilemap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	ld a, PAL_BG_TEXT
.col
	push bc
	push hl
.row
	ld [hli], a
	dec c
	jr nz, .row
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop bc
	dec b
	jr nz, .col
	ret

Function1fc119::
	push de
	push hl
	push bc
	call Function14ef
	jr nc, .asm_1fc12c
	call Function14d8
	jr nc, .asm_1fc12c
	call Function14c1
	call Function14d8
.asm_1fc12c
	pop bc
	push af
	call Function1506
	pop af
	pop hl
	pop de
	di
	ld bc, $0940
	add hl, bc
	set 3, [hl]
	ld bc, $FFEC
	add hl, bc
	set 3, [hl]
	ld bc, $F6C0
	add hl, bc
	ld [hl], a
	inc a
	ld bc, $0014
	add hl, bc
	ld [hli], a
	ei
	ret

_TextScroll::
	hlcoord TEXTBOX_X, TEXTBOX_INNERY
	decoord TEXTBOX_X, TEXTBOX_INNERY - 1
	ld bc, 3 * SCREEN_WIDTH
	call CopyBytes
	hlcoord TEXTBOX_INNERX, TEXTBOX_INNERY + 2
	ld a, '　'
	ld bc, TEXTBOX_INNERW
	call ByteFill

	hlcoord TEXTBOX_X, TEXTBOX_INNERY, wAttrmap
	decoord TEXTBOX_X, TEXTBOX_INNERY - 1, wAttrmap
	ld bc, 3 * SCREEN_WIDTH
	call CopyBytes
	hlcoord TEXTBOX_INNERX, TEXTBOX_INNERY + 2, wAttrmap
	ld bc, TEXTBOX_INNERW
	call Function14a8

	ld c, 5
	call DelayFrames
	ret

Function1fc180::
	ldh a, [rLCDC]
	bit 7, a
	jr z, .asm_1fc18c
.asm_1fc186
	ldh a, [rLY]
	cp $7D
	jr nc, .asm_1fc186
.asm_1fc18c
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wd000
.asm_1fc194
	res 7, [hl]
	inc l
	inc l
	jr nz, .asm_1fc194
	ld a, $01
	ldh [rWBK], a
	ei
	ld de, wTilemap
	ld hl, wAttrmap
	ld bc, $0269
	jr .asm_1fc1c4

.asm_1fc1aa
	ld a, [hli]
	bit 3, a
	jr z, .asm_1fc1c3
	push hl
	di
	ld a, $02
	ldh [rWBK], a
	ld a, [de]
	and $FE
	ld l, a
	ld h, $D0
	set 7, [hl]
	ld a, $01
	ldh [rWBK], a
	ei
	pop hl
.asm_1fc1c3
	inc de
.asm_1fc1c4
	dec c
	jr nz, .asm_1fc1aa
	dec b
	jr nz, .asm_1fc1aa
	ret

Function1fc1cb::
	ldh a, [rLCDC]
	bit 7, a
	jr z, .asm_1fc1d7
.asm_1fc1d1
	ldh a, [rLY]
	cp $7D
	jr nc, .asm_1fc1d1
.asm_1fc1d7
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wd000
.asm_1fc1df
	bit 7, [hl]
	jr z, .asm_1fc1ea
	inc l
	inc l
	jr nz, .asm_1fc1df
	scf
	jr .asm_1fc1eb

.asm_1fc1ea
	sub a
.asm_1fc1eb
	ld a, $01
	ldh [rWBK], a
	ei
	ld a, l
	ret

Function1fc1f2::
	ldh a, [rLCDC]
	bit 7, a
	jr z, .asm_1fc1fe
.asm_1fc1f8
	ldh a, [rLY]
	cp $7D
	jr nc, .asm_1fc1f8
.asm_1fc1fe
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wd000
.asm_1fc206
	bit 7, [hl]
	jr nz, .asm_1fc211
.asm_1fc20a
	inc l
.asm_1fc20b
	inc l
	jr nz, .asm_1fc206
	scf
	jr .asm_1fc21e

.asm_1fc211
	ld a, [hl]
	res 7, a
	cp b
	jr nz, .asm_1fc20a
	inc l
	ld a, [hl]
	cp c
	jr nz, .asm_1fc20b
	dec l
	sub a
.asm_1fc21e
	ld a, $01
	ldh [rWBK], a
	ei
	ld a, l
	ret

Function1fc225::
	and $FE
	ld l, a
	ld h, $D0
	di
	ld a, $02
	ldh [rWBK], a
	ld [hl], b
	set 7, [hl]
	inc l
	ld [hl], c
	ld a, $01
	ldh [rWBK], a
	ei
	dec l
	ld a, $02
	srl b
	rr c
	rr a
	srl b
	rr c
	rr a
	rr c
	rr a
	rr c
	rr a
	push bc
	ld e, a
	ld d, c
	ld a, $80
	add l
	ld b, $00
	sla a
	rl b
	sla a
	rl b
	sla a
	rl b
	sla a
	rl b
	ld c, a
	ld hl, $8800
	add hl, bc
	ld a, h
	ldh [rVDMA_DEST_HIGH], a
	ld a, l
	ldh [rVDMA_DEST_LOW], a
	ld hl, wd100
	ld a, h
	ldh [rVDMA_SRC_HIGH], a
	ld a, l
	ldh [rVDMA_SRC_LOW], a
	pop af
	add $78
	ld b, a
	call Function151f
	ldh a, [rLCDC]
	bit 7, a
	jr z, .asm_1fc2ba
	ldh a, [rLCDC]
	bit 7, a
	jr z, .asm_1fc295
.asm_1fc28f
	ldh a, [rLY]
	cp $8C
	jr nc, .asm_1fc28f
.asm_1fc295
	di
	ld a, $01
	ldh [rVBK], a
	ld a, $02
	ldh [rWBK], a
	rst Function18
	ld a, $81
	ldh [rVDMA_LEN], a
	ldh a, [rVDMA_LEN]
	and $7F
	inc a
.asm_1fc2a8
	push af
	call Function39
	pop af
	dec a
	jr nz, .asm_1fc2a8
	ld a, $01
	ldh [rWBK], a
	ld a, $00
	ldh [rVBK], a
	ei
	ret

.asm_1fc2ba:
	di
	ld a, $01
	ldh [rVBK], a
	ld a, $02
	ldh [rWBK], a
	ld a, $01
	ldh [rVDMA_LEN], a
	ld a, $01
	ldh [rWBK], a
	ld a, $00
	ldh [rVBK], a
	ei
	ret

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
	call Function14ef
	jr nc, .asm_1fc5e0
	call Function14d8
	jr nc, .asm_1fc5e0
	call Function14c1
	call Function14d8
.asm_1fc5e0
	pop bc
	push af
	call Function1506
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
	ld a, $03
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

_LoadTilemapToTempTilemap::
	hlcoord 0, 0
	decoord 0, 0, wTempTilemap
	ld bc, wTilemapEnd - wTilemap + (1 << 8) + 1
	jr .start_loop

.loop
	call .asm_1fc66e
	inc hl
	inc de
.start_loop
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

.asm_1fc66e:
	push bc
	push hl
	di
	ld a, $03
	ldh [rWBK], a
	ld a, [hl]
	ld [de], a
	ld bc, $0940
	add hl, bc
	and $FE
	ld c, a
	ld a, $04
	ldh [rWBK], a
	ld a, [hl]
	ld [de], a
	ld a, $02
	ldh [rWBK], a
	ld l, c
	ld h, $D0
	ld a, [hli]
	ld l, [hl]
	and $0F
	ld h, a
	ld a, $05
	ldh [rWBK], a
	ld a, h
	ld [de], a
	ld a, $06
	ldh [rWBK], a
	ld a, l
	ld [de], a
	ld a, $01
	ldh [rWBK], a
	ei
	pop hl
	pop bc
	ret

_LoadTempTilemapToTilemap::
	hlcoord 0, 0
	decoord 0, 0, wTempTilemap
	ld bc, wTilemapEnd - wTilemap + (1 << 8) + 1
	jr .start_loop

.loop
	call .asm_1fc6bb
	inc hl
	inc de
.start_loop
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

.asm_1fc6bb:
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
	jr z, .asm_1fc708
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
	call Function14ef
	jr nc, .asm_1fc6f1
	call Function14d8
	jr nc, .asm_1fc6f1
	call Function14c1
	call Function14d8
.asm_1fc6f1
	pop bc
	push af
	call Function1506
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
.asm_1fc708
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
	ret

_CopyTilemapAtOnce::
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a

.wait
	ldh a, [rLY]
	cp $80 - 1
	jr c, .wait

	di
	ld a, BANK(vBGMap2)
	ldh [rVBK], a
	hlcoord 0, 0, wAttrmap
	call .CopyBGMapViaStack
	ld a, BANK(vBGMap0)
	ldh [rVBK], a
	hlcoord 0, 0
	call .CopyBGMapViaStack

.wait2
	ldh a, [rLY]
	cp $80 - 1
	jr c, .wait2
	ei

	pop af
	ldh [hMapAnims], a
	pop af
	ldh [hBGMapMode], a
	ret

.CopyBGMapViaStack:
; Copy all tiles to vBGMap
	ld [hSPBuffer], sp
	ld sp, hl
	ldh a, [hBGMapAddress + 1]
	ld h, a
	ld l, 0
	ld a, SCREEN_HEIGHT
	ldh [hTilesPerCycle], a
	ld b, STAT_BUSY
	ld c, LOW(rSTAT)

.loop
rept SCREEN_WIDTH / 2
	pop de
; if in v/hblank, wait until not in v/hblank
.loop\@
	ldh a, [c]
	and b
	jr nz, .loop\@
; load vBGMap
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr

	ld de, TILEMAP_WIDTH - SCREEN_WIDTH
	add hl, de
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .loop

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret
