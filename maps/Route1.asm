	object_const_def
	const ROUTE1_YOUNGSTER
	const ROUTE1_COOLTRAINER_F
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolboyDanny:
	trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDannyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfQuinn:
	trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfQuinnAfterBattleText
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

SchoolboyDannySeenText:
	text "트레이너와 만나면"
	line "먼저 승부를!"
	done

SchoolboyDannyBeatenText:
	text "졌다-!"
	done

SchoolboyDannyAfterBattleText:
	text "트레이너에게 있어서 승부는"
	line "인사 같은 것이지"
	done

CooltrainerfQuinnSeenText:
	text "잠깐 너!"
	line "나랑 승부하지 않을래?"
	done

CooltrainerfQuinnBeatenText:
	text "졌다……!"
	done

CooltrainerfQuinnAfterBattleText:
	text "강하구나 너"
	line "많은 수행을 했겠군"
	done

Route1SignText:
	text "이곳은 1번 도로"
	line "태초마을 …… 상록시티"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  7, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyDanny, -1
	object_event  3, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerfQuinn, -1
	object_event  3,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
