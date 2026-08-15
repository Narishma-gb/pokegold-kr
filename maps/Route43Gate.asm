DEF ROUTE43GATE_TOLL EQU 1000

	object_const_def
	const ROUTE43GATE_OFFICER
	const ROUTE43GATE_ROCKET1
	const ROUTE43GATE_ROCKET2

Route43Gate_MapScripts:
	def_scene_scripts
	scene_script Route43GateRocketShakedownScene, SCENE_ROUTE43GATE_ROCKET_SHAKEDOWN
	scene_script Route43GateNoopScene,            SCENE_ROUTE43GATE_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route43GateCheckIfRocketsCallback

Route43GateRocketShakedownScene:
	sdefer Route43GateRocketTakeoverScript
	end

Route43GateNoopScene:
	end

Route43GateCheckIfRocketsCallback:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .NoRockets
	setmapscene ROUTE_43, 0 ; Route 43 does not have a scene variable
	endcallback

.NoRockets:
	setmapscene ROUTE_43, 1 ; Route 43 does not have a scene variable
	endcallback

Route43GateRocketTakeoverScript:
	playmusic MUSIC_ROCKET_ENCOUNTER
	readvar VAR_FACING
	ifequal DOWN, RocketScript_Southbound
	ifequal UP, RocketScript_Northbound
	setscene SCENE_ROUTE43GATE_NOOP
	end

RocketScript_Southbound:
	applymovement PLAYER, PlayerStepsIn
	showemote EMOTE_SHOCK, ROUTE43GATE_ROCKET2, 15
	applymovement ROUTE43GATE_ROCKET2, Rocket2Script_BlocksYouSouth
	turnobject ROUTE43GATE_ROCKET1, UP
	showemote EMOTE_SHOCK, ROUTE43GATE_ROCKET1, 15
	applymovement ROUTE43GATE_ROCKET1, Rocket1Script_BlocksYouSouth
	opentext
	writetext RocketText_TollFee
	promptbutton
	checkmoney YOUR_MONEY, ROUTE43GATE_TOLL - 1
	ifequal HAVE_MORE, RocketScript_TollSouth
	sjump RocketScript_YoureBrokeSouth

RocketScript_TollSouth:
	takemoney YOUR_MONEY, ROUTE43GATE_TOLL
	writetext RocketText_ThankYou
	sjump RocketScript_ShakeDownSouth

RocketScript_YoureBrokeSouth:
	takemoney YOUR_MONEY, ROUTE43GATE_TOLL
	writetext RocketText_AllYouGot
	sjump RocketScript_ShakeDownSouth

RocketScript_ShakeDownSouth:
	promptbutton
	closetext
	applymovement ROUTE43GATE_ROCKET1, Rocket1Script_LetsYouPassSouth
	applymovement ROUTE43GATE_ROCKET2, Rocket2Script_LetsYouPassSouth
	setscene SCENE_ROUTE43GATE_NOOP
	special RestartMapMusic
	end

RocketScript_Northbound:
	showemote EMOTE_SHOCK, ROUTE43GATE_ROCKET1, 15
	applymovement ROUTE43GATE_ROCKET1, Rocket1Script_BlocksYouNorth
	turnobject ROUTE43GATE_ROCKET2, DOWN
	showemote EMOTE_SHOCK, ROUTE43GATE_ROCKET2, 15
	applymovement ROUTE43GATE_ROCKET2, Rocket2Script_BlocksYouNorth
	opentext
	writetext RocketText_TollFee
	promptbutton
	checkmoney YOUR_MONEY, ROUTE43GATE_TOLL - 1
	ifequal HAVE_MORE, RocketScript_TollNorth
	sjump RocketScript_YoureBrokeNorth

RocketScript_TollNorth:
	takemoney YOUR_MONEY, ROUTE43GATE_TOLL
	writetext RocketText_ThankYou
	sjump RocketScript_ShakeDownNorth

RocketScript_YoureBrokeNorth:
	takemoney YOUR_MONEY, ROUTE43GATE_TOLL
	writetext RocketText_AllYouGot
	sjump RocketScript_ShakeDownNorth

RocketScript_ShakeDownNorth:
	promptbutton
	closetext
	applymovement ROUTE43GATE_ROCKET2, Rocket2Script_LetsYouPassNorth
	applymovement ROUTE43GATE_ROCKET1, Rocket1Script_LetsYouPassNorth
	setscene SCENE_ROUTE43GATE_NOOP
	special RestartMapMusic
	end

RocketScript_MakingABundle:
	jumptextfaceplayer RocketText_MakingABundle

OfficerScript_GuardWithSludgeBomb:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM36_SLUDGE_BOMB
	iftrue .GotSludgeBomb
	writetext OfficerText_FoundTM
	promptbutton
	verbosegiveitem TM_SLUDGE_BOMB
	iffalse .NoRoomForSludgeBomb
	setevent EVENT_GOT_TM36_SLUDGE_BOMB
	closetext
	end

.GotSludgeBomb:
	writetext OfficerText_AvoidGrass
	waitbutton
.NoRoomForSludgeBomb:
	closetext
	end

PlayerStepsIn:
	step DOWN
	step_end

Rocket1Script_BlocksYouSouth:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	turn_head UP
	step_end

Rocket1Script_LetsYouPassSouth:
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step DOWN
	step_end

Rocket1Script_BlocksYouNorth:
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	turn_head DOWN
	step_end

Rocket1Script_LetsYouPassNorth:
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

Rocket2Script_BlocksYouSouth:
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

Rocket2Script_LetsYouPassSouth:
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	turn_head UP
	step_end

Rocket2Script_BlocksYouNorth:
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_end

Rocket2Script_LetsYouPassNorth:
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	step_end

RocketText_TollFee:
	text "잠깐!"

	para "이곳의 통행료는"
	line "{d:ROUTE43GATE_TOLL}원을 내도록 되어 있습니다"
	done

RocketText_ThankYou:
	text "헤헤헤 고맙습니다!"
	done

RocketText_AllYouGot:
	text "그럼 있는 것만이라도 받겠어요"
	done

RocketText_MakingABundle:
	text "헤헤헤 분노의 호수에서"
	line "이상한 일이 일어나고 부터는"
	cont "지나가는 녀석들이 많아서 돈벌지!"
	done

OfficerText_FoundTM:
	text "갑자기 검은색 투성의 녀석들에게"
	line "쫓겨나서 큰일이었단다"

	para "이런 것이 남겨져 있었는데"
	line "어쩐지 기분이 나쁘니까"
	cont "네가 괜찮다면 가지고 가거라"
	done

Text_ReceivedTM30: ; unreferenced
	text "<PLAYER>는(은)"
	line "기술머신30을 얻었다!"
	done

OfficerText_AvoidGrass:
	text "이 게이트는"
	line "풀숲을 피해서 지나가고싶은"
	cont "사람들을 위한 게이트란다"
	done

Route43Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_43, 4
	warp_event  5,  0, ROUTE_43, 5
	warp_event  4,  7, ROUTE_43, 3
	warp_event  5,  7, ROUTE_43, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OfficerScript_GuardWithSludgeBomb, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  2,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketScript_MakingABundle, EVENT_ROUTE_43_GATE_ROCKETS
	object_event  7,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketScript_MakingABundle, EVENT_ROUTE_43_GATE_ROCKETS
