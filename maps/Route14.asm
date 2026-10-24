	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "고생해서 손에 넣은"
	line "자랑스런 포켓몬과 승부다!"
	done

PokefanmCarterBeatenText:
	text "우와아……!"
	done

PokefanmCarterAfterBattleText:
	text "꼬부기 파이리 이상해씨"
	line "이 조합은 확실히"
	cont "밸런스가 좋다고 생각한다!"
	done

BirdKeeperRoySeenText:
	text "제일 좋아하는 새 포켓몬과"
	line "넓은 하늘을 나는 것이 나의 꿈!"
	done

BirdKeeperRoyBeatenText:
	text "푸드득 푸드득!"
	line "날개를 펼쳐도 나는 날 수 없군!"
	done

BirdKeeperRoyAfterBattleText:
	text "너의 포켓몬"
	line "비전 기술 공중날기라는 것"
	cont "물론 가르쳤겠지?"
	cont "부럽구낭……"
	done

PokefanmTrevorSeenText:
	text "체육관 트레이너 전원과"
	line "싸웠단말인가?"
	done

PokefanmTrevorBeatenText:
	text "우와-!"
	line "강하다!!"
	done

PokefanmTrevorAfterBattleText:
	text "관동지방의 배지를 가지고 있으면"
	line "대전에서 유리하게 된단다!"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  5,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
