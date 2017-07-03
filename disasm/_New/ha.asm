; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to perform Homing Attack
; ---------------------------------------------------------------------------
 
;Sonic_HomingAttack:      
                cmpi.b  #2,($FFFFFFEB).w        ; already Homing?
                beq.s   @Homing_Process         ; if yes, branch
				move.b	($FFFFF603).w,d0	; Moves the controller state to d0 so it can be analyzed and modifies without affecting the controller input
				andi.b	#$70,d0			; ANDs it with the immediate value of ABC
                bne.s   @Homing_Perform
                rts
 
; ---------------------------------------------------------------------------
@Homing_Process:
                subq.b  #1,$1F(a0)              ; is timer over?
                bne.s   @SetSpeeds              ; if not, branch
                clr.b   ($FFFFFFEB).w
                rts
 
        @SetSpeeds:
                movea.w $3A(a0),a1              ; load object to follow
                move.w  $C(a1),d1
                sub.w   $C(a0),d1               ; d1 -> Ydist
                move.w  8(a1),d2
                sub.w   8(a0),d2                ; d2 -> Xdist
                jsr     (CalcAngle).l           ; Calcuate Angle
                jsr     (CalcSine).l            ; Get Sine
                move.w  #$1000,d3               ; d3 -> Homing Attack Speed
                muls.w  d3,d0
                muls.w  d3,d1
                asr.l   #8,d0
                asr.l   #8,d1
                move.w  d1,$12(a0)              ; set speed
                move.w  d0,$10(a0)              ; set speed
                move.w  d0,$14(a0)
                rts
 
; ---------------------------------------------------------------------------
@Homing_Perform:
                moveq   #-1,d3                  ; d3 will contain the direct distance for current d4,d5 (Piphagor yay)
                moveq   #-1,d4                  ; d4 will contain the shortest X-dist
                moveq   #-1,d5                  ; d5 will contain the shortest Y-dist
                move.w  #$5F,d6
                lea     ($FFFFD800).w,a1        ; Load in-level objects RAM
                move.w  #$5F,d6                 ; do $60 objects
               
        @ObjectsLoop:                  
                tst.b   1(a1)                   ; is object on-screen?
                bpl.s   @NextObject             ; if yes, branch
                tst.b   $20(a1)                 ; load touch response
                bne.s   @Homing_TestObject      ; if touch response is not zero, branch
 
        @NextObject:
                lea     $40(a1),a1              ; load next object slot
                dbf     d6,@ObjectsLoop         ; repeat for all objects in RAM
               
                cmpi.l  #$A0*$A0,d3             ; if Distance ^ 2 > $A0 ^ 2, quit
                bhi.w   Sonic_JumpDash
                move.b  #60,$1F(a0)             ; follow object for 60 frames
                move.b  #2,($FFFFFFEB).w        ; set flag as #2 (Homming Attack)
				move.w   #$FFFFFF93,d0
				jmp     PlaySample
            ;    move.w  #$BC,d0                 ; play JD sound
            ;    jmp     (PlaySound_Special).l   ;
 
