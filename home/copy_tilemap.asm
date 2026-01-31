LoadTilemapToTempTilemap::
; Load wTilemap into wTempTilemap
	farcall Function1fc657
	ret

SafeLoadTempTilemapToTilemap::
	xor a
	ldh [hBGMapMode], a
	call LoadTempTilemapToTilemap
	ld a, 1
	ldh [hBGMapMode], a
	ret

LoadTempTilemapToTilemap::
; Load wTempTilemap into wTilemap
	farcall Function1fc6a4
	ret
