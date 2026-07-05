	object_const_def
	const ILEXFOREST_FARFETCHD1
	const ILEXFOREST_FARFETCHD2
	const ILEXFOREST_FARFETCHD3
	const ILEXFOREST_FARFETCHD4
	const ILEXFOREST_FARFETCHD5
	const ILEXFOREST_FARFETCHD6
	const ILEXFOREST_FARFETCHD7
	const ILEXFOREST_FARFETCHD8
	const ILEXFOREST_FARFETCHD9
	const ILEXFOREST_FARFETCHD10
	const ILEXFOREST_YOUNGSTER
	const ILEXFOREST_BLACK_BELT
	const ILEXFOREST_ROCKER
	const ILEXFOREST_POKE_BALL

IlexForest_MapScripts:
	def_scene_scripts

	def_callbacks

IlexForestCharcoalApprenticeScript:
	faceplayer
	opentext
	checkevent EVENT_HERDED_FARFETCHD
	iftrue .DoneFarfetchd
	writetext IlexForestApprenticeIntroText
	waitbutton
	closetext
	end

.DoneFarfetchd:
	writetext IlexForestApprenticeAfterText
	waitbutton
	closetext
	end

FarfetchdPosition1:
	faceplayer
	opentext
	writetext Text_ItsTheMissingPokemon
	promptbutton
	writetext Text_Kwaaaa
	cry FARFETCH_D
	waitbutton
	closetext
	applymovement ILEXFOREST_FARFETCHD1, MovementData_Farfetchd_Pos1_Pos2
	appear ILEXFOREST_FARFETCHD2
	pause 5
	disappear ILEXFOREST_FARFETCHD1
	end

FarfetchdPosition2:
	scall FarfetchdCryAndCheckFacing
	ifequal DOWN, .Position2_Down
	applymovement ILEXFOREST_FARFETCHD2, MovementData_Farfetchd_Pos2_Pos3
	appear ILEXFOREST_FARFETCHD3
	pause 5
	disappear ILEXFOREST_FARFETCHD2
	end

.Position2_Down:
	applymovement ILEXFOREST_FARFETCHD2, MovementData_Farfetchd_Pos2_Pos8
	appear ILEXFOREST_FARFETCHD8
	pause 5
	disappear ILEXFOREST_FARFETCHD2
	end

FarfetchdPosition3:
	scall FarfetchdCryAndCheckFacing
	ifequal LEFT, .Position3_Left
	applymovement ILEXFOREST_FARFETCHD3, MovementData_Farfetchd_Pos3_Pos4
	appear ILEXFOREST_FARFETCHD4
	pause 5
	disappear ILEXFOREST_FARFETCHD3
	end

.Position3_Left:
	applymovement ILEXFOREST_FARFETCHD3, MovementData_Farfetchd_Pos3_Pos2
	appear ILEXFOREST_FARFETCHD2
	pause 5
	disappear ILEXFOREST_FARFETCHD3
	end

FarfetchdPosition4:
	scall FarfetchdCryAndCheckFacing
	ifequal UP, .Position4_Up
	applymovement ILEXFOREST_FARFETCHD4, MovementData_Farfetchd_Pos4_Pos5
	appear ILEXFOREST_FARFETCHD5
	pause 5
	disappear ILEXFOREST_FARFETCHD4
	end

.Position4_Up:
	applymovement ILEXFOREST_FARFETCHD4, MovementData_Farfetchd_Pos4_Pos3
	appear ILEXFOREST_FARFETCHD3
	pause 5
	disappear ILEXFOREST_FARFETCHD4
	end

FarfetchdPosition5:
	scall FarfetchdCryAndCheckFacing
	ifequal UP, .Position5_Up
	ifequal LEFT, .Position5_Left
	ifequal RIGHT, .Position5_Right
	applymovement ILEXFOREST_FARFETCHD5, MovementData_Farfetchd_Pos5_Pos6
	appear ILEXFOREST_FARFETCHD6
	pause 5
	disappear ILEXFOREST_FARFETCHD5
	end

.Position5_Left:
	applymovement ILEXFOREST_FARFETCHD5, MovementData_Farfetchd_Pos5_Pos7
	appear ILEXFOREST_FARFETCHD7
	pause 5
	disappear ILEXFOREST_FARFETCHD5
	end

