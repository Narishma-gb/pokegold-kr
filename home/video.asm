UpdateBGMapBuffer::
; Copy [hBGMapTileCount] 16x8 tiles from wBGMapBuffer
; to bg map addresses in wBGMapBufferPointers.

; [hBGMapTileCount] must be even since this is done in pairs.

; Return carry on success.

	ldh a, [hBGMapUpdate]
	and a
	ret z

; Relocate the stack pointer to wBGMapBufferPointers
	ld [hSPBuffer], sp
	ld hl, wBGMapBufferPointers
	ld sp, hl

; We can now pop the addresses of affected spots on the BG Map

	ld hl, wBGMapPalBuffer
	ld de, wBGMapBuffer

.next
; Copy a pair of 16x8 blocks (one 16x16 block)

rept 2
; Get our BG Map address
	pop bc

; Palettes
	ld a, 1
	ldh [rVBK], a

	ld a, [hli]
	ld [bc], a
	inc c
	ld a, [hli]
	ld [bc], a
	dec c

; Tiles
	ld a, 0
	ldh [rVBK], a

	ld a, [de]
	inc de
	ld [bc], a
	inc c
	ld a, [de]
	inc de
	ld [bc], a
endr

; We've done 2 16x8 blocks
	ldh a, [hBGMapTileCount]
	dec a
	dec a
	ldh [hBGMapTileCount], a

	jr nz, .next

; Restore the stack pointer
	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl

	xor a
	ldh [hBGMapUpdate], a
	scf
	ret

WaitTop::
; Wait until the top third of the BG Map is being updated.

	ldh a, [hBGMapMode]
	and a
	ret z

	xor a
	ldh [hBGMapThird], a
.loop
	call DelayFrame
	ldh a, [hBGMapThird]
	and a
	jr nz, .loop

	xor a
	ldh [hBGMapMode], a
	ret

UpdateBGMap::
	farcall_reg _UpdateBGMap
	ret

Delay4::
	ldh a, [hVBlank]
	cp VBLANK_CUTSCENE
	jr z, .delay3
	call DelayFrame
.delay3
	call DelayFrame
	call DelayFrame
	jp DelayFrame

Serve1bppRequest::
	ld a, [wRequested1bppSize]
	and a
	ret z

; Copy [wRequested1bppSize] 1bpp tiles from [wRequested1bppSource] to [wRequested1bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested1bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested1bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested1bppSize]
	ld b, a

	xor a
	ld [wRequested1bppSize], a

.next

rept 3
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested1bppDest], a
	ld a, h
	ld [wRequested1bppDest + 1], a

	ld [wRequested1bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Serve2bppRequest::
	ld a, [wRequested2bppSize]
	and a
	ret z

; Copy [wRequested2bppSize] 2bpp tiles from [wRequested2bppSource] to [wRequested2bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested2bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested2bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested2bppSize]
	ld b, a

	xor a
	ld [wRequested2bppSize], a

.next

rept 7
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

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested2bppDest], a
	ld a, h
	ld [wRequested2bppDest + 1], a

	ld [wRequested2bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

AnimateTileset::
	ldh a, [hMapAnims]
	and a
	ret z

	ldh a, [hROMBank]
	push af
	ld a, BANK(_AnimateTileset)
	rst Bankswitch

	call _AnimateTileset

	pop af
	rst Bankswitch
	ret

Video_DummyFunction:: ; unreferenced
	ret

EnableSpriteDisplay:: ; unreferenced
	ld hl, rLCDC
	set B_LCDC_OBJS, [hl]
	ret

FillBGMap0WithBlack::
	nop
	ldh a, [hBlackOutBGMapThird]
	and a ; 0
	ret z

	dec a ; 1
	jr z, .one
	dec a ; 2
	jr z, .two
	; 3

DEF BG_THIRD_HEIGHT EQU (TILEMAP_HEIGHT - SCREEN_HEIGHT) / 2

; Black out the 18 BG Map rows right of the screen area
	ld a, 2
	ldh [hBlackOutBGMapThird], a
	ld hl, hBGMapAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, SCREEN_WIDTH
	add hl, de
	ld b, SCREEN_HEIGHT
	ld a, '■'
.loop1
rept TILEMAP_WIDTH - SCREEN_WIDTH
	ld [hli], a
endr
	add hl, de
	dec b
	jr nz, .loop1
	ret

.two
; Black out the top 7 BG Map rows below the screen area
	ld a, 1
	ld de, TILEMAP_WIDTH * SCREEN_HEIGHT
	jr .go

.one
; Black out the bottom 7 BG Map rows below the screen area
	xor a
	ld de, TILEMAP_WIDTH * (SCREEN_HEIGHT + BG_THIRD_HEIGHT)

.go
	ldh [hBlackOutBGMapThird], a
	ld hl, hBGMapAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld b, BG_THIRD_HEIGHT * 2
	ld a, '■'
.loop2
rept TILEMAP_WIDTH / 2
	ld [hli], a
endr
	dec b
	jr nz, .loop2
	ret
