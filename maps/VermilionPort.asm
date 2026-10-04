	object_const_def
	const VERMILIONPORT_SAILOR1
	const VERMILIONPORT_SAILOR2
	const VERMILIONPORT_SUPER_NERD

VermilionPort_MapScripts:
	def_scene_scripts
	scene_script VermilionPortNoopScene,      SCENE_VERMILIONPORT_ASK_ENTER_SHIP
	scene_script VermilionPortLeaveShipScene, SCENE_VERMILIONPORT_LEAVE_SHIP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionPortFlypointCallback

VermilionPortNoopScene:
	end

VermilionPortLeaveShipScene:
	sdefer VermilionPortLeaveShipScript
	end

VermilionPortFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionPortLeaveShipScript:
	applymovement PLAYER, VermilionPortLeaveFastShipMovement
	appear VERMILIONPORT_SAILOR1
	setscene SCENE_VERMILIONPORT_ASK_ENTER_SHIP
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	setevent EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	setevent EVENT_FAST_SHIP_FIRST_TIME
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	blackoutmod VERMILION_CITY
	end

VermilionPortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	writetext VermilionPortDepartingText
	waitbutton
	closetext
	turnobject VERMILIONPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear VERMILIONPORT_SAILOR1
	waitsfx
	applymovement PLAYER, VermilionPortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutToWhite
	waitsfx
	setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear VERMILIONPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

VermilionPortAlreadyRodeScript:
	writetext VermilionPortCantBoardText
	waitbutton
	closetext
	end

VermilionPortWalkUpToShipScript:
	turnobject VERMILIONPORT_SAILOR2, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .skip
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .skip
	turnobject PLAYER, LEFT
	opentext
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingMoveAwayScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipWednesday:
	writetext VermilionPortSailWednesdayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

.skip:
	end

VermilionPortNotRidingScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	end

VermilionPortNotRidingMoveAwayScript:
	writetext VermilionPortComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, VermilionPortCannotEnterFastShipMovement
	end

VermilionPortSailorScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue VermilionPortAlreadyRodeScript
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NextShipWednesday
	ifequal TUESDAY, .NextShipWednesday
	ifequal THURSDAY, .NextShipSunday
	ifequal FRIDAY, .NextShipSunday
	ifequal SATURDAY, .NextShipSunday
	writetext VermilionPortAskBoardingText
	yesorno
	iffalse VermilionPortNotRidingScript
	writetext VermilionPortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext VermilionPortSSTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, VermilionPortApproachFastShipRightMovement
	sjump VermilionPortSailorAtGangwayScript

.NoTicket:
	writetext VermilionPortNoTicketText
	waitbutton
	closetext
	end

.NextShipWednesday:
	writetext VermilionPortSailWednesdayText
	waitbutton
	closetext
	end

.NextShipSunday:
	writetext VermilionPortSailSundayText
	waitbutton
	closetext
	end

VermilionPortSuperNerdScript:
	faceplayer
	opentext
	writetext VermilionPortSuperNerdText
	waitbutton
	closetext
	end

VermilionPortHiddenIron:
	hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

VermilionPortEnterFastShipMovement:
	step DOWN
	step_end

VermilionPortLeaveFastShipMovement:
	step UP
	step_end

VermilionPortCannotEnterFastShipMovement:
	step RIGHT
	turn_head LEFT
	step_end

VermilionPortApproachFastShipMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortApproachFastShipRightMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

VermilionPortDepartingText:
	text "이제 곧 출항합니다"
	line "승선해 주십시오"
	done

VermilionPortCantBoardText:
	text "배에는 탈 수 없습니다!"
	done

VermilionPortAskBoardingText:
	text "어서오세요!"
	line "쾌속선 아쿠아호에"
	cont "승선하겠습니까?"
	done

VermilionPortAskTicketText:
	text "그럼 티켓을 확인하겠습니다"
	done

VermilionPortComeAgainText:
	text "다음에도 계속 이용을"
	line "부탁드립니다"
	done

VermilionPortSSTicketText:
	text "<PLAYER>는(은) 선원에게"
	line "승선티켓을 보였다!"

	para "예! 감사합니다!"
	done

VermilionPortNoTicketText:
	text "<PLAYER>는(은) 선원에게"
	line "티켓을 보이려했다……"
	cont "티켓이…… 없어……!"

	para "……대단히 죄송합니다만"

	para "들어가는 것은"
	line "티켓이 있는 분에 한해서입니다"
	done

VermilionPortSailWednesdayText:
	text "쾌속선의 출항은"
	line "다음 수요일입니다"
	done

VermilionPortSailSundayText:
	text "쾌속선의 출항은"
	line "다음 일요일입니다"
	done

VermilionPortSuperNerdText:
	text "너는 성도에서 왔니?"
	line "거기에는 진귀한 포켓몬이"
	cont "있다고 하던데"
	done

VermilionPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, VERMILION_PORT_PASSAGE, 5
	warp_event  7, 17, FAST_SHIP_1F, 1

	def_coord_events
	coord_event  7, 11, SCENE_VERMILIONPORT_ASK_ENTER_SHIP, VermilionPortWalkUpToShipScript

	def_bg_events
	bg_event 16, 13, BGEVENT_ITEM, VermilionPortHiddenIron

	def_object_events
	object_event  7, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSailorScript, -1
	object_event 11, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortSuperNerdScript, -1