.Position5_Up:
	applymovement ILEXFOREST_FARFETCHD5, MovementData_Farfetched_Pos5_Pos4_Up
	appear ILEXFOREST_FARFETCHD4
	pause 5
	disappear ILEXFOREST_FARFETCHD5
	end

.Position5_Right:
	applymovement ILEXFOREST_FARFETCHD5, MovementData_Farfetched_Pos5_Pos4_Right
	appear ILEXFOREST_FARFETCHD4
	pause 5
	disappear ILEXFOREST_FARFETCHD5
	end

FarfetchdPosition6:
	scall FarfetchdCryAndCheckFacing
	ifequal RIGHT, .Position6_Right
	applymovement ILEXFOREST_FARFETCHD6, MovementData_Farfetched_Pos6_Pos7
	appear ILEXFOREST_FARFETCHD7
	pause 5
	disappear ILEXFOREST_FARFETCHD6
	end

.Position6_Right:
	applymovement ILEXFOREST_FARFETCHD6, MovementData_Farfetched_Pos6_Pos5
	appear ILEXFOREST_FARFETCHD5
	pause 5
	disappear ILEXFOREST_FARFETCHD6
	end

FarfetchdPosition7:
	scall FarfetchdCryAndCheckFacing
	ifequal DOWN, .Position7_Down
	ifequal LEFT, .Position7_Left
	applymovement ILEXFOREST_FARFETCHD7, MovementData_Farfetched_Pos7_Pos8
	appear ILEXFOREST_FARFETCHD8
	pause 5
	disappear ILEXFOREST_FARFETCHD7
	end

.Position7_Left:
	applymovement ILEXFOREST_FARFETCHD7, MovementData_Farfetched_Pos7_Pos6
	appear ILEXFOREST_FARFETCHD6
	pause 5
	disappear ILEXFOREST_FARFETCHD7
	end

.Position7_Down:
	applymovement ILEXFOREST_FARFETCHD7, MovementData_Farfetched_Pos7_Pos5
	appear ILEXFOREST_FARFETCHD5
	pause 5
	disappear ILEXFOREST_FARFETCHD7
	end

FarfetchdPosition8:
	scall FarfetchdCryAndCheckFacing
	ifequal UP, .Position8_Up
	ifequal LEFT, .Position8_Left
	ifequal RIGHT, .Position8_Right
	applymovement ILEXFOREST_FARFETCHD8, MovementData_Farfetched_Pos8_Pos9
	appear ILEXFOREST_FARFETCHD9
	pause 5
	disappear ILEXFOREST_FARFETCHD8
	end

.Position8_Right:
	applymovement ILEXFOREST_FARFETCHD8, MovementData_Farfetched_Pos8_Pos7
	appear ILEXFOREST_FARFETCHD7
	pause 5
	disappear ILEXFOREST_FARFETCHD8
	end

.Position8_Up:
.Position8_Left:
	applymovement ILEXFOREST_FARFETCHD8, MovementData_Farfetched_Pos8_Pos2
	appear ILEXFOREST_FARFETCHD2
	pause 5
	disappear ILEXFOREST_FARFETCHD8
	end

FarfetchdPosition9:
	scall FarfetchdCryAndCheckFacing
	ifequal DOWN, .Position9_Down
	ifequal RIGHT, .Position9_Right
	applymovement ILEXFOREST_FARFETCHD9, MovementData_Farfetched_Pos9_Pos10
	appear ILEXFOREST_FARFETCHD10
	pause 5
	disappear ILEXFOREST_FARFETCHD9
	appear 13 ; ILEXFOREST_BLACK_BELT
	setevent EVENT_CHARCOAL_KILN_BOSS
	setevent EVENT_HERDED_FARFETCHD
	end

.Position9_Right:
	applymovement ILEXFOREST_FARFETCHD9, MovementData_Farfetched_Pos9_Pos8_Right
	appear ILEXFOREST_FARFETCHD8
	pause 5
	disappear ILEXFOREST_FARFETCHD9
	end

.Position9_Down:
	applymovement ILEXFOREST_FARFETCHD9, MovementData_Farfetched_Pos9_Pos8_Down
	appear ILEXFOREST_FARFETCHD8
	pause 5
	disappear ILEXFOREST_FARFETCHD9
	end

