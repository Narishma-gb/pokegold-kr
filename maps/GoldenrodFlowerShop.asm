	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER
	const GOLDENRODFLOWERSHOP_FLORIA

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .Lalala
	checkflag ENGINE_PLAINBADGE
	iffalse .Lalala
	faceplayer
	opentext
	writetext GoldenrodFlowerShopTeacherBetterThanWhitneyText
	promptbutton
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext

.Lalala:
	turnobject GOLDENRODFLOWERSHOP_TEACHER, LEFT
	opentext
	writetext GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText
	waitbutton
	closetext
	end

FlowerShopFloriaScript:
	faceplayer
	opentext
	checkflag ENGINE_PLAINBADGE
	iffalse .NoPlainBadge
	writetext GoldenrodFlowerShopFloriaJumpsInSurpriseText
	waitbutton
	closetext
	end

.NoPlainBadge:
	writetext GoldenrodFlowerShopFloriaMustBeAMonText
	waitbutton
	closetext
	end

FlowerShopShelf1: ; unreferenced
	jumpstd PictureBookshelfScript

FlowerShopShelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

FlowerShopRadio: ; unreferenced
	jumpstd Radio2Script

GoldenrodFlowerShopTeacherBetterThanWhitneyText:
	text "응? 너"
	line "꼭두보다 강하구나"

	para "움직이는 나무를 알고 있니?"

	para "꼬부기 물뿌리개로 물을 뿌리면"
	line "덤벼든다는데"
	cont "그렇듯 배지를 가지고 있다면"
	cont "걱정 없을 것 같네!"
	done

GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText:
	text "라라라 라라라라"
	line "듬뿍 물을 줄께"
	done

GoldenrodFlowerShopFloriaMustBeAMonText:
	text "36번 도로의"
	line "움직이는 나무에게 물을 주니까"
	cont "놀라서 뛰어올랐단다"

	para "틀림없이 포켓몬이라고 생각하는데"
	line "체육관 관장인 꼭두정도로"
	cont "강하지 않으면 이기지 못해……"
	done

GoldenrodFlowerShopFloriaJumpsInSurpriseText:
	text "움직이는 나무 알고 있니?"

	para "물을 뿌리면"
	line "놀라서 뛰어오른단다"
	done

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 6
	warp_event  3,  7, GOLDENROD_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, -1
