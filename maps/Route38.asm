	object_const_def
	const ROUTE38_STANDING_YOUNGSTER1
	const ROUTE38_LASS
	const ROUTE38_STANDING_YOUNGSTER2
	const ROUTE38_BEAUTY
	const ROUTE38_SAILOR
	const ROUTE38_FRUIT_TREE

Route38_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperToby:
	trainer BIRD_KEEPER, TOBY, EVENT_BEAT_BIRD_KEEPER_TOBY, BirdKeeperTobySeenText, BirdKeeperTobyBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BirdKeeperTobyAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorHarry:
	trainer SAILOR, HARRY, EVENT_BEAT_SAILOR_HARRY, SailorHarrySeenText, SailorHarryBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext SailorHarryAfterBattleText
	waitbutton
	closetext
	end

TrainerLassDana1:
	trainer LASS, DANA1, EVENT_BEAT_LASS_DANA, LassDana1SeenText, LassDana1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	checkevent EVENT_DANA_READY_FOR_REMATCH
	iftrue .DanaRematch
	checkcellnum PHONE_LASS_DANA
	iftrue .NumberAccepted
	checkevent EVENT_DANA_ASKED_FOR_PHONE_NUMBER
	iftrue .SecondTimeAsking
	writetext LassDanaMoomooMilkText
	promptbutton
	setevent EVENT_DANA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1F
	sjump .AskForPhoneNumber

.SecondTimeAsking:
	scall .AskNumber2F
.AskForPhoneNumber:
	askforphonenumber PHONE_LASS_DANA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .DeclinedPhoneNumber
	gettrainername STRING_BUFFER_3, LASS, DANA1
	scall .RegisteredPhoneNumber
	sjump .NumberAccepted

.DanaRematch:
	scall .Rematch
	winlosstext LassDana1BeatenText, 0
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer LASS, DANA1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_DANA_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer LASS, DANA2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_DANA_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer LASS, DANA3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_DANA_READY_FOR_REMATCH
	end

.AskNumber1F:
	jumpstd AskNumber1FScript
	end

.AskNumber2F:
	jumpstd AskNumber2FScript
	end

.RegisteredPhoneNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.DeclinedPhoneNumber:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

TrainerSchoolboyChad1:
	trainer SCHOOLBOY, CHAD1, EVENT_BEAT_SCHOOLBOY_CHAD, SchoolboyChad1SeenText, SchoolboyChad1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	checkevent EVENT_CHAD_READY_FOR_REMATCH
	iftrue .ChadRematch
	checkcellnum PHONE_SCHOOLBOY_CHAD
	iftrue .HaveChadsNumber
	checkevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	iftrue .SecondTimeAsking
	writetext SchoolboyChadSoManyTestsText
	promptbutton
	setevent EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumber1
	sjump .AskToRegisterNumber

.SecondTimeAsking:
	scall .AskPhoneNumber2
.AskToRegisterNumber:
	askforphonenumber PHONE_SCHOOLBOY_CHAD
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .SaidNo
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	scall .RegisteredChad
	sjump .HaveChadsNumber

.ChadRematch:
	scall .Rematch
	winlosstext SchoolboyChad1BeatenText, 0
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, CHAD1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHAD_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, CHAD2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHAD_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, CHAD3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHAD_READY_FOR_REMATCH
	end

.AskPhoneNumber1:
	jumpstd AskNumber1MScript
	end

.AskPhoneNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredChad:
	jumpstd RegisteredNumberMScript
	end

.HaveChadsNumber:
	jumpstd NumberAcceptedMScript
	end

.SaidNo:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

TrainerBeautyValerie:
	trainer BEAUTY, VALERIE, EVENT_BEAT_BEAUTY_VALERIE, BeautyValerieSeenText, BeautyValerieBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BeautyValerieAfterBattleText
	waitbutton
	closetext
	end

Route38Sign:
	jumptext Route38SignText

Route38TrainerTips:
	jumptext Route38TrainerTipsText

Route38FruitTree:
	fruittree FRUITTREE_ROUTE_38

BirdKeeperTobySeenText:
	text "크게 위세를 떨치는"
	line "나의 새포켓몬"
	done

BirdKeeperTobyBeatenText:
	text "이대로 새포켓몬을 타고"
	line "어딘가에 가고싶은 기분이야"
	done

BirdKeeperTobyAfterBattleText:
	text "포켓몬에게 공중날기 기술을"
	line "가르치기위해 진청시티로"
	cont "수행을 하러갈 작정이야!"
	done

SchoolboyChad1SeenText:
	text "이제 곧 오늘 공부한 것을"
	line "확인해볼까"
	done

SchoolboyChad1BeatenText:
	text "얼라리? 이상하네"
	line "아직도 공부가 부족한건가?"
	done

SchoolboyChadSoManyTestsText:
	text "늘상은 시험만 봐서"
	line "그다지 포켓몬을 하지않았다"

	para "그래서 포켓몬을 할 수 있을 때"
	line "엄청나게 집중을 하고있지!"
	done

LassDana1SeenText:
	text "너는 포켓몬 강하냐?"

	para "강하다면"
	line "여러가지 비법을 가르쳐줬음 좋겠어"
	done

LassDana1BeatenText:
	text "역시 그렇군"
	line "그런 싸움법이 있었구나"
	done

LassDanaMoomooMilkText:
	text "나도 좋은 것을 가르쳐줄께"

	para "튼튼 목장의 우유가"
	line "맛있다는 소문이야"
	done

BeautyValerieSeenText:
	text "아항-"
	line "귀여운 트레이너씨"

	para "어떤 포켓몬을 가지고 있나"
	line "보여주지 않겠니?"
	done

BeautyValerieBeatenText:
	text "여러 포켓몬"
	line "볼 수 있어서 행복해"
	done

BeautyValerieAfterBattleText:
	text "포켓몬을 보고있으면"
	line "차분해진다고 할까"
	cont "마음이 진정되지"
	done

SailorHarrySeenText:
	text "나는 외국을 돌아다녀서"
	line "여러 포켓몬을 알고있지!"
	done

SailorHarryBeatenText:
	text "그 강함"
	line "틀림없이 세계적인 수준"
	done

SailorHarryAfterBattleText:
	text "여러 나라에서"
	line "여러 사람이"
	cont "포켓몬과 사이좋게 지내고있단다"
	done

Route38SignText:
	text "이곳은 38번 도로"
	line "담청시티 …… 인주시티"
	done

Route38TrainerTipsText:
	text "득이 되는 게시판!"

	para "포켓몬이 진화할 것 같은 때"
	line "B버튼을 누르면"
	cont "놀라서 진화를 멈춥니다"
	cont "이것을 진화캔슬이라고 말합니다"
	done

Route38_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  8, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35,  9, ROUTE_38_ECRUTEAK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 33,  7, BGEVENT_READ, Route38Sign
	bg_event  5, 13, BGEVENT_READ, Route38TrainerTips

	def_object_events
	object_event  4,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyChad1, -1
	object_event 15,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassDana1, -1
	object_event 15, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperToby, -1
	object_event  9,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyValerie, -1
	object_event 25,  5, SPRITE_SAILOR, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorHarry, -1
	object_event 12, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route38FruitTree, -1
