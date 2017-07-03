; =============================================================================================
; Project Name:		RockDatPuffBall
; Created:		9th December 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

RockDatPuffBall_Header:
;	Voice Pointer	location
	smpsHeaderVoice	RockDatPuffBall_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$02

;	DAC Pointer	location
	smpsHeaderDAC	RockDatPuffBall_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	RockDatPuffBall_FM1,	smpsPitch00,	$08
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	RockDatPuffBall_FM2,	smpsPitch00,	$08
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	RockDatPuffBall_FM3,	smpsPitch00,	$0F
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	RockDatPuffBall_FM4,	smpsPitch00,	$08
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	RockDatPuffBall_FM5,	smpsPitch00,	$08
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	RockDatPuffBall_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	RockDatPuffBall_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	RockDatPuffBall_PSG3,	smpsPitch00,	$00,	$02

; DAC Data
RockDatPuffBall_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$0B,	dKick,	$0B,	dKick,	$06,	dSnare,	$02
	dc.b		dSnare,	$03,	dSnare,	$06,	dSnare,	$02,	dSnare,	$03
	dc.b		dKick,	$0B,	dKick,	$0B,	dKick,	$0B,	dKick,	$0B
	dc.b		dKick,	$0B,	dKick,	$0B,	dKick,	$0B,	dKick,	$0B
	dc.b		dKick,	$0B,	dKick,	$0B,	dKick,	$0B,	dKick,	$11
	dc.b		dSnare,	$05,	dSnare,	$06,	dKick,	$05,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dSnare,	$0E,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$05,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$02,	dKick,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dSnare,	$16
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$03,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dSnare,	$0E
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$05,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$02,	dKick,	$03
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$03
	dc.b		dSnare,	$16,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dSnare,	$0E,	dSnare,	$03,	dSnare,	$03,	dSnare,	$05
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dKick,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dKick,	$03,	dKick,	$02
	dc.b		dKick,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dSnare,	$16,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$03
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dSnare,	$0E,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$05,	dSnare,	$03,	dSnare,	$03,	dSnare,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dKick,	$03
	dc.b		dKick,	$02,	dKick,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$03,	dSnare,	$16,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$03,	dSnare,	$03,	dSnare,	$02
	dc.b		dSnare,	$03,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$06
	dc.b		dKick,	$05,	dKick,	$03,	dKick,	$05,	dKick,	$03
	dc.b		dSnare,	$06,	dKick,	$05,	dKick,	$03,	dKick,	$05
	dc.b		dKick,	$03,	dSnare,	$06,	dKick,	$05,	dKick,	$03
	dc.b		dKick,	$05,	dKick,	$03,	dSnare,	$06,	dKick,	$05
	dc.b		dKick,	$03,	dKick,	$05,	dKick,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dSnare,	$02,	dSnare,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
RockDatPuffBall_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD2,	$03,	nD2,	$05,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$05,	nD2,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nD3,	$06,	nD2,	$02,	nD2,	$03,	nG2,	$58
	dc.b		nA2,	$2C,	nRst,	$06,	nA2,	$05,	nA2,	$06
	dc.b		nD3,	$05,	nD3,	$0B,	nD2,	$08,	nD2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nB2,	$06,	nB2,	$02
	dc.b		nB2,	$03,	nB2,	$06,	nB2,	$02,	nB2,	$03
	dc.b		nE3,	$06,	nE3,	$02,	nE3,	$03,	nE3,	$06
	dc.b		nE3,	$02,	nE3,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nC3,	$08,	nC3,	$0E,	nD3,	$06,	nD3,	$05
	dc.b		nRst,	$0B,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nD3,	$03,	nD3,	$05,	nD3,	$03
	dc.b		nD3,	$06,	nD3,	$02,	nD3,	$03,	nD3,	$16
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nB2,	$06,	nB2,	$02
	dc.b		nB2,	$03,	nB2,	$06,	nB2,	$02,	nB2,	$03
	dc.b		nE3,	$06,	nE3,	$02,	nE3,	$03,	nE3,	$06
	dc.b		nE3,	$02,	nE3,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nC3,	$08,	nC3,	$0E,	nD3,	$06,	nD3,	$05
	dc.b		nRst,	$0B,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nD3,	$03,	nD3,	$05,	nD3,	$03
	dc.b		nD3,	$06,	nD3,	$02,	nD3,	$03,	nD3,	$16
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nB2,	$06,	nB2,	$02
	dc.b		nB2,	$03,	nB2,	$06,	nB2,	$02,	nB2,	$03
	dc.b		nE3,	$06,	nE3,	$02,	nE3,	$03,	nE3,	$06
	dc.b		nE3,	$02,	nE3,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nC3,	$08,	nC3,	$0E,	nD3,	$06,	nD3,	$05
	dc.b		nRst,	$0B,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nD3,	$03,	nD3,	$05,	nD3,	$03
	dc.b		nD3,	$06,	nD3,	$02,	nD3,	$03,	nD3,	$16
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nB2,	$06,	nB2,	$02
	dc.b		nB2,	$03,	nB2,	$06,	nB2,	$02,	nB2,	$03
	dc.b		nE3,	$06,	nE3,	$02,	nE3,	$03,	nE3,	$06
	dc.b		nE3,	$02,	nE3,	$03,	nD3,	$06,	nD3,	$02
	dc.b		nD3,	$03,	nD3,	$06,	nD3,	$02,	nD3,	$03
	dc.b		nC3,	$08,	nC3,	$0E,	nD3,	$06,	nD3,	$05
	dc.b		nRst,	$0B,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$06
	dc.b		nG2,	$02,	nG2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nF3,	$03
	dc.b		nF3,	$05,	nF3,	$03,	nF3,	$06,	nF3,	$02
	dc.b		nF3,	$03,	nBb2,	$03,	nBb2,	$05,	nBb2,	$03
	dc.b		nBb2,	$06,	nBb2,	$02,	nBb2,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nEb3,	$03,	nEb3,	$05,	nEb3,	$03
	dc.b		nEb3,	$06,	nEb3,	$02,	nEb3,	$03,	nEb3,	$03
	dc.b		nEb3,	$05,	nEb3,	$03,	nEb3,	$06,	nEb3,	$02
	dc.b		nEb3,	$03,	nD3,	$03,	nD3,	$05,	nD3,	$03
	dc.b		nD3,	$06,	nD3,	$02,	nD3,	$03,	nD3,	$16
	dc.b		nG2,	$03,	smpsNoAttack,	$03,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nG2,	$03,	nG2,	$03,	smpsNoAttack,	$03,	nG2,	$02
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nG2,	$03,	smpsNoAttack,	$03,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	nG2,	$02,	nG2,	$03,	nG2,	$03
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nG2,	$02,	nG2,	$01,	smpsNoAttack,	$02,	nG2,	$03
	dc.b		smpsNoAttack,	$03,	nG2,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$03,	smpsNoAttack,	$03,	nG2,	$02
	dc.b		nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$02,	smpsNoAttack,	$03
	dc.b		nG2,	$02,	nG2,	$01,	smpsNoAttack,	$02,	nA2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	nA2,	$02,	nA2,	$01
	dc.b		smpsNoAttack,	$02,	nA2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	nA2,	$02,	nA2,	$01
	dc.b		smpsNoAttack,	$02,	nD3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nD3,	$02,	nD3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nD3,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		nD3,	$02,	nD3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$01,	smpsNoAttack,	$02,	nG2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
	dc.b		smpsNoAttack,	$01,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$01,	nG2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
	dc.b		smpsNoAttack,	$01,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$01,	nG2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$02,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG2,	$01,	smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nB2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nB2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nB2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nB2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nB2,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nB2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE3,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nE3,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE3,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE3,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nE3,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE3,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD3,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$01,	nD3,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nD3,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD3,	$03
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	$01,	nD3,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nD3,	$03
;	Alter Volume	value
	smpsAlterVol	$07
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	smpsStop

