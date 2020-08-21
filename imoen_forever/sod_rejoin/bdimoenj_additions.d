

/* PC threatens to kill the crusaders with the spikes in bd7230.are */
I_C_T bdkharmy 6 C#IM_bdkharmy_6
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @1
END

/* PC handed over the Bridgefort Castle to the crusaders */

I_C_T BDKHALIJ 33 C#IM_betrayal_discussion //"C#IM_betrayal_discussion" is the name of the global variable
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @5505 /* ~Just like that? I'm not sure the others will like this.~ */
END

/* the dwarven miners. Do not kill them for the Lich! */

I_C_T BDCOLDH 17 C#IM_BDCOLDH_17
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @2
END

/* Ophyllis in last camp */

/* The sword is yours... M-may the gods smile upon you, O hero of Baldur's Gate... Uhhh...
(StrRef: 57554) */
I_C_T BDOPHYLL 40 C#IM_BDOPHYLL_40
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @3
END



/* Thrix's game */

ADD_TRANS_TRIGGER BDTHRIX 13 ~!IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ DO 1


/* Thrix will chose Imoen first. Her soul is too attractive! */
EXTEND_BOTTOM BDTHRIX 21 22 23 24 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 
IF ~Global("C#Imoen_SoDThrix","GLOBAL",0) IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN + imoen
END

EXTEND_BOTTOM BDTHRIX 118 119 120 121 
IF ~Global("C#Imoen_SoDThrix","GLOBAL",2) IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN + imoen_01
END


APPEND BDTHRIX

IF ~~ THEN BEGIN imoen
  SAY @50 /* ~Your little sister... friend looks at me with big eyes. Lose the riddle and I will teach her the power of magic indeed.~ */
= @51 /* ~Oh yes. Yes, her soul will do very much.~ */
  IF ~~ THEN REPLY @52 /* ~You want Imoen? Then she will be yours if I lose.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",2)
SetGlobal("bd_thrix_sacrifice_companion","global",1)
~ EXTERN bdimoen thrix_01

  IF ~RandomNum(4,1)~ THEN REPLY @53 /* ~Imoen is my childhood friend. You will not get her soul.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 70
  IF ~RandomNum(4,2)~ THEN REPLY @53 /* ~Imoen is my childhood friend. You will not get her soul.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 71
  IF ~RandomNum(4,3)~ THEN REPLY @53 /* ~Imoen is my childhood friend. You will not get her soul.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 72
  IF ~RandomNum(4,4)~ THEN REPLY @53 /* ~Imoen is my childhood friend. You will not get her soul.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 73

  IF ~!Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)~ THEN REPLY @53 /* ~Imoen is my childhood friend. You will not get her soul.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1)~ + 114

  IF ~~ THEN REPLY @54 /* ~She has her faults, but I'll not risk Imoen's soul in so blithe a fashion. If I cannot answer your riddle, mine is the soul you will take. Agreed?~ */ GOTO 113
  IF ~~ THEN REPLY @55 /* ~I'll feed you your own limbs if you don't let me into the tower, you wretched creature. I'm done playing games with you.~ */ GOTO 12
END

IF ~~ THEN imoen_01
SAY @56 /* ~Thrix has marked your soul, little special woman. Your soul is mine!~ */
++ @57 /* ~Well, I guess that happens if we lose such a game. Sorry, Imoen.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",3)~ EXTERN bdimoen thrix_02
++ @58 /* ~No, you will not take her soul, devil. We will fight you!~ */ GOTO 10
END

END //APPEND

/*

Global("C#Imoen_SoDThrix","GLOBAL",1): -> 8 PC declined Thrix' choice of Imoen and chose own soul

Global("C#Imoen_SoDThrix","GLOBAL",2)-> 5: PC agreed on Imoen's soul before the riddle

Global("C#Imoen_SoDThrix","GLOBAL",3)-> 6: PC agreed on Imoen's soul before the riddle and did not fight for Imoen after riddle was lost

-> 7: PC let soul of other NPC be chosen

-> 9: PC chose their own soul

*/


APPEND bdimoen

IF ~~ THEN thrix_01
SAY @59 /* ~<CHARNAME>? Just... just like that?~ */
IF ~~ THEN EXTERN ~BDTHRIX~ 116
END

IF ~~ THEN thrix_02
  SAY @60 /* ~It's a bit late to say "sorry" *now*, don'tcha think?!~ */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)~ EXTERN ~BDTHRIX~ 140
END 

END //APPEND

