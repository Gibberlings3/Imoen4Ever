/* adjustments to game dlgs - also in add_trans_trigger_general.tpa */

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

//HENDAK prevent state 61: 
/* ~If your friend is their captive, I can only offer condolences.  Maybe another powerful group, like the Shadow Thieves or the churches, could tell you more.~ */
EXTEND_BOTTOM HENDAK 60
IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN + 62
END


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