; FM2 Data
RockDatPuffBall_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$52,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$21,	nC4,	$08,	nE4,	$03,	nG4,	$06,	nC5
	dc.b		$05,	nB4,	$06,	nA4,	$05,	nG4,	$0B,	nE4
	dc.b		$08,	nG4,	$03,	nF4,	$0B,	nD4,	$08,	nE4
	dc.b		$03,	nD4,	$0B,	nE4,	$08,	nD4,	$03,	nC4
	dc.b		$21,	nG3,	$08,	nG3,	$03,	nC4,	$21,	nC4
	dc.b		$08,	nE4,	$03,	nG4,	$06,	nC5,	$05,	nB4
	dc.b		$06,	nA4,	$05,	nG4,	$0B,	nE4,	$08,	nG4
	dc.b		$03,	nF4,	$0B,	nD4,	$08,	nE4,	$03,	nD4
	dc.b		$0B,	nE4,	$08,	nD4,	$03,	nC4,	$2C,	nC4
	dc.b		$08,	nC4,	$03,	nD4,	$06,	nE4,	$0B,	nC4
	dc.b		$05,	nD4,	$06,	nC4,	$05,	nRst,	$58,	nC4
	dc.b		$0B,	nBb3,	$08,	nC4,	$03,	nD4,	$0B,	nC4
	dc.b		$08,	nD4,	$03,	nEb4,	$0B,	nD4,	$08,	nEb4
	dc.b		$03,	nAb3,	$0B,	nAb3,	$08,	nBb3,	$03,	nC4
	dc.b		$0B,	nBb3,	$08,	nC4,	$03,	nD4,	$0B,	nC4
	dc.b		$08,	nD4,	$03,	nEb4,	$16,	nAb4,	$06,	nRst
	dc.b		$05,	nAb4,	$08,	nBb4,	$03,	nC5,	$0B,	nBb4
	dc.b		$08,	nC5,	$03,	nD5,	$0B,	nC5,	$08,	nD5
	dc.b		$03,	nEb5,	$0B,	nD5,	$08,	nEb5,	$03,	nAb4
	dc.b		$0B,	nAb4,	$08,	nBb4,	$03,	nC5,	$0B,	nBb4
	dc.b		$08,	nC5,	$03,	nD5,	$0B,	nC5,	$08,	nD5
	dc.b		$03,	nB4,	$16,	nD5,	$0B,	nG3,	$08,	nG3
	dc.b		$03,	nC4,	$21,	nC4,	$08,	nE4,	$03,	nG4
	dc.b		$06,	nC5,	$05,	nB4,	$06,	nA4,	$05,	nG4
	dc.b		$0B,	nE4,	$08,	nG4,	$03,	nF4,	$0B,	nD4
	dc.b		$08,	nE4,	$03,	nD4,	$0B,	nE4,	$08,	nD4
	dc.b		$03,	nC4,	$21,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$21,	nC4,	$08,	nE4,	$03,	nG4,	$06,	nC5
	dc.b		$05,	nB4,	$06,	nA4,	$05,	nG4,	$0B,	nE4
	dc.b		$08,	nG4,	$03,	nF4,	$0B,	nD4,	$08,	nE4
	dc.b		$03,	nD4,	$0B,	nE4,	$08,	nD4,	$03,	nC4
	dc.b		$2C,	nC4,	$08,	nC4,	$03,	nD4,	$06,	nE4
	dc.b		$0B,	nC4,	$05,	nD4,	$06,	nC4,	$05,	nRst
	dc.b		$58,	nC4,	$0B,	nBb3,	$08,	nC4,	$03,	nD4
	dc.b		$0B,	nC4,	$08,	nD4,	$03,	nEb4,	$0B,	nD4
	dc.b		$08,	nEb4,	$03,	nAb3,	$0B,	nAb3,	$08,	nBb3
	dc.b		$03,	nC4,	$0B,	nBb3,	$08,	nC4,	$03,	nD4
	dc.b		$0B,	nC4,	$08,	nD4,	$03,	nEb4,	$16,	nAb4
	dc.b		$06,	nRst,	$05,	nAb4,	$08,	nBb4,	$03,	nC5
	dc.b		$0B,	nBb4,	$08,	nC5,	$03,	nD5,	$0B,	nC5
	dc.b		$08,	nD5,	$03,	nEb5,	$0B,	nD5,	$08,	nEb5
	dc.b		$03,	nAb4,	$0B,	nAb4,	$08,	nBb4,	$03,	nC5
	dc.b		$0B,	nBb4,	$08,	nC5,	$03,	nD5,	$0B,	nC5
	dc.b		$08,	nD5,	$03,	nB4,	$16,	nD5,	$0B,	nG3
	dc.b		$08,	nG3,	$03,	nC4,	$21,	nC4,	$08,	nE4
	dc.b		$03,	nG4,	$06,	nC5,	$05,	nB4,	$06,	nA4
	dc.b		$05,	nG4,	$0B,	nE4,	$08,	nG4,	$03,	nF4
	dc.b		$0B,	nD4,	$08,	nE4,	$03,	nD4,	$0B,	nE4
	dc.b		$08,	nD4,	$03,	nC4,	$21,	nG3,	$08,	nG3
	dc.b		$03,	nC4,	$21,	nC4,	$08,	nE4,	$03,	nG4
	dc.b		$06,	nC5,	$05,	nB4,	$06,	nA4,	$05,	nG4
	dc.b		$0B,	nE4,	$08,	nG4,	$03,	nF4,	$0B,	nD4
	dc.b		$08,	nE4,	$03,	nD4,	$0B,	nE4,	$08,	nD4
	dc.b		$03,	nC4,	$2C,	nC4,	$08,	nC4,	$03,	nD4
	dc.b		$06,	nE4,	$0B,	nC4,	$05,	nD4,	$06,	nC4
	dc.b		$05,	nRst,	$58,	nC4,	$0B,	nBb3,	$08,	nC4
	dc.b		$03,	nD4,	$0B,	nC4,	$08,	nD4,	$03,	nEb4
	dc.b		$0B,	nD4,	$08,	nEb4,	$03,	nAb3,	$0B,	nAb3
	dc.b		$08,	nBb3,	$03,	nC4,	$0B,	nBb3,	$08,	nC4
	dc.b		$03,	nD4,	$0B,	nC4,	$08,	nD4,	$03,	nEb4
	dc.b		$16,	nAb4,	$06,	nRst,	$05,	nAb4,	$08,	nBb4
	dc.b		$03,	nC5,	$0B,	nBb4,	$08,	nC5,	$03,	nD5
	dc.b		$0B,	nC5,	$08,	nD5,	$03,	nEb5,	$0B,	nD5
	dc.b		$08,	nEb5,	$03,	nAb4,	$0B,	nAb4,	$08,	nBb4
	dc.b		$03,	nC5,	$0B,	nBb4,	$08,	nC5,	$03,	nD5
	dc.b		$0B,	nC5,	$08,	nD5,	$03,	nB4,	$16,	nD5
	dc.b		$0B,	nG3,	$08,	nG3,	$03,	nC4,	$21,	nC4
	dc.b		$08,	nE4,	$03,	nG4,	$06,	nC5,	$05,	nB4
	dc.b		$06,	nA4,	$05,	nG4,	$0B,	nE4,	$08,	nG4
	dc.b		$03,	nF4,	$0B,	nD4,	$08,	nE4,	$03,	nD4
	dc.b		$0B,	nE4,	$08,	nD4,	$03,	nC4,	$21,	nG3
	dc.b		$08,	nG3,	$03,	nC4,	$21,	nC4,	$08,	nE4
	dc.b		$03,	nG4,	$06,	nC5,	$05,	nB4,	$06,	nA4
	dc.b		$05,	nG4,	$0B,	nE4,	$08,	nG4,	$03,	nF4
	dc.b		$0B,	nD4,	$08,	nE4,	$03,	nD4,	$0B,	nE4
	dc.b		$08,	nD4,	$03,	nC4,	$2C,	nC4,	$08,	nC4
	dc.b		$03,	nD4,	$06,	nE4,	$0B,	nC4,	$05,	nD4
	dc.b		$06,	nC4,	$05,	nRst,	$58,	nC4,	$0B,	nBb3
	dc.b		$08,	nC4,	$03,	nD4,	$0B,	nC4,	$08,	nD4
	dc.b		$03,	nEb4,	$0B,	nD4,	$08,	nEb4,	$03,	nAb3
	dc.b		$0B,	nAb3,	$08,	nBb3,	$03,	nC4,	$0B,	nBb3
	dc.b		$08,	nC4,	$03,	nD4,	$0B,	nC4,	$08,	nD4
	dc.b		$03,	nEb4,	$16,	nAb4,	$06,	nRst,	$05,	nAb4
	dc.b		$08,	nBb4,	$03,	nC5,	$0B,	nBb4,	$08,	nC5
	dc.b		$03,	nD5,	$0B,	nC5,	$08,	nD5,	$03,	nEb5
	dc.b		$0B,	nD5,	$08,	nEb5,	$03,	nAb4,	$0B,	nAb4
	dc.b		$08,	nBb4,	$03,	nC5,	$0B,	nBb4,	$08,	nC5
	dc.b		$03,	nD5,	$0B,	nC5,	$08,	nD5,	$03,	nB4
	dc.b		$16,	nD5,	$0B,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$03,	smpsNoAttack,	$03,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	$03
	dc.b		nC4,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nE4,	$03,	nG4,	$03
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$03,	smpsNoAttack,	$02,	nB4,	$03,	smpsNoAttack,	$03
	dc.b		nA4,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG4,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nE4,	$01,	smpsNoAttack,	$02,	smpsNoAttack,	$03
	dc.b		smpsNoAttack,	$02,	nG4,	$01,	smpsNoAttack,	$02,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	smpsNoAttack,	$02,	nE4,	$01
	dc.b		smpsNoAttack,	$02,	nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nE4,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		smpsNoAttack,	$02,	nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC4,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$01,	nG3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG3,	$02,	smpsNoAttack,	$01,	nC4,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC4,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG4,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC5,	$01,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nB4,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nA4,	$01,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG4,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$01,	nG4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nF4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nD4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nD4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nD4,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$07
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	smpsStop

