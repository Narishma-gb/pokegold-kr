	object_const_def
	const BRUNOSROOM_BRUNO

BrunosRoom_MapScripts:
	def_scene_scripts
	scene_script BrunosRoomLockDoorScene, SCENE_BRUNOSROOM_LOCK_DOOR
	scene_script BrunosRoomNoopScene,     SCENE_BRUNOSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, BrunosRoomDoorsCallback

BrunosRoomLockDoorScene:
	sdefer BrunosRoomDoorLocksBehindYouScript
	end

BrunosRoomNoopScene:
	end

BrunosRoomDoorsCallback:
	checkevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

BrunosRoomDoorLocksBehindYouScript:
	applymovement PLAYER, BrunosRoom_EnterMovement
	reanchormap $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	refreshmap
	closetext
	setscene SCENE_BRUNOSROOM_NOOP
	setevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

BrunoScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_BRUNO
	iftrue BrunoScript_AfterBattle
	writetext BrunoScript_BrunoBeforeText
	waitbutton
	closetext
	winlosstext BrunoScript_BrunoBeatenText, 0
	loadtrainer BRUNO, BRUNO1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_BRUNO
	opentext
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	refreshmap
	closetext
	setevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	waitsfx
	end

BrunoScript_AfterBattle:
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	end

BrunosRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

BrunoScript_BrunoBeforeText:
	text "나는 사천왕 시바!"

	para "나는 자신들이 지니고 있는"
	line "가능성을 믿고"
	cont "언제나 한계까지 단련한다"

	para "그렇게해서 강해진"
	line "우릴 이길 수 있다고 생각하나?"

	para "호오 걱정할 필요는 없겠군"
	line "좋은 얼굴을 가지고 있구나"
	cont "그것이야말로 싸움에 어울리지"

	para "간다! <PLAYER> 어찌되었든"
	line "우리들의 최강의 힘을"
	cont "받아보는 것이 좋을 것이다!"

	para "우-! 하-앗!"
	done

BrunoScript_BrunoBeatenText:
	text "어떡게 한 거지!"
	line "…… 우리들이 질 줄이야!"
	done

BrunoScript_BrunoDefeatText:
	text "패배한 나에게는"
	line "아무것도 말할 자격이 없다!"
	cont "다음 관문으로 진행해도 좋다!"
	done

BrunosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, KOGAS_ROOM, 3
	warp_event  5, 17, KOGAS_ROOM, 4
	warp_event  4,  2, KARENS_ROOM, 1
	warp_event  5,  2, KARENS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BrunoScript_Battle, -1
