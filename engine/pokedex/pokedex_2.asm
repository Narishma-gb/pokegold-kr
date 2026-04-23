AnimateDexSearchSlowpoke:
	ld hl, .FrameIDs
	ld b, 25
.loop
	ld a, [hli]

	; Wrap around
	cp $fe
	jr nz, .ok
	ld hl, .FrameIDs
	ld a, [hli]
.ok

	ld [wDexSearchSlowpokeFrame], a
	ld a, [hli]
	ld c, a
	push bc
	push hl
	call DoDexSearchSlowpokeFrame
	pop hl
	pop bc
	call DelayFrames
	dec b
	jr nz, .loop
	xor a
	ld [wDexSearchSlowpokeFrame], a
	call DoDexSearchSlowpokeFrame
	ld c, 32
	call DelayFrames
	ret

.FrameIDs:
	; frame ID, duration
	db 0, 7
	db 1, 7
	db 2, 7
	db 3, 7
	db 4, 7
	db -2

DoDexSearchSlowpokeFrame:
	ld a, [wDexSearchSlowpokeFrame]
	ld hl, .SlowpokeSpriteData
	ld de, wShadowOAMSprite00
.loop
	ld a, [hli]
	cp -1
	ret z
	ld [de], a ; y
	inc de
	ld a, [hli]
	ld [de], a ; x
	inc de
	ld a, [wDexSearchSlowpokeFrame]
	ld b, a
	add a
	add b
	add [hl]
	inc hl
	ld [de], a ; tile id
	inc de
	ld a, [hli]
	ld [de], a ; attributes
	inc de
	jr .loop

.SlowpokeSpriteData:
	dbsprite  9, 11, 0, 0, $00, 0
	dbsprite 10, 11, 0, 0, $01, 0
	dbsprite 11, 11, 0, 0, $02, 0
	dbsprite  9, 12, 0, 0, $10, 0
	dbsprite 10, 12, 0, 0, $11, 0
	dbsprite 11, 12, 0, 0, $12, 0
	dbsprite  9, 13, 0, 0, $20, 0
	dbsprite 10, 13, 0, 0, $21, 0
	dbsprite 11, 13, 0, 0, $22, 0
	db -1

DisplayDexEntry:
	call GetPokemonName
	hlcoord 9, 2
	call PlaceString ; mon species
	ld a, [wTempSpecies]
	ld b, a
	call GetDexEntryPointer
	ld a, b
	push af
	ld d, h
	ld e, l
	hlcoord 9, 4
	call PlaceFarString ; dex species
	ld h, b
	ld l, c
	push de
	ld de, PokeText
	call PlaceString
; Print dex number
	hlcoord 2, 8
	ld a, $5c ; No
	ld [hli], a
	ld a, $5d ; .
	ld [hli], a
	ld de, wTempSpecies
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
; Check to see if we caught it.  Get out of here if we haven't.
	ld a, [wTempSpecies]
	dec a
	call CheckCaughtMon
	pop hl
	pop bc
	ret z
; Get the height of the Pokemon.
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	inc hl
	ld a, b
	push af
	call GetFarByte
	and a
	jr z, .skip_height
	push hl
	push af
; Print the height
	ld hl, sp+1
	ld d, h
	ld e, l
	hlcoord 13, 6
	lb bc, 1, 3
	call PrintNum
	hlcoord 14, 6
	ld a, [de]
	cp 10
	jr nc, .skipZero
	ld [hl], '0' ; if the height is less than 1m, print a 0 before the decimal point
.skipZero
	inc hl
	ld a, [hli] ; insert the decimal point
	ld [hld], a
	ld [hl], '<DOT>'
	pop af
	pop hl

.skip_height
	pop af
	push af
	inc hl
	push hl
	call GetFarWord
	ld a, l
	or h
	jr z, .skip_weight
	ld d, l
	ld e, h
	push de
; Print the weight
	ld hl, sp+0
	ld d, h
	ld e, l
	hlcoord 12, 8
	lb bc, 2, 4
	call PrintNum
	hlcoord 14, 8
	ld a, [de]
	sub 10
	dec de
	ld a, [de]
	sbc 0
	jr nc, .skipZero2
	ld [hl], '0' ; if the weight is less than 1kg, print a 0 before the decimal point
.skipZero2
	inc hl
	ld a, [hli] ; insert the decimal point
	ld [hld], a
	ld [hl], '<DOT>'
	pop af

.skip_weight
	pop de
	inc de
	inc de
	pop af
	hlcoord 1, 11
	call PlaceFarString
	ret

PokeText:
	db "#@"

GetDexEntryPointer:
; return dex entry pointer b:de
	ld hl, PokedexDataPointerTable
	ld a, b
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	rlca
	maskbits NUM_DEX_ENTRY_BANKS
	add BANK("Pokedex Entries 001-128")
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

GetDexEntryPagePointer: ; unreferenced
; dummied out
	ret

INCLUDE "data/pokemon/dex_entry_pointers.asm"