; FM3 Data
RockDatPuffBall_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$55,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$21,	nC4,	$08,	nE4,	$03,	nG4,	$05,	nC5
	dc.b		$06,	nB4,	$05,	nA4,	$06,	nG4,	$0B,	nE4
	dc.b		$08,	nG4,	$03,	nF4,	$0B,	nD4,	$08,	nE4
	dc.b		$03,	nD4,	$0B,	nE4,	$08,	nD4,	$03,	nC4
	dc.b		$21,	nG3,	$08,	nG3,	$03,	nC4,	$21,	nC4
	dc.b		$08,	nE4,	$03,	nG4,	$05,	nC5,	$06,	nB4
	dc.b		$05,	nA4,	$06,	nG4,	$0B,	nE4,	$08,	nG4
	dc.b		$03,	nF4,	$0B,	nD4,	$08,	nE4,	$03,	nD4
	dc.b		$0B,	nE4,	$08,	nD4,	$03,	nC4,	$2C,	nC4
	dc.b		$08,	nC4,	$03,	nD4,	$05,	nE4,	$0B,	nC4
	dc.b		$06,	nD4,	$05,	nC4,	$06,	nRst,	$58,	nC4
	dc.b		$0B,	nBb3,	$08,	nC4,	$03,	nD4,	$0B,	nC4
	dc.b		$08,	nD4,	$03,	nEb4,	$0B,	nD4,	$08,	nEb4
	dc.b		$03,	nAb3,	$0B,	nAb3,	$08,	nBb3,	$03,	nC4
	dc.b		$0B,	nBb3,	$08,	nC4,	$03,	nD4,	$0B,	nC4
	dc.b		$08,	nD4,	$03,	nEb4,	$16,	nAb4,	$05,	nRst
	dc.b		$06,	nAb4,	$08,	nBb4,	$03,	nC5,	$0B,	nBb4
	dc.b		$08,	nC5,	$03,	nD5,	$0B,	nC5,	$08,	nD5
	dc.b		$03,	nEb5,	$0B,	nD5,	$08,	nEb5,	$03,	nAb4
	dc.b		$0B,	nAb4,	$08,	nBb4,	$03,	nC5,	$0B,	nBb4
	dc.b		$08,	nC5,	$03,	nD5,	$0B,	nC5,	$08,	nD5
	dc.b		$03,	nB4,	$16,	nD5,	$0B,	nG3,	$08,	nG3
	dc.b		$03,	nC4,	$21,	nC4,	$08,	nE4,	$03,	nG4
	dc.b		$05,	nC5,	$06,	nB4,	$05,	nA4,	$06,	nG4
	dc.b		$0B,	nE4,	$08,	nG4,	$03,	nF4,	$0B,	nD4
	dc.b		$08,	nE4,	$03,	nD4,	$0B,	nE4,	$08,	nD4
	dc.b		$03,	nC4,	$21,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$21,	nC4,	$08,	nE4,	$03,	nG4,	$05,	nC5
	dc.b		$06,	nB4,	$05,	nA4,	$06,	nG4,	$0B,	nE4
	dc.b		$08,	nG4,	$03,	nF4,	$0B,	nD4,	$08,	nE4
	dc.b		$03,	nD4,	$0B,	nE4,	$08,	nD4,	$03,	nC4
	dc.b		$2C,	nC4,	$08,	nC4,	$03,	nD4,	$05,	nE4
	dc.b		$0B,	nC4,	$06,	nD4,	$05,	nC4,	$06,	nRst
	dc.b		$58,	nC4,	$0B,	nBb3,	$08,	nC4,	$03,	nD4
	dc.b		$0B,	nC4,	$08,	nD4,	$03,	nEb4,	$0B,	nD4
	dc.b		$08,	nEb4,	$03,	nAb3,	$0B,	nAb3,	$08,	nBb3
	dc.b		$03,	nC4,	$0B,	nBb3,	$08,	nC4,	$03,	nD4
	dc.b		$0B,	nC4,	$08,	nD4,	$03,	nEb4,	$16,	nAb4
	dc.b		$05,	nRst,	$06,	nAb4,	$08,	nBb4,	$03,	nC5
	dc.b		$0B,	nBb4,	$08,	nC5,	$03,	nD5,	$0B,	nC5
	dc.b		$08,	nD5,	$03,	nEb5,	$0B,	nD5,	$08,	nEb5
	dc.b		$03,	nAb4,	$0B,	nAb4,	$08,	nBb4,	$03,	nC5
	dc.b		$0B,	nBb4,	$08,	nC5,	$03,	nD5,	$0B,	nC5
	dc.b		$08,	nD5,	$03,	nB4,	$16,	nD5,	$0B,	nG3
	dc.b		$08,	nG3,	$03,	nC4,	$21,	nC4,	$08,	nE4
	dc.b		$03,	nG4,	$05,	nC5,	$06,	nB4,	$05,	nA4
	dc.b		$06,	nG4,	$0B,	nE4,	$08,	nG4,	$03,	nF4
	dc.b		$0B,	nD4,	$08,	nE4,	$03,	nD4,	$0B,	nE4
	dc.b		$08,	nD4,	$03,	nC4,	$21,	nG3,	$08,	nG3
	dc.b		$03,	nC4,	$21,	nC4,	$08,	nE4,	$03,	nG4
	dc.b		$05,	nC5,	$06,	nB4,	$05,	nA4,	$06,	nG4
	dc.b		$0B,	nE4,	$08,	nG4,	$03,	nF4,	$0B,	nD4
	dc.b		$08,	nE4,	$03,	nD4,	$0B,	nE4,	$08,	nD4
	dc.b		$03,	nC4,	$2C,	nC4,	$08,	nC4,	$03,	nD4
	dc.b		$05,	nE4,	$0B,	nC4,	$06,	nD4,	$05,	nC4
	dc.b		$06,	nRst,	$58,	nC4,	$0B,	nBb3,	$08,	nC4
	dc.b		$03,	nD4,	$0B,	nC4,	$08,	nD4,	$03,	nEb4
	dc.b		$0B,	nD4,	$08,	nEb4,	$03,	nAb3,	$0B,	nAb3
	dc.b		$08,	nBb3,	$03,	nC4,	$0B,	nBb3,	$08,	nC4
	dc.b		$03,	nD4,	$0B,	nC4,	$08,	nD4,	$03,	nEb4
	dc.b		$16,	nAb4,	$05,	nRst,	$06,	nAb4,	$08,	nBb4
	dc.b		$03,	nC5,	$0B,	nBb4,	$08,	nC5,	$03,	nD5
	dc.b		$0B,	nC5,	$08,	nD5,	$03,	nEb5,	$0B,	nD5
	dc.b		$08,	nEb5,	$03,	nAb4,	$0B,	nAb4,	$08,	nBb4
	dc.b		$03,	nC5,	$0B,	nBb4,	$08,	nC5,	$03,	nD5
	dc.b		$0B,	nC5,	$08,	nD5,	$03,	nB4,	$16,	nD5
	dc.b		$0B,	nG3,	$08,	nG3,	$03,	nC4,	$21,	nC4
	dc.b		$08,	nE4,	$03,	nG4,	$05,	nC5,	$06,	nB4
	dc.b		$05,	nA4,	$06,	nG4,	$0B,	nE4,	$08,	nG4
	dc.b		$03,	nF4,	$0B,	nD4,	$08,	nE4,	$03,	nD4
	dc.b		$0B,	nE4,	$08,	nD4,	$03,	nC4,	$21,	nG3
	dc.b		$08,	nG3,	$03,	nC4,	$21,	nC4,	$08,	nE4
	dc.b		$03,	nG4,	$05,	nC5,	$06,	nB4,	$05,	nA4
	dc.b		$06,	nG4,	$0B,	nE4,	$08,	nG4,	$03,	nF4
	dc.b		$0B,	nD4,	$08,	nE4,	$03,	nD4,	$0B,	nE4
	dc.b		$08,	nD4,	$03,	nC4,	$2C,	nC4,	$08,	nC4
	dc.b		$03,	nD4,	$05,	nE4,	$0B,	nC4,	$06,	nD4
	dc.b		$05,	nC4,	$06,	nRst,	$58,	nC4,	$0B,	nBb3
	dc.b		$08,	nC4,	$03,	nD4,	$0B,	nC4,	$08,	nD4
	dc.b		$03,	nEb4,	$0B,	nD4,	$08,	nEb4,	$03,	nAb3
	dc.b		$0B,	nAb3,	$08,	nBb3,	$03,	nC4,	$0B,	nBb3
	dc.b		$08,	nC4,	$03,	nD4,	$0B,	nC4,	$08,	nD4
	dc.b		$03,	nEb4,	$16,	nAb4,	$05,	nRst,	$06,	nAb4
	dc.b		$08,	nBb4,	$03,	nC5,	$0B,	nBb4,	$08,	nC5
	dc.b		$03,	nD5,	$0B,	nC5,	$08,	nD5,	$03,	nEb5
	dc.b		$0B,	nD5,	$08,	nEb5,	$03,	nAb4,	$0B,	nAb4
	dc.b		$08,	nBb4,	$03,	nC5,	$0B,	nBb4,	$08,	nC5
	dc.b		$03,	nD5,	$0B,	nC5,	$08,	nD5,	$03,	nB4
	dc.b		$16,	nD5,	$0B,	nG3,	$08,	nG3,	$03,	nC4
	dc.b		$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04,	smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04,	smpsNoAttack,	$03,	nC4,	$04,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nE4,	$02,	smpsNoAttack,	$01,	nG4,	$03
	dc.b		smpsNoAttack,	$02,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nB4,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA4,	$03,	smpsNoAttack,	$03,	nG4,	$01,	smpsNoAttack,	$03
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04,	nE4,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG4,	$02,	smpsNoAttack,	$01,	nF4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04,	smpsNoAttack,	$02,	nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04,	nE4,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nD4,	$04,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nE4,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nD4,	$01,	smpsNoAttack,	$02,	nC4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04,	smpsNoAttack,	$01,	nG3,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$03,	nG3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC4,	$01,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nC4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$03,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nB4,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nA4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nG4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$02,	nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$04
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nG4,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nF4,	$04
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nD4,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$02,	nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$02,	nD4,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$03,	nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		smpsNoAttack,	$01,	nD4,	$03
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		nC4,	$26,	nRst,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	smpsStop

