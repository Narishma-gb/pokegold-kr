	object_const_def
	const RADIOTOWER2F_SUPER_NERD
	const RADIOTOWER2F_TEACHER
	const RADIOTOWER2F_ROCKET1
	const RADIOTOWER2F_ROCKET2
	const RADIOTOWER2F_ROCKET3
	const RADIOTOWER2F_ROCKET_GIRL
	const RADIOTOWER2F_BLACK_BELT1
	const RADIOTOWER2F_BLACK_BELT2
	const RADIOTOWER2F_JIGGLYPUFF

RadioTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower2FNoopScene: ; unreferenced
	end

RadioTower2FSuperNerdScript:
	jumptextfaceplayer RadioTower2FSuperNerdText

RadioTower2FTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	writetext RadioTower2FTeacherText
	waitbutton
	closetext
	end

.Rockets:
	writetext RadioTower2FTeacherText_Rockets
	waitbutton
	closetext
	end

RadioTowerJigglypuff:
	opentext
	writetext RadioTowerJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end

RadioTower2FBlackBelt1Script:
	jumptextfaceplayer RadioTower2FBlackBelt1Text

RadioTower2FBlackBelt2Script:
	jumptextfaceplayer RadioTower2FBlackBelt2Text

TrainerGruntM4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM4AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM5:
	trainer GRUNTM, GRUNTM_5, EVENT_BEAT_ROCKET_GRUNTM_5, GruntM5SeenText, GruntM5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM5AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM6:
	trainer GRUNTM, GRUNTM_6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM6AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF2:
	trainer GRUNTF, GRUNTF_2, EVENT_BEAT_ROCKET_GRUNTF_2, GruntF2SeenText, GruntF2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF2AfterBattleText
	waitbutton
	closetext
	end

RadioTower2FSalesSign:
	jumptext RadioTower2FSalesSignText

RadioTower2FOaksPKMNTalkSign:
	jumptext RadioTower2FOaksPKMNTalkSignText

RadioTower2FPokemonRadioSign:
	jumptext RadioTower2FPokemonRadioSignText

RadioTower2FBookshelf:
	jumpstd MagazineBookshelfScript

RadioTower2FSuperNerdText:
	text "어디서든 라디오 청취가 가능하니까"
	line "어디서든 라디오를 들어주세요!"
	done

RadioTower2FTeacherText:
	text "라디오에서 흘러나오는 자장가라도"
	line "포켓몬은 잠들어버리거든"
	done

RadioTower2FTeacherText_Rockets:
	text "라디오 방송국을 점령해서"
	line "어떡게 할 작정일까……?"
	done

RadioTowerJigglypuffText:
	text "푸린『푸우…… 푸린……"
	done

RadioTower2FBlackBelt1Text:
	text "여기부터 윗층은 관계자 외"
	line "출입금지란다……"

	para "예전에는 그런 일이 없었는데"
	line "지금 국장은 좀 이상해"
	done

RadioTower2FBlackBelt2Text:
	text "어디든 견학 OK 란다"
	line "예전처럼 상냥한"
	cont "국장으로 되돌아왔단다"
	done

GruntM4SeenText:
	text "3년전 로켓단은"
	line "해산에 몰리게 되었다……"

	para "그러나 우리들은"
	line "이곳에서 부활하는 것이다!"
	done

GruntM4BeatenText:
	text "크윽-"
	line "정떨어지는 놈"
	done

GruntM4AfterBattleText:
	text "너같은 녀석에게"
	line "부활의 방해를 받을 순 없지!"
	done

GruntM5SeenText:
	text "우리들은"
	line "포켓몬의 마피아 로켓단이다!"
	cont "나쁜 짓을 무척 좋아하지"

	para "오호-  겁먹었냐?"
	done

GruntM5BeatenText:
	text "정의의 편에 설 작정이냐?"
	done

GruntM5AfterBattleText:
	text "특별히 우리들은"
	line "나쁜 짓을 하려는건 아니구"
	cont "단지 좋아하는 것을 하려는거야"
	done

GruntM6SeenText:
	text "이봐 이봐!"
	line "우리들을 방해해서는 않되지!"
	done

GruntM6BeatenText:
	text "우우…… 졌다"
	done

GruntM6AfterBattleText:
	text "간부들은 이곳을 점령하려고"
	line "엄청난 일을 벌일 것 같아"
	cont "그건 그렇고 이제 뭘 할까나?"
	done

GruntF2SeenText:
	text "호호호!"
	line "너무나 간단하게 점령되어서"
	cont "싫증이 났지뭐야!"

	para "니가 날 즐겁게 해주겠어?"
	done

GruntF2BeatenText:
	text "네 녀석은 어떤 놈이냐!?"
	done

GruntF2AfterBattleText:
	text "나보다 강하다니……"

	para "용서할 수 없어!"
	done

RadioTower2FSalesSignText:
	text "2층 …… 영업부"
	done

RadioTower2FOaksPKMNTalkSignText:
	text "오박사의 포켓몬 강좌"
	line "대 호평 방송중!"
	done

RadioTower2FPokemonRadioSignText:
	text "24시간 언제든지"
	line "어디에 있던지 포켓몬 라디오"
	done

RadioTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower2FSalesSign
	bg_event  5,  0, BGEVENT_READ, RadioTower2FOaksPKMNTalkSign
	bg_event  9,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 10,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 11,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 13,  0, BGEVENT_READ, RadioTower2FPokemonRadioSign

	def_object_events
	object_event  5,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower2FSuperNerdScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 13,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower2FTeacherScript, -1
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM5, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM6, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 10,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  0,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower2FBlackBelt1Script, EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	object_event  1,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower2FBlackBelt2Script, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event 12,  1, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTowerJigglypuff, -1
