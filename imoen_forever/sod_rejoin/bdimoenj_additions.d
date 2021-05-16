

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
== BDOPHYLL IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN #%6377%
END


/* chicken in the well easter egg */
I_C_T BDDOGW01 0 C#IM_BDDOGW01_0
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @124 /* ~Awww, now the chicken will get all clean and shiny. But, <CHARNAME>, one of these days, when we have a spare moment and are resting somewhere comfortly, you will explain to me why you actually did that, yes?~ */
END

/* catapult at castle */
I_C_T BDHELDMO 5 C#IM_BDHELDMO_5
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @125 /* ~I feel sorry for him. But... what a blast! (giggles)~ */
END

/* first time at commander tent, coalition camp */
I_C_T BDSTONEH 16 C#IM_BDSTONEH_16
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @129 /* ~<CHARNAME> didn't *do* this <PRO_HIMHER>self, isn't that obvious? Which, now that I think about it, probably doesn't make this any better with regard to the troops' morale...~ */
END

/* bdnederl and Skie */
I_C_T bdnederl 39 C#IM_bdnederl_shovel
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @130 /* ~Oh, there is still a lot of mischief one can do with a shovel, sand, and a bag... What? Never faught for a bigger sand shovel when you were young?~ */
END
/* bdnederl and Skie */
I_C_T bdnederl 40 C#IM_bdnederl_shovel
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @130 /* ~Oh, there is still a lot of mischief one can do with a shovel, sand, and a bag... What? Never faught for a bigger sand shovel when you were young?~ */
END

/* Torsin de Lancie, HC denied to poison the crusader provisions */
I_C_T BDDELANC 25 C#IM_BDDELANC_25
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @128 /* ~Woah. Like to exaggerate much?~ */
END

/* portal is open, talk to Torsin de Lancie through the closed door */
I_C_T BDDELANC 75 C#IM_BDDELANC_75
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @126 /* ~Oh, wow. Lucky you I guess, being outside of that door!~ */
END

/* after return from Avernus, Torsin de Lancie */
I_C_T BDDELANC 79 C#IM_BDDELANC_79
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @127 /* ~You can bet your ass we'll celebrate, right, <CHARNAME>? And don't you ever forget who freed you from this threat! It was <CHARNAME> and <PRO_HISHER> gang!~ */
END

/* Meeting with Caelar at Dead Men's Pass */
I_C_T BDCAELAR 38 C#IM_BDCAELAR_38
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @131 /* ~Unharmed! Suuure, that makes so much sense after sending assassins earlier.~ */
END



/* Thrix's game */

 ADD_TRANS_TRIGGER BDTHRIX 13 ~!IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ DO 2 IF ~!Is?f?ValidForPartyDialogue("Rasaad")~


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

  IF ~~ THEN REPLY @54 /* ~She has her faults, but I'll not risk Imoen's soul in so blithe a fashion. If I cannot answer your riddle, mine is the soul you will take. Agreed?~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1)~ GOTO 113
  IF ~~ THEN REPLY @55 /* ~I'll feed you your own limbs if you don't let me into the tower, you wretched creature. I'm done playing games with you.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN imoen_01
SAY @56 /* ~Thrix has marked your soul, little special woman. Your soul is mine!~ */
++ @57 /* ~Well, I guess that happens if we lose such a game. Sorry, Imoen.~ */ DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",3)~ EXTERN bdimoen thrix_02
++ @58 /* ~No, you will not take her soul, devil. We will fight you!~ */ GOTO 10
END

END //APPEND

/*


Global("C#Imoen_SoDThrix","GLOBAL",2)-> 5: PC agreed on Imoen's soul before the riddle

Global("C#Imoen_SoDThrix","GLOBAL",3)-> 6: PC agreed on Imoen's soul before the riddle and did not fight for Imoen after riddle was lost

Global("C#Imoen_SoDThrix","GLOBAL",1): -> 8 PC declined Thrix' choice of Imoen and chose own soul


-> Global("C#Imoen_SoDThrixReaction","GLOBAL",7): PC let soul of other NPC be chosen (no check whether Imoen was first choice)

-> Global("C#Imoen_SoDThrixReaction","GLOBAL",9): PC chose their own soul (Imoen was not chosen)

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
IF WEIGHT #-1
~OR(2)
Global("C#Imoen_SoDThrix","GLOBAL",6)
Global("C#Imoen_SoDThrix","GLOBAL",5)~ THEN bdimoen after_thrix
@61 /* ~<CHARNAME>! Gambling my soul to that demon was not nice. When I said that I'd be always there for you I surely meant it differently!~ [c#ablank] */
DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ 
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
IF ~~ THEN EXIT
END

IF ~~ THEN after_thrix_03
SAY @70 /* ~Nah, this is not how this works. We need to stand up for each other! There is noone else left, ya know.~ */
IF ~~ THEN + after_thrix_02
END

