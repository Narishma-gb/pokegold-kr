	object_const_def
	const ROUTE34ILEXFORESTGATE_TEACHER
	const ROUTE34ILEXFORESTGATE_BUTTERFREE
	const ROUTE34ILEXFORESTGATE_LASS

Route34IlexForestGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route34IlexForestGateTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM12_SWEET_SCENT
	iftrue .GotSweetScent
	writetext Route34IlexForestGateTeacherText
	promptbutton
	verbosegiveitem TM_SWEET_SCENT
	iffalse .NoRoom
	setevent EVENT_GOT_TM12_SWEET_SCENT
.GotSweetScent:
	writetext Route34IlexForestGateTeacher_GotSweetScent
	waitbutton
.NoRoom:
	closetext
	end

Route34IlexForestGateButterfreeScript:
	opentext
	writetext Route34IlexForestGateButterfreeText
	cry BUTTERFREE
	waitbutton
	closetext
	end

Route34IlexForestGateLassScript:
	jumptextfaceplayer Route34IlexForestGateLassText

Route34IlexForestGateTeacherText:
	text "음 너"
	line "포켓몬 도감을 만들고 있니?"

	para "포켓몬이 나와주지 않으면 큰일이군"
	line "괜찮다면 이 기술머신을"
	cont "사용해보면 어떻겠니?"
	done

Route34IlexForestGateTeacher_GotSweetScent:
	text "내용물은 달콤한 향기"

	para "포켓몬이 나올 것 같은"
	line "장소에서 사용한다면……"

	para "달콤한 향기에 이끌려"
	line "포켓몬이 나타난단다"
	done

Route34IlexForestGateButterfreeText:
	text "버터플『버터플!"
	done

Route34IlexForestGateLassText:
	text "너 숲의 신의"
	line "사당에 참배했니?"

	para "숲의 신은 시간을 초월해서"
	line "숲을 지켜준단다"
	cont "꼭 풀포켓몬일꺼야"
	done

Route34IlexForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_34, 1
	warp_event  5,  0, ROUTE_34, 2
	warp_event  4,  7, ILEX_FOREST, 1
	warp_event  5,  7, ILEX_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateTeacherScript, -1
	object_event  9,  4, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateButterfreeScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateLassScript, -1
