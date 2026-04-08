SECTION "bank71", ROMX

MACRO kr_struct
	if _NARG > 2
		dw \1 + (\2) << 5 + (\3) << 10
	elif _NARG > 1
		dw \1 + (\2) << 5
	else
		dw \1
	endc
ENDM

HangulStructureTables:
INCLUDE "data/text/hangul_structure_tables.asm"

NamingScreenGFX_Font:
INCBIN "gfx/font/hangul/jamo_consonants.2bpp"
INCBIN "gfx/font/font_naming_screen.2bpp"
INCBIN "gfx/font/hangul/jamo_vowels.2bpp"
INCBIN "gfx/font/font_naming_screen2.2bpp"

	ds 16, 0 ; blank tile

Function1c5c00:
	call GetTextCursorPosition
	dec hl
	ld a, [hld]
	ld b, [hl]
	ld c, a
	cp $FF
	jr nz, .asm_1c5c12
	ld a, b
	cp $0B
	jr nz, .asm_1c5c12
	scf
	ret

.asm_1c5c12
	sla c
	rl b
	ld hl, HangulStructureTables
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	and b
	cp $FF
	jr nz, .asm_1c5c24
	and a
	ret

.asm_1c5c24
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)
	ret z
	cp FINAL_GIYEOK << 2 ; "ㄱ"
	ret z
	cp FINAL_NIEUN << 2  ; "ㄴ"
	ret z
	cp FINAL_RIEUL << 2  ; "ㄹ"
	ret z
	cp FINAL_BIEUP << 2  ; "ㅂ"
	ret z
	scf
	ret

TryAddCharacter::
	ld a, [wNamingScreenLastCharacter]
	cp ' '
	jr nz, .not_space
	lb bc, charval("<SP>", 0), charval("<SP>", 1)
	ret

.not_space
	cp '<?>'
	jr nz, .not_question
	lb bc, charval("?", 0), charval("?", 1)
	ret

.not_question
	cp '<!>'
	jr nz, .not_exclamation
	lb bc, charval("!", 0), charval("!", 1)
	ret

.not_exclamation
	cp '0'
	jr c, .not_digit
	sub '0' - charval("<0>", 1)
	ld c, a
	ld b, charval("<0>", 0)
	ret

.not_digit
	ld a, [wNamingScreenCurNameLength]
	and a
	jr nz, .not_first_char
	ld a, [wNamingScreenLastCharacter]
	sub 'ㄱ'
	ld c, a
	ld b, $0B
	ret

.not_first_char
	add sp, -6
	ld hl, .return
	push hl
	jr .add_jamo

.return
	add sp, 6
	ret

.add_jamo
	ld a, [wNamingScreenLastCharacter]
	sub 'ㄱ'
	ld c, a
	ld b, $0B
	ld hl, sp + 2
	ld [hli], a
	ld [hl], b
	sla c
	rl b
	ld hl, HangulStructureTables
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld hl, sp + 4
	ld [hli], a
	ld [hl], b
	ld a, [wNamingScreenLastCharacter]
	cp 'ㅏ'
	rl a
	and $01
	ld hl, sp + 6
	ld [hl], a

; Stack layout:
; +7 nothing
; +6 boolean (0 = vowel; 1 = consonant)
; +4 index of selected hangul character (in HangulStructureTables)
; +2 charmap index of selected hangul character (in table $b)
; +0 .return address
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	call GetTextCursorPosition
	ld a, [hli]
	ld c, [hl]
	ld b, a
	sla c
	rl b
	ld hl, HangulStructureTables
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	and b
	cp -1
	jr nz, .try_add_block

.new_character
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ld hl, sp + 2
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret

.try_add_block
; check current character under cursor
	ld a, b
	and HIGH(FINAL_BLOCK_MASK) | HIGH(MEDIAL_BLOCK_MASK)
	jr nz, .try_add_final
	ld a, c
	and LOW(MEDIAL_BLOCK_MASK)
	jr nz, .try_add_final
; current is initial consonant
	ld hl, sp + 6
	bit 0, [hl]
	jr z, .add_medial_vowel
; add medial consonant (illegal)
	jr .new_character

.add_medial_vowel
	ld hl, sp + 4
	ld a, [hli]
	or c
	ld c, a
	ld a, [hl]
	or b
	ld b, a
	jp .done

.try_add_final
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)
	jr nz, .add_final
	ld a, c
	and INITIAL_BLOCK_MASK
	jr nz, .add_final
; current is jamo vowel (illegal character)
	jr .new_character

.add_final
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)
	jr nz, .add_second_final
	ld hl, sp + 6
	bit 0, [hl]
	jr z, .add_final_vowel