IF WEIGHT #-1
~Global("C#Imoen_SoDThrixReaction","GLOBAL",7)~ THEN after_thrix_04
SAY @71 /* ~<CHARNAME>! Gambling a soul to that demon was not nice.~ [c#ablank] */
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @72 /* ~Yes, I know. I wanted to spare a fight.~ */ DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @64 /* ~I couldn't take that whole game serious, sorry.~ */ DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ + after_thrix_01
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @65 /* ~I'm not responsible for everyone's safety, Imoen. You get yourself into danger, you get hurt.~ */  DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ + after_thrix_05
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @66 /* ~I agree it was a high risk. I'm sorry.~ */ DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @67 /* ~So what, I won, and we spared a fight.~ */ DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ + after_thrix_07
END

IF ~~ THEN after_thrix_05
SAY @73 /* ~Nah, this is not how this works. We need to stand up for each other! That's why we are travelling together, remember?~ */
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_06
SAY @74 /* ~Well, one thing is sure, you dummy. Since I won't leave your side, the fiend coming after *you* will also be my problem. You won't have to face this thing alone!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN after_thrix_07
SAY @75 /* ~Luckily, you won and the danger is over.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN after_thrix_08
SAY @76 /* ~This scared me, <CHARNAME>. I don't like it if you are so mean.~ */
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF WEIGHT #-1
~OR(2)
Global("C#Imoen_SoDThrix","GLOBAL",8)
Global("C#Imoen_SoDThrixReaction","GLOBAL",9)~ THEN bdimoen after_thrix_09
@77 /* ~You gave that thing your own soul!~ [c#ablank] */
DO ~SetGlobal("C#Imoen_SoDThrixReaction","GLOBAL",10)~ 
== bdimoen IF ~Global("C#Imoen_SoDThrix","GLOBAL",8)~ THEN @78 /* ~Instead of mine. I really, really *really* appreciate it.~ */
DO ~SetGlobal("C#Imoen_SoDThrix","GLOBAL",10)~ 
== bdimoen @79 /* ~But it was stupid! I think. Did you really have to do that?~ */
END
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrix","GLOBAL",8)~ + @80 /* ~Noone's going after your soul, Imoen. Not while I'm breathing.~ */ + after_thrix_10
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrixReaction","GLOBAL",9)~ + @81 /* ~Letting him take someone else's was out of the question.~ */ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @82 /* ~I didn't want to fight it. This way I can get stronger before it comes back to me.~ */ + after_thrix_06
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1) Global("C#Imoen_SoDThrix","GLOBAL",8)~ + @80 /* ~Noone's going after your soul, Imoen. Not while I'm breathing.~ */ + after_thrix_10
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)
Global("C#Imoen_SoDThrixReaction","GLOBAL",9)~ + @81 /* ~Letting him take someone else's was out of the question.~ */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @83 /* ~I didn't want to fight it.~ */ + after_thrix_07

APPEND bdimoen

IF ~~ THEN after_thrix_10
SAY @84 /* ~We two, forever together! That's how it's going to be.~ */
IF ~~ THEN + after_thrix_07
IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN + after_thrix_06
END

/* Thrix erwähnte Imoens besondere Seele */

IF WEIGHT #-1
~Global("C#Imoen_SoDThrixSoul","GLOBAL",1)~ THEN thrix_soul
SAY @114 /* ~Hast du verstanden, warum der Dämon meine Seele so interessant fand?~ */
++ @115 /* ~Nein, aber mir war das auch aufgefallen, wie er das gesagt hat. Als würdest du einen Extrabonus mitbringen.~ */ + thrix_soul_02
++ @116 /* ~Woher soll ich das wissen?~ */ + thrix_soul_02
+ ~!Global("C#Imoen_SoDThrix","GLOBAL",11)~ + @117 /* ~Vielleicht mag er kleine Menschenmädchen besonders gern.~ */ + thrix_soul_01
+ ~Global("C#Imoen_SoDThrix","GLOBAL",11)~ + @117 /* ~Vielleicht mag er kleine Menschenmädchen besonders gern.~ */ + thrix_soul_04
++ @118 /* ~Ich möchte nicht darüber sprechen.~ */ + thrix_soul_03
END

END //APPEND

CHAIN
IF ~~ THEN bdimoen thrix_soul_01
@119 /* ~Haha, du Eulenbär.~ */
== bdimoen IF ~Gender(Player1,FEMALE) Race(Player1,HUMAN)~ THEN @120 /* ~I'm not that much smaller than you, you know.~ */
END 
IF ~~ THEN + thrix_soul_02

APPEND bdimoen

IF ~~ THEN thrix_soul_02
SAY @121 /* ~Wirklich seltsam... Naja.~ */
IF ~~ THEN + thrix_soul_03
END

