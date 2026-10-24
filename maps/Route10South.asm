	object_const_def
	const ROUTE10SOUTH_POKEFAN_M1
	const ROUTE10SOUTH_POKEFAN_M2

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerJim:
	trainer HIKER, JIM, EVENT_BEAT_HIKER_JIM, HikerJimSeenText, HikerJimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerJimAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmRobert:
	trainer POKEFANM, ROBERT, EVENT_BEAT_POKEFANM_ROBERT, PokefanmRobertSeenText, PokefanmRobertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRobertAfterBattleText
	waitbutton
	closetext
	end

Route10Sign:
	jumptext Route10SignText

HikerJimSeenText:
	text "하하 핫핫핫핫!"
	done

HikerJimBeatenText:
	text "하하 핫핫핫!"
	line "하하 핫핫핫!"
	cont "웃음버섯을 먹어버렸어!"
	done

HikerJimAfterBattleText:
	text "히잇 힛힛힛힛!"
	line "…… 하아 하히히……"
	done

PokefanmRobertSeenText:
	text "너도 포켓몬 좋아하지?"
	line "나도 엄청 좋아한단다!"
	done

PokefanmRobertBeatenText:
	text "이것은 그야말로"
	line "나의 패배같구나!"
	done

PokefanmRobertAfterBattleText:
	text "소중한 포켓몬을……"
	line "너에대한 추억을 잊지 않을꺼야……"
	done

Route10SignText:
	text "이곳은 10번 도로"
	line "블루시티 …… 보라타운"
	done

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_READ, Route10Sign

	def_object_events
	object_event 17,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerJim, -1
	object_event  4, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanmRobert, -1
