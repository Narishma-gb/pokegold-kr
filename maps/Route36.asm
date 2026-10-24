	object_const_def
	const ROUTE36_YOUNGSTER1
	const ROUTE36_YOUNGSTER2
	const ROUTE36_WEIRD_TREE
	const ROUTE36_LASS1
	const ROUTE36_FISHER
	const ROUTE36_FRUIT_TREE
	const ROUTE36_ARTHUR

Route36_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route36ArthurCallback

Route36ArthurCallback:
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .ArthurAppears
	disappear ROUTE36_ARTHUR
	endcallback

.ArthurAppears:
	appear ROUTE36_ARTHUR
	endcallback

SudowoodoScript:
	checkitem SQUIRTBOTTLE
	iftrue .Fight

	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	end

.Fight:
	opentext
	writetext UseSquirtbottleText
	yesorno
	iffalse DidntUseSquirtbottleScript
	closetext
WateredWeirdTreeScript:: ; export (for when you use Squirtbottle from pack)
	opentext
	writetext UsedSquirtbottleText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	opentext
	writetext SudowoodoAttackedText
	waitbutton
	closetext
	loadwildmon SUDOWOODO, 20
	startbattle
	setevent EVENT_FOUGHT_SUDOWOODO
	ifequal DRAW, DidntCatchSudowoodo
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	reloadmapafterbattle
	end

DidntUseSquirtbottleScript:
	closetext
	end

DidntCatchSudowoodo:
	reloadmapafterbattle
	applymovement ROUTE36_WEIRD_TREE, WeirdTreeMovement_Flee
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	special LoadUsedSpritesGFX
	end

Route36RockSmashGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .AlreadyGotRockSmash
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext RockSmashGuyText1
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext RockSmashGuyText2
	promptbutton
	verbosegiveitem TM_ROCK_SMASH
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM08_ROCK_SMASH
.AlreadyGotRockSmash:
	writetext RockSmashGuyText3
	waitbutton
.NoRoomForTM:
	closetext
	end

Route36LassScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext Route36LassText
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext Route36LassText_ClearedSudowoodo
	waitbutton
	closetext
	end

TrainerSchoolboyAlan1:
	trainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboyAlan1SeenText, SchoolboyAlan1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_ALAN_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SCHOOLBOY_ALAN
	iftrue .NumberAccepted
	checkevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SchoolboyAlanBooksText
	promptbutton
	setevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCHOOLBOY_ALAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	scall .RegisteredNumber
	sjump .NumberAccepted

.ChooseRematch:
	scall .Rematch
	winlosstext SchoolboyAlan1BeatenText, 0
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, ALAN1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, ALAN2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, ALAN3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
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

TrainerPsychicMark:
	trainer PSYCHIC_T, MARK, EVENT_BEAT_PSYCHIC_MARK, PsychicMarkSeenText, PsychicMarkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMarkAfterBattleText
	waitbutton
	closetext
	end

ArthurScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	iftrue .AlreadyGotStone
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, ArthurNotThursdayScript
	checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iftrue .MetArthur
	writetext MeetArthurText
	promptbutton
	setevent EVENT_MET_ARTHUR_OF_THURSDAY
.MetArthur:
	writetext ArthurGivesGiftText
	promptbutton
	verbosegiveitem HARD_STONE
	iffalse .BagFull
	setevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	writetext ArthurGaveGiftText
	waitbutton
	closetext
	end

.AlreadyGotStone:
	writetext ArthurThursdayText
	waitbutton
.BagFull:
	closetext
	end

ArthurNotThursdayScript:
	writetext ArthurNotThursdayText
	waitbutton
	closetext
	end

Route36Sign:
	jumptext Route36SignText

RuinsOfAlphNorthSign:
	jumptext RuinsOfAlphNorthSignText

Route36TrainerTips1:
	jumptext Route36TrainerTips1Text

Route36TrainerTips2:
	jumptext Route36TrainerTips2Text

Route36FruitTree:
	fruittree FRUITTREE_ROUTE_36

SudowoodoShakeMovement:
	tree_shake
	step_end

WeirdTreeMovement_Flee:
	fast_jump_step UP
	fast_jump_step UP
	step_end

UseSquirtbottleText:
	text "이상한 나무다!"
	line "꼬부기 물뿌리개를 사용하겠습니까?"
	done

UsedSquirtbottleText:
	text "<PLAYER>는(은)"
	line "꼬부기 물뿌리개를 사용했다!"
	done

