/* Yoshimo in Brynnlaw */

/* never joined before */
APPEND YOSHIMO
IF WEIGHT #-1
~Global("C#IM_MovingYoshimo","AR1600",1)~ THEN brynnlaw
SAY @24
IF ~~ THEN + brynnlaw_02
END

IF WEIGHT #-1
~Global("C#IM_MovingYoshimo","AR1600",1)~ THEN brynnlaw_01
SAY @25
IF ~~ THEN + brynnlaw_02
END

IF WEIGHT #-1 
~Global("C#IM_MovingYoshimo","AR1600",2)~ THEN BEGIN meeting
  SAY @26 
  IF ~~ THEN REPLY #2781 /* ~I would like you to join my party.~ */ GOTO join
  IF ~~ THEN REPLY #2769 /* ~I'm sorry, I have no time to talk with you.~ */ GOTO 17
END

IF ~~ THEN BEGIN join
  SAY #2788 /* ~I would be honored to wield my sword for you.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoTalksPC","GLOBAL",500)
JoinParty()~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN YOSHIMO brynnlaw_02
@27
== YOSHIMO IF ~Global("DishonorYoshimo","GLOBAL",1)~ THEN @28 DO ~SetGlobal("DishonorYoshimo","GLOBAL",0)~
= @29
END
IF ~~ THEN DO ~SetGlobal("C#IM_MovingYoshimo","AR1600",2) 
SetInterrupt(FALSE)
DialogueInterrupt(FALSE)
MoveToPointNoInterrupt([1039.2723])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
MoveGlobal("AR1602",Myself,[581.436])~ EXIT



/* was in group before */

APPEND YOSHP
IF WEIGHT #-1
~Global("KickedOut","LOCALS",1)
Global("C#IM_MovingYoshimo","AR1600",1)~ THEN brynnlaw
SAY @30
IF ~~ THEN + brynnlaw_02_p
END
END //APPEND

CHAIN
IF ~~ THEN YOSHP brynnlaw_02_p
@27
= @29
END
IF ~~ THEN DO ~SetGlobal("C#IM_MovingYoshimo","AR1600",2) 
SetInterrupt(FALSE)
DialogueInterrupt(FALSE)
MoveToPointNoInterrupt([1039.2723])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
MoveGlobal("AR1602",Myself,[581.436])~ EXIT