; add first final consonant
	ld hl, sp + 2
	ld a, [hl]
	ld e, a
	ld d, 0
	sla e
	rl d
	ld hl, FinalConsonantTable
	add hl, de
	ld a, [hli]
	or c
	ld c, a
	ld a, [hl]
	or b
	ld b, a
	jp .done

.add_final_vowel
; add a vowel after a medial vowel
	jr .new_character

.add_second_final
	ld hl, sp + 6
	bit 0, [hl]
	jp z, .add_second_final_vowel
; add second final consonant
	ld hl, sp + 4
	ld a, [hl]
	and INITIAL_BLOCK_MASK
	ld e, a
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)

	cp FINAL_GIYEOK << 2 ; "ㄱ"
	jr nz, .not_final_giyeok
	ld a, e
	cp INITIAL_SIOT ; "ㅅ"
	jp nz, .new_character
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_GIYEOK_SIOT << 2
	ld b, a
	jp .done

.not_final_giyeok
	cp FINAL_NIEUN << 2 ; "ㄴ"
	jr nz, .not_final_nieun
	ld a, e
	cp INITIAL_JIEUT ; "ㅈ"
	jr nz, .not_nieun_jieut
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_NIEUN_JIEUT << 2
	ld b, a
	jp .done

.not_nieun_jieut
	cp INITIAL_HIEUT ; "ㅎ"
	jp nz, .new_character
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_NIEUN_HIEUT << 2
	ld b, a
	jp .done

.not_final_nieun
	cp FINAL_RIEUL << 2 ; "ㄹ"
	jr nz, .not_final_rieul
	ld a, e
	cp INITIAL_GIYEOK ; "ㄱ"
	jr nz, .not_rieul_giyeok
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_GIYEOK << 2
	ld b, a
	jp .done

.not_rieul_giyeok
	cp INITIAL_MIEUM ; "ㅁ"
	jr nz, .not_rieul_mieum
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_MIEUM << 2
	ld b, a
	jp .done

.not_rieul_mieum
	cp INITIAL_BIEUP ; "ㅂ"
	jr nz, .not_rieul_bieup
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_BIEUP << 2
	ld b, a
	jp .done

.not_rieul_bieup
	cp INITIAL_SIOT ; "ㅅ"
	jr nz, .not_rieul_siot
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_SIOT << 2
	ld b, a
	jp .done

.not_rieul_siot
	cp INITIAL_TIEUT ; "ㅌ"
	jr nz, .not_rieul_tieut
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_TIEUT << 2
	ld b, a
	jp .done

.not_rieul_tieut
	cp INITIAL_PIEUP ; "ㅍ"
	jr nz, .not_rieul_pieup
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_PIEUP << 2
; this double final consonant is never used in hangul tables,
; and will result in a new character being added
	ld b, a
	jp .done

.not_rieul_pieup
	cp INITIAL_HIEUT ; "ㅎ"
	jp nz, .new_character
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_RIEUL_HIEUT << 2
	ld b, a
	jp .done

.not_final_rieul
	cp FINAL_BIEUP << 2 ; "ㅂ"
	jr nz, .not_final_bieup
	ld a, e
	cp INITIAL_SIOT ; "ㅅ"
	jp nz, .new_character
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or FINAL_BIEUP_SIOT << 2
	ld b, a
	jp .done

.not_final_bieup
	jp .new_character

.add_second_final_vowel
; Add a vowel after a final consonant: grab last consonant and try to write a new char.
; If successful, update the previous char with the removed consonant
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ld a, [wNamingScreenMaxNameLength]
	ld e, a
	ld a, [wNamingScreenCurNameLength]
	cp e
	ret nc
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)
	ld e, a
	ld d, 0
	srl e
	rr d
	srl e
	rr d
	push bc

; Stack layout:
; +9 nothing
; +8 boolean (0 = vowel; 1 = consonant)
; +6 index of selected hangul character (in HangulStructureTables)
; +4 charmap index of selected hangul character (in table $b)
; +2 .return address
; +0 saved bc	
	ld hl, NewVowelGrabConsonantTable
	add hl, de
	ld c, [hl]
	ld hl, sp + 6
	ld a, [hli]
	and LOW(MEDIAL_BLOCK_MASK)
	or c
	ld c, a
	ld b, [hl]
	push de
	call SearchMatchingHangulChar
	pop de
	pop hl
	jp nc, .new_character

	push bc
	ld c, l
	ld b, h
	ld hl, NewVowelRemainingConsonantTable
	add hl, de
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or [hl]
	ld b, a
	call SearchMatchingHangulChar
	pop hl
	jp nc, .new_character

; overwrite last character, removing last consonant
	push hl
	call GetTextCursorPosition
	ld a, b
	ld [hli], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	pop bc
	ret

.done
	call SearchMatchingHangulChar
	jp nc, .new_character
	ret

