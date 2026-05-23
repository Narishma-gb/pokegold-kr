DisplayCaughtContestMonStats:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 4
	ld b, 5
	ld c, 8
	call Textbox

	hlcoord 10, 4
	ld b, 5
	ld c, 8
	call Textbox

	hlcoord 2, 3
	ld de, .Stock
	call PlaceString

	hlcoord 12, 3
	ld de, .This
	call PlaceString

	hlcoord 1, 8
	ld de, .Health
	call PlaceString

	hlcoord 11, 8
	ld de, .Health
	call PlaceString

	ld a, [wContestMon]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 6
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wContestMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	ld de, wEnemyMonNickname
	hlcoord 11, 6
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wEnemyMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	hlcoord 6, 8
	ld de, wContestMonMaxHP
	lb bc, 2, 3
	call PrintNum

	hlcoord 16, 8
	ld de, wEnemyMonMaxHP
	call PrintNum

	ld hl, ContestAskSwitchText
	call PrintText

	pop af
	ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	ret

.Health:
	db "체력@"
.Stock:
	db "지닌 포켓몬@"
.This:
	db "이번 포켓몬@"

ContestAskSwitchText:
	text_far _ContestAskSwitchText
	text_end

DisplayAlreadyCaughtText:
	call GetPokemonName
	ld hl, .ContestAlreadyCaughtText
	jp PrintText

.ContestAlreadyCaughtText:
	text_far _ContestAlreadyCaughtText
	text_end

DummyPredef2F:
DummyPredef38:
DummyPredef39:
	ret
