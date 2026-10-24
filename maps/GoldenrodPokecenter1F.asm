	object_const_def
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_FISHER
	const GOLDENRODPOKECENTER1F_TWIN

GoldenrodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecenter1FGameboyKidScript:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FGameboyKidText
	waitbutton
	closetext
	turnobject GOLDENRODPOKECENTER1F_GAMEBOY_KID, DOWN
	end

GoldenrodPokecenter1FPersonScript:
	jumptextfaceplayer GoldenrodPokecenter1FPersonText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FGameboyKidText:
	text "포켓몬 센터의"
	line "2층에 있는 콜로세움에서"
	cont "통신대전을 할 수 있지"

	para "벽을 보면 자신의 성적을"
	line "알 수 있으니까 질 수 없어"
	done

GoldenrodPokecenter1FPersonText:
	text "이 세상에는 어느정도나"
	line "포켓몬이 있는 것일까"

	para "3년전 오박사님은"
	line "150종류가 있다고"
	cont "발표하셨는데"
	done

GoldenrodPokecenter1FLassText:
	text "얼마나 레벨이 높든"
	line "타입의 상성이 있단다"

	para "절대 강한 포켓몬이란 것은"
	line "그렇게 없는 것 같아"
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOLDENROD_CITY, 7
	warp_event  4,  7, GOLDENROD_CITY, 7
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  8,  6, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPersonScript, -1
	object_event  0,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
