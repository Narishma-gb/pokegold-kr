; see engine/menus/naming_screen.asm

NameInputLayout:
	db "  ㄱㄴㄷㄹ ㅁㅂㅅㅇ ㅈㅊㅋㅌ  "
	db SCREEN_WIDTH + 2
	db "  ㅍㅎㄲㄸ ㅃㅆㅉ        "
	db SCREEN_WIDTH + 2
	db "  ㅏㅑㅓㅕ ㅗㅛㅜㅠ ㅡㅣㅐㅒ  "
	db SCREEN_WIDTH + 2
	db "  ㅔㅖㅘㅙ ㅚㅝㅞㅟ ㅢ     "
	db 2

INCBIN "gfx/naming_screen/del_end_naming.tilemap"
NameInputLayoutEnd:
