Sonic_Dash:
		btst	#1,$39(a0)
		bne.s	Sonic_DashLaunch
		cmpi.b	#id_LookUp,$1C(a0)
		bne.s	@return
		move.b	($FFFFF603).w,d0
		andi.b	#%01110000,d0
		beq.w	@return
		move.b	#id_Run,$1C(a0)
		move.w	#0,$3A(a0)
		move.w	#$D1,d0
		jsr		(PlaySound_Special).l
		addq.l	#4,sp
		bset	#1,$39(a0)
 
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
 
	@return:
		rts	
; ---------------------------------------------------------------------------
 
Sonic_DashLaunch:
		move.b	#(ptr_DashCharge-Ani_Sonic)/2,$1C(a0)
		move.b	(v_jpadhold2).w,d0
		btst	#0,d0
		bne.w	Sonic_DashCharge
		bclr	#1,$39(a0)	; stop Dashing
		cmpi.b	#$1E,$3A(a0)	; have we been charging long enough?
		bne.s	Sonic_DashResetScr
		move.b	#id_Dash,$1C(a0)	; launches here
		move.w	#1,$10(a0)	; force X speed to nonzero for camera lag's benefit
		move.w	#$0C00,$14(a0)
		move.w	$14(a0),d0
		subi.w	#$800,d0
		add.w	d0,d0
		andi.w	#$1F00,d0
		neg.w	d0
		addi.w	#$2000,d0
		;move.w	d0,(v_cameralag).w
		btst	#0,$22(a0)
		beq.s	@dontflip
		neg.w	$14(a0)
 
@dontflip:
		;bset	#2,$22(a0)
		bclr	#7,$22(a0)
		move.w	#$BC,d0
		jsr		(PlaySound_Special).l
		bra.w	Sonic_DashResetScr
; ---------------------------------------------------------------------------
 
Sonic_DashCharge:				; If still charging the dash...
		cmpi.b	#$1E,$3A(a0)
		beq.s	Sonic_DashResetScr
		addi.b	#1,$3A(a0)
		
 
Sonic_DashResetScr:
		addq.l	#4,sp			; increase stack ptr
		cmpi.w	#$60,($FFFFF73E).w
		beq.s	@finish
		bcc.s	@skip
		addq.w	#4,($FFFFF73E).w
 
	@skip:
		subq.w	#2,($FFFFF73E).w
 
	@finish:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
		rts
		