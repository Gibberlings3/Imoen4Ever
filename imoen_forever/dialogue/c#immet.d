BEGIN C#IMMET

IF ~See(Player1) Global("C#IM_ImoenStays","GLOBAL",0)~ THEN free
SAY @0
++ @1 + free_01
++ @2 + free_01
++ @3 + free_03
++ @4 + free_02
++ @5 + free_04
END

IF ~~ THEN free_01
SAY @6
IF ~~ THEN + free_03
END

IF ~~ THEN free_02
SAY @7
IF ~~ THEN + free_03
END

IF ~~ THEN free_03
SAY @8
IF ~~ THEN + free_05
END

IF ~~ THEN free_04
SAY @9
IF ~~ THEN + free_05
END

CHAIN
IF ~~ THEN C#IMMET free_05
@10
//= @11
= @27
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @22
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @23
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @24
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
!HasItem("MISC84","MINSC")~ THEN @25
== BYOSHIM IF ~InParty("YOSHIMO") InMyArea("YOSHIMO") !StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @26 
== C#IMMET @12
END
++ @13 + free_08
++ @14 + free_09
++ @15 + free_06
++ @16 + free_07

APPEND C#IMMET

IF ~~ THEN free_06
SAY @17
++ @14 + free_09
++ @16 + free_07
END

IF ~~ THEN free_07
SAY @18
  IF ~~ THEN DO ~SetGlobal("C#IM_ImoenStays","GLOBAL",1) 
SetGlobal("KickedOut","LOCALS",1)
EraseJournalEntry(23458)
AddJournalEntry(@21,INFO) 
SetDialog("imoen2p")
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
END

IF ~~ THEN free_08
SAY @19
IF ~~ THEN + free_09
END

IF ~~ THEN free_09
SAY @20
IF ~~ THEN DO ~SetGlobal("C#IM_ImoenStays","GLOBAL",1) 
EraseJournalEntry(23458)
AddJournalEntry(@21,INFO) 
JoinParty()~ EXIT
END

END //APPEND