Reset::
	call InitSound
	xor a
	ldh [hMapAnims], a
	call ClearPalettes
	ei

	ld hl, wJoypadDisable
	set JOYPAD_DISABLE_SGB_TRANSFER_F, [hl]

	ld c, 32
	call DelayFrames

	jr Init

_Start::
	cp BOOTUP_A_CGB
	jr z, .cgb
	xor a ; FALSE
	ldh [hCGB], a
	jr .load

.cgb
	ld a, TRUE
	ldh [hCGB], a
	bit B_BOOTUP_B_AGB, b
	jr nz, .load
	xor a ; FALSE

.load
	ldh [hAGB], a

Init::
	di

	xor a
	ldh [rIF], a
	ldh [rIE], a
	ldh [rRP], a
	ldh [rSCX], a
	ldh [rSCY], a
	ldh [rSB], a
	ldh [rSC], a
	ldh [rWX], a
	ldh [rWY], a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ldh [rTMA], a
	ldh [rTAC], a
	ld [wBetaTitleSequenceOpeningType], a

	ld a, %100 ; Start timer at 4096Hz
	ldh [rTAC], a

.wait
	ldh a, [rLY]
	cp LY_VBLANK + 1
	jr nz, .wait

	xor a
	ldh [rLCDC], a

; Clear WRAM
	ld hl, STARTOF(WRAM0)
	ld bc, SIZEOF(WRAM0) + SIZEOF(WRAMX)
.ByteFill:
	ld [hl], 0
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .ByteFill

	ld sp, wStackTop

	call ClearVRAM
	farcall Function1fc000
	call ClearSprites

	ld a, BANK(WriteOAMDMACodeToHRAM) ; aka BANK(GameInit)
	rst Bankswitch

	call WriteOAMDMACodeToHRAM

	xor a
	ldh [hMapAnims], a
	ldh [hSCX], a
	ldh [hSCY], a
	ldh [rJOYP], a

	ld a, STAT_MODE_0
	ldh [rSTAT], a

	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	ldh [rWY], a

	ld a, WX_OFS
	ldh [hWX], a
	ldh [rWX], a

	ld a, CONNECTION_NOT_ESTABLISHED
	ldh [hSerialConnectionStatus], a

	farcall Function1fc019

	callfar InitCGBPals

	ld a, HIGH(vBGMap1)
	ldh [hBGMapAddress + 1], a
	xor a ; LOW(vBGMap1)
	ldh [hBGMapAddress], a

	farcall StartClock

	ld a, RAMG_SRAM_ENABLE
	ld [rRAMG], a
	ld a, RAMG_SRAM_DISABLE
	ld [rRTCLATCH], a
	ld [rRAMG], a

	ld a, LCDC_DEFAULT ; %11100011
	; LCD on
	; Win tilemap 1
	; Win on
	; BG/Win tiledata 0
	; BG Tilemap 0
	; OBJ 8x8
	; OBJ on
	; BG on
	ldh [rLCDC], a

	ld a, IE_DEFAULT
	ldh [rIE], a
	ei

	call DelayFrame

	predef InitSGBBorder

	call InitSound
	xor a
	ld [wMapMusic], a
	jp GameInit

ClearVRAM::
	ld hl, STARTOF(VRAM)
	ld bc, SIZEOF(VRAM)
	xor a
	call ByteFill
	ret
