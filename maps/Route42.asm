	object_const_def
	const ROUTE42_FISHER
	const ROUTE42_POKEFAN_M
	const ROUTE42_SUPER_NERD
	const ROUTE42_FRUIT_TREE1
	const ROUTE42_FRUIT_TREE2
	const ROUTE42_FRUIT_TREE3
	const ROUTE42_POKE_BALL1
	const ROUTE42_POKE_BALL2

Route42_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFisherChris:
	trainer FISHER, CHRIS1, EVENT_BEAT_FISHER_CHRIS, FisherChrisSeenText, FisherChrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_CHRIS_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FISHER_CHRIS
	iftrue .NumberAccepted
	checkevent EVENT_CHRIS_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherChrisAfterBattleText
	promptbutton
	setevent EVENT_CHRIS_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_CHRIS
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, CHRIS1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext FisherChrisBeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight1
	loadtrainer FISHER, CHRIS1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHRIS_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, CHRIS2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHRIS_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, CHRIS3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_CHRIS_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

TrainerPokemaniacShane:
	trainer POKEMANIAC, SHANE, EVENT_BEAT_POKEMANIAC_SHANE, PokemaniacShaneSeenText, PokemaniacShaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacShaneAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerBenjamin:
	trainer HIKER, BENJAMIN, EVENT_BEAT_HIKER_BENJAMIN, HikerBenjaminSeenText, HikerBenjaminBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerBenjaminAfterBattleText
	waitbutton
	closetext
	end

Route42Sign1:
	jumptext Route42Sign1Text

MtMortarSign1:
	jumptext MtMortarSign1Text

MtMortarSign2:
	jumptext MtMortarSign2Text

Route42Sign2:
	jumptext Route42Sign2Text

Route42UltraBall:
	itemball ULTRA_BALL

Route42SuperPotion:
	itemball SUPER_POTION

Route42FruitTree1:
	fruittree FRUITTREE_ROUTE_42_1

Route42FruitTree2:
	fruittree FRUITTREE_ROUTE_42_2

Route42FruitTree3:
	fruittree FRUITTREE_ROUTE_42_3

Route42HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROUTE_42_HIDDEN_MAX_POTION

FisherChrisSeenText:
	text "내가 낚아 올린 포켓몬"
	line "그 강함을 보여주겠다!"
	done

FisherChrisBeatenText:
	text "오잉? 이상하네"
	done

FisherChrisAfterBattleText:
	text "호호호 낚아 올린 포켓몬으로"
	line "최강의 트레이너를 목표로!"
	cont "이것이야말로 낚싯꾼의 참맛"
	done

HikerBenjaminSeenText:
	text "역시 하늘 아래는 좋구나!"
	line "기분까지도 넓게 트이니까!"
	done

HikerBenjaminBeatenText:
	text "캬하핫!"
	done

HikerBenjaminAfterBattleText:
	text "하늘의 광대함에 비교하면"
	line "졌다는 것은 아주 작은 것!"
	done

PokemaniacShaneSeenText:
	text "어이!"

	para "이 근방은 비밀의 낚시터란다"
	line "이방인이 소란 피우지 말아 줘!"
	done

PokemaniacShaneBeatenText:
	text "아아 달맞이 돌을"
	line "사용했다면 좋았을까?"
	done

PokemaniacShaneAfterBattleText:
	text "호오 포켓몬 도감을 만들고 있어?"
	line "그럼 진귀한 포켓몬이라든가"
	cont "여러가지 알고 있겠구나?"

	para "저기 나한테도 도감을 보여줘"
	done

Route42Sign1Text:
	text "이곳은 42번 도로"
	line "인주시티 …… 황토마을"
	done

MtMortarSign1Text:
	text "절구산"
	line "안은 큰 폭포의 동굴"
	done

MtMortarSign2Text:
	text "절구산"
	line "안은 큰 폭포의 동굴"
	done

Route42Sign2Text:
	text "이곳은 42번 도로"
	line "인주시티 …… 황토마을"
	done

Route42_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  8, ROUTE_42_ECRUTEAK_GATE, 3
	warp_event  0,  9, ROUTE_42_ECRUTEAK_GATE, 4
	warp_event 10,  5, MOUNT_MORTAR_1F_OUTSIDE, 1
	warp_event 28,  9, MOUNT_MORTAR_1F_OUTSIDE, 2
	warp_event 46,  7, MOUNT_MORTAR_1F_OUTSIDE, 3

	def_coord_events

	def_bg_events
	bg_event  4, 10, BGEVENT_READ, Route42Sign1
	bg_event  7,  5, BGEVENT_READ, MtMortarSign1
	bg_event 45,  9, BGEVENT_READ, MtMortarSign2
	bg_event 54,  8, BGEVENT_READ, Route42Sign2
	bg_event 16, 11, BGEVENT_ITEM, Route42HiddenMaxPotion

	def_object_events
	object_event 40, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherChris, -1
	object_event 51,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerBenjamin, -1
	object_event 47,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacShane, -1
	object_event 27, 16, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42FruitTree1, -1
	object_event 28, 16, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42FruitTree2, -1
	object_event 29, 16, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42FruitTree3, -1
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42UltraBall, EVENT_ROUTE_42_ULTRA_BALL
	object_event 33,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42SuperPotion, EVENT_ROUTE_42_SUPER_POTION
