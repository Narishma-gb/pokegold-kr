; rst vectors (called through the rst instruction)

SECTION "rst0", ROM0[$0000]
	di
	jp Start

SECTION "rst8", ROM0[$0008]
FarCall::
	jp FarCall_hl

SECTION "rst10", ROM0[$0010]
Bankswitch::
	ldh [hROMBank], a
	ld [rROMB], a
	ret

SECTION "rst18", ROM0[$0018]
WaitHBlank::
; if already in HBlank, wait for the next scanline
	ldh a, [rSTAT]
	and STAT_MODE
	jr z, WaitHBlank
.loop
; return as soon as entering the next HBlank
	ldh a, [rSTAT]
; SECTION "rst20", ROM0[$0020]
	and STAT_MODE
	jr nz, .loop
	ret

SECTION "rst28", ROM0[$0028]
JumpTable::
	push de
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
; SECTION "rst30", ROM0[$0030]
	ld l, a
	pop de
	jp hl

SECTION "rst38", ROM0[$0038]
	nop ; unused

WaitOneLine::
; in double-speed mode, this will return after one scanline
	ld a, $39
.loop
	dec a
	jr nz, .loop
	ret

; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp VBlank

SECTION "lcd", ROM0[$0048]
	jp LCD

SECTION "timer", ROM0[$0050]
	reti

SECTION "serial", ROM0[$0058]
	jp Serial

SECTION "joypad", ROM0[$0060]
	jp Joypad


SECTION "Header", ROM0[$0100]

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @, $00

ENDSECTION