CHAIN
IF ~OR(2)
Global("C#Imoen_SoDThrix","GLOBAL",6)
Global("C#Imoen_SoDThrix","GLOBAL",5)~ THEN bdimoen after_thrix
@61 /* ~<CHARNAME>! Gambling my soul to that demon was not nice. When I said that I'd be always there for you I surely meant it differently!~ [c#ablank] */
== bdimoen IF ~Global("C#Imoen_SoDThrix","GLOBAL",5)~ THEN @62 /* ~I know you tried to reverse it, but the damage was done already, ya know.~ */ 
END
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @63 /* ~I'm sorry, Imoen. I wanted to spare a fight.~ */ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @64 /* ~I couldn't take that whole game serious, sorry.~ */ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @65 /* ~I'm not responsible for everyone's safety, Imoen. You get yourself into danger, you get hurt.~ */ + after_thrix_03
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @66 /* ~I agree it was a high risk. I'm sorry.~ */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @67 /* ~So what, I won, and we spared a fight.~ */ + after_thrix_07

APPEND bdimoen

IF ~~ THEN after_thrix_01
SAY @68 /* ~Oh, how about you do that while gambling with your own soul then, huh?~ */
IF ~~ THEN + after_thrix_02
IF ~Global("C#Imoen_SoDThrix","GLOBAL",7)~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_02
SAY @69 /* ~Well, one thing is sure, you dummy. Since I won't leave your side, the fiend coming after *me* will also be your problem, just as well. So you still have a chance to make this right, next time we meet this thing.~ */
IF ~~ THEN DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ EXIT
END

IF ~~ THEN after_thrix_03
SAY @70 /* ~Nah, this is not how this works. We need to stand up for each other! There is noone else left, ya know.~ */
IF ~~ THEN + after_thrix_02
END

IF ~Global("C#Imoen_SoDThrix","GLOBAL",7)~ THEN after_thrix_04
SAY @71 /* ~<CHARNAME>! Gambling a soul to that demon was not nice.~ [c#ablank] */
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @72 /* ~Yes, I know. I wanted to spare a fight.~ */ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @64 /* ~I couldn't take that whole game serious, sorry.~ */ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @65 /* ~I'm not responsible for everyone's safety, Imoen. You get yourself into danger, you get hurt.~ */  + after_thrix_05
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @66 /* ~I agree it was a high risk. I'm sorry.~ */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @67 /* ~So what, I won, and we spared a fight.~ */ + after_thrix_07
END

IF ~~ THEN after_thrix_05
SAY @73 /* ~Nah, this is not how this works. We need to stand up for each other! That's why we are travelling together, remember?~ */
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_06
SAY @74 /* ~Well, one thing is sure, you dummy. Since I won't leave your side, the fiend coming after *you* will also be my problem. You won't have to face this thing alone!~ */
IF ~~ THEN DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ EXIT
END

IF ~~ THEN after_thrix_07
SAY @75 /* ~Luckily, you won and the danger is over.~ */
IF ~~ THEN DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ EXIT
END

IF ~~ THEN after_thrix_08
SAY @76 /* ~This scared me, <CHARNAME>. I don't like it if you are so mean.~ */
IF ~~ THEN DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ EXIT
END

END //APPEND

CHAIN
IF WEIGHT #-1
~OR(2)
Global("C#Imoen_SoDThrix","GLOBAL",8)
Global("C#Imoen_SoDThrix","GLOBAL",9)~ THEN bdimoen after_thrix_09
@77 /* ~You gave that thing your own soul!~ [c#ablank] */
== bdimoen IF ~Global("C#Imoen_SoDThrix","GLOBAL",8)~ THEN @78 /* ~Instead of mine. I really, really *really* appreciate it.~ */
== bdimoen @79 /* ~But it was stupid! I think. Did you really have to do that?~ */
END
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrix","GLOBAL",8)~ + @80 /* ~Noone's going after your soul, Imoen. Not while I'm breathing.~ */ + after_thrix_10
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrix","GLOBAL",9)~ + @81 /* ~Letting him take someone else's was out of the question.~ */ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @82 /* ~I didn't want to fight it. This way I can get stronger before it comes back to me.~ */ + after_thrix_06
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1) Global("C#Imoen_SoDThrix","GLOBAL",8)~ + @80 /* ~Noone's going after your soul, Imoen. Not while I'm breathing.~ */ + after_thrix_10
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrix","GLOBAL",9)~ + @81 /* ~Letting him take someone else's was out of the question.~ */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @83 /* ~I didn't want to fight it.~ */ + after_thrix_07

APPEND bdimoen

IF ~~ THEN after_thrix_10
SAY @84 /* ~We two, forever together! That's how it's going to be.~ */
IF ~~ THEN + after_thrix_07
IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN + after_thrix_06
END

END //APPEND