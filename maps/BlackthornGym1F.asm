	object_const_def
	const BLACKTHORNGYM1F_CLAIR
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUIDE

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BlackthornGym1FBouldersCallback

BlackthornGym1FBouldersCallback:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	endcallback

BlackthornGymClairScript:
	faceplayer
	opentext
	checkflag ENGINE_RISINGBADGE
	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writetext ClairText_GoToDragonsDen
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_OWNERS
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end

.FightDone:
	checkitem DRAGON_FANG
	iftrue .HasDragonFang
	writetext ClairText_WhatsTheMatter
	waitbutton
	closetext
	end

.HasDragonFang:
	writetext BlackthornGymClairText_Cheat
	waitbutton
	closetext
	end

.AlreadyGotBadge:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext BlackthornGymClairText_YouKeptMeWaiting
	promptbutton
	verbosegiveitem TM_DRAGONBREATH
	iffalse .BagFull
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext BlackthornGymClairText_DescribeTM24
	waitbutton
	closetext
	end

.GotTM24:
	writetext BlackthornGymClairText_League
	waitbutton

.BagFull:
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetext
	end

BlackthornGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetext
	end

.BlackthornGymGuideWinScript:
	writetext BlackthornGymGuideWinText
	waitbutton
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
	jumpstd GymStatue2Script

ClairIntroText:
	text "내가 이향!"
	line "세계에서 제일가는"
	cont "드래곤 조련사다"

	para "실력도 역시 포켓몬 리그의"
	line "사천왕들에게도"
	cont "진적이 없다!"
	cont "어때 그래도 싸울꺼니?"

	para "…… 그래 알겠다"
	line "그럼 시작해보자꾸나!"

	para "나역시 트레이너"
	line "어떤 상대라도"
	cont "전력을 다해서 상대를 해준다!"
	done

ClairWinText:
	text "이 내가 지다니……"

	para "믿을 수 없어"
	line "뭔가 잘못된 것 같아……"
	done

ClairText_GoToDragonsDen:
	text "나는 인정할 수 없어"

	para "졌다고 말할 수 없지만"
	line "너의 실력으로는"
	cont "포켓몬 리그에 도전하는 것도"
	cont "무리야"

	para "…… 그렇군!"

	para "이 포켓몬 체육관 뒤에"
	line "용의 굴이라 불리우는"
	cont "장소가 있어"

	para "그곳 깊숙히 놓여 있는"
	line "용의 이빨을 가지고 오는 것이"
	cont "참 된 드래곤 조련사로"
	cont "인정받기 위한 의식이지"

	para "너도 그것을 할 수 있다면"
	line "체육관 배지를 받을 자격이 있지"
	cont "트레이너로서 인정해 주겠어!"
	done

ClairText_WhatsTheMatter:
	text "이향『어떻게 되었니?"

	para "나에게 이긴 것이"
	line "어쩌다 운이 좋아서가 아니라면"
	cont "가지고 오는것 정도는 간단하겠지?"
	done

BlackthornGymClairText_Cheat:
	text "이향『그것은 용의 굴에서"
	line "가지고 온 것이 아니잖아"

	para "그런 흉내를 내지말라니까……"
	line "아주 실망했어"
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "이향『너의 실력을"
	line "꺼리낌 없이 인정하겠어"

	para "이 기술머신도 가지고 가"
	done

BlackthornGymText_ReceivedTM24: ; unreferenced
	text "<PLAYER>는(은) 이향으로부터"
	line "기술머신24를 얻었다!"
	done

BlackthornGymClairText_DescribeTM24:
	text "안에 들어 있는 것은"
	line "용의 숨결"

	para "…… 그다지 화려하진 않아"
	line "필요 없으면 무리해서"
	cont "가지고 가지 않아도 좋아"
	done

BlackthornGymClairText_League:
	text "모든 배지를 모은 것 같구나"

	para "예전에는 석영고원"
	line "포켓몬 리그였는데"

	para "장소는 알고 있어?"
	line "그래 여기서부터라면"
	cont "먼저 연두마을에 가야해"

	para "거기서부터 파도타기로"
	line "동쪽으로 계속 가면 좋을꺼야"
	cont "단 험난한 길이 될꺼야"

	para "포켓몬 리그에서도"
	line "진다면 용서하지 않을꺼야!"

	para "그렇게 하지 않으면"
	line "내가 면목이 없게 되잖아!"
	done

CooltrainermPaulSeenText:
	text "처음 싸우는 드래곤 조련사의"
	line "강함을 알아두는 것이 좋을꺼다!"
	done

CooltrainermPaulBeatenText:
	text "유감이로군"
	done

CooltrainermPaulAfterBattleText:
	text "드래곤 조련사 목호님을"
	line "만난 적이 있다고……?"
	cont "설마 그럴리가 없겠지"
	done

CooltrainermMikeSeenText:
	text "내가 질꺼라는 예상 같은 것은"
	line "1퍼센트도 없어!"
	done

CooltrainermMikeBeatenText:
	text "이상하네"
	done

CooltrainermMikeAfterBattleText:
	text "나의 부족함을 깨닫게되었다"
	line "그것을 가르쳐준"
	cont "너에게 감사한다!"
	done

CooltrainerfLolaSeenText:
	text "드래곤은 성스러운 생명체"
	line "생명력이 넘치는 포켓몬"
	cont "전력을 다하지않으면 이길수 없다!"
	done

CooltrainerfLolaBeatenText:
	text "제법 하는군"
	done

CooltrainerfLolaAfterBattleText:
	text "그렇군 드래곤의 약점은"
	line "드래곤타입의 기술이지"
	done

BlackthornGymGuideText:
	text "여어!"
	line "미래의 챔피언!"

	para "드디어 이곳까지 왔구나"
	line "이제 얼마 남지 않았다!"
	cont "나도 협력하겠어!"

	para "이향이가 사용하는 포켓몬은"
	line "전설의 생명체"
	cont "성스러운 드래곤 포켓몬"

	para "시시한 공격으로는"
	line "데미지를 입힐 수 없지!"

	para "…… 하지만"
	line "얼음타입의 기술에는"
	cont "약하다는 이야기가 있어!"
	done

BlackthornGymGuideWinText:
	text "이향에게 이기다니"
	line "대단하군!"

	para "남은 것은 포켓몬 리그의 도전!"
	line "목표로 삼아라 챔피언을!"
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  5,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMike, -1
	object_event  1, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
