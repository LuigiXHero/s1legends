; =============================================================================================
; Project Name:		EmeraldNab8bit
; Created:		9th December 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

EmeraldNab8bit_Header:
;	Voice Pointer	location
	smpsHeaderVoice	EmeraldNab8bit_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$04,	$00
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$00

;	DAC Pointer	location
	smpsHeaderDAC	EmeraldNab8bit_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	EmeraldNab8bit_FM1,	smpsPitch00,	$0E
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	EmeraldNab8bit_FM2,	smpsPitch00,	$11
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	EmeraldNab8bit_FM3,	smpsPitch00,	$14

; FM1 Data
EmeraldNab8bit_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nE6,	$03,	nB5,	$02,	nE6,	$03,	nE6,	$02
	dc.b		nE6,	$05,	nE6,	$05,	nB5,	$03,	nE6,	$02
	dc.b		nE6,	$05,	nFs6,	$03,	nE6,	$02,	nD6,	$03
	dc.b		nFs6,	$02,	nFs6,	$03,	nD6,	$02,	nG6,	$03
	dc.b		nFs6,	$02,	nE6,	$03,	nG6,	$02,	nG6,	$03
	dc.b		nE6,	$02,	nAb6,	$3C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	smpsStop

; FM2 Data
EmeraldNab8bit_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$07,	nE3,	$03,	nE3,	$05,	nE3,	$05
	dc.b		nB2,	$05,	nE3,	$05,	nD3,	$05,	nA2,	$05
	dc.b		nD3,	$05,	nC3,	$05,	nC3,	$05,	nC3,	$05
	dc.b		nE3,	$05,	nE3,	$05,	nD3,	$05,	nE3,	$2D
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	smpsStop

; FM3 Data
EmeraldNab8bit_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nAb4,	$07,	nAb4,	$03,	nAb4,	$05,	nAb4,	$05
	dc.b		nAb4,	$05,	nAb4,	$05,	nD4,	$03,	nA4,	$02
	dc.b		nD5,	$03,	nE5,	$02,	nFs5,	$03,	nA5,	$02
	dc.b		nC5,	$03,	nD5,	$02,	nE5,	$03,	nG5,	$02
	dc.b		nC6,	$03,	nD6,	$02,	nE6,	$01,	nFs6,	$02
	dc.b		nE6,	$02,	nFs6,	$01,	nE6,	$02,	nFs6,	$02
	dc.b		nE6,	$01,	nFs6,	$02,	nE6,	$02,	nFs6,	$01
	dc.b		nE6,	$02,	nFs6,	$02,	nE6,	$01,	nFs6,	$02
	dc.b		nE6,	$02,	nFs6,	$01,	nE6,	$02,	nFs6,	$02
	dc.b		nE6,	$01,	nFs6,	$02,	nE6,	$02,	nFs6,	$01
	dc.b		nE6,	$02,	nFs6,	$02,	nE6,	$01,	nFs6,	$02
	dc.b		nE6,	$02,	nFs6,	$01,	nE6,	$02,	nFs6,	$02
	dc.b		nE6,	$01,	nFs6,	$02,	nE6,	$02,	nFs6,	$01
	dc.b		nE6,	$02,	nFs6,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	smpsStop

; DAC Data
EmeraldNab8bit_DAC:
	smpsStop

EmeraldNab8bit_Voices:
	dc.b		$10,$35,$76,$70,$30,$DF,$DF,$5F,$5F,$06,$08,$09,$09,$06,$03,$03
	dc.b		$01,$26,$16,$06,$26,$21,$34,$19,$00;			Voice 00
	dc.b		$38,$75,$13,$71,$11,$D1,$52,$14,$14,$0A,$07,$01,$01,$00,$00,$00
	dc.b		$00,$F0,$F0,$F0,$FC,$1E,$1E,$1E,$00;			Voice 01
	dc.b		$3E,$38,$01,$7A,$34,$59,$D9,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05
	dc.b		$05,$AF,$AF,$66,$66,$28,$00,$23,$00;			Voice 02
	even
