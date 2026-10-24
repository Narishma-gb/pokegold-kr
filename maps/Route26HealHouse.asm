	object_const_def
	const ROUTE26HEALHOUSE_TEACHER

Route26HealHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route26HealHouseTeacherScript:
	faceplayer
	opentext
	writetext Route26HealHouseRestAWhileText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext Route26HealHouseKeepAtItText
	waitbutton
	closetext
	end

Route26HealHouseBookshelf:
	jumpstd PictureBookshelfScript

Route26HealHouseRestAWhileText:
	text "네 포켓몬"
	line "지쳐있는 것 같구나……"

	para "빨리 쉬게 하거라"
	done

Route26HealHouseKeepAtItText:
	text "움!"
	line "포켓몬 건강을 되찾았구나!"
	cont "그럼 잘 하거라!"
	done

Route26HealHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_26, 2
	warp_event  3,  7, ROUTE_26, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route26HealHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route26HealHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route26HealHouseTeacherScript, -1
