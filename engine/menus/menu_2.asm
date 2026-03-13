PlaceMenuItemName:
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetItemName
	pop hl
	call PlaceString
	ret

PlaceMenuItemQuantity:
	push de
	ld a, [wMenuSelection]
	ld [wCurItem], a
	farcall _CheckTossableItem
	ld a, [wItemAttributeValue]
	pop hl
	and a
	jr nz, .done
	ld [hl], '×'
	inc hl
	ld de, wMenuSelectionQuantity
	lb bc, 1, 2
	call PrintNum

.done
	ret

PlaceMoneyTopRight:
	ld hl, MoneyTopRightMenuHeader
	call CopyMenuHeader
	jr PlaceMoneyTextbox

PlaceMoneyTopLeft:
	ld hl, MoneyTopLeftMenuHeader
	call CopyMenuHeader
	jr PlaceMoneyTextbox

PlaceMoneyWindowTopLeft:
	ld hl, MoneyTopRightMenuHeader
	lb de, 0, 0
	call OffsetMenuHeader

PlaceMoneyTextbox:
	call MenuBox
	call MenuBoxCoord2Tile
	ld de, SCREEN_WIDTH + 1
	add hl, de
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	ret

MoneyTopRightMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, 2
	dw NULL
	db 1 ; default option

MoneyTopLeftMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 8, 2
	dw NULL
	db 1 ; default option

DisplayCoinCaseBalance:
	; Place a text box of size 2x8 at 10, 0.
	hlcoord 10, 0
	ld b, 2
	ld c, 8
	call Textbox
	hlcoord 11, 2
	ld de, CoinString
	call PlaceString
	ld de, wCoins
	lb bc, 2, 4
	hlcoord 14, 2
	call PrintNum
	hlcoord 18, 2
	ld de, CoinCounterString
	call PlaceString
	ret

DisplayMoneyAndCoinBalance:
	hlcoord 9, 0
	ld b, 4
	ld c, 9
	call Textbox
	hlcoord 10, 2
	ld de, MoneyString
	call PlaceString
	hlcoord 12, 2
	ld de, wMoney
	lb bc, 3, 6
	call PrintNum
	hlcoord 18, 2
	ld de, MoneySign
	call PlaceString
	hlcoord 10, 4
	ld de, CoinString
	call PlaceString
	ld de, wCoins
	lb bc, 2, 4
	hlcoord 14, 4
	call PrintNum
	hlcoord 18, 4
	ld de, CoinCounterString
	call PlaceString
	ret

MoneyString:
	db "돈@"
MoneySign:
	db "원@"
CoinString:
	db "동전@"
CoinCounterString:
	db "개@"

StartMenu_PrintSafariGameStatus: ; unreferenced
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	hlcoord 0, 0
	ld b, 3
	ld c, 7
	call Textbox
	hlcoord 1, 1
	ld de, wSafariTimeRemaining
	lb bc, 2, 3
	call PrintNum
	hlcoord 4, 1
	ld de, .SafariSteps
	call PlaceString
	hlcoord 1, 3
	ld de, .SafariBallText
	call PlaceString
	hlcoord 5, 3
	ld de, wSafariBallsRemaining
	lb bc, 1, 2
	call PrintNum
	pop af
	ld [wOptions], a
	ret

.SafariSteps
	db "／５００@"
.SafariBallText
	db "ボール　　　こ@"

StartMenu_DrawBugContestStatusBox:
	hlcoord 0, 0
	ld b, 6
	ld c, 9
	call Textbox
	ret

StartMenu_PrintBugContestStatus:
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call StartMenu_DrawBugContestStatusBox
	hlcoord 1, 2
	ld de, .BallsString
	call PlaceString
	hlcoord 5, 2
	ld de, wParkBallsRemaining
	lb bc, 1, 2
	call PrintNum
	hlcoord 1, 4
	ld de, .CaughtString
	call PlaceString
	ld a, [wContestMon]
	and a
	ld de, .NoneString
	jr z, .no_contest_mon
	ld [wNamedObjectIndex], a
	call GetPokemonName

.no_contest_mon
	hlcoord 5, 4
	call PlaceString
	ld a, [wContestMon]
	and a
	jr z, .skip_level
	hlcoord 1, 6
	ld de, .LevelString
	call PlaceString
	ld a, [wContestMonLevel]
	hlcoord 5, 6
	ld c, 3
	call Print8BitNumLeftAlign

.skip_level
	pop af
	ld [wOptions], a
	ret

.BallsJPString: ; unreferenced
	db "ボール　　　こ@"
.CaughtString:
	db "포획@"
.BallsString:
	db "남은것   개@"
.NoneString:
	db "없음@"
.LevelString:
	db "레벨@"

Kurt_SelectApricorn:
	call FindApricornsInBag
	jr c, .nope
	ld hl, .MenuHeader
	call LoadMenuHeader
	call DoNthMenu
	call CloseWindow
	jr c, .nope
	ld a, [wMenuSelection]
	jr .done

.nope
	xor a ; FALSE

.done
	ld c, a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 17
	dw .MenuData
	db 1 ; default option

.MenuData:
	db SCROLLINGMENU_ENABLE_SELECT | SCROLLINGMENU_ENABLE_FUNCTION3
	dbw 0, wKurtApricornCount
	dw .Name
	dw NULL

.Name:
	ld a, [wMenuSelection]
	and a
	jp nz, PlaceMenuItemName
	ld h, d
	ld l, e
	ld de, .Cancel
	call PlaceString
	ret

.Cancel
	db "그만두다@"

FindApricornsInBag:
; Checks the bag for Apricorns.
	ld hl, wKurtApricornCount
	xor a
	ld [hli], a
	assert wKurtApricornCount + 1 == wKurtApricornItems
	dec a
	ld bc, 10
	call ByteFill

	ld hl, ApricornBalls
.loop
	ld a, [hl]
	cp -1
	jr z, .done
	push hl
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	pop hl
	jr nc, .nope
	ld a, [hl]
	call .addtobuffer
.nope
	inc hl
	inc hl
	jr .loop

.done
	xor a
	call .addtobuffer
	ld a, [wKurtApricornCount]
	cp 1
	ret nz
	scf
	ret

.addtobuffer:
	push hl
	ld hl, wKurtApricornCount
	inc [hl]
	ld e, [hl]
	ld d, 0
	add hl, de
	ld [hl], a
	pop hl
	ret

INCLUDE "data/items/apricorn_balls.asm"
