; =============================================================================================
; Project Name:		ExtraLifeS1
; Created:		9th December 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ExtraLifeS1_Header:
;	Voice Pointer	location
	smpsHeaderVoice	ExtraLifeS1_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$05

;	DAC Pointer	location
	smpsHeaderDAC	ExtraLifeS1_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	ExtraLifeS1_FM1,	smpsPitch02lo,	$10
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	ExtraLifeS1_FM2,	smpsPitch02lo,	$10
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	ExtraLifeS1_FM3,	smpsPitch02lo,	$10
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	ExtraLifeS1_FM4,	smpsPitch02lo,	$10
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	ExtraLifeS1_FM5,	smpsPitch02lo,	$10
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	ExtraLifeS1_PSG1,	smpsPitch04lo,	$06,	$05
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	ExtraLifeS1_PSG2,	smpsPitch03lo,	$06,	$05
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	ExtraLifeS1_PSG3,	smpsPitch03lo,	$00,	$04

; FM4 Data
ExtraLifeS1_FM4:
;	Alter Notes	value
	smpsAlterNote	$03
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Jump To	 	location
	smpsJump	ExtraLifeS1_Jump01

; FM1 Data
ExtraLifeS1_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
ExtraLifeS1_Jump01:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Note Fill	duration
	smpsNoteFill	$06
	dc.b		nE7,	$06,	$03,	$03,	$06,	$06
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nFs7,	$09,	nD7,	nCs7,	$06,	nE7,	$18
	smpsStop

; FM2 Data
ExtraLifeS1_FM2:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Note Fill	duration
	smpsNoteFill	$06
;	E2	 	#
	smpsE2		$01
	dc.b		nCs7,	$06,	$03,	$03,	$06,	$06
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nD7,	$09,	nB6,	nA6,	$06,	nCs7,	$18
;	E2	 	#
	smpsE2		$01
	smpsStop

; FM5 Data
ExtraLifeS1_FM5:
;	Alter Notes	value
	smpsAlterNote	$03
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Jump To	 	location
	smpsJump	ExtraLifeS1_Jump02

; FM3 Data
ExtraLifeS1_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
ExtraLifeS1_Jump02:
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nA4,	$0C,	nRst,	$06,	nA4,	nG4,	nRst,	$03
	dc.b		nG4,	$06,	nRst,	$03,	nG4,	$06,	nA4,	$18
	smpsStop

; PSG1 Data
ExtraLifeS1_PSG1:
;	Note Fill	duration
	smpsNoteFill	$06
	dc.b		nCs7,	$06,	$03,	$03,	$06,	$06
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nD7,	$09,	nB6,	nA6,	$06,	nCs7,	$18

; PSG2 Data
ExtraLifeS1_PSG2:

; PSG3 Data
ExtraLifeS1_PSG3:
	smpsStop

; DAC Data
ExtraLifeS1_DAC:
	dc.b		dHiTimpani,	$12,	$06,	dVLowTimpani,	$09,	$09,	$06,	dHiTimpani
	dc.b		$06,	dLowTimpani,	dHiTimpani,	dLowTimpani,	dHiTimpani,	$0C
	smpsFade

ExtraLifeS1_Voices:
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$4E,$16,$80;			Voice 00
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 02
	dc.b		$00;			Voice 03
	even