SudowoodoAttackedText:
	text "이상한 나무는"
	line "꼬부기 물뿌리개를 싫어하고 있다"

	para "이상한 나무가 덤벼들었다"
	done

RockSmashGuyText1:
	text "우-쒸!"

	para "나의 강렬한 때려부수기로"
	line "나무 한그루랑 두그루를 뚝 하고 "
	cont "부러뜨려볼까 하고 생각했는데……"

	para "통하지도 않지!"
	line "분하기도 하지!"
	done

RockSmashGuyText2:
	text "그대가 저 방해되는 나무를"
	line "치워주셨는가?"

	para "고맙다고 말하지!"
	line "이것을 드리지!"
	done

Text_ReceivedTM08: ; unreferenced
	text "<PLAYER>는(은)"
	line "기술머신08을 받았다!"
	done

RockSmashGuyText3:
	text "내용물은 필살 바위깨기!"
	line "이것이 있으면"
	cont "돌덩어리등을 한방에 부술 수 있지"

	para "방해되는 돌덩어리는"
	line "부수는게 좋다고 생각하지!"
	done

Route36LassText:
	text "이상한 나무가 생겨서"
	line "금빛시티에 쇼핑하러 갈 수 없어"
	cont "누가 어떻게든 해주었음 좋겠는데"
	done

Route36LassText_ClearedSudowoodo:
	text "마치 없어진 것 처럼"
	line "이상한 나무가 사라져버렸다……"

	para "엥? 포켓몬이었다고?"
	done

PsychicMarkSeenText:
	text "너의 생각을 맞춰보겠다"
	done

PsychicMarkBeatenText:
	text "맞추지 못했다"
	done

PsychicMarkAfterBattleText:
	text "상대방의 생각을 읽고"
	line "공격을 할 수 있으면 강할텐데"
	done

SchoolboyAlan1SeenText:
	text "어떤 포켓몬을 상대로해도"
	line "확실히 예습은 해놓았지!"
	done

SchoolboyAlan1BeatenText:
	text "얼라리……?"
	line "계산이 틀렸나?"
	done

SchoolboyAlanBooksText:
	text "우으으으으 매일 5시간씩"
	line "공부를 했었는데……"

	para "교과서만으로는"
	line "모르는 것이 많이 있구나"
	done

MeetArthurText:
	text "목인『넌 누구냐?"

	para "나는 목요일의 목인"
	done

ArthurGivesGiftText:
	text "자 이걸줄께!"
	done

ArthurGaveGiftText:
	text "목인『바위타입의 사용하는"
	line "포켓몬에게 지니게해봐"

	para "바위타입 기술의"
	line "공격력이 상승할테니까"
	done

ArthurThursdayText:
	text "목인『나는"
	line "목요일의 목인!"
	cont "7남매의 차남이야!"
	done

ArthurNotThursdayText:
	text "목인『오늘은 목요일이"
	line "아닌가……"
	cont "유감이군"
	done

Route36SignText:
	text "이곳은 36번 도로"
	done

RuinsOfAlphNorthSignText:
	text "알프의 유적"
	line "북쪽 입구"
	done

Route36TrainerTips1Text:
	text "득이 되는 게시판!"

	para "같은 종류의 포켓몬이라도"
	line "강한 정도는 여러가지"

	para "처음은 거의 같아도"
	line "키움에따라 크게 바뀝니다"
	done

Route36TrainerTips2Text:
	text "득이 되는 게시판!"

	para "구멍파기라고 하는"
	line "기술을 사용하면 순간"
	cont "입구까지 돌아올 수 있습니다"

	para "동굴등을 탐험할 때"
	line "그 기술을 배운 포켓몬이"
	cont "한마리 있으면 편리하겠죠"
	done

Route36_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event 18,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 47, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 48, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 29,  1, BGEVENT_READ, Route36TrainerTips2
	bg_event 45, 11, BGEVENT_READ, RuinsOfAlphNorthSign
	bg_event 55,  7, BGEVENT_READ, Route36Sign
	bg_event 21,  7, BGEVENT_READ, Route36TrainerTips1

	def_object_events
	object_event 20, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMark, -1
	object_event 31, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSchoolboyAlan1, -1
	object_event 35,  9, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_SUDOWOODO, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SudowoodoScript, EVENT_ROUTE_36_SUDOWOODO
	object_event 51,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36LassScript, -1
	object_event 44,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36RockSmashGuyScript, -1
	object_event 21,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36FruitTree, -1
	object_event 46,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, EVENT_ROUTE_36_ARTHUR_OF_THURSDAY
