; ---------------------------------------------------------------------------
; Sonic Games Dimension splash screen
; ---------------------------------------------------------------------------

SGDSplash:				; XREF: GameModeArray
		move.b	#$E4,d0
		jsr	PlaySound_Special ; stop music
		jsr	ClearPLC
		jsr	Pal_FadeFrom
		lea	($C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$8700,(a6)
		move.w	#$8B00,(a6)
		clr.b	($FFFFF64E).w
		move	#$2700,sr
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0
		move.w	d0,($C00004).l
		jsr	ClearScreen
		
		move.w	#-$A,($FFFFF632).w
		move.w	#0,($FFFFF634).w
		move.w	#0,($FFFFF662).w
		move.w	#0,($FFFFF660).w
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($C00004).l

		lea	($FFFFFB00).w,a1
		moveq	#0,d0
		move.w	#$3F,d1

SGD_ClrPallet:
		move.b	(d0),(a1)+
		dbf	d1,SGD_ClrPallet ; fill pallet with 0	(black)

SGD_ShowFrame1:
		lea	($FF0000).l,a1
		lea	(SGD_ArtKos1).l,a0
		jsr	KosDec

		dma68ktoVDP	$FF0000,$0000,$4000,VRAM
		
		lea	($FF0000).l,a1
		lea	(SGD_ArtKos2).l,a0
		jsr	KosDec

		dma68ktoVDP	$FF0000,$4000,$4000,VRAM

		lea	($FF0000).l,a1
		lea	(SGD_MapEni1).l,a0 ; load Sega	logo mappings
		move.w	#0,d0
		jsr	EniDec
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		lea	($FF0000).l,a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics

		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB02).w
SGD1_palcycle1:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle1
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$8,($FFFFF614).w	; run for frames

		move.w	#$0088,($FFFFFB02).w
		move.w	#$00EE,($FFFFFB04).w
SGD1_palcycle2:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle2
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0022,($FFFFFB02).w
		move.w	#$0088,($FFFFFB04).w
		move.w	#$00EE,($FFFFFB06).w
SGD1_palcycle3:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle3
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB02).w
		move.w	#$0022,($FFFFFB04).w
		move.w	#$0088,($FFFFFB06).w
		move.w	#$00EE,($FFFFFB08).w
SGD1_palcycle4:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle4
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB04).w
		move.w	#$0022,($FFFFFB06).w
		move.w	#$0088,($FFFFFB08).w
		move.w	#$00EE,($FFFFFB0A).w
SGD1_palcycle5:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle5
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB06).w
		move.w	#$0022,($FFFFFB08).w
		move.w	#$0088,($FFFFFB0A).w
		move.w	#$00EE,($FFFFFB0C).w
SGD1_palcycle6:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle6
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB08).w
		move.w	#$0022,($FFFFFB0A).w
		move.w	#$0088,($FFFFFB0C).w
		move.w	#$00EE,($FFFFFB0E).w
SGD1_palcycle7:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle7
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB0A).w
		move.w	#$0022,($FFFFFB0C).w
		move.w	#$0088,($FFFFFB0E).w
		move.w	#$00EE,($FFFFFB10).w
SGD1_palcycle8:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle8
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB0C).w
		move.w	#$0022,($FFFFFB0E).w
		move.w	#$0088,($FFFFFB10).w
		move.w	#$00EE,($FFFFFB12).w

		move.b	#$BD,d0
		jsr	PlaySound_Special
SGD1_palcycle9:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle9
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB0E).w
SGD1_palcycle10:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle10
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB10).w
SGD1_palcycle11:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD1_palcycle11
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$5,($FFFFF614).w	; run for frames

SGD_ShowFrame2:
		lea	($FF0000).l,a1
		lea	(SGD_MapEni2).l,a0 ; load Sega	logo mappings
		move.w	#$200,d0
		jsr	EniDec
		move.w	#$0000,($FFFFFB12).w
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		lea	($FF0000).l,a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics

		move.w	#$8,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB16).w
		move.w	#$00EE,($FFFFFB14).w
SGD2_palcycle1:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle1
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB10).w
		move.w	#$00EE,($FFFFFB12).w
		move.w	#$0088,($FFFFFB14).w
		move.w	#$00AA,($FFFFFB16).w