; FM4 Data
RockDatPuffBall_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nG1,	$03,	nG1,	$05,	nG1,	$03,	nG1,	$06
	dc.b		nG1,	$05,	nG1,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nG2,	$06,	nG1,	$02,	nG1,	$03,	nC2,	$58
	dc.b		nD2,	$2C,	nRst,	$06,	nD2,	$05,	nD2,	$06
	dc.b		nG2,	$05,	nG2,	$0B,	nG1,	$08,	nG1,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nE2,	$06,	nE2,	$02
	dc.b		nE2,	$03,	nE2,	$06,	nE2,	$02,	nE2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nF2,	$08,	nF2,	$0E,	nG2,	$06,	nG2,	$05
	dc.b		nRst,	$0B,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nG2,	$03,	nG2,	$05,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$16
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nE2,	$06,	nE2,	$02
	dc.b		nE2,	$03,	nE2,	$06,	nE2,	$02,	nE2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nF2,	$08,	nF2,	$0E,	nG2,	$06,	nG2,	$05
	dc.b		nRst,	$0B,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nG2,	$03,	nG2,	$05,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$16
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nE2,	$06,	nE2,	$02
	dc.b		nE2,	$03,	nE2,	$06,	nE2,	$02,	nE2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nF2,	$08,	nF2,	$0E,	nG2,	$06,	nG2,	$05
	dc.b		nRst,	$0B,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nG2,	$03,	nG2,	$05,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$16
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nD2,	$06,	nD2,	$02,	nD2,	$03,	nD2,	$06
	dc.b		nD2,	$02,	nD2,	$03,	nE2,	$06,	nE2,	$02
	dc.b		nE2,	$03,	nE2,	$06,	nE2,	$02,	nE2,	$03
	dc.b		nA2,	$06,	nA2,	$02,	nA2,	$03,	nA2,	$06
	dc.b		nA2,	$02,	nA2,	$03,	nG2,	$06,	nG2,	$02
	dc.b		nG2,	$03,	nG2,	$06,	nG2,	$02,	nG2,	$03
	dc.b		nF2,	$08,	nF2,	$0E,	nG2,	$06,	nG2,	$05
	dc.b		nRst,	$0B,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nC2,	$06,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$06,	nC2,	$02,	nC2,	$03,	nC2,	$06
	dc.b		nC2,	$02,	nC2,	$03,	nC2,	$06,	nC2,	$02
	dc.b		nC2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nBb2,	$03
	dc.b		nBb2,	$05,	nBb2,	$03,	nBb2,	$06,	nBb2,	$02
	dc.b		nBb2,	$03,	nEb2,	$03,	nEb2,	$05,	nEb2,	$03
	dc.b		nEb2,	$06,	nEb2,	$02,	nEb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nAb2,	$03,	nAb2,	$05,	nAb2,	$03
	dc.b		nAb2,	$06,	nAb2,	$02,	nAb2,	$03,	nAb2,	$03
	dc.b		nAb2,	$05,	nAb2,	$03,	nAb2,	$06,	nAb2,	$02
	dc.b		nAb2,	$03,	nG2,	$03,	nG2,	$05,	nG2,	$03
	dc.b		nG2,	$06,	nG2,	$02,	nG2,	$03,	nG2,	$16
	dc.b		nC2,	$03,	smpsNoAttack,	$03,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC2,	$03,	nC2,	$03,	smpsNoAttack,	$03,	nC2,	$02
	dc.b		nC2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC2,	$03,	smpsNoAttack,	$03,	nC2,	$02,	nC2,	$03
	dc.b		nC2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	nC2,	$02,	nC2,	$03,	nC2,	$03
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC2,	$02,	nC2,	$01,	smpsNoAttack,	$02,	nC2,	$03
	dc.b		smpsNoAttack,	$03,	nC2,	$02,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$03,	smpsNoAttack,	$03,	nC2,	$02
	dc.b		nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$02,	smpsNoAttack,	$03
	dc.b		nC2,	$02,	nC2,	$01,	smpsNoAttack,	$02,	nD2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	nD2,	$02,	nD2,	$01
	dc.b		smpsNoAttack,	$02,	nD2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	nD2,	$02,	nD2,	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nG2,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nG2,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		nG2,	$02,	nG2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02
	dc.b		nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$01,	smpsNoAttack,	$02,	nC2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
	dc.b		smpsNoAttack,	$01,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$01,	nC2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
	dc.b		smpsNoAttack,	$01,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$01,	nC2,	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$02,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC2,	$01,	smpsNoAttack,	$01,	nC2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nD2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nE2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nE2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nE2,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE2,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nA2,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nA2,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nA2,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	$01,	nG2,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG2,	$03
