/* adjustments to game dlgs */

/* Gaelan - notices Imoen's freedom */


CHAIN 
IF WEIGHT #-1
~Global("C#IM_ImoenStays","GLOBAL",1) Global("C#IM_GaelanNotices","LOCALS",0)
!Global("TalkedToBodi","GLOBAL",1)
!GlobalGT("B!Alternatives","GLOBAL",4)
!GlobalGT("B!Tourist","GLOBAL",3)~ THEN GAELAN imoenback
@0 DO ~SetGlobal("C#IM_GaelanNotices","LOCALS",1)~
== IMOEN2J IF ~InParty("IMOEN2") See("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @1
= @2
== GAELAN @3
EXIT


/* Aran */
/* #43058 ~Then it is a simple matter of retrieveing Imoen from this place.~ */
ADD_TRANS_TRIGGER ARAN 39 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

/* #49175 ~Because of this I lost significantly more. Imoen remains missing.~ */
ADD_TRANS_TRIGGER ARAN 70 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 2


/* Bodhi */
/* #59426 ~Imoen is of paramount inportance.~ */
ADD_TRANS_TRIGGER BODHI 81 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 2

/* #42892 ~Then it is a simple matter of retrieveing Imoen from this place.~ */
ADD_TRANS_TRIGGER BODHI 104 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

/* abduction in Brynnlaw */
BEGIN c#imcowl

CHAIN
IF ~True()~ THEN c#imcowl imoen
@4
== imoen2j IF ~!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @5
== c#imcowl @6

/* NPC reactions */
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @7
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @8
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @9
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
!HasItem("MISC84","MINSC")~ THEN @10
== BYOSHIM IF ~InParty("YOSHIMO") InMyArea("YOSHIMO") !StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @11 
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @12
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @13
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @14
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @15
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @16
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @17
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @18
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @19
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @20
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @21
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",1)~ THEN @22 
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @23
END
IF ~~ THEN DO ~SetGlobal("C#IM_ImoenStays","GLOBAL",2)
ActionOverride("imoen2",GivePartyAllEquipment()) 
ActionOverride("imoen2",ChangeAIScript("",DEFAULT))
ActionOverride("imoen2",SetLeavePartyDialogFile())
ActionOverride("imoen2",LeaveParty())
ActionOverride("imoen2",CreateVisualEffectObject("SPDIMNDR",Myself))
ActionOverride("c#imcowl",CreateVisualEffectObject("SPDIMNDR",Myself))
ActionOverride("imoen2",DestroySelf())
ActionOverride("c#imcowl",DestroySelf())~ UNSOLVED_JOURNAL @1000 EXIT

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





