		movea.l	a0,a1
		moveq	#0,d0
		move.b	($FFFFFE10).w,d0
		cmpi.w	#$103,($FFFFFE10).w ; check if level is	SBZ 3
		bne.s	Obj34_CheckFZ
		moveq	#5,d0		; load title card number 5 (SBZ)

Obj34_CheckFZ:
		move.w	d0,d2
		cmpi.w	#$502,($FFFFFE10).w ; check if level is	FZ
		bne.s	Obj34_LoadConfig
		moveq	#6,d0		; load title card number 6 (FZ)
		moveq	#$B,d2		; use "FINAL" mappings