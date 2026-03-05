LoadTilemapToTempTilemap::
; Load wTilemap into wTempTilemap
	farcall _LoadTilemapToTempTilemap
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
	farcall _LoadTempTilemapToTilemap
	ret
