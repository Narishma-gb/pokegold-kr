	object_const_def
	const PEWTERSNOOZESPEECHHOUSE_GRAMPS

PewterSnoozeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSnoozeSpeechHouseGrampsScript:
	jumptextfaceplayer PewterSnoozeSpeechHouseGrampsText

PewterSnoozeSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

PewterSnoozeSpeechHouseGrampsText:
	text "라디오를 들으면서"
	line "낮잠 자는 것을 좋아해……"
	cont "쿨…… 음냐음냐……"
	done

PewterSnoozeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseGrampsScript, -1
