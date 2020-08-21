
/* first dialogue in Korlasz's crypt */
INTERJECT BDIMOEN 0 C#st_BDIMOEN_0
== BDIMOEN IF ~InParty("%IMOEN_DV_SOD%")~ THEN 
@0
END
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY #%63943% /* ~What do we know of our prey?~ */ EXTERN ~BDDYNAHJ~ 3
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY #%63943% /* ~What do we know of our prey?~ */ GOTO 2
  IF ~~ THEN REPLY #%63944% /* ~Sounds simple enough. Let's get to it.~ */ GOTO 5


EXTEND_BOTTOM BDIMOEN 2 
IF ~InParty("%IMOEN_DV_SOD%")~ THEN + 5
END

ADD_TRANS_TRIGGER BDIMOEN 9 ~!InParty("%IMOEN_DV_SOD%")~ DO 9

/* turn this into PID */
ADD_STATE_TRIGGER BDIMOEN 12 ~InParty("%IMOEN_DV_SOD%") GlobalLT("BD_plot","global",50)~

ADD_TRANS_TRIGGER BDIMOEN 12 ~!InParty("%IMOEN_DV_SOD%")~ DO 9

EXTEND_BOTTOM BDIMOEN 9 12 
+ ~InParty("%IMOEN_DV_SOD%")~ + @1 + 22_add
END

CHAIN 
IF ~~ THEN BDIMOEN  22_add
@2
== BDIMOEN IF ~!Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN @3
== BDIMOEN @4
== BDIMOEN @5
END
IF ~~ THEN EXIT
IF ~Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN + 22



ADD_STATE_TRIGGER BDIMOEN 29 ~!InParty("%IMOEN_DV_SOD%")~


APPEND BDIMOEN

/* Korlasz is defeated with Imoen in group */

IF WEIGHT #-1
~Global("C#st_KORLASZ_Defeated","LOCALS",1)~ THEN BEGIN 29_add
  SAY @6
++ @7 + 29_add_01
  IF ~~ THEN REPLY @8 GOTO 29_add_02
  IF ~~ THEN REPLY #%64518% /* ~The important thing is we've triumphed—you and I are safe.~ */ GOTO 29_add_02
++ @9 + 29_add_02
END

IF ~~ THEN 29_add_01
SAY @10
  IF ~~ THEN REPLY @8 GOTO 29_add_02
  IF ~~ THEN REPLY #%64518% /* ~The important thing is we've triumphed—you and I are safe.~ */ GOTO 29_add_02
++ @9 + 29_add_02
END

IF ~~ THEN BEGIN 29_add_02 
  SAY #%64521% /* ~I suppose so. Are you ready to leave now? This place gives me the shivers.~ [BD64521] */
  IF ~~ THEN REPLY #%64522% /* ~I am.~ */ GOTO 29_add_04
  IF ~~ THEN REPLY #%64524% /* ~Not yet. I want to look around.~ */ GOTO 29_add_03
END

IF ~~ THEN BEGIN 29_add_03
  SAY @11
IF ~~ THEN + 29_add_04
END

IF ~~ THEN BEGIN 29_add_04
  SAY @12 
  IF ~~ THEN DO ~AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
SetGlobal("C#st_KORLASZ_Defeated","LOCALS",2)
SetGlobal("BDSH_Imoen_Floor","GLOBAL",3)
SetGlobal("BDSH_Rope","GLOBAL",1)
ActionOverride("BDFF1000",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1001",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1002",EscapeAreaObject("Tranbd0120rope"))
~ EXIT
END


/* group finds Korlasz's tomes about Bhaal research with Imoen in group */
IF WEIGHT #-1
~Global("C#st_BhaalResearch","LOCALS",1)~ THEN bhaal_research
SAY @13
++ @14 + bhaal_research_01
++ @15 + bhaal_research_02
END

IF ~~ THEN BEGIN bhaal_research_01
  SAY #%64525% /* ~This is exactly the sort of thing I was looking for. Thanks. I'll tell Duke Jannath you found these when we get back to the palace.~ [BD64525] */
  IF ~~ THEN DO ~SetGlobal("C#st_BhaalResearch","LOCALS",2)
ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~ EXIT
END

