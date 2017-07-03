		movea.l	a0,a1		; copy a0 to a1
		moveq	#0,d0		; clear d0
		move.b	($FFFFFE10).w,d0 ; move current zone (not act) number to d0

Obj34_ChkGHZ1:	cmpi.w	#$000,($FFFFFE10).w ; is current level GHZ 1?
		bne.s	Obj34_ChkGHZ2	; if not, branch
		moveq	#0,d0		; use GHZ 1 title card text
Obj34_ChkGHZ2:	cmpi.w	#$001,($FFFFFE10).w ; is current level GHZ 2?
		bne.s	Obj34_ChkGHZ3	; if not, branch
		moveq	#1,d0		; use GHZ 2 title card text
Obj34_ChkGHZ3:	cmpi.w	#$002,($FFFFFE10).w ; is current level GHZ 3?
		bne.s	Obj34_ChkLZ1	; if not, branch
		moveq	#2,d0		; use GHZ 3 title card text

Obj34_ChkLZ1:	cmpi.w	#$100,($FFFFFE10).w ; is current level LZ 1?
		bne.s	Obj34_ChkLZ2	; if not, branch
		moveq	#3,d0		; use LZ 1 title card text
Obj34_ChkLZ2:	cmpi.w	#$101,($FFFFFE10).w ; is current level LZ 2?
		bne.s	Obj34_ChkLZ3	; if not, branch
		moveq	#4,d0		; use LZ 2 title card text
Obj34_ChkLZ3:	cmpi.w	#$102,($FFFFFE10).w ; is current level LZ 3?
		bne.s	Obj34_ChkMZ1	; if not, branch
		moveq	#5,d0		; use LZ 3 title card text

Obj34_ChkMZ1:	cmpi.w	#$200,($FFFFFE10).w ; is current level MZ 1?
		bne.s	Obj34_ChkMZ2	; if not, branch
		moveq	#11,d0		; use MZ 1 title card text
Obj34_ChkMZ2:	cmpi.w	#$201,($FFFFFE10).w ; is current level MZ 2?
		bne.s	Obj34_ChkMZ3	; if not, branch
		moveq	#12,d0		; use MZ 2 title card text
Obj34_ChkMZ3:	cmpi.w	#$202,($FFFFFE10).w ; is current level MZ 3?
		bne.s	Obj34_ChkSLZ1	; if not, branch
		moveq	#13,d0		; use MZ 3 title card text

Obj34_ChkSLZ1:	cmpi.w	#$300,($FFFFFE10).w ; is current level SLZ 1?
		bne.s	Obj34_ChkSLZ2	; if not, branch
		moveq	#14,d0		; use SLZ 1 title card text
Obj34_ChkSLZ2:	cmpi.w	#$301,($FFFFFE10).w ; is current level SLZ 2?
		bne.s	Obj34_ChkSLZ3	; if not, branch
		moveq	#15,d0		; use SLZ 2 title card text
Obj34_ChkSLZ3:	cmpi.w	#$302,($FFFFFE10).w ; is current level SLZ 3?
		bne.s	Obj34_ChkSYZ1	; if not, branch
		moveq	#16,d0		; use SLZ 3 title card text

Obj34_ChkSYZ1:	cmpi.w	#$400,($FFFFFE10).w ; is current level SYZ 1?
		bne.s	Obj34_ChkSYZ2	; if not, branch
		moveq	#17,d0		; use SYZ 1 title card text
Obj34_ChkSYZ2:	cmpi.w	#$401,($FFFFFE10).w ; is current level SYZ 2?
		bne.s	Obj34_ChkSYZ3	; if not, branch
		moveq	#18,d0		; use SYZ 2 title card text
Obj34_ChkSYZ3:	cmpi.w	#$402,($FFFFFE10).w ; is current level SYZ 3?
		bne.s	Obj34_ChkSBZ1	; if not, branch
		moveq	#19,d0		; use SYZ 3 title card text

Obj34_ChkSBZ1:	cmpi.w	#$500,($FFFFFE10).w ; is current level SBZ 1?
		bne.s	Obj34_ChkSBZ2	; if not, branch
		moveq	#20,d0		; use SBZ 1 title card text
Obj34_ChkSBZ2:	cmpi.w	#$501,($FFFFFE10).w ; is current level SBZ 2?
		bne.s	Obj34_ChkSBZ3	; if not, branch
		moveq	#21,d0		; use SBZ 2 title card text
Obj34_ChkSBZ3:	cmpi.w	#$103,($FFFFFE10).w ; is current level SBZ 3?
		bne.s	Obj34_CheckFZ	; if not, branch
		moveq	#22,d0		; use SBZ 3 title card text (LZ 4)

Obj34_CheckFZ:
		move.w	d0,d2		; move d0 to d2 for whatever reason
		cmpi.w	#$502,($FFFFFE10).w ; is current level FZ?
		bne.s	Obj34_LoadConfig ; if not, branch
		moveq	#23,d0		; use FZ title card text
		move.b	#$17,d2		; use "FINAL" mappings