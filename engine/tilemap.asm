_LoadTilemapToTempTilemap::
	hlcoord 0, 0
	decoord 0, 0, wTempTilemap
	lb bc, HIGH(wTilemapEnd - wTilemap) + 1, LOW(wTilemapEnd - wTilemap) + 1
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
	lb bc, HIGH(wTilemapEnd - wTilemap) + 1, LOW(wTilemapEnd - wTilemap) + 1
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
; wait until PPU v/hblank mode
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