IF ~~ THEN BEGIN bhaal_research_02
  SAY @16
IF ~~ THEN DO ~SetGlobal("C#st_BhaalResearch","LOCALS",2)~
EXIT
END

END //APPEND


ADD_TRANS_TRIGGER BDIMOEN 33 ~!InParty("%IMOEN_DV_SOD%")~ DO 1

EXTEND_BOTTOM BDIMOEN 33 
  IF ~InParty("%IMOEN_DV_SOD%") PartyHasItem("BDSHBHR")~ THEN REPLY @17  GOTO 36
END

/* make sure the tomes are actually gone from inventory after giving them to Imoen */

ADD_TRANS_ACTION BDIMOEN BEGIN 36 END BEGIN END ~ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~


/* add more triggers to the dialogue so it doesn't trigger too early via PID */
/* final dialogue: at the exit. */
ADD_STATE_TRIGGER BDIMOEN 33 ~Range("Rope",27)~


/* if Imoen is not in party, the final dialogue should not be triggered by one of the FF soldiers unless Imoen and the PC are at the exit. */

ADD_TRANS_TRIGGER BDFF1000 0 ~Range("%IMOEN_DV_SOD%",20) !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) !Dead("%IMOEN_DV_SOD%")~ DO 2
ADD_TRANS_TRIGGER BDFF1001 0 ~Range("%IMOEN_DV_SOD%",20) !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) !Dead("%IMOEN_DV_SOD%")~ DO 1
ADD_TRANS_TRIGGER BDFF1002 0 ~Range("%IMOEN_DV_SOD%",20) !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) !Dead("%IMOEN_DV_SOD%")~ DO 1

EXTEND_BOTTOM BDFF1000 0
  IF ~OR(2)
StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) Dead("%IMOEN_DV_SOD%")~ THEN REPLY #%69736% /* ~Thank you. I'm ready to return to the Ducal Palace now.~ */ DO ~SetGlobal("C#st_ImoenRaised","GLOBAL",1)~ + 1
END

EXTEND_BOTTOM BDFF1001 0
  IF ~OR(2)
StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) Dead("%IMOEN_DV_SOD%")~ THEN REPLY #%69736% /* ~Thank you. I'm ready to return to the Ducal Palace now.~ */ DO ~SetGlobal("C#st_ImoenRaised","GLOBAL",1)~ + 1
END

EXTEND_BOTTOM BDFF1002 0
  IF ~OR(2)
StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) Dead("%IMOEN_DV_SOD%")~ THEN REPLY #%69736% /* ~Thank you. I'm ready to return to the Ducal Palace now.~ */ DO ~SetGlobal("C#st_ImoenRaised","GLOBAL",1)~ + 1
END



/* Imoen will not leave the group in Korlasz's crypt! */
APPEND BDIMOEN
IF WEIGHT #-1
~OR(2)
AreaCheck("bd0120")
AreaCheck("bd0130")
GlobalGT("bd_joined","locals",0)
!InParty(Myself)
~ THEN BEGIN 141 // from: 
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
JoinParty()
~ EXIT
END
END //APPEND

/* Duke Jannath revived Imoen */

BEGIN c#stduja

IF ~True()~ THEN duja_0
SAY @19
IF ~~ THEN DO ~SetGlobal("C#st_ImoenRaised","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#stdu01")~ EXIT
IF ~InPartyAllowDead("%IMOEN_DV_SOD%")~ THEN DO ~SetGlobal("C#st_ImoenRaised","GLOBAL",3)
ActionOverride("%IMOEN_DV_SOD%",LeaveParty())
SmallWait(1) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#stdu01")~ EXIT
END

/* One reply option in Duke Jannath's dialogue needs to be restricted:
~That's why she was reluctant to assist in rooting out Sarevok's minions...~ */

ADD_TRANS_TRIGGER BDLIIA 24 ~Global("C#st_ImoenInGroupKD","GLOBAL",0)~ DO 0



