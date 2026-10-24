	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "어둠의 동굴에서부터"
	next "다른길이 연결되어있어@"

GiftSpearowName:
	db "심부름꾼@"

GiftSpearowOTName:
	db "유지@"

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "이봐- 너 너!"

	para "이 메일을 지니고 있는 포켓몬을"
	line "31번 도로에 있는"
	cont "친구에게 전해주었으면 좋겠어"
	cont "부탁을 들어주겠니?"
	done

Route35GoldenrodGateRandyThanksText:
	text "고마워!"

	para "친구는 뚱뚱한 남자아이고"
	line "언제나 졸고 있으니까"
	cont "바로 알아볼 수 있을꺼야!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER>는(은) 메일을 지닌"
	line "포켓몬을 맡았다!"
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "메일을 읽어봐도 좋지만"
	line "잃어버리지는 말아라!"
	cont "31번 도로까지 부탁해!"

	para "……참 그러고보니"
	line "이상한 모양의 나무가"
	cont "길을 막고있는 듯 한데"
	cont "이젠 지나갈 수 있게 되었을까?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "그 이상"
	line "포켓몬을 지닐 수 없을 것 같군…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "그런가……"
	line "할 수 없네……"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "고마워"
	line "잘 전해주었구나!"
	cont "답례로 이걸줄께!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "내친구는 자고있었지?"
	line "잠만 퍼질러 자는 녀석이지!"
	done

Route35GoldenrodGatePokefanFText:
	text "말을 걸면 꿈틀꿈틀 움직이는"
	line "나무가 길을 막고 있단다"

	para "꼬부기 물뿌리개로 물을 뿌리면"
	line "화를 낸다는 이야기를 들었어"
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "나 라디오에서 흘러나오는"
	line "포켓몬의 자장가를 좋아해"
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 13
	warp_event  5,  7, GOLDENROD_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