SGD2_palcycle2:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle2
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB0C).w
		move.w	#$00EE,($FFFFFB0E).w
		move.w	#$0088,($FFFFFB10).w
		move.w	#$00AA,($FFFFFB12).w
		move.w	#$0022,($FFFFFB14).w
		move.w	#$0044,($FFFFFB16).w
SGD2_palcycle3:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle3
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB08).w
		move.w	#$00EE,($FFFFFB0A).w
	;	move.w	#$0088,($FFFFFB0C).w
		move.w	#$0088,($FFFFFB0E).w
		move.w	#$0022,($FFFFFB10).w
		move.w	#$0044,($FFFFFB12).w
		move.w	#$0000,($FFFFFB14).w
		move.w	#$0022,($FFFFFB16).w
SGD2_palcycle4:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle4
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB04).w
		move.w	#$00EE,($FFFFFB06).w
		move.w	#$0088,($FFFFFB08).w
		move.w	#$00EE,($FFFFFB0A).w
		move.w	#$00AA,($FFFFFB0C).w
		move.w	#$0022,($FFFFFB0E).w
		move.w	#$0000,($FFFFFB10).w
		move.w	#$0022,($FFFFFB12).w

		move.w	#$0000,($FFFFFB16).w
SGD2_palcycle5:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle5
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$00EE,($FFFFFB02).w
	;	move.w	#$0088,($FFFFFB04).w
		move.w	#$0088,($FFFFFB06).w
		move.w	#$0022,($FFFFFB08).w
		move.w	#$00AA,($FFFFFB0A).w
		move.w	#$0022,($FFFFFB0C).w
		move.w	#$0000,($FFFFFB0E).w
	;	move.w	#$0000,($FFFFFB10).w
		move.w	#$0000,($FFFFFB12).w

		move.b	#$BD,d0
		jsr	PlaySound_Special
SGD2_palcycle6:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle6
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$0088,($FFFFFB06).w
		move.w	#$0000,($FFFFFB08).w
		move.w	#$0088,($FFFFFB0A).w
		move.w	#$0000,($FFFFFB0C).w
SGD2_palcycle7:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle7
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		move.w	#$0000,($FFFFFB06).w
		move.w	#$0000,($FFFFFB0A).w

SGD2_palcycle8:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		bne.w	SGD2_palcycle8
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.w	SGD_GotoTitle	; if yes, branch
		move.w	#$6,($FFFFF614).w	; run for frames

		jsr	Pal_MakeFlash
SGD_ShowFrame3:
		lea	($FF0000).l,a1
		lea	(SGD_ArtKos3).l,a0
		jsr	KosDec

		dma68ktoVDP	$FF0000,$0000,$8000,VRAM

		lea	($FF0000).l,a1
		lea	(SGD_MapEni3).l,a0 ; load Sega	logo mappings
		move.w	#0,d0
		jsr	EniDec
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		lea	($FF0000).l,a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics

		move.b	#$16,d0
		jsr	PalLoad1

		move.b	#$B5,d0
		jsr	PlaySound_Special

		jsr	Pal_MakeWhite

		move.w	#$7E,($FFFFF614).w

SGD_WaitEnd:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		beq.s	SGD_GotoTitle
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		beq.s	SGD_WaitEnd	; if not, branch

SGD_GotoTitle:
	if ShowSplash=3
		move.b	#$24,($FFFFF600).w ; go to title screen
	else
		move.b	#$4,($FFFFF600).w ; go to title screen
	endc
		rts

;SGD_Pal1:
;		incbin	"#SGDSplash/pal_intro1.bin"
;SGD_Pal2:
;		incbin	"#SGDSplash/pal_intro2.bin"
SGD_Pal3:
		incbin	"#SGDSplash/pal_intro3.bin"
		
SGD_ArtKos1:
		incbin	"#SGDSplash/artkos_intro1.bin"
		even
SGD_ArtKos2:
		incbin	"#SGDSplash/artkos_intro2.bin"
		even
SGD_ArtKos3:
		incbin	"#SGDSplash/artkos_intro3.bin"
		even

SGD_MapEni1:
		incbin	"#SGDSplash/mapeni_intro1.bin"
		even
SGD_MapEni2:
		incbin	"#SGDSplash/mapeni_intro2.bin"
		even
SGD_MapEni3:
		incbin	"#SGDSplash/mapeni_intro3.bin"
		even