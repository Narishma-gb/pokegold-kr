; $00-$16 are also TX_* constants (see macros/scripts/text.asm)

MACRO def_kr_table
	DEF cur_kr_table = \1
ENDM

MACRO kr_charmap
  charmap \1, cur_kr_table, \2
ENDM

; Korean characters use a 2-byte codepoint:
; The first byte ($01 - $0b) determines the table,
; the second byte is the index of a character in this table

INCLUDE "constants/charmap/korean_table_1.asm"
INCLUDE "constants/charmap/korean_table_2.asm"
INCLUDE "constants/charmap/korean_table_3.asm"
INCLUDE "constants/charmap/korean_table_4.asm"
INCLUDE "constants/charmap/korean_table_5.asm"
INCLUDE "constants/charmap/korean_table_6.asm"
INCLUDE "constants/charmap/korean_table_7.asm"
INCLUDE "constants/charmap/korean_table_8.asm"
INCLUDE "constants/charmap/korean_table_9.asm"
INCLUDE "constants/charmap/korean_table_a.asm"
INCLUDE "constants/charmap/korean_table_b.asm"

INCLUDE "constants/charmap/japanese.asm"

; Control characters (see home/text.asm)

	charmap "<NULL>",    $00
	charmap "<BSP>",     $1d ; breakable space (usually " ", or "<LF>" on the Town Map)
	charmap "<LF>",      $1e
	charmap "<KOUGEKI>", $1f ; "こうげき"
	charmap "<POKE>",    $33 ; "<PO><KE>"
	charmap "<WBR>",     $34 ; word-break opportunity (usually skipped, or "<LF>" on the Town Map)
	charmap "<ROUTE>",   $35 ; dummy, was "ばん　どうろ" in Japanese
	charmap "<WATASHI>", $36 ; dummy, was "わたし" in Japanese
	charmap "<KOKO_WA>", $37 ; dummy, was "ここは" in Japanese
	charmap "<PKMN>",    $46 ; "<PK><MN>"
	charmap "#",         $47 ; "포켓몬"
	charmap "<……>",      $48 ; "……"
	charmap "<PC>",      $49 ; "컴퓨터"
	charmap "<TM>",      $4a ; "기술머신"
	charmap "<ROCKET>",  $4b ; "로켓단"
	charmap "<DEXEND>",  $4c
	charmap "<RED>",     $4d ; wRedsName
	charmap "<GREEN>",   $4e ; wGreensName
	charmap "<ENEMY>",   $4f
	charmap "@",         $50 ; string terminator
	charmap "<PLAYER>",  $51 ; wPlayerName
	charmap "<RIVAL>",   $52 ; wRivalName
	charmap "<TARGET>",  $53
	charmap "<USER>",    $54
	charmap "<TRAINER>", $55 ; "트레이너"
	charmap "<_CONT>",   $56 ; implements "<CONT>"
	charmap "<SCROLL>",  $57
	charmap "<NEXT>",    $59
	charmap "<LINE>",    $5a
	charmap "<MOM>",     $5b ; wMomsName
	charmap "<PARA>",    $5c
	charmap "<CONT>",    $5d
	charmap "<DONE>",    $5e
	charmap "<PROMPT>",  $5f


; Actual characters (from gfx/font/font_extra.png)

	charmap "<BOLD_A>", $60 ; unused
	charmap "<BOLD_B>", $61 ; unused
	charmap "<BOLD_C>", $62 ; unused
	charmap "<BOLD_D>", $63 ; unused
	charmap "<BOLD_E>", $64 ; unused
	charmap "<BOLD_F>", $65 ; unused
	charmap "<BOLD_G>", $66 ; unused
	charmap "<BOLD_H>", $67 ; unused
	charmap "<BOLD_I>", $68 ; unused
	charmap "<BOLD_V>", $69
	charmap "<BOLD_S>", $6a
	charmap "<BOLD_L>", $6b ; unused
	charmap "<BOLD_M>", $6c ; unused
	charmap "<COLON>",  $6d ; colon with tinier dots than ":"
	charmap "ぃ",        $6e ; hiragana small i, unused
	charmap "ぅ",        $6f ; hiragana small u, unused
	charmap "<PO>",     $70
	charmap "<KE>",     $71
	charmap "<『>",      $72 ; Japanese opening quote, unused
	charmap "<』>",      $73 ; Japanese closing quote, unused
	charmap "·",        $74 ; middle dot, unused
	charmap "<…>",      $75 ; ellipsis
	charmap "ぁ",        $76 ; hiragana small a, unused
	charmap "ぇ",        $77 ; hiragana small e, unused
	charmap "ぉ",        $78 ; hiragana small o, unused

	charmap "┌",        $79
	charmap "─",        $7a
	charmap "┐",        $7b
	charmap "│",        $7c
	charmap "└",        $7d
	charmap "┘",        $7e
	charmap " ",        $7f


; Actual characters (from gfx/font/font_battle_extra.png)

	charmap "<LV>", $6e

	charmap "<DO>", $70 ; hiragana small do, unused
	charmap "◀",    $71
	
	charmap "<ID>", $73
	charmap "№",    $74


; Actual characters (from gfx/pokedex/pokedex.png)

;	Needed for Pokedex_DrawDexEntryScreenBG (see engine/menus/pokedex.asm)
;	As these characters partially overlap with control codes values,
;	they can not be used with PlaceString or PrintText.
	charmap "<m>", $5e
	charmap "<k>", $5f
	charmap "<g>", $60