SearchMatchingHangulChar:
	ld hl, HangulStructureTable1
	ld d, $0A ; skip table $b
.next_table
	ld e, $00
.next_char
	ld a, [hl]
	cp c
	jr nz, .skip1
	inc hl
	ld a, [hli]
	cp b
	jr nz, .skip2
; convert address to charmap entry: bc = ((hl - 2) - $4000) / 2
	ld de, -$4000
	add hl, de
	srl h
	rr l
	dec hl
	ld c, l
	ld b, h
	scf
	ret

.skip1
	inc hl
	inc hl
.skip2
	dec e
	jr nz, .next_char
	dec d
	jr nz, .next_table
	and a
	ret

INCLUDE "data/text/hangul_final_blocks.asm"

GetTextCursorPosition:
; identical to NamingScreen_GetTextCursorPosition
	push af
	ld hl, wNamingScreenDestinationPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wNamingScreenCurNameLength]
	ld e, a
	ld d, 0
	add hl, de
	pop af
	ret

DeleteCharacter::
	ld hl, wNamingScreenCurNameLength
	dec [hl]
	dec [hl]
	call GetTextCursorPosition
	ld a, [hli]
	ld c, [hl]
	ld b, a
	sla c
	rl b
	ld hl, HangulStructureTables
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	and b
	cp -1
	jr nz, .delete_hangul_block

.delete_char
	call GetTextCursorPosition
	ld [hl], charval("<_>", 0)
	inc hl
	ld [hl], charval("<_>", 1)
	inc hl
; was the next char also an underline?
	ld a, [hli]
	cp charval("<_>", 0)
	ret nz
	ld a, [hld]
	cp charval("<_>", 1)
	ret nz
; if so, replace it with a middleline
	ld [hl], charval("<—>", 0)
	inc hl
	ld [hl], charval("<—>", 1)
	ret

.delete_hangul_block
	ld a, b
	and HIGH(FINAL_BLOCK_MASK)
	jr z, .no_final_block
; delete a jamo in the final block
	ld hl, DeleteLastConsonantTable
	srl a
	srl a
	ld e, a
	ld d, 0
	add hl, de
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	or [hl]
	ld b, a
	jr .find_remaining_char

.no_final_block
	ld a, b
	and HIGH(MEDIAL_BLOCK_MASK)
	jr nz, .delete_medial_block
	ld a, c
	and LOW(MEDIAL_BLOCK_MASK)
	jr z, .delete_char

.delete_medial_block
	call GetTextCursorPosition
; preventively delete the current character
	ld [hl], charval("<_>", 0)
	inc hl
	ld [hl], charval("<_>", 1)
	inc hl
; was the next char also an underline?
	ld a, [hli]
	cp charval("<_>", 0)
	jr nz, .check_initial_block
	ld a, [hld]
	cp charval("<_>", 1)
	jr nz, .check_initial_block
; if so, replace it with a middleline
	ld [hl], charval("<—>", 0)
	inc hl
	ld [hl], charval("<—>", 1)

.check_initial_block
	ld b, 0
	ld a, c
	and INITIAL_BLOCK_MASK
	ret z
; remaining block is initial consonant
	ld c, a
	ld hl, InitialConsonantJamoTable
	add hl, bc
	ld a, [hl]
	ld [wNamingScreenLastCharacter], a
	call TryAddCharacter
	ld a, [wNamingScreenMaxNameLength]
	ld e, a
	ld a, [wNamingScreenCurNameLength]
	cp e
	ret nc
	call GetTextCursorPosition
	ld a, b
	ld [hli], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	call GetTextCursorPosition
	ld a, [hl]
	cp '@'
	jr z, .asm_1c5f5d
	ld [hl], charval("<_>", 0)
	inc hl
	ld [hl], charval("<_>", 1)
	and a
	ret

.asm_1c5f5d
	call Function1c5c00
	ret

.find_remaining_char
	ld hl, HangulStructureTable1
	ld d, $0B
.next_table
	ld e, $00
.next_char
	ld a, [hl]
	cp c
	jr nz, .skip1
	inc hl
	ld a, [hli]
	cp b
	jr nz, .skip2
; convert address to charmap entry: bc = ((hl - 2) - $4000) / 2
	ld de, -$4000
	add hl, de
	srl h
	rr l
	dec hl
	ld c, l
	ld b, h
	call GetTextCursorPosition
	ld a, b
	ld [hli], a
	ld [hl], c
	ld hl, wNamingScreenCurNameLength
	inc [hl]
	inc [hl]
	ret

.skip1
	inc hl
	inc hl
.skip2
	dec e
	jr nz, .next_char
	dec d
	jr nz, .next_table

	jp .delete_char

INCLUDE "data/text/hangul_delete_chars.asm"
