CorrectNickErrors::
; error-check monster nick before use
; must be a peace offering to gamesharkers

; input: de = nick location

	push bc
	push de
; b counts the number of bytes
; c counts the number of characters
	ld b, MON_NAME_LENGTH - 1
	ld c, 5

.checkchar
; end of nick?
	ld a, [de]
	cp $c
	jr c, .two_byte
	cp '@' ; terminator
	jr z, .end

; check if this char is a text command
	ld hl, .textcommands
	dec hl
.loop
; next entry
	inc hl
; reached end of commands table?
	ld a, [hl]
	cp -1
	jr z, .done

; is the current char between this value (inclusive)...
	ld a, [de]
	cp [hl]
	inc hl
	jr c, .loop
; ...and this one?
	cp [hl]
	jr nc, .loop

; replace it with a '<?>'
	ld a, '<?>'
	ld [de], a
	jr .loop

.two_byte
; the current char is a 2-byte character
	dec b
	jr z, .write_terminator
	inc de

.done
; next char
	inc de
	dec c
	jr z, .write_terminator

	dec b
	jr nz, .checkchar

.write_terminator
; reached end of nick without finding a terminator
	ld a, '@'
	ld [de], a
.end
; if the nick has any errors at this point it's out of our hands
	pop de
	pop bc
	ret

.textcommands
; table defining which characters are actually text commands
; format:
	;      ≥        <
	db '<NULL>',  ' '
	db 'z' + 1,   'Ä'
	db 'ü' + 5,   '\'d'
	db '\'v' + 4, '\''
	db -1 ; end
