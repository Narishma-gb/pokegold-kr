; Far calls to another bank

; There is no difference between `farcall` and `callfar`, except the arbitrary
; order in which they set `a` and `hl` before calling `FarCall`.
; We use the more natural name "farcall" for the more common order.

MACRO farcall ; bank, address
	ld a, BANK(\1)
	ld hl, \1
	rst FarCall
ENDM

MACRO callfar ; address, bank
	ld hl, \1
	ld a, BANK(\1)
	rst FarCall
ENDM

MACRO homecall
	ldh a, [hROMBank]
	push af
	ld a, BANK(\1)
	rst Bankswitch
	call \1
	pop af
	rst Bankswitch
ENDM

; This farcall is longer to execute, but preserves all registers.
; It fixes call and return addresses through stack manipulation.
; It's unique to the Korean version.

MACRO farcall_reg
	dec sp
	push hl
	push af
	push hl
	ld hl, sp + 6
	ld [hl], BANK(\1)
	dec hl
	ld [hl], HIGH(\1)
	dec hl
	ld [hl], LOW(\1)
	pop hl
	pop af
	call Function2e73
	inc sp
	inc sp
	inc sp
ENDM
