	object_const_def
	const VERMILIONFISHINGSPEECHHOUSE_FISHING_GURU

VermilionFishingSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FishingDude:
	jumptextfaceplayer FishingDudeText

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText

FishingDudesHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

FishingDudeText:
	text "나는 낚시아저씨"
	line "낚시 형제의 형"

	para "너는 44번 도로에 있던"
	line "낚시꾼 광선이를 알고있니?"

	para "그녀석이 전화로 알려주는"
	line "낚시 정보는 대단하단다"

	para "진귀한 포켓몬도 낚아올리는"
	line "낚시의 황제란다!"
	done

FishingDudesHousePhotoText:
	text "낚시를 하고 있는 사람이"
	line "찍혀있다……"
	cont "매우 즐거운 것 같다"
	done

VermilionFishingSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingDude, -1
