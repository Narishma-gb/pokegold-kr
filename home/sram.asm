OpenSRAM::
; switch to sram bank a
	push af
	cp $4
	jr c, .ok
; ... unless a > 3
	pop af
	jr CloseSRAM

.ok
; latch clock data
	ld a, 1
	ld [rRTCLATCH], a
; enable sram/clock write
	ld a, RAMG_SRAM_ENABLE
	ld [rRAMG], a
; select sram bank
	pop af
	ld [rRAMB], a
	ld [wUnusedRAMBank], a
	ret

CloseSRAM::
	push af
	ld a, RAMG_SRAM_DISABLE
; reset clock latch for next time
	ld [rRTCLATCH], a
; disable sram/clock write
	ld [rRAMG], a
	ld a, $ff
	ld [wUnusedRAMBank], a
	pop af
	ret
