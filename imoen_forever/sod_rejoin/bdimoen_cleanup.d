/* Global("C#IM_ImoenComesBackSoD","GLOBAL",1) */



/* Prevent Imoen in the Scrying Pool in bd1200.are */

ADD_TRANS_TRIGGER BDSCRY 0 ~FALSE()~ DO 0

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