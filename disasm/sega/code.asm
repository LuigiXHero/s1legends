SegaScreen:				; XREF: GameModeArray
    move.b  #$E4,d0                 ; set music ID to stop
    jsr    PlaySound_Special.w      ; play music ID
    jsr    Pal_FadeFrom.w           ; fade palette out
    move   #$2700,sr                ; disable interrupts
    move.w ($FFFFF60C).w,d0         ; load VDP register 81XX data
    andi.b #%10111111,d0            ; set display to "disable"
    move.w d0,($FFC00004).l         ; save to VDP
    jsr    ClearPLC.w               ; clear pattern load cues
    jsr    ClearScreen.w            ; clear VRAM planes, sprite buffer and scroll buffer
    lea    ($FF0000).l,a1           ; load dump location
    lea    MAPS_SEGA.l,a0           ; load compressed mappings address
    move.w #320,d0                  ; prepare pattern index value to patch to mappings
    jsr    EniDec.w                 ; decompress and dump
    move.l #$60000003,d0            ; prepare VRAM write mode address (Plane B E000)
    moveq  #$28-$01,d1              ; set map box draw width
    moveq  #$1E-$01,d2              ; set map box draw height
    bsr.w  ShowVDPGraphics          ; flush mappings to VRAM
    lea    ($FFC00004).l,a6         ; load VDP control port
    move.l #$68000000,(a6)          ; set VDP to VRAM write mode (Address 2800)
    lea    ART_SEGA.l,a0            ; load compressed art address
    jsr    NemDec.w                 ; decompress and dump to VDP memory
    lea    Pal_SEGANew.l,a0         ; load palette address
    lea    ($FFFFFB80).w,a1         ; load palette buffer address
    moveq  #$F,d0                   ; set repeat times


SegaScreen_PalLoop:
    move.l (a0)+,(a1)+              ; copy colours to buffer
    move.l (a0)+,(a1)+              ; ''
    dbf    d0,SegaScreen_PalLoop    ; repeat until done
    move.w ($FFFFF60C).w,d0         ; load VDP register 81XX data
    ori.b  #%01000000,d0            ; set display to "enable"
    move.w d0,(a6)                  ; save to VDP
    jsr    Pal_FadeTo               ; fade palette in
    move.w #1*60,($FFFFF614).w      ; set delay time (3 seconds on a 60hz system)
	move.b	#$E1,d0
	bsr.w	PlaySound_Special ; play "SEGA"	sound

Sega_MainLoop:
    move.b #2,($FFFFF62A).w         ; set V-blank routine to run
    jsr    DelayProgram.w           ; wait for V-blank (decreases "Demo_Time_left")
    tst.b  ($FFFFF605).w            ; has player 1 pressed start button?
    bmi.s  sega_GotoTitle           ; if so, branch
    tst.w  ($FFFFF614).w            ; has the delay time finished?
    bne.s  Sega_MainLoop            ; if not, branch

Sega_GotoTitle:
		move.b	#$4,($FFFFF600).w ; go to title screen
		rts

ART_SEGA:               binclude        "SEGA/SEGAARTNEM.bin"
                        even
 
MAPS_SEGA:              binclude        "SEGA/SEGAMAPSE.bin"
                        even

Pal_SEGANew:            binclude        "SEGA/SEGAPAL.bin"
                        even