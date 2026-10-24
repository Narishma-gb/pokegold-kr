	object_const_def
	const ROUTE31_FISHER
	const ROUTE31_YOUNGSTER
	const ROUTE31_BUG_CATCHER
	const ROUTE31_COOLTRAINER_M
	const ROUTE31_FRUIT_TREE
	const ROUTE31_POKE_BALL1
	const ROUTE31_POKE_BALL2

Route31_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route31CheckMomCallCallback

Route31CheckMomCallCallback:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iffalse .DoMomCall
	endcallback

.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	endcallback

TrainerBugCatcherWade1:
	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcherWade1SeenText, BugCatcherWade1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_WADE_READY_FOR_REMATCH
	iftrue .WadeRematch
	checkcellnum PHONE_BUG_CATCHER_WADE
	iftrue .AcceptedNumberSTD
	checkevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext BugCatcherWade1AfterText
	waitbutton
	setevent EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumberSTD
	sjump .Continue

.AskAgain:
	scall .AskAgainSTD
.Continue:
	askforphonenumber PHONE_BUG_CATCHER_WADE
	ifequal PHONE_CONTACTS_FULL, .PhoneFullSTD
	ifequal PHONE_CONTACT_REFUSED, .DeclinedNumberSTD
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	scall .RegisterNumberSTD
	sjump .AcceptedNumberSTD

.WadeRematch:
	scall .RematchSTD
	winlosstext BugCatcherWade1BeatenText, 0
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, WADE1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WADE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, WADE2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WADE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, WADE3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WADE_READY_FOR_REMATCH
	end

.AskPhoneNumberSTD:
	jumpstd AskNumber1MScript
	end

.AskAgainSTD:
	jumpstd AskNumber2MScript
	end

.RegisterNumberSTD:
	jumpstd RegisteredNumberMScript
	end

.AcceptedNumberSTD:
	jumpstd NumberAcceptedMScript
	end

.DeclinedNumberSTD:
	jumpstd NumberDeclinedMScript
	end

.PhoneFullSTD:
	jumpstd PhoneFullMScript
	end

.RematchSTD:
	jumpstd RematchMScript
	end


Route31MailRecipientScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM50_NIGHTMARE
	iftrue .DescribeNightmare
	checkevent EVENT_GOT_KENYA
	iftrue .TryGiveKenya
	writetext Text_Route31SleepyMan
	waitbutton
	closetext
	end

.TryGiveKenya:
	writetext Text_Route31SleepyManGotMail
	promptbutton
	checkpokemail ReceivedSpearowMailText
	ifequal POKEMAIL_WRONG_MAIL, .WrongMail
	ifequal POKEMAIL_REFUSED, .Refused
	ifequal POKEMAIL_NO_MAIL, .NoMail
	ifequal POKEMAIL_LAST_MON, .LastMon
	; POKEMAIL_CORRECT
	writetext Text_Route31HandOverMailMon
	promptbutton
	writetext Text_Route31ReadingMail
	promptbutton
	setevent EVENT_GAVE_KENYA
	verbosegiveitem TM_NIGHTMARE
	iffalse .NoRoomForItems
	setevent EVENT_GOT_TM50_NIGHTMARE
.DescribeNightmare:
	writetext Text_Route31DescribeNightmare
	waitbutton
.NoRoomForItems:
	closetext
	end

.WrongMail:
	writetext Text_Route31WrongMail
	waitbutton
	closetext
	end

.NoMail:
	writetext Text_Route31MissingMail
	waitbutton
	closetext
	end

.Refused:
	writetext Text_Route31DeclinedToHandOverMail
	waitbutton
	closetext
	end

.LastMon:
	writetext Text_Route31CantTakeLastMon
	waitbutton
	closetext
	end

ReceivedSpearowMailText:
	db   "어둠의 동굴에서부터"
	next "다른길이 연결되어있어@"

Route31YoungsterScript:
	jumptextfaceplayer Route31YoungsterText

Route31Sign:
	jumptext Route31SignText