;	Alter Volume	value
	smpsAlterVol	$07
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	smpsStop

; FM5 Data
RockDatPuffBall_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nRst,	$2C,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nF4,	$06
	dc.b		nD5,	$02,	nRst,	$03,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$02,	nRst,	$03,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$02,	nRst,	$03,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$02,	nRst,	$09,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nB4,	$02,	nRst,	$03
	dc.b		nB4,	$03,	nRst,	$13,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nD4,	$06,	nA4,	$02,	nRst,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$02,	nRst,	$03,	nB3,	$06
	dc.b		nG4,	$02,	nRst,	$03,	nG4,	$03,	nRst,	$03
	dc.b		nG4,	$02,	nRst,	$03,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nD4,	$06
	dc.b		nA4,	$02,	nRst,	$03,	nA4,	$03,	nRst,	$03
	dc.b		nA4,	$02,	nRst,	$03,	nB3,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nE4,	$03,	nC5,	$03,	nE5,	$02
	dc.b		nC5,	$03,	nE5,	$03,	nC5,	$03,	nE5,	$02
	dc.b		nC5,	$03,	nD4,	$03,	nB4,	$03,	nD5,	$02
	dc.b		nB4,	$03,	nD5,	$03,	nB4,	$03,	nD5,	$02
	dc.b		nB4,	$03,	nC5,	$08,	nC5,	$03,	nRst,	$0B
	dc.b		nD5,	$03,	nRst,	$03,	nD5,	$02,	nRst,	$0E
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nBb4,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nBb5,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nG4,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nG5,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nBb4,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nBb5,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nG4,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nG5,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nBb4,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nBb5,	$03,	nF5,	$03
	dc.b		nBb5,	$02,	nF5,	$03,	nG4,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nG5,	$03,	nEb5,	$03
	dc.b		nG5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb4,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nAb5,	$03,	nEb5,	$03
	dc.b		nAb5,	$02,	nEb5,	$03,	nD4,	$06,	nD4,	$02
	dc.b		nD5,	$03,	nD4,	$06,	nD4,	$02,	nD5,	$03
	dc.b		nD4,	$16,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nD4,	$06
	dc.b		nA4,	$02,	nRst,	$03,	nA4,	$03,	nRst,	$03
	dc.b		nA4,	$02,	nRst,	$03,	nB3,	$06,	nG4,	$02
	dc.b		nRst,	$03,	nG4,	$03,	nRst,	$03,	nG4,	$02
	dc.b		nRst,	$03,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nD4,	$06,	nA4,	$02
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$03,	nA4,	$02
	dc.b		nRst,	$03,	nB3,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$03,	nC5,	$03,	nE5,	$02,	nC5,	$03
	dc.b		nE5,	$03,	nC5,	$03,	nE5,	$02,	nC5,	$03
	dc.b		nD4,	$03,	nB4,	$03,	nD5,	$02,	nB4,	$03
	dc.b		nD5,	$03,	nB4,	$03,	nD5,	$02,	nB4,	$03
	dc.b		nC5,	$08,	nC5,	$03,	nRst,	$0B,	nD5,	$03
	dc.b		nRst,	$03,	nD5,	$02,	nRst,	$0E,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nBb4,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nBb5,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nG4,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nG5,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nBb4,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nBb5,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nG4,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nG5,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nBb4,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nBb5,	$03,	nF5,	$03,	nBb5,	$02
	dc.b		nF5,	$03,	nG4,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nG5,	$03,	nEb5,	$03,	nG5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb4,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nAb5,	$03,	nEb5,	$03,	nAb5,	$02
	dc.b		nEb5,	$03,	nD4,	$06,	nD4,	$02,	nD5,	$03
	dc.b		nD4,	$06,	nD4,	$02,	nD5,	$03,	nD4,	$16
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nD4,	$06,	nA4,	$02
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$03,	nA4,	$02
	dc.b		nRst,	$03,	nB3,	$06,	nG4,	$02,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$03,	nG4,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nD4,	$06,	nA4,	$02,	nRst,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$02,	nRst,	$03
	dc.b		nB3,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nE4,	$03
	dc.b		nC5,	$03,	nE5,	$02,	nC5,	$03,	nE5,	$03
	dc.b		nC5,	$03,	nE5,	$02,	nC5,	$03,	nD4,	$03
	dc.b		nB4,	$03,	nD5,	$02,	nB4,	$03,	nD5,	$03
	dc.b		nB4,	$03,	nD5,	$02,	nB4,	$03,	nC5,	$08
	dc.b		nC5,	$03,	nRst,	$0B,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$02,	nRst,	$0E,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nBb4,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nBb5,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nG4,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nG5,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nBb4,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nBb5,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nG4,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nG5,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nBb4,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nBb5,	$03,	nF5,	$03,	nBb5,	$02,	nF5,	$03
	dc.b		nG4,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nG5,	$03,	nEb5,	$03,	nG5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb4,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nAb5,	$03,	nEb5,	$03,	nAb5,	$02,	nEb5,	$03
	dc.b		nD4,	$06,	nD4,	$02,	nD5,	$03,	nD4,	$06
	dc.b		nD4,	$02,	nD5,	$03,	nD4,	$16,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nD4,	$06,	nA4,	$02,	nRst,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$02,	nRst,	$03
	dc.b		nB3,	$06,	nG4,	$02,	nRst,	$03,	nG4,	$03
	dc.b		nRst,	$03,	nG4,	$02,	nRst,	$03,	nE4,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$06,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$03,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nD4,	$06,	nA4,	$02,	nRst,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$02,	nRst,	$03,	nB3,	$06
	dc.b		nC5,	$02,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$03,	nC5,	$03
	dc.b		nE5,	$02,	nC5,	$03,	nE5,	$03,	nC5,	$03
	dc.b		nE5,	$02,	nC5,	$03,	nD4,	$03,	nB4,	$03
	dc.b		nD5,	$02,	nB4,	$03,	nD5,	$03,	nB4,	$03
	dc.b		nD5,	$02,	nB4,	$03,	nC5,	$08,	nC5,	$03
	dc.b		nRst,	$0B,	nD5,	$03,	nRst,	$03,	nD5,	$02
	dc.b		nRst,	$0E,	nE4,	$06,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nE4,	$06,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nBb4,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nBb5,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nG4,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nG5,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nBb4,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nBb5,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nG4,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nG5,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nBb4,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nBb5,	$03
	dc.b		nF5,	$03,	nBb5,	$02,	nF5,	$03,	nG4,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nG5,	$03
	dc.b		nEb5,	$03,	nG5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb4,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nAb5,	$03
	dc.b		nEb5,	$03,	nAb5,	$02,	nEb5,	$03,	nD4,	$06
	dc.b		nD4,	$02,	nD5,	$03,	nD4,	$06,	nD4,	$02
	dc.b		nD5,	$03,	nD4,	$16,	nE4,	$03,	smpsNoAttack,	$03
	dc.b		nC5,	$02,	nRst,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02,	nRst,	$03,	nE4,	$03,	smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02,	nRst,	$01,	$02,	nC5,	$03,	nRst
	dc.b		$03,	nC5,	$02,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$02,	nRst,	$01
	dc.b		$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$02,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	$01,	$02,	nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	smpsNoAttack,	$03,	nA4,	$02,	nRst,	$01
	dc.b		$02,	nA4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nRst,	$03,	nA4,	$02,	nRst,	$01
	dc.b		$02,	nB3,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$02,	nG4,	$02,	nRst,	$01
	dc.b		$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nG4,	$01,	smpsNoAttack,	$02,	nRst,	$01,	$02,	nG4
	dc.b		$02,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$01,	smpsNoAttack,	$03,	smpsNoAttack,	$02,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$01,	$02,	nC5,	$01,	smpsNoAttack
	dc.b		$02,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$01,	$02,	nC5
	dc.b		$01,	smpsNoAttack,	$02,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02,	$01,	nC5
	dc.b		$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nRst,	$01,	$02,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01,	nE4,	$01,	smpsNoAttack
	dc.b		$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02
	dc.b		$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nRst,	$01,	$02,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01,	nC5,	$01,	smpsNoAttack
	dc.b		$02,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02,	smpsNoAttack,	$01,	nRst,	$01,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$02,	smpsNoAttack,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$02,	nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02
	dc.b		$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01,	nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$01,	smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nD4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03,	smpsNoAttack,	$01,	nA4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nA4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nB3,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nRst,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nRst,	$02,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nRst,	$03
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	$01,	nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nE5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC5,	$03
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nC5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	$01,	nE5,	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC5,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD4,	$03
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nB4,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$01,	nD5,	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nB4,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD5,	$03
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		nB4,	$02
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	$01,	nD5,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nB4,	$03
;	Alter Volume	value
	smpsAlterVol	$07
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	smpsStop

