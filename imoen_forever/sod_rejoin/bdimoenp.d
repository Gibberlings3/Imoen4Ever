/* Imoen's kickout dialogue for SoD, goes into bdimoen as well */
APPEND ~bdimoen~

/* If kicked out in Avernus (so Caelar can join) in bd4700.are
This sets Global("C#Imoen_kicked_bd4700","global",1) which is used in imoen_bdcut59b.baf */
/* Biff can't go home from here - so he will stay and say something brave. */
IF ~AreaCheck("bd4700")
    GlobalGT("bd_joined","locals",0)
    GlobalLT("bd_plot","global",570)~ THEN BEGIN kickout_1
  SAY #%35347% /* ~Gods! You can really be mean sometimes, you know that?~ */
  IF ~~ THEN DO ~SetGlobal("C#Imoen_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~~ THEN BEGIN kickout_3
  SAY #%16415% /* ~Oh, fine! I'll just pester about around here until you realize you can't live without little Imoen. You know you will.~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~~ THEN BEGIN kickout_4
  SAY #%39771% /* ~All right. Let's get going.~ */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

/* kicked out somewhere else (not bd4700.are in Avernus, not Korlasz's tomb) */
IF ~GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_5
  SAY #%52921% /* ~All right, all right, I get the message!~ */
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     OR(2)
       !Range("ff_camp",999)
       NextTriggerObject("ff_camp")
     !IsOverMe("%IMOEN_DV_SOD%")~ + #%57089% /* ~Yes. I need you to return to the camp for the time being.~ */ DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ #%66315% /* ~Stay here. I'll return for you in due course.~ */ + kickout_3
  ++ #%66358% /* ~Not right now. Stay with me.~ */ + kickout_4
END

IF ~~ THEN BEGIN kickout_6
  SAY #%39753% /* ~Me? Why me?~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END


/* join-up after leaving the group */
IF WEIGHT #-1
~!InParty(Myself)
Global("bd_joined","locals",0)
GlobalGT("bd_plot","GLOBAL",54)~ THEN join_again
  SAY #%63958% /* ~Heya, how are things going?~ */
  ++ #%16414% /* ~Sorry to have kept you waiting. Let's get going.~ */ + kickout_4
  ++ #%16413% /* ~Sorry, kiddo, but I don't need your company just yet.~ */ + kickout_3
END

END //APPEND