FarfetchdPosition10:
	faceplayer
	opentext
	writetext Text_Kwaaaa
	cry FARFETCH_D
	waitbutton
	closetext
	end

FarfetchdCryAndCheckFacing:
	faceplayer
	opentext
	writetext Text_Kwaaaa
	cry FARFETCH_D
	waitbutton
	closetext
	readvar VAR_FACING
	end

IlexForestCharcoalMasterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .AlreadyGotCut
	writetext Text_CharcoalMasterIntro
	promptbutton
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext Text_CharcoalMasterOutro
	waitbutton
	closetext
	setevent EVENT_ILEX_FOREST_FARFETCHD_10
	setevent EVENT_ILEX_FOREST_APPRENTICE
	setevent EVENT_ILEX_FOREST_CHARCOAL_MASTER
	clearevent EVENT_CHARCOAL_KILN_FARFETCH_D
	clearevent EVENT_CHARCOAL_KILN_APPRENTICE
	clearevent EVENT_CHARCOAL_KILN_BOSS
	end

.AlreadyGotCut:
	writetext Text_CharcoalMasterTalkAfter
	waitbutton
	closetext
	end

IlexForestHeadbuttGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue .AlreadyGotHeadbutt
	writetext Text_HeadbuttIntro
	promptbutton
	verbosegiveitem TM_HEADBUTT
	iffalse .BagFull
	setevent EVENT_GOT_TM02_HEADBUTT
.AlreadyGotHeadbutt:
	writetext Text_HeadbuttOutro
	waitbutton
.BagFull:
	closetext
	end

IlexForestRevive:
	itemball REVIVE

IlexForestHiddenEther:
	hiddenitem ETHER, EVENT_ILEX_FOREST_HIDDEN_ETHER

IlexForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ILEX_FOREST_HIDDEN_SUPER_POTION

IlexForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ILEX_FOREST_HIDDEN_FULL_HEAL

IlexForestBoulder: ; unreferenced
	jumpstd StrengthBoulderScript

IlexForestSignpost:
	jumptext IlexForestSignpostText

IlexForestShrineScript:
	jumptext Text_IlexForestShrine

MovementData_Farfetchd_Pos1_Pos2:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetchd_Pos2_Pos3:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	step_end

MovementData_Farfetchd_Pos2_Pos8:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

MovementData_Farfetchd_Pos3_Pos4:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

MovementData_Farfetchd_Pos3_Pos2:
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

MovementData_Farfetchd_Pos4_Pos5:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

MovementData_Farfetchd_Pos4_Pos3:
	big_step LEFT
	jump_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

MovementData_Farfetchd_Pos5_Pos6:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

MovementData_Farfetchd_Pos5_Pos7:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

MovementData_Farfetched_Pos5_Pos4_Up:
	big_step UP
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	step_end

MovementData_Farfetched_Pos5_Pos4_Right:
	big_step RIGHT
	turn_head UP
	step_sleep 1
	turn_head DOWN
	step_sleep 1
	turn_head UP
	step_sleep 1
	big_step DOWN
	big_step DOWN
	fix_facing
	jump_step UP
	step_sleep 8
	step_sleep 8
	remove_fixed_facing
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos6_Pos7:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos6_Pos5:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos7_Pos8:
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

MovementData_Farfetched_Pos7_Pos6:
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

MovementData_Farfetched_Pos7_Pos5:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

MovementData_Farfetched_Pos8_Pos9:
	big_step DOWN
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

MovementData_Farfetched_Pos8_Pos7:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

MovementData_Farfetched_Pos8_Pos2:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos9_Pos10:
	big_step LEFT
	big_step LEFT
	fix_facing
	jump_step RIGHT
	step_sleep 8
	step_sleep 8
	remove_fixed_facing
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos9_Pos8_Right:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

MovementData_Farfetched_Pos9_Pos8_Down:
	big_step LEFT
	big_step LEFT
	fix_facing
	jump_step RIGHT
	step_sleep 8
	step_sleep 8
	remove_fixed_facing
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

IlexForestApprenticeIntroText:
	text "어떡한담!"
	line "스승님한테 혼나겠어!"

	para "숯의 재료가 될"
	line "나무를 베는 파오리가"
	cont "행방불명이 되 버렸어!"

	para "어둡고도 넓은 너도밤나무 숲에"
	line "혼자서는 무서워서 갈 수 없어"
	done

IlexForestApprenticeAfterText:
	text "고마워!"

	para "난 배지를 가지고 있지 않으니까"
	line "스승님의 포켓몬이"
	cont "내가 말하는 것을 듣지않아!"
	done

Text_ItsTheMissingPokemon:
	text "길잃은 포켓몬이다!"
	done

Text_Kwaaaa:
	text "파오리『파오-리"
	done

Text_CharcoalMasterIntro:
	text "오오! 파오리!"
	line "어린 자네가 찾아주었는가?"

	para "나무를 벨 이 녀석이 없으면"
	line "우리들은 숯을 만들 수 없단다!"

	para "고맙구나!"
	line "답례를 하지 않으면 안되겠군……"

	para "그래! 이것을 가지고 가거라!"
	done

Text_CharcoalMasterOutro:
	text "그것은 비전 풀베기!!"
	line "포켓몬에게 가르치면"
	cont "가는 나무들을 벤단다!"

	para "다만 고동마을의 체육관 배지를"
	line "지니지 않으면 쓸 수 없단다"
	done

Text_CharcoalMasterTalkAfter:
	text "내가 있는 곳에서 수행을 할껀가?"
	line "10년이 되어야 제몫을 할수있다!"
	done

Text_HeadbuttIntro:
	text "뭘 하고 있느냐구?"

	para "박치기로 나무를 흔들고 있어"
	line "재미 있으니까"
	cont "너도 한번 해봐!"
	done

Text_HeadbuttOutro:
	text "나무를 박치기로 흔들면"
	line "가끔 자고 있는"
	cont "포켓몬이 떨어질꺼야"
	done

IlexForestSignpostText:
	text "이 너도밤나무 숲은"
	line "나무가 울창하고 무성해서"
	cont "하늘도 보이지 않을정도입니다"

	para "어두컴컴하기에 주변의"
	line "분실물에 주의 해 주세요"
	done

Text_IlexForestShrine:
	text "너도밤나무 숲의 사당……"
	line "숲의 신을 받들어 모시는 곳이다"
	done

IlexForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  5, ROUTE_34_ILEX_FOREST_GATE, 3
	warp_event  3, 42, ILEX_FOREST_AZALEA_GATE, 1
	warp_event  3, 43, ILEX_FOREST_AZALEA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  3, 17, BGEVENT_READ, IlexForestSignpost
	bg_event 27,  1, BGEVENT_ITEM, IlexForestHiddenEther
	bg_event 17,  7, BGEVENT_ITEM, IlexForestHiddenSuperPotion
	bg_event  9, 17, BGEVENT_ITEM, IlexForestHiddenFullHeal
	bg_event  8, 22, BGEVENT_READ, IlexForestShrineScript

	def_object_events
	object_event 14, 31, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition1, EVENT_ILEX_FOREST_FARFETCHD_1
	object_event 15, 25, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition2, EVENT_ILEX_FOREST_FARFETCHD_2
	object_event 20, 24, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition3, EVENT_ILEX_FOREST_FARFETCHD_3
	object_event 29, 22, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition4, EVENT_ILEX_FOREST_FARFETCHD_4
	object_event 28, 31, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition5, EVENT_ILEX_FOREST_FARFETCHD_5
	object_event 24, 35, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition6, EVENT_ILEX_FOREST_FARFETCHD_6
	object_event 22, 31, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition7, EVENT_ILEX_FOREST_FARFETCHD_7
	object_event 15, 29, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition8, EVENT_ILEX_FOREST_FARFETCHD_8
	object_event 10, 35, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition9, EVENT_ILEX_FOREST_FARFETCHD_9
	object_event 6, 28, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarfetchdPosition10, EVENT_ILEX_FOREST_FARFETCHD_10
	object_event  7, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IlexForestCharcoalApprenticeScript, EVENT_ILEX_FOREST_APPRENTICE
	object_event  5, 28, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestCharcoalMasterScript, EVENT_ILEX_FOREST_CHARCOAL_MASTER
	object_event 15, 14, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestHeadbuttGuyScript, -1
	object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestRevive, EVENT_ILEX_FOREST_REVIVE
