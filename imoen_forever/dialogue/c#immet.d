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

IF ~~ THEN free_05
SAY @10
= @11
= @12
++ @13 + free_08
++ @14 + free_09
++ @15 + free_06
++ @16 + free_07
END

IF ~~ THEN free_06
SAY @17
++ @14 + free_09
++ @16 + free_07
END

IF ~~ THEN free_07
SAY @18
  IF ~~ THEN DO ~//ReallyForceSpellRES("c#im0001","IMOEN2")
SetGlobal("C#IM_ImoenStays","GLOBAL",1) 
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
IF ~~ THEN DO ~//ReallyForceSpellRES("c#im0001","IMOEN2")
SetGlobal("C#IM_ImoenStays","GLOBAL",1) 
EraseJournalEntry(23458)
AddJournalEntry(@21,INFO) 
JoinParty()~ EXIT
END