; PSG3 Data
RockDatPuffBall_PSG3:
;	Set PSG WvForm	#
	smpsPSGform	$E7
	dc.b		nRst,	$2C,	nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$01
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$2F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$03,	nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$05
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$04
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nA5,	$03,	nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$02,	nA5,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA5,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$02,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$02,	nA5,	$03
	smpsStop

; PSG1 Data
RockDatPuffBall_PSG1:

; PSG2 Data
RockDatPuffBall_PSG2:
	smpsStop

RockDatPuffBall_Voices:
	dc.b		$27,$33,$72,$03,$01,$5F,$1C,$1A,$5B,$8B,$1F,$9D,$9C,$01,$00,$00
	dc.b		$00,$8B,$1A,$2A,$0F,$08,$07,$0C,$06;			Voice 00
	dc.b		$3B,$3E,$42,$41,$33,$DE,$14,$1E,$14,$14,$0F,$0F,$00,$01,$00,$00
	dc.b		$00,$36,$25,$26,$29,$1F,$1E,$19,$00;			Voice 01
	dc.b		$3B,$3E,$42,$41,$33,$DE,$14,$1E,$14,$14,$0F,$0F,$00,$01,$00,$00
	dc.b		$00,$36,$25,$26,$29,$14,$13,$0A,$00;			Voice 02
	dc.b		$2A,$30,$70,$08,$01,$1F,$1F,$1F,$1F,$08,$10,$0E,$0C,$00,$03,$06
	dc.b		$05,$30,$20,$29,$28,$22,$14,$2A,$00;			Voice 03
	even
