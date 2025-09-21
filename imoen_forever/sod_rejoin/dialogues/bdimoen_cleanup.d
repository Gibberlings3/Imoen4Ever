/* Global("C#IM_ImoenComesBackSoD","GLOBAL",1) */

/* Imoen Dream. Prevent Imoen from saying the PC abandoned her if she is in party */
/*
~BDCCIMO~
IF ~  AreaCheck("BD0072")
~ THEN BEGIN 0 // from:
  SAY #67213 /* ~Books for bones, words for blood. Candlekeep. Our home. It wasn't your fault we had to leave.~ [BD67213] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67214 /* ~Only... it was. Wasn’t it?~ [BD67214] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #67215 /* ~You were all I had left in the world. And you abandoned me. I've got nothing left now. Nothing.~ [BD67215] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdddd2b",TRUE)
~ EXIT
END
*/

INTERJECT BDCCIMO 0 C#IM_ImoenSoDDream1
== BDCCIMO IF ~InPartyAllowDead("%IMOEN_DV_SOD%")~ THEN #%67214%
END
COPY_TRANS BDCCIMO 2

/* Prevent Imoen in the Scrying Pool in bd1200.are -> is in extra tpa file */
/* ADD_TRANS_TRIGGER BDSCRY 0 ~FALSE()~ DO 0 */

/* set variable to detect whether Imoen stayed behind with Duke Jannath */

ADD_TRANS_ACTION BDIMOEN BEGIN 85 END BEGIN END ~SetGlobal("C#IM_ImoenJannathSoD","GLOBAL",1)~

/* Uh... who's this you're talking about now? Glint? Never heard of him.
(StrRef: 69012)
bdimoen state 114 */

I_C_T BDIMOEN 114 C#IM_BDIMOEN_114
== BDIMOEN @0 /* ~Yeah, that was a joke, sorry. Glint went, mumbling something about urgent business he needs to attend to.~ */
END

/* prevent dialogue states to trigger at wrong times */
ADD_STATE_TRIGGER BDIMOEN 55 ~AreaCheck("bd0103") GlobalGT("BD_PLOT","GLOBAL",50) GlobalLT("BD_plot","global",54)~

ADD_STATE_TRIGGER BDIMOEN 66 ~AreaCheck("bd0103") GlobalGT("BD_PLOT","GLOBAL",50) GlobalLT("BD_plot","global",54)~

ADD_STATE_TRIGGER BDIMOEN 141 ~GlobalGT("bd_plot","global",659)~
