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

PlaceDoubleByteChar::
	push de
	push hl
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
	pop af
	pop hl
	pop de

	di
	ld bc, wAttrmap - wTilemap
	add hl, bc
	set B_BG_BANK1, [hl]
	ld bc, -SCREEN_WIDTH
	add hl, bc
	set B_BG_BANK1, [hl]

	ld bc, wTilemap - wAttrmap
	add hl, bc
	ld [hl], a
	inc a
	ld bc, SCREEN_WIDTH
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
	ld a, ' '
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

_TrimUnusedHangulChars::
; mark all entries in wHangulTilesIndexTable as empty slots,
; except the characters currently on screen
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr z, .start_check

.wait_loop
	ldh a, [rLY]
	cp $7D
	jr nc, .wait_loop

.start_check
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wHangulTilesIndexTable

.clear_flags
	res 7, [hl]
	inc l
	inc l
	jr nz, .clear_flags

	ld a, $01
	ldh [rWBK], a
	ei

	ld de, wTilemap
	ld hl, wAttrmap
	lb bc, HIGH(wAttrmapEnd - wAttrmap) + 1, LOW(wAttrmapEnd - wAttrmap) + 1
	jr .start_loop

.set_flag_loop
	ld a, [hli]
	bit B_BG_BANK1, a
	jr z, .next

	push hl
	di
	ld a, $02
	ldh [rWBK], a
	ld a, [de]
	and %11111110 ; top and bottom tiles point to the same table entry
	ld l, a
	ld h, HIGH(wHangulTilesIndexTable)
	set 7, [hl]
	ld a, $01
	ldh [rWBK], a
	ei
	pop hl

.next
	inc de
.start_loop
	dec c
	jr nz, .set_flag_loop
	dec b
	jr nz, .set_flag_loop
	ret

_FindNextEmptyHangulSlot::
; find the first available slot to draw the next hangul char b:c
; return carry if no slot is available
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr z, .start_check

.wait_loop
	ldh a, [rLY]
	cp $7D
	jr nc, .wait_loop

.start_check
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wHangulTilesIndexTable

.loop
	bit 7, [hl]
	jr z, .found
	inc l
	inc l
	jr nz, .loop
	scf
	jr .done

.found
	sub a
.done
	ld a, $01
	ldh [rWBK], a
	ei
	ld a, l
	ret

_IsHangulCharDrawn::
; check if the hangul char at b:c is already drawn in VRAM
; return carry if no matching char has been found, else
; return WRAM index of the matching tile in a
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr z, .start_check

.wait_loop
	ldh a, [rLY]
	cp $7D
	jr nc, .wait_loop

.start_check
	di
	ld a, $02
	ldh [rWBK], a
	ld hl, wHangulTilesIndexTable

.loop
	bit 7, [hl]
	jr nz, .compare
.skip1
	inc l
.skip2
	inc l
	jr nz, .loop
	scf
	jr .done

.compare
	ld a, [hl]
	res 7, a
	cp b
	jr nz, .skip1
	inc l
	ld a, [hl]
	cp c
	jr nz, .skip2
	dec l
	sub a

.done
	ld a, $01
	ldh [rWBK], a
	ei
	ld a, l
	ret

_DrawHangulChar::
	and %11111110 ; table entry must be even-aligned
	ld l, a
	ld h, HIGH(wHangulTilesIndexTable)
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

; initially b:c = char_table:entry
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
	push bc ; save b = bank offset
	ld e, a
	ld d, c ; de = source tile entry address

; initially l = index of VRAM tile pair to be drawn
	ld a, $80 ; index 0 is in vTiles5
	add l
	ld b, 0
	sla a
	rl b
	sla a
	rl b
	sla a
	rl b
	sla a
	rl b
	ld c, a
	ld hl, vTiles4
	add hl, bc ; hl = destination VRAM address

	ld a, h
	ldh [rVDMA_DEST_HIGH], a
	ld a, l
	ldh [rVDMA_DEST_LOW], a
	ld hl, wHangulCharBuffer
	ld a, h
	ldh [rVDMA_SRC_HIGH], a
	ld a, l
	ldh [rVDMA_SRC_LOW], a

	pop af
	add BANK("Hangul Tables 1")
	ld b, a
	call PrepareVDMAData
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr z, .general_purpose_DMA

; same check again, can this branch?
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr z, .start_HBlank_DMA

; if we're too close to VBlank, wait until the next frame,
; else the transfer will pause and waste the whole VBlank cycle
.wait_next_frame
	ldh a, [rLY]
	cp LY_VBLANK - 4
	jr nc, .wait_next_frame

.start_HBlank_DMA
	di
	ld a, BANK(vBGMap2)
	ldh [rVBK], a
	ld a, $02
	ldh [rWBK], a
	rst WaitHBlank
	ld a, VDMA_LEN_MODE_HBLANK | 1 ; HBlank DMA, size: $20 bytes
	ldh [rVDMA_LEN], a
	ldh a, [rVDMA_LEN]
	and VDMA_LEN_SIZE
	inc a
.loop
; HBlank DMA transfers one tile per scanline, wait until it is done
	push af
	call WaitOneLine
	pop af
	dec a
	jr nz, .loop

	ld a, $01
	ldh [rWBK], a
	ld a, BANK(vBGMap0)
	ldh [rVBK], a
	ei
	ret

.general_purpose_DMA
	di
	ld a, BANK(vBGMap2)
	ldh [rVBK], a
	ld a, $02
	ldh [rWBK], a
	ld a, VDMA_LEN_MODE_GENERAL | 1 ; General Purpose DMA, size: $20 bytes
	ldh [rVDMA_LEN], a
	ld a, $01
	ldh [rWBK], a
	ld a, BANK(vBGMap0)
	ldh [rVBK], a
	ei
	ret
