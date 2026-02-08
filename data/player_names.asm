NameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 1, 10, TEXTBOX_Y
	dw .Names
	db 1 ; default option

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "스스로 결정하다@"

PlayerNameArray:
IF DEF(_GOLD)
	db "골드@"
	db "수호@"
	db "인철@"
	db "강산@"
ELIF DEF(_SILVER)
	db "실버@"
	db "청운@"
	db "지겸@"
	db "찬호@"
ENDC
	db 3 ; title indent
	db "이름 후보@" ; title
