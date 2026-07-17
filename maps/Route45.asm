	object_const_def
	const ROUTE45_POKEFAN_M1
	const ROUTE45_POKEFAN_M2
	const ROUTE45_POKEFAN_M3
	const ROUTE45_POKEFAN_M4
	const ROUTE45_BLACK_BELT
	const ROUTE45_COOLTRAINER_M
	const ROUTE45_COOLTRAINER_F
	const ROUTE45_FRUIT_TREE
	const ROUTE45_POKE_BALL1
	const ROUTE45_POKE_BALL2
	const ROUTE45_POKE_BALL3
	const ROUTE45_POKE_BALL4

Route45_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBlackbeltKenji:
	trainer BLACKBELT_T, KENJI3, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenjiSeenText, BlackbeltKenjiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_KENJI_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BLACKBELT_KENJI
	iftrue Route45NumberAcceptedM
	checkevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BlackbeltKenjiAfterBattleText
	waitbutton
	setevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BLACKBELT_KENJI
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext BlackbeltKenjiBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BLACKBELT_T, KENJI3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BLACKBELT_T, KENJI1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BLACKBELT_T, KENJI2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

Route45AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route45AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route45RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route45NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route45NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route45PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route45RematchM:
	jumpstd RematchMScript
	end

TrainerHikerErik:
	trainer HIKER, ERIK, EVENT_BEAT_HIKER_ERIK, HikerErikSeenText, HikerErikBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerErikAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerMichael:
	trainer HIKER, MICHAEL, EVENT_BEAT_HIKER_MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerMichaelAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerParry:
	trainer HIKER, PARRY3, EVENT_BEAT_HIKER_PARRY, HikerParry3SeenText, HikerParry3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_PARRY
	iftrue Route45NumberAcceptedM
	checkevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext HikerParryAfterBattleText
	promptbutton
	setevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_HIKER_PARRY
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext HikerParry3BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer HIKER, PARRY3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, PARRY1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, PARRY2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

TrainerHikerTimothy:
	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTimothyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermRyan:
	trainer COOLTRAINERM, RYAN, EVENT_BEAT_COOLTRAINERM_RYAN, CooltrainermRyanSeenText, CooltrainermRyanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermRyanAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfKelly:
	trainer COOLTRAINERF, KELLY, EVENT_BEAT_COOLTRAINERF_KELLY, CooltrainerfKellySeenText, CooltrainerfKellyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfKellyAfterBattleText
	waitbutton
	closetext
	end

Route45Sign:
	jumptext Route45SignText

Route45FruitTree:
	fruittree FRUITTREE_ROUTE_45

Route45XSpecial:
	itemball X_SPECIAL

Route45Revive:
	itemball REVIVE

Route45Elixer:
	itemball ELIXER

Route45MaxPotion:
	itemball MAX_POTION

Route45HiddenPpUp:
	hiddenitem PP_UP, EVENT_ROUTE_45_HIDDEN_PP_UP

HikerErikSeenText:
	text "대비해 놓으면 근심은 없다"
	line "포켓몬을 단련시켰는지 보겠다!"
	done

HikerErikBeatenText:
	text "우웃 졌다"
	done

HikerErikAfterBattleText:
	text "검은먹시티의 얼음샛길로"
	line "돌아가서 새로 단련시켜볼까"
	done

HikerMichaelSeenText:
	text "오웃! 힘이 넘치는 것 같군"
	line "하지만 힘이라면"
	cont "아저씨도 지지 않는다!"
	done

HikerMichaelBeatenText:
	text "아저씨는 지지 않았지만"
	line "포켓몬의 힘이 없었다"
	done

HikerMichaelAfterBattleText:
	text "아저씨의 대응물은"
	line "맥스 업!"

	para "맛있으니까 나도모르게"
	line "포켓몬의 몫도 마셔버린단다"
	done

HikerParry3SeenText:
	text "내 포켓몬은"
	line "힘이 자랑이다!"
	done

HikerParry3BeatenText:
	text "와하핫"
	line "아저씨가 졌다!"
	done

HikerParryAfterBattleText:
	text "생각하는 것은 소질이 없어서"
	line "아무튼 골치가 지끈지끈 아프단다"
	done

HikerTimothySeenText:
	text "어째서 산을 오르는가"
	line "…… 그곳에 산이 있기 때문이다"

	para "어째서 포켓몬을 하는가"
	line "그건 포켓몬이 있기 때문이다!"
	done

HikerTimothyBeatenText:
	text "그것에 패배가 있었다!"
	done

HikerTimothyAfterBattleText:
	text "인생 최고의 기쁨"
	line "그것은 포켓몬과 만났다는 것이다!"
	done

BlackbeltKenjiSeenText:
	text "여기서 혼자"
	line "수행을 하고있었다……"

	para "그 성과를 보여주겠다!"
	done

BlackbeltKenjiBeatenText:
	text "이야-앗!"
	done

BlackbeltKenjiAfterBattleText:
	text "눈썹을 깎고"
	line "산중에 틀어박히지 않으면 안되는가"
	done

CooltrainermRyanSeenText:
	text "너는 어떤 생각으로"
	line "포켓몬을 키우고 있느냐?"
	done

CooltrainermRyanBeatenText:
	text "역시 대단하군"
	done

CooltrainermRyanAfterBattleText:
	text "소중하게 포켓몬을 돌보고 있구나"

	para "그러한 정이란 것이"
	line "언젠가 때가 되면 중요하게 된단다"
	done

CooltrainerfKellySeenText:
	text "포켓몬으로 싸울 때"
	line "너 뭔가 생각하고 있니?"

	para "앞뒤 생각않고 강한 기술을"
	line "명령하는 것만으로는 안 된단다"
	done

CooltrainerfKellyBeatenText:
	text "…… 나의 패배로군"
	done

CooltrainerfKellyAfterBattleText:
	text "그렇군 그다지 강력한"
	line "기술은 바라지도 않아"

	para "승부에서는 이기고싶지만"
	line "별로 포켓몬에게 상처를 입히고"
	cont "싶지는 않으니까"
	done

Route45DummyText: ; unreferenced
	text "나도 포켓몬"
	line "나름대로 자신 있어!"
	done

Route45SignText:
	text "이곳은 45번 도로"
	line "이 앞은 마운틴 로드"
	done

Route45_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, DARK_CAVE_BLACKTHORN_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event 10,  4, BGEVENT_READ, Route45Sign
	bg_event 13, 80, BGEVENT_ITEM, Route45HiddenPpUp

	def_object_events
	object_event 10, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerErik, -1
	object_event 15, 64, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerMichael, -1
	object_event  5, 28, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerParry, -1
	object_event  9, 64, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerTimothy, -1
	object_event 11, 50, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltKenji, -1
	object_event 17, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermRyan, -1
	object_event  4, 36, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfKelly, -1
	object_event 16, 82, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route45FruitTree, -1
	object_event  6, 51, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45XSpecial, EVENT_ROUTE_45_X_SPECIAL
	object_event  6, 66, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Revive, EVENT_ROUTE_45_REVIVE
	object_event  4, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
	object_event  8, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45MaxPotion, EVENT_ROUTE_45_MAX_POTION
