InitString::
; Init a string of length c.
	push hl
	jr _InitString

InitName::
; Intended for names, so this function is limited to ten characters.
	push hl
	ld c, NAME_LENGTH - 1
_InitString::
; if the string pointed to by hl is empty (defined as "zero or more spaces
; followed by a null"), then initialize it to the string pointed to by de.
	push bc
.loop
	ld a, [hli]
	cp '@'
	jr z, .blank
	cp $c
	jr nc, .single_byte

; 2-byte character
	cp $b
	jr nz, .notblank
	dec c
	jr z, .blank
; if in table $b, read the second byte
	ld a, [hli]
	cp $ff
	jr nz, .notblank
	jr .next

.single_byte
	cp ' '
	jr nz, .notblank
.next
	dec c
	jr nz, .loop
.blank
	pop bc
	ld l, e
	ld h, d
	pop de
	ld b, 0
	inc c
	call CopyBytes
	ret

.notblank
	pop bc
	pop hl
	ret
