DEF CELADONGAMECORNERPRIZEROOM_TM32_COINS    EQU 1500
DEF CELADONGAMECORNERPRIZEROOM_TM29_COINS    EQU 3500
DEF CELADONGAMECORNERPRIZEROOM_TM15_COINS    EQU 7500
DEF CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS EQU 3333
DEF CELADONGAMECORNERPRIZEROOM_EEVEE_COINS   EQU 6666
DEF CELADONGAMECORNERPRIZEROOM_PORYGON_COINS EQU 9999

	object_const_def
	const CELADONGAMECORNERPRIZEROOM_GENTLEMAN
	const CELADONGAMECORNERPRIZEROOM_PHARMACIST

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGentlemanText

CeladonGameCornerPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomPharmacistText

CeladonGameCornerPrizeRoomTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
	writetext CeladonPrizeRoom_AskWhichPrizeText
CeladonPrizeRoom_tmcounterloop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_TMMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .DoubleTeam
	ifequal 2, .Psychic
	ifequal 3, .HyperBeam
	sjump CeladonPrizeRoom_CancelPurchaseScript

.DoubleTeam:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM32_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_DOUBLE_TEAM
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_DOUBLE_TEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM32_COINS
	sjump CeladonPrizeRoom_purchased

.Psychic:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM29_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_PSYCHIC_M
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_PSYCHIC_M
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM29_COINS
	sjump CeladonPrizeRoom_purchased

.HyperBeam:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM15_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_HYPER_BEAM
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_HYPER_BEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM15_COINS
	sjump CeladonPrizeRoom_purchased

CeladonPrizeRoom_askbuy:
	writetext CeladonPrizeRoom_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_purchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_notenoughcoins:
	writetext CeladonPrizeRoom_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_notenoughroom:
	writetext CeladonPrizeRoom_NotEnoughRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_CancelPurchaseScript:
	writetext CeladonPrizeRoom_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCase:
	writetext CeladonPrizeRoom_NoCoinCaseText
	waitbutton
	closetext
	end

CeladonPrizeRoom_TMMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 15, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "기술머신32  {d:CELADONGAMECORNERPRIZEROOM_TM32_COINS}@"
	db "기술머신29  {d:CELADONGAMECORNERPRIZEROOM_TM29_COINS}@"
	db "기술머신15  {d:CELADONGAMECORNERPRIZEROOM_TM15_COINS}@"
	db "그만두다@"

CeladonGameCornerPrizeRoomPokemonVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .MrMime
	ifequal 2, .Eevee
	ifequal 3, .Porygon
	sjump CeladonPrizeRoom_CancelPurchaseScript

.MrMime:
	checkcoins CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, MR__MIME
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval MR__MIME
	special GameCornerPrizeMonCheckDex
	givepoke MR__MIME, 15
	takecoins CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS
	sjump .loop

.Eevee:
	checkcoins CELADONGAMECORNERPRIZEROOM_EEVEE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, EEVEE
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval EEVEE
	special GameCornerPrizeMonCheckDex
	givepoke EEVEE, 15
	takecoins CELADONGAMECORNERPRIZEROOM_EEVEE_COINS
	sjump .loop

.Porygon:
	checkcoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, PORYGON
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 20
	takecoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 15, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "마임맨     {d:CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS}@"
	db "이브이     {d:CELADONGAMECORNERPRIZEROOM_EEVEE_COINS}@"
	db "폴리곤     {d:CELADONGAMECORNERPRIZEROOM_PORYGON_COINS}@"
	db "그만두다@"

CeladonGameCornerPrizeRoomGentlemanText:
	text "마임맨을 가지고 싶었는데……"
	line "동전이 앞으로 100개 남았는데"
	cont "모이지 않았다……!"
	done

CeladonGameCornerPrizeRoomPharmacistText:
	text "후우우우우……"

	para "그렇게 중독이 되지 않도록"
	line "주의를 하지 않으면……"

	para "돈을 전부 써버린다면"
	line "어쩔 수 없을테니까……"
	done

CeladonPrizeRoom_PrizeVendorIntroText:
	text "어서오세요!"

	para "게임을 해서 모은 동전은"
	line "여기서 좋아하는"
	cont "경품으로 교환할 수 있습니다!"
	done

CeladonPrizeRoom_AskWhichPrizeText:
	text "어느 것이 좋습니까?"
	done

CeladonPrizeRoom_ConfirmPurchaseText:
	text "@"
	text_ram wStringBuffer3
	text "(으)로"
	line "하겠습니까?"
	done

CeladonPrizeRoom_HereYouGoText:
	text "자 받으세요!"
	done

CeladonPrizeRoom_NotEnoughCoinsText:
	text "동전이 부족합니다"
	done

CeladonPrizeRoom_NotEnoughRoomText:
	text "그 이상은 지닐 수 없습니다"
	done

CeladonPrizeRoom_ComeAgainText:
	text "그렇습니까"
	line "동전을 모아서 와주세요!"
	done

CeladonPrizeRoom_NoCoinCaseText:
	text "응?"
	line "동전 케이스가 없군요"
	done

CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, CELADON_CITY, 7
	warp_event  3,  5, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomTMVendor
	bg_event  4,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor

	def_object_events
	object_event  0,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGentlemanScript, -1
	object_event  4,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomPharmacistScript, -1
