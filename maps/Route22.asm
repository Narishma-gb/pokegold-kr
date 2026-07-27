Route22_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "이곳은 포켓몬 리그"
	line "챔피언 로드 입구"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  5, VICTORY_ROAD_GATE, 1

	def_coord_events

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
