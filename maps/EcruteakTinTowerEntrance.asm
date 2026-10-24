	object_const_def
	const ECRUTEAKTINTOWERENTRANCE_SAGE1
	const ECRUTEAKTINTOWERENTRANCE_SAGE2
	const ECRUTEAKTINTOWERENTRANCE_SAGE3
	const ECRUTEAKTINTOWERENTRANCE_GRAMPS

EcruteakTinTowerEntrance_MapScripts:
	def_scene_scripts
	scene_script EcruteakTinTowerEntranceNoop1Scene, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	scene_script EcruteakTinTowerEntranceNoop2Scene, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP

	def_callbacks

EcruteakTinTowerEntranceNoop1Scene:
	end

EcruteakTinTowerEntranceNoop2Scene:
	end

EcruteakTinTowerEntranceSageBlocksLeft:
	checkevent EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_SAGE_RIGHT
	iftrue EcruteakTinTowerEntranceAlreadyBlocked
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE2, EcruteakTinTowerEntranceSageBlocksLeftMovement
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE1, 4, 6
	appear ECRUTEAKTINTOWERENTRANCE_SAGE1
	pause 5
	disappear ECRUTEAKTINTOWERENTRANCE_SAGE2
	end

EcruteakTinTowerEntranceSageBlocksRight:
	checkevent EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_SAGE_LEFT
	iftrue EcruteakTinTowerEntranceAlreadyBlocked
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE1, EcruteakTinTowerEntranceSageBlocksRightMovement
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE2, 5, 6
	appear ECRUTEAKTINTOWERENTRANCE_SAGE2
	pause 5
	disappear ECRUTEAKTINTOWERENTRANCE_SAGE1
	end

EcruteakTinTowerEntranceAlreadyBlocked:
	end

EcruteakTinTowerEntranceSageScript:
	faceplayer
	opentext
	checkflag ENGINE_FOGBADGE
	iftrue .BlockPassage_GotFogBadge
	writetext EcruteakTinTowerEntranceSageText
	waitbutton
	closetext
	end

.BlockPassage_GotFogBadge:
	writetext EcruteakTinTowerEntranceSageText_GotFogBadge
	waitbutton
	closetext
	end

EcruteakTinTowerEntranceWanderingSageScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .GotRainbowWing
	writetext EcruteakTinTowerEntranceWanderingSageText
	waitbutton
	closetext
	end

.GotRainbowWing:
	writetext EcruteakTinTowerEntranceWanderingSageText_GotRainbowWing
	waitbutton
	closetext
	end

EcruteakTinTowerEntranceGrampsScript:
	jumptextfaceplayer EcruteakTinTowerEntranceGrampsText

EcruteakTinTowerEntranceSageBlocksLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	step_end

EcruteakTinTowerEntranceSageBlocksRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	turn_head DOWN
	step_end

EcruteakTinTowerEntranceSageText:
	text "방울탑은 인주시티의"
	line "체육관 배지를 가진 사람만이"
	cont "올라갈 수 있는 신성한 탑"

	para "죄송합니다만"
	line "물러나 주십시오"
	done

EcruteakTinTowerEntranceSageText_GotFogBadge:
	text "방울탑은 인주시티의"
	line "체육관 배지를 가진 사람만이"
	cont "오를 수 있는 신성한 탑"

	para "오오!"

	para "그것은 인주시티의 체육관 배지!"

	para "어서 지나가십시오"
	done

EcruteakTinTowerEntranceWanderingSageText:
	text "이 앞에 있는 방울탑은"
	line "넓은 하늘을 나는 포켓몬이 쉬는"
	cont "장소로서 만들어졌습니다"
	done

EcruteakTinTowerEntranceWanderingSageText_GotRainbowWing:
	text "방울탑이 흔들렸습니다!"

	para "틀림없이 제일 꼭대기에"
	line "포켓몬이 돌아왔을 것 입니다"
	done

EcruteakTinTowerEntranceGrampsText:
	text "2개의 탑에"
	line "2마리의 포켓몬……"

	para "그러나 탑 하나가 불에 탄 뒤에"
	line "포켓몬도 날아간 채 돌아오지않아…"
	done

EcruteakTinTowerEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_TIN_TOWER_ENTRANCE, 4
	warp_event 17, 15, ECRUTEAK_TIN_TOWER_ENTRANCE, 3
	warp_event 17,  3, ECRUTEAK_TIN_TOWER_BACK_ENTRANCE, 3

	def_coord_events
	coord_event  4,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceSageBlocksLeft
	coord_event  5,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceSageBlocksRight

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_SAGE_LEFT
	object_event  5,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_SAGE_RIGHT
	object_event  6,  9, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceWanderingSageScript, -1
	object_event  3, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceGrampsScript, -1
