SplashScreen:		
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
		jsr	ClearScreen
		move.l	#$40000000,($C00004).l
		lea	(Art_Splash).l,a0 ; load Splash patterns
		jsr	NemDec
		lea	($FF0000).l,a1
		lea	(Map_Splash).l,a0 ; load Splash mappings
		move.w	#0,d0
		jsr	EniDec
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		move.w	#$15,d0
		jsr	PalLoad1	; load Splash pallet

	;	move.b	#$95,d0
	;	jsr	PlaySound ; play "Splash"	sound
        moveq   #$FFFFFF92,d0
        jsr     PlaySample
		move.b	#$14,($FFFFF62A).w
		jsr	DelayProgram
		move.w	#$7F,($FFFFF614).w
		jsr	Pal_Fadeto

Splash_WaitEnd:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w
		beq.s	Splash_GotoTitle
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		beq.s	Splash_WaitEnd	; if not, branch

Splash_GotoTitle:
		move.b	#$4,($FFFFF600).w ; go to title screen
		rts	
; ---------------------------------------------------------------------------
Art_Splash:		incbin	"_splash/art.bin"		; rename to your needs
			even
Map_Splash:		incbin	"_splash/map.bin"		; rename to your needs
			even
Pal_Splash:		incbin	"_splash/pal.bin"		; rename to your needs
			even