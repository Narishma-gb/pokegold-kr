	object_const_def
	const WILLSROOM_WILL

WillsRoom_MapScripts:
	def_scene_scripts
	scene_script WillsRoomLockDoorScene, SCENE_WILLSROOM_LOCK_DOOR
	scene_script WillsRoomNoopScene,     SCENE_WILLSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, WillsRoomDoorsCallback

WillsRoomLockDoorScene:
	sdefer WillsRoomDoorLocksBehindYouScript
	end

WillsRoomNoopScene:
	end

WillsRoomDoorsCallback:
	checkevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

WillsRoomDoorLocksBehindYouScript:
	applymovement PLAYER, WillsRoom_EnterMovement
	reanchormap $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	refreshmap
	closetext
	setscene SCENE_WILLSROOM_NOOP
	setevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

WillScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillScript_AfterBattle
	writetext WillScript_WillBeforeText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, WILL1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	opentext
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	refreshmap
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

WillScript_AfterBattle:
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	end

WillsRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

WillScript_WillBeforeText:
	text "포켓몬 리그에 잘 왔단다"

	para "나의 이름은 일목"

	para "전 세계를 여행하며"
	line "에스퍼 포켓몬의"
	cont "수행에 전념했었다"

	para "그리고 드디어"
	line "사천왕의 한사람이 되었단다"

	para "나는 더욱 강해질 것이다!"
	line "이곳에서 절대 질 수는 없다!"
	done

WillScript_WillBeatenText:
	text "…… 졌다"
	done

WillScript_WillDefeatText:
	text "졌다고해서"
	line "나의 할 일은 변하지 않는다"
	cont "트레이너의 정상에 서기 위해"
	cont "계속 싸울 뿐이다"

	para "너는 다음단계로 넘어가"
	line "진정한 사천왕의 무서움을"
	cont "확인하는 것이 좋을 것이다!"
	done

WillsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, KOGAS_ROOM, 1
	warp_event  5,  2, KOGAS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WillScript_Battle, -1
