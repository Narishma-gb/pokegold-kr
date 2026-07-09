	object_const_def
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_RIVAL

DragonsDenB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonsDenB1FCheckRivalCallback

DragonsDenB1FCheckRivalCallback:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .CheckDay
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.CheckDay:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .AppearRival
	ifequal THURSDAY, .AppearRival
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.AppearRival:
	appear DRAGONSDENB1F_RIVAL
	endcallback

DragonsDenB1FDragonFangScript:
	giveitem DRAGON_FANG
	iffalse .BagFullDragonFang
	disappear DRAGONSDENB1F_POKE_BALL1
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .next
	sjump .next2
.next
	moveobject DRAGONSDENB1F_CLAIR, 34, 21
.next2
	appear DRAGONSDENB1F_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksToYou
	turnobject PLAYER, DOWN
	opentext
	writetext ClairText_GiveDragonbreathDragonDen
	promptbutton
	waitsfx
	writetext DragonShrinePlayerReceivedRisingBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
	specialphonecall SPECIALCALL_MASTERBALL
	writetext DragonShrineRisingBadgeExplanationText
	promptbutton
	verbosegiveitem TM_DRAGONBREATH, 1
	iffalse .ClairLastText
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext ClairText_DescribeDragonbreathDragonDen
	promptbutton
	sjump .ClairLastText
.ClairLastText
	writetext ClairText_CollectedAllBadges
	waitbutton
	closetext
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksAway
	disappear DRAGONSDENB1F_CLAIR
	end

.BagFullDragonFang:
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	promptbutton
	writetext Text_NoRoomForDragonFang
	waitbutton
	closetext
	end

DragonsDenB1FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RivalTalkAgain
	writetext RivalText_Training1
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.RivalTalkAgain:
	writetext RivalText_Training2
	waitbutton
	closetext
	special RestartMapMusic
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

MovementDragonsDen_ClairWalksToYou:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementDragonsDen_ClairWalksAway:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ClairText_GiveDragonbreathDragonDen:
	text "이향『알겠어요!"
	line "당신의 실력 인정하지요"
	cont "이 배지를 가지고 가세요"
	done

DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER>는(은) 이향으로부터"
	line "라이징배지를 받았다!"
	done

DragonShrineRisingBadgeExplanationText:
	text "라이징배지를 가지고 있으면"
	line "어떤 폭포라도"
	cont "오를 수 있도록 되요!"

	para "또한 모든 포켓몬이"
	line "당신을 트레이너로서 인정하고"
	cont "어떠한 명령도 따르게 되지요!"

	para "그거랑 이 기술머신을"
	line "가지고가면 좋아요"
	done

Text_ReceivedTM24: ; unreferenced
	text "<PLAYER>는(은) 이향으로부터"
	line "기술머신 24를 얻었다!"
	done

ClairText_DescribeDragonbreathDragonDen:
	text "안에 들어있는 것은"
	line "용의 숨결"

	para "……별로 화려한 것은 아니야"
	line "필요없으면 무리해서"
	cont "가지고 가지 않아도 좋아"
	done

ClairText_CollectedAllBadges:
	text "모든 배지가 전부 모인 것 같군 "

	para "향할 곳은 석영고원"
	line "포켓몬 리그"

	para "장소는 알고있니?"
	line "그렇군, 여기서부터라면"
	cont "먼저 연두마을에 가야해"

	para "그곳에서 파도타기로"
	line "계속 동쪽으로 가면 될꺼야"
	cont "단지 힘든 여정이 될꺼야"

	para "포켓몬 리그에서도"
	line "진다면 용서하지 않을 꺼니까!"

	para "그렇지않으면 패한"
	line "내가 비참해지잖아!"
	done

DragonShrineSignpostText:
	text "용의 사당"

	para "용이 굴에 있다고 한다"
	line "드래곤 포켓몬을 받들어 모신다"
	done

RivalText_Training1:
	text "…… …… ……"
	line "뭐야 <PLAYER>(이)잖아……"

	para "…… 미안하지만 너의"
	line "상대가 되어줄 생각은 없다"

	para "지금의 이 녀석들로서는"
	line "너에게 이길 수 없으니까"
	cont "그런 무책임한 짓은 시킬 수 없지"

	para "그렇게하지 않으면"
	line "최강의 트레이너는"
	cont "될 수 없으니까……"
	done

RivalText_Training2:
	text "…… …… ……"

	para "후우……"
	line "사람의 방해를 해서는 안되지!"
	done

Text_FoundDragonFang:
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer3
	text "를(을)"
	cont "발견했다"
	done

Text_NoRoomForDragonFang:
	text "그러나 <PLAYER>는(은)"
	line "더 이상 도구를 지닐 수 없다!"
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3

	def_coord_events

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 31,  4, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFangScript, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	object_event 35, 22, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 20, 23, SPRITE_RIVAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FRivalScript, EVENT_RIVAL_DRAGONS_DEN