IF ~~ THEN thrix_soul_03
SAY @122 /* ~Er muss einfach gemerkt haben, dass wir richtig dicke Freunde sind. Vielleicht dachte er dann, dass er deine Seele auch gleich mit holen kann!~ */
IF ~~ THEN DO ~SetGlobal("C#Imoen_SoDThrixSoul","GLOBAL",2)~ EXIT
END

IF ~~ THEN thrix_soul_04
SAY @123 /* ~Uh. Die Bemerkung *wäre* witzig, wenn du ihm nicht meine Seele verspielt hättest.~ */
IF ~~ THEN + thrix_soul_02
END



/* all those desparate people (with empty pockets) (Imoen THIEF_ALL)*/

IF WEIGHT #-1
~Global("C#IM_DialogueSoD","GLOBAL",2)~ THEN no_fun
SAY @85 /* ~I don't know, this is no fun any more.~ */
++ @86 /* ~Being chased by assassins? Yes, I agree.~ */ + no_fun_01
++ @87 /* ~Having to save the world again? You are right there.~ */ + no_fun_01
++ @88 /* ~I think what we do here is of great importance, Imoen.~ */ + no_fun_02
++ @89 /* ~What exactly are we talking about?~ */ + no_fun_02
END

IF ~~ THEN no_fun_01
SAY @90 /* ~No! I mean - yes, that, too. But that's not what I meant.~ */
IF ~~ THEN + no_fun_02
END

IF ~~ THEN no_fun_02
SAY @91 /* ~I am referring to ... disburden people from, er, things they might not be missing.~ */
++ @92 /* ~You are stealing from the refugees? Do you have no shame?~ */ + no_fun_03
++ @93 /* ~Please, do not steal from our allies. It might lead to misunderstandings.~ */ DO ~SetGlobal("C#IM_nofun_05","LOCALS",1)~ + no_fun_05
++ @94 /* ~What? Do you renounce your thieving ways? That's something new. That Duke Jannath washed your head alright, hm?~ */ + no_fun_08
++ @95 /* ~This is no longer fun for you? You indeed seem to be ill, my friend.~ */ + no_fun_12
END

IF ~~ THEN no_fun_03
SAY @97 /* ~But that's exactly what I was referring to!~ */
IF ~~ THEN + no_fun_09
END

IF ~~ THEN no_fun_04
SAY @98 /* ~Of c... I mean, a girl has to stay in practive, right?~ */
+ ~Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_06
+ ~!Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_07
++ @100 /* ~Honestly - I don't realy care about your problems in this case.~ */ + no_fun_10
END

IF ~~ THEN no_fun_05
SAY @101 /* ~<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - without getting caught, that is. Don't look at me like that! You can relax. Noone will miss anything important, I swear.~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_06
SAY @102 /* ~But I have to do *something*, or I'll be out of training soon enough. Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I shouldn't enrich myself in the camp and I won't. That's good deeds I'll be doing - *and* staying skilled! Now off we go, saving the world again!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoD","GLOBAL",3)~ EXIT
END

IF ~~ THEN no_fun_07
SAY @101 /* ~<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - with getting caught, that is. Don't look at me like that! You can relax. Noone will miss anything important, I swear.~ */
IF ~~ THEN + no_fun_06
END

IF ~~ THEN no_fun_08
SAY @104 /* ~What? Noooo. I'd never do *that*! Although Duke Jannath was quite scary, indeed...~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_09
SAY @105 /* ~Their pockets are just empty, there is nothing to be found. And some are also greasy, yuck.~ */
++ @106 /* ~So you *tried* stealing from the refugies!~ */ + no_fun_04
+ ~Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_06
+ ~!Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_07
++ @111 /* ~Of course! You have to go for our pompeous "friends" in the camp if you want to have good results.~ */ + no_fun_13
++ @107 /* ~Imoen! We are about to face a murderous crusade and that's what you are thinking about?~ */ + no_fun_10
++ @100 /* ~Honestly - I don't realy care about your problems in this case.~ */ + no_fun_10
END

IF ~~ THEN no_fun_10
SAY @108 /* ~Aw, you are no fun. Maybe I should start sneaking stones into your backpack. It would at least keep me skilled!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoD","GLOBAL",3)~ EXIT
END

IF ~~ THEN no_fun_11
SAY @109 /* ~I was referring to the refugees.~ */
IF ~~ THEN + no_fun_09
END

IF ~~ THEN no_fun_12
SAY @110 /* ~What? Noooo. No no.~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_13
SAY @112 /* ~Wow. I didn't even really think about that. I guess Liia *did* mess with my head, huh. Hmm, but that doesn't change the empty pockets of the refugees. So sad, reaching into an empty pocket...~ */
= @113 /* ~Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I should steal from the camp and that's what I'll be doing. *And* it's good deeds I'll be doing - while staying skilled! Now off we go, saving the world again!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoD","GLOBAL",3)~ EXIT
END


END //APPEND