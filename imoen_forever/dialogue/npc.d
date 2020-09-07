/* joinable NPCs */

/* ADD_TRANS_TRIGGER to specific reply options are inside "add_trans_trigger_npc.tpa" */

/* Aerie */

/* Anomen */
/* in addition: disable comment about Imoen if Imoen is in party. */
ADD_TRANS_TRIGGER BANOMEN 143 ~!InParty("IMOEN2")~ 

EXTEND_BOTTOM BANOMEN 143 
IF ~InParty("IMOEN2")~ THEN EXIT
END

/* Cernd */

/* Edwin */

/* Haer'Dalis */

/* Jan */

/* Keldorn */

/* Korgan */

/* Mazzy */

/* Nalia */

/* Valygar */

/* Viconia */

/* Yoshimo */
/* skip 105: ~Not that I have ever been, but I have heard of some of those confined there, not unlike your Imoen. Can it be so cruel a place?~ */
EXTEND_BOTTOM YOSHJ 104
IF ~Global("C#IM_ImoenStays","GLOBAL",1)~ THEN EXTERN ~ARAN~ 41
END