DarkCaveSign:
	jumptext DarkCaveSignText

Route31CooltrainerMScript:
	jumptextfaceplayer Route31CooltrainerMText

Route31FruitTree:
	fruittree FRUITTREE_ROUTE_31

Route31Antidote:
	itemball ANTIDOTE

Route31PokeBall:
	itemball POKE_BALL

Route31CooltrainerMText:
	text "어둠의 동굴……"
	line "포켓몬이 주변을 밝게 해주는"
	cont "기술을 쓸 수 있다면"
	cont "안을 조사해 볼 수 있을텐데"
	done

BugCatcherWade1SeenText:
	text "잔뜩 포켓몬을 잡았다"
	line "잠시 승부를 겨루어줘!"
	done

BugCatcherWade1BeatenText:
	text "어쩐지-"
	done

BugCatcherWade1AfterText:
	text "6마리를 가지고 있을 때"
	line "포켓몬을 잡으면"
	cont "컴퓨터 통신에서 자동적으로"
	cont "박스에 보내어진단다!"
	done

Text_Route31SleepyMan:
	text "움 음냐음냐……"

	para "포켓몬을 찾아서 너무 돌아다녔다"
	line "다리는 아프고 잠도오고……"

	para "내가 야생 포켓몬이라면"
	line "잡기 쉬운 상태다……"
	cont "쿠우…… 음냐음냐……"
	done

Text_Route31SleepyManGotMail:
	text "쿠우…… 음냐음냐……"

	para "응? 뭐라고?"
	line "나에게 메일을 가져왔다고?"
	done

Text_Route31HandOverMailMon:
	text "<PLAYER>는(은) 메일을 지닌"
	line "포켓몬을 건네주었다!"
	done

Text_Route31ReadingMail:
	text "머 뭐라고……"

	para "「어둠의 동굴에서부터"
	line "다른길이 연결되어있어」"
	cont "라고"

	para "고맙다!"

	para "친구도 친절하지만"
	line "너도 친절하구나!"

	para "친절에 감동받아서"
	line "나도 무언가 해주고싶어"

	para "맞아!"
	line "이것을 줄께!"
	done

Text_Route31DescribeNightmare:
	text "기술머신50은 악몽"

	para "자고있는 상대의 체력을"
	line "천천히 줄게하는 무서운 기술"

	para "우- 떨려라……"
	line "무서운 꿈은 꾸고싶지 않아……"
	done

Text_Route31WrongMail:
	text "이건 나에게 온 메일이 아니야"
	done

Text_Route31MissingMail:
	text "그 포켓몬이 뭘 어떡했는데?"
	line "메일을 가지고있지 않잖아"
	done

Text_Route31DeclinedToHandOverMail:
	text "뭐? 아무것도 아니라구?"
	done

Text_Route31CantTakeLastMon:
	text "내가 그 포켓몬을 받으면"
	line "너는 싸울 수 없게되는 것이군!"
	done

Route31YoungsterText:
	text "어둠의 동굴에서"
	line "좋은 포켓몬을 잡았다!"

	para "이녀석을 단련시켜서"
	line "도라지시티 체육관 관장"
	cont "비상과 승부를 내겠어!"
	done

Route31SignText:
	text "이곳은 31번 도로"
	line "도라지시티 …… 무궁시티"
	done

DarkCaveSignText:
	text "이곳은 어둠의 동굴"
	done

Route31_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4
	warp_event 34,  5, DARK_CAVE_VIOLET_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event  7,  5, BGEVENT_READ, Route31Sign
	bg_event 31,  5, BGEVENT_READ, DarkCaveSign

	def_object_events
	object_event 17,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31MailRecipientScript, -1
	object_event  9,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31YoungsterScript, -1
	object_event 18, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherWade1, -1
	object_event 33,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31CooltrainerMScript, -1
	object_event 16,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31FruitTree, -1
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31Antidote, EVENT_ROUTE_31_ANTIDOTE
	object_event 21, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31PokeBall, EVENT_ROUTE_31_POKE_BALL
