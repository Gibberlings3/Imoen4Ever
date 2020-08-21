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


/* Bylanna */
/* #45963 ~A friend of mine, Imoen, was taken captive by the Cowled Wizards for using magic in the city.  Is there anything I can do to free her?~ */
ADD_TRANS_TRIGGER BYLANNA 5 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 5

/* #46014 ~A friend of mine, Imoen, was taken captive by the Cowled Wizards for using magic in the city.  Is there anything I can do to free her?~ */
ADD_TRANS_TRIGGER BYLANNA 6 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 4



/* Bodhi */
/* #59426 ~Imoen is of paramount inportance.~ */
ADD_TRANS_TRIGGER BODHI 81 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 2

/* #42892 ~Then it is a simple matter of retrieveing Imoen from this place.~ */
ADD_TRANS_TRIGGER BODHI 104 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

/* Bodhi */
/* #59401 ~I don't care about my 'friend'.  I want Irenicus for revenge and for what he can do for me!~ */
ADD_TRANS_TRIGGER BODHI 130 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 4


//CIRCG1
/* #45496 ~I have a question... a friend of mine has been imprisoned by the Cowled Wizards.  Do you know where they might be keeping her?~ */
ADD_TRANS_TRIGGER CIRCG1 5 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

/* #45503 ~A friend of mine has been imprisoned by the Cowled Wizards... do you know where they would be keeping her?~ */
ADD_TRANS_TRIGGER CIRCG1 12 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

//HABREGA 0 DO 5
/* #46126 ~My friend Imoen was taken by the Cowled Wizards.  Do you know where she is or where I could get help?~ */
ADD_TRANS_TRIGGER HABREGA 0 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 5

//HABREGA 1 DO 6
/* #46115 ~My friend Imoen was taken by the Cowled Wizards.  Do you know where she is or where I could get help?~ */
ADD_TRANS_TRIGGER HABREGA 1 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 6

//HENDAK prevent state 61: 
/* ~If your friend is their captive, I can only offer condolences.  Maybe another powerful group, like the Shadow Thieves or the churches, could tell you more.~ */
EXTEND_BOTTOM HENDAK 60
IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN + 62
END

//INSPECT 15 DO 5
/* #45880 ~I'm afraid not. But I've a question... a friend of mine was taken by the Cowled Wizards. Know where she might be?~ */
ADD_TRANS_TRIGGER INSPECT 15 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 5

/* MGTEOS01 2 DO 2: mentions Imoen but is ok (~You are the ones that took Imoen from under my nose! Explain why I should trust you!~) */

/* Quayle - Aerie joining */
/* 42164 ~You should know, Aerie, that my goal is to rescue a friend of mine... Imoen... who has been captured by the Cowled Wizards.  It could be dangerous.~ */
ADD_TRANS_TRIGGER QUAYLE 4 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

//QUAYLE 16 DO 1
/* #45482 ~I have a question to ask you.  A friend of mine has been imprisoned by the Cowled Wizards... do you know where they keep people they capture?~ */
ADD_TRANS_TRIGGER QUAYLE 16 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 1

//QUAYLE 20 DO 1
/* #45475 ~I have a question to ask you.  A friend of mine has been imprisoned by the Cowled Wizards... do you know where they keep people they capture?~ */
ADD_TRANS_TRIGGER QUAYLE 20 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 1


//RAELIS 0 DO 2
/* ~I have the gem but I need more gold for it... a friend of mine is captive to the Cowled Wizards and I need gold to rescue her.~ */
ADD_TRANS_TRIGGER RAELIS 0 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 2


//RIBALD 37 DO 0
/* #45508 ~A friend of mine has been taken prisoner by the Cowled Wizards.  Do you know where she would be kept?~ */
ADD_TRANS_TRIGGER RIBALD 37 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

//RIBALD 44 DO 0
/* #45523 ~A friend of mine was captured by the Cowled Wizards.  Do you have any idea where they might be keeping her?~ */
ADD_TRANS_TRIGGER RIBALD 44 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0

//RIBALD 45 DO 0
/* #45527 ~A friend of mine has been imprisoned by the Cowled Wizards.  Do you know where they might keep her?~ */
ADD_TRANS_TRIGGER RIBALD 45 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 0


//WCUST03 0 DO 2
/* #45549 ~A friend of mine has been captured by the Cowled Wizards, and I'm looking for where she's being kept prisoner.~ */
ADD_TRANS_TRIGGER WCUST03 0 ~Global("C#IM_ImoenStays","GLOBAL",0)~ DO 2


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