; Actual characters (from other graphics files)

	; needed for _LoadFontsExtra1 (see engine/gfx/load_font.asm)
	charmap "■",  $60 ; gfx/font/black.2bpp
	charmap "▲",  $61 ; gfx/font/up_arrow.png
	charmap "☎", $62 ; gfx/font/phone_icon.2bpp

	; needed for MagikarpHouseSign (see engine/events/magikarp.asm)
	;charmap "′",         $6e ; gfx/font/feet_inches.png
	;charmap "″",         $6f ; gfx/font/feet_inches.png

	; needed for StatsScreen_PlaceShinyIcon and PrintPartyMonPage1
	charmap "⁂", $3f ; gfx/stats/stats_tiles.png, tile 14

	; needed for NamingScreen

	charmap "ㄱ", $a0
	charmap "ㄴ", $a1
	charmap "ㄷ", $a2
	charmap "ㄹ", $a3
	charmap "ㅁ", $a4
	charmap "ㅂ", $a5
	charmap "ㅅ", $a6
	charmap "ㅇ", $a7
	charmap "ㅈ", $a8
	charmap "ㅊ", $a9
	charmap "ㅋ", $aa
	charmap "ㅌ", $ab
	charmap "ㅍ", $ac
	charmap "ㅎ", $ad
	charmap "ㄲ", $ae
	charmap "ㄸ", $af
	charmap "ㅃ", $b0
	charmap "ㅆ", $b1
	charmap "ㅉ", $b2

	charmap "ㅏ", $c0
	charmap "ㅑ", $c1
	charmap "ㅓ", $c2
	charmap "ㅕ", $c3
	charmap "ㅗ", $c4
	charmap "ㅛ", $c5
	charmap "ㅜ", $c6
	charmap "ㅠ", $c7
	charmap "ㅡ", $c8
	charmap "ㅣ", $c9
	charmap "ㅐ", $ca
	charmap "ㅒ", $cb
	charmap "ㅔ", $cc
	charmap "ㅖ", $cd
	charmap "ㅘ", $ce
	charmap "ㅙ", $cf
	charmap "ㅚ", $d0
	charmap "ㅝ", $d1
	charmap "ㅞ", $d2
	charmap "ㅟ", $d3
	charmap "ㅢ", $d4


; Actual characters (from gfx/font/font.png)

	charmap "A", $80
	charmap "B", $81
	charmap "C", $82
	charmap "D", $83
	charmap "E", $84
	charmap "F", $85
	charmap "G", $86
	charmap "H", $87
	charmap "I", $88
	charmap "J", $89
	charmap "K", $8a
	charmap "L", $8b
	charmap "M", $8c
	charmap "N", $8d
	charmap "O", $8e
	charmap "P", $8f
	charmap "Q", $90
	charmap "R", $91
	charmap "S", $92
	charmap "T", $93
	charmap "U", $94
	charmap "V", $95
	charmap "W", $96
	charmap "X", $97
	charmap "Y", $98
	charmap "Z", $99

	charmap "<(>", $9a
	charmap "<)>", $9b
	charmap ":",   $9c
	charmap ";",   $9d
	charmap "[",   $9e
	charmap "]",   $9f

	charmap "a", $a0
	charmap "b", $a1
	charmap "c", $a2
	charmap "d", $a3
	charmap "e", $a4
	charmap "f", $a5
	charmap "g", $a6
	charmap "h", $a7
	charmap "i", $a8
	charmap "j", $a9
	charmap "k", $aa
	charmap "l", $ab
	charmap "m", $ac
	charmap "n", $ad
	charmap "o", $ae
	charmap "p", $af
	charmap "q", $b0
	charmap "r", $b1
	charmap "s", $b2
	charmap "t", $b3
	charmap "u", $b4
	charmap "v", $b5
	charmap "w", $b6
	charmap "x", $b7
	charmap "y", $b8
	charmap "z", $b9

	charmap "Ä", $c0
	charmap "Ö", $c1
	charmap "Ü", $c2
	charmap "ä", $c3
	charmap "ö", $c4
	charmap "ü", $c5

	charmap "'d", $d0
	charmap "'l", $d1
	charmap "'m", $d2
	charmap "'r", $d3
	charmap "'s", $d4
	charmap "'t", $d5
	charmap "'v", $d6

	charmap "'",    $e0
	charmap "<PK>", $e1
	charmap "<MN>", $e2
	charmap "<->",  $e3

	charmap "<?>", $e6
	charmap "<!>", $e7
	charmap ".",   $e8
	charmap "&",   $e9

	charmap "é",     $ea
	charmap "▷",     $ec
	charmap "▶",     $ed
	charmap "▼",     $ee
	charmap "♂",     $ef
	charmap "₩",     $f0
	charmap "×",     $f1
	charmap "<DOT>", $f2 ; decimal point; same as "." in English
	charmap "/",     $f3
	charmap "<,>",   $f4
	charmap "♀",     $f5

	charmap "0", $f6
	charmap "1", $f7
	charmap "2", $f8
	charmap "3", $f9
	charmap "4", $fa
	charmap "5", $fb
	charmap "6", $fc
	charmap "7", $fd
	charmap "8", $fe
	charmap "9", $ff
