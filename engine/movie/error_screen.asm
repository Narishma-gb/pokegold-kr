DisplayDMGErrorScreen:
	ldh a, [hCGB]
	and a
	ret nz

	ld de, MUSIC_NONE
	call PlayMusic
	call ClearTilemap
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	ld a, %11011000
	ldh [rBGP], a
	ld hl, vTiles1
	ld de, ErrorScreenGFX
	lb bc, BANK(ErrorScreenGFX), $80
	call Get2bpp
	call .load_tilemap
	call WaitBGMap

.lock_loop
	call DelayFrame
	jr .lock_loop

.load_tilemap:
	ld hl, ErrorScreenTilemap
	decoord 0, 0
	ld c, SCREEN_HEIGHT
.row
	ld b, SCREEN_WIDTH
.col
	ldi a, [hl]
	ld [de], a
	inc de
	dec b
	jr nz, .col
	dec c
	jr nz, .row
	ret

ErrorScreenGFX:
INCBIN "gfx/error_screen/error_screen.2bpp"

ErrorScreenTilemap:
INCBIN "gfx/error_screen/error_screen.tilemap"
