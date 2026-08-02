	object_const_def
	const OLIVINECAFE_SAILOR
	const OLIVINECAFE_FISHING_GURU

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeStrengthSailorText:
	text "뭐야? 꽤나"
	line "약해보이는 포켓몬이구나"

	para "그래가지고는"
	line "커다란 바위도 밀수 없을껄"

	para "이것을 사용해서"
	line "괴력의 기술을 가르쳐주거라!"

	para "단 싸우지 않을때에 사용하려면"
	line "금빛시티의 체육관 배지가"
	cont "필요하단다!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "바다 위에서 의지할 수 있는 것은"
	line "내 자신의 육체뿐"
	cont "강한 힘이 자랑꺼리란다!"
	done

OlivineCafeFishingGuruText:
	text "바다를 건널 작정인가"
	line "그렇다면 이야기를 들어라!"

	para "여기서부터 진청시티까지"
	line "곳곳에 소용돌이가 치고있다"

	para "특별한 기술을 가르치지 않으면"
	line "바다 위를 지나갈 수 없다!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  1,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
