	object_const_def
	const TINTOWER1F_SAGE

TinTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTowerSageScript:
	jumptextfaceplayer TinTowerSageText

TinTowerSageText:
	text "나는 이곳에 내려온다고 하는"
	line "전설의 포켓몬의"
	cont "비밀을 밝혀내려 하고 있소"

	para "서쪽의 탑이 불에 타버린 이후"
	line "여기에 있던 포켓몬은"
	cont "계속 하늘을 날고 있다하오"

	para "거기서 생각해보았소이다"
	line "날고있는 포켓몬과"
	cont "같은 것을 가지고 있는 다면"
	cont "유인되어져 올 것이라는 것을!"

	para "그 같은 것 이란것은 아마도……"

	para "무지개빛 날개!"

	para "그렇지만 그런 것이"
	line "어디에 있겠소이까?"
	done

TinTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 12
	warp_event 10, 15, ECRUTEAK_CITY, 12
	warp_event 10,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerSageScript, EVENT_TEAM_ROCKET_DISBANDED