; ---------------------------------------------------------------------------
@Homing_TestObject:
                lea     @Homing_ObjectList(pc),a2
                move.b  (a1),d0
               
        @CheckID:
                cmp.b   (a2)+,d0                ; compare current obj ID to one in list
                beq.s   @CalcXDist              ; if object is in list, branch
                bhi.s   @CheckID                ; if current obj ID is higer, go on looking
                bra.s   @NextObject             ; the object is not in list, quit
               
        @CalcXDist:
                move.w  8(a1),d1                ; d1 -> ObjX
                sub.w   8(a0),d1                ; d1 -> ObjX - SonX
                bpl.s   @ObjAhead
 
        ; Object is behind Sonic
                btst    #0,$22(a0)              ; is Sonic faced left?
                beq.s   @NextObject             ; if not, we can't home at object
                bra.s   @CalcYDist
 
        @ObjAhead:
                btst    #0,$22(a0)              ; is Sonic faced right?
                bne.s   @NextObject             ; if not, we can't home at object
 
        @CalcYDist:
                move.w  $C(a1),d2               ; d2 -> ObjY
                sub.w   $C(a0),d2               ; d2 -> ObjY - SonY
               
        ; Calculate absolute distance ( d1 * d1 + d2 * d2 )
                move.w  d2,d0                   ; d0 -> d2
                swap    d0
                move.w  d1,d0                   ; d0 -> d2 d1
                muls.w  d1,d1                   ; d1 -> d1 * d1
                muls.w  d2,d2                   ; d2 -> d2 * d2
                add.l   d1,d2                   ; d2 -> d1 * d1 + d2 * d2
                cmp.l   d3,d2                   ; is new distance shorter after all?
                bcc.w   @NextObject             ; if not, branch
 
                move.l  d2,d3                   ; set new distance
                move.w  d0,d4                   ; set new Xdist
                swap    d0
                move.w  d0,d5                   ; set new Ydist
                move.w  a1,$3A(a0)              ; save obj ID
                bra.w   @NextObject
 
 
; ---------------------------------------------------------------------------
; Object ids that are available for homming
; NOTE: They should go in increasing order (1,2,3..)
; ---------------------------------------------------------------------------
 
@Homing_ObjectList:
                dc.b    $1E, $1F, $22, $26, $2B, $2C, $2D, $40, $42, $43
                dc.b    $50, $55, $60, $78
                dc.b    -1      ; mark end of list
                even
 
 
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to perform Jump Dash
; ---------------------------------------------------------------------------
 
Sonic_JumpDash:
                tst.b   ($FFFFFFEB).w           ; already Jump Dashing?
                bne.s   @Return                 ; if yes, branch
                move.b  #1,($FFFFFFEB).w
                move.w  #$A00,d0                ; set Jump Dash speed
                btst    #6,$22(a0)              ; is Sonic underwater
                beq.s   @ChkShoes
                move.w  #$600,d0                ; set JD speed for underwater
       
        @ChkShoes:
                tst.b   ($FFFFFE2E).w           ; does Sonic have speed shoes?
                beq.s   @ChkOrientation         ; if not, branch
                addi.w  #$200,d0
 
        @ChkOrientation:
                btst    #0,$22(a0)
                beq.s   @SetSpeeds
                neg.w   d0
 
        @SetSpeeds:
                move.w  d0,$10(a0)
                move.w  d0,$14(a0)
                move.w  #0,$12(a0)
				move.w   #$FFFFFF93,d0
				jmp     PlaySample
            ;    move.w  #$BC,d0                 ; play JD sound
            ;    jmp     (PlaySound_Special).l   ;
 
        @Return:
                rts
 
; -------------------------------------------------------------------------
; Subroutine to stop Sonic, bounce him up and to give him the ability to
; Jumpdash again when he has performed a Jumpdash
; -------------------------------------------------------------------------
 
BounceJD:
                cmp.b   #2,($FFFFFFEB).w; was HA flag set?
                bne.s   BounceJD_End    ; if not, branch
                clr.b   ($FFFFFFEB).w   ; if yes, clear HA flag (allow Sonic to HA again)
                clr.w   $10(a0)         ; clear X-velocity (stop sonic)
                move.w  #-$5F0,$12(a0)  ; move sonic upwards
                btst    #6,$22(a0)      ; is sonic underwater?
                beq.s   BounceJD_Shoes  ; if not, branch
                move.w  #-$320,$12(a0)
               
BounceJD_Shoes:
                tst.b   ($FFFFFE2E).w   ; does sonic has speed shoes?
                beq.s   BounceJD_End    ; if not, branch
                move.w  #-$620,$12(a0)  ; use -$620 for Y-velocity (move sonic upwards)
               
BounceJD_End:
                rts                     ; return
; End of function BounceJD