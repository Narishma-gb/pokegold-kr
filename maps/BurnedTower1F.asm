	object_const_def
	const BURNEDTOWER1F_FIREBREATHER_DICK
	const BURNEDTOWER1F_FIREBREATHER_NED
	const BURNEDTOWER1F_ROCK1
	const BURNEDTOWER1F_ROCK2
	const BURNEDTOWER1F_RIVAL
	const BURNEDTOWER1F_FIREBREATHER_DICK_ASHES
	const BURNEDTOWER1F_POKE_BALL1
	const BURNEDTOWER1F_POKE_BALL2

BurnedTower1F_MapScripts:
	def_scene_scripts
	scene_script BurnedTower1FRivalBattleScene, SCENE_BURNEDTOWER1F_RIVAL_BATTLE
	scene_script BurnedTower1FNoop1Scene,       SCENE_BURNEDTOWER1F_FIREBREATHER_DICK
	scene_script BurnedTower1FNoop2Scene,       SCENE_BURNEDTOWER1F_NOOP

	def_callbacks

BurnedTower1FRivalBattleScene:
	sdefer BurnedTower1FRivalBattleScript
	end

BurnedTower1FNoop1Scene:
	end

BurnedTower1FNoop2Scene:
	end

BurnedTower1FRivalBattleScript:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	turnobject BURNEDTOWER1F_RIVAL, RIGHT
	pause 10
	turnobject BURNEDTOWER1F_RIVAL, LEFT
	pause 15
	turnobject BURNEDTOWER1F_RIVAL, DOWN
	pause 15
	applymovement BURNEDTOWER1F_RIVAL, BurnedTowerMovement_RivalWalksToPlayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext BurnedTowerRival_BeforeText
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .chikorita
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.totodile
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.chikorita
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.returnfrombattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext BurnedTowerRival_AfterText1
	waitbutton
	closetext
	turnobject PLAYER, UP
	turnobject PLAYER, RIGHT
	applymovement BURNEDTOWER1F_RIVAL, BurnedTowerMovement_RivalLeaves
	playsound SFX_EXIT_BUILDING
	disappear BURNEDTOWER1F_RIVAL
	setscene SCENE_BURNEDTOWER1F_FIREBREATHER_DICK
	waitsfx
	playmapmusic
	end

FirebreatherDickFight:
	playmusic MUSIC_HIKER_ENCOUNTER
	showemote EMOTE_SHOCK, BURNEDTOWER1F_FIREBREATHER_DICK, 30
	applymovement BURNEDTOWER1F_FIREBREATHER_DICK, FirebreatherDickMovement
	turnobject PLAYER, DOWN
	opentext
	writetext FirebreatherDickBeforeText
	waitbutton
	closetext
	winlosstext FirebreatherDickBeatenText, -1
	setlasttalked BURNEDTOWER1F_FIREBREATHER_DICK
	loadtrainer FIREBREATHER, DICK
	startbattle
	iftrue .next
	disappear BURNEDTOWER1F_FIREBREATHER_DICK
	appear BURNEDTOWER1F_FIREBREATHER_DICK_ASHES
	reloadmapafterbattle
	setevent EVENT_BEAT_FIREBREATHER_DICK
	setscene SCENE_BURNEDTOWER1F_NOOP
	clearevent EVENT_BURNED_TOWER_FIREBREATHER_DICK_NORMAL
	setevent EVENT_BURNED_TOWER_FIREBREATHER_DICK_ASHES
	end
.next
	reloadmapafterbattle
	end

FirebreatherDickPostBattle:
	faceplayer
	opentext
	writetext FirebreatherDickAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherNed:
	trainer FIREBREATHER, NED, EVENT_BEAT_FIREBREATHER_NED, FirebreatherNedSeenText, FirebreatherNedBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext FirebreatherNedAfterText
	waitbutton
	closetext
	end

BurnedTower1FRock:
	jumpstd SmashRockScript

BurnedTower1FHiddenEther:
	hiddenitem ETHER, EVENT_BURNED_TOWER_1F_HIDDEN_ETHER

BurnedTower1FBurnHeal:
	itemball BURN_HEAL, 1

BurnedTower1FXSpeed:
	itemball X_SPEED, 1

BurnedTowerMovement_RivalWalksToPlayer:
	step DOWN
	step DOWN
	step_end

BurnedTowerMovement_RivalLeaves:
	step RIGHT
	step DOWN
	step_end

FirebreatherDickMovement:
	step UP
	step_end

BurnedTowerRival_BeforeText:
	text "…… …… ……"

	para "…… 뭐야 너였냐?"

	para "조금은 강해지고 싶어서"
	line "이곳에 잠들어 있다고 전해지는"
	cont "전설의 포켓몬을 찾으려고 왔다"
	cont "뭐 그런 마음이었을 테지!"

	para "하지만 그건 무리야"

	para "전설의 포켓몬은"
	line "내가 잡을꺼야……"

	para "누가 뭐라해도 나는 최강의 "
	line "트레이너가 될 테니까"
	cont "전설의 포켓몬이 어울리니까"

	para "…… 그것보다도 너"
	line "약한주제에 여기저기"
	cont "어정거려서 눈에 거슬려"
	done

BurnedTowerRival_WinText:
	text "…… 흥!"

	para "이렇기 때문에 약한 녀석과"
	line "싸우는 것이 싫다니까"
	cont "나도 모르는 새 놀자판이 된다니까"
	done

BurnedTowerRival_AfterText1:
	text "…… 뭐 괜찮아"

	para "너 같은 녀석에게"
	line "전설의 포켓몬이"
	cont "잡힐 리가 없으니까"
	done

BurnedTowerRival_LossText:
	text "…… 흥!"

	para "이렇기 때문에 약한 녀석과"
	line "싸우는 것이 싫다니까"
	cont "시간낭비만 될 뿐이야"
	done

FirebreatherDickBeforeText:
	text "몰래 연습하고 있는 것을"
	line "보이게된다면 창피하잖아!"
	done

FirebreatherDickBeatenText:
	text "불이 붙었다……"
	line "새하얗게 되어 버렸어……"
	done

FirebreatherDickAfterText:
	text "연습에 열중해서"
	line "구덩이로부터 떨어져버렸어  와하하"
	done

FirebreatherNedSeenText:
	text "나의 투혼이 불타오르고 있다"
	line "그 뜨거움을 가르쳐주마"
	done

FirebreatherNedBeatenText:
	text "아직 온도가 낮았었나?"
	done

FirebreatherNedAfterText:
	text "옛날 엄청나게 빠른 속도로"
	line "여기저기의 길을 뛰어다녔던"
	cont "포켓몬이 있었던 것 같다"

	para "바람처럼 재빠른것 같으니"
	line "우연히 풀숲에서 만나도"
	cont "바로 도망가버리겠지!"
	done

BurnedTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 13
	warp_event 10, 15, ECRUTEAK_CITY, 13
	warp_event  5,  4, BURNED_TOWER_B1F, 1
	warp_event  5,  5, BURNED_TOWER_B1F, 1
	warp_event  5,  6, BURNED_TOWER_B1F, 1
	warp_event  4,  6, BURNED_TOWER_B1F, 1
	warp_event 15,  4, BURNED_TOWER_B1F, 2
	warp_event 15,  5, BURNED_TOWER_B1F, 2
	warp_event 10,  7, BURNED_TOWER_B1F, 3
	warp_event  5, 14, BURNED_TOWER_B1F, 4
	warp_event  4, 14, BURNED_TOWER_B1F, 4
	warp_event 14, 14, BURNED_TOWER_B1F, 5
	warp_event 15, 14, BURNED_TOWER_B1F, 5
	warp_event  7, 15, BURNED_TOWER_B1F, 6

	def_coord_events
	coord_event 8,  1, SCENE_BURNEDTOWER1F_FIREBREATHER_DICK, FirebreatherDickFight

	def_bg_events
	bg_event  8,  7, BGEVENT_ITEM, BurnedTower1FHiddenEther

	def_object_events
	object_event 8, 3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FirebreatherDickPostBattle, EVENT_BURNED_TOWER_FIREBREATHER_DICK_NORMAL
	object_event 16, 8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherNed, -1
	object_event 4, 3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 16, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 9, 12, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, ObjectEvent, EVENT_RIVAL_BURNED_TOWER
	object_event 8, 2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, FirebreatherDickPostBattle, EVENT_BURNED_TOWER_FIREBREATHER_DICK_ASHES
	object_event 15, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTower1FBurnHeal, EVENT_BURNED_TOWER_1F_X_SPEED
	object_event 7, 5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTower1FXSpeed, EVENT_BURNED_TOWER_1F_BURN_HEAL
