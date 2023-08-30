/* "weak" poison */
/* will give clue for RtD about weak poison */

APPEND bdimoen

IF WEIGHT #-1
~Global("C#IM_DialogueSoD","GLOBAL",2)~ THEN weak_poison
SAY @0 /* [Imoen]Duke Jannath told me the poison Caelar's assassins used was "too weak to kill". */
+ ~Global("C#RtD_WeakPoison","GLOBAL",1)~ + @1 /* [PC Reply]Yes, I know. */ + weak_poison_01
++ @2 /* [PC Reply]It seems so. */ + weak_poison_01
++ @3 /* [PC Reply]Well, it wasn't a "weak" poison though, was it, after seeing you all knocked out like that! */ + weak_poison_02
++ @4 /* [PC Reply]What of it? */ + weak_poison_03
END

IF ~~ THEN weak_poison_01
SAY @5 /* [Imoen]I know what she meant, but... */
IF ~~ THEN + weak_poison_03
END

IF ~~ THEN weak_poison_02
SAY @6 /* [Imoen]My words exactly! */
IF ~~ THEN + weak_poison_03
END

IF ~~ THEN weak_poison_03
SAY @7 /* [Imoen]Weak poison, ha! The next one saying that it was only a "weak" poison should spent three days sweating and feeling feverish in their bed! And have trembling hands afterwards, for *days*! */
++ @8 /* [PC Reply]It's always a question of perspective, I guess. It *was* a weak poison - for an assassin attack. */ + weak_poison_05
++ @9 /* [PC Reply]Caelar made a big mistake by hurting you, Imoen. Oh yes, she did. */ + weak_poison_04
++ @10 /* [PC Reply]I see what you mean. */ + weak_poison_06
++ @11 /* Well, you got over it, didn't you. */ + weak_poison_06
END

IF ~~ THEN weak_poison_04
SAY @12 /* [Imoen]Aw, that's so sweet of you to say! Well - at least I think it is. Unless you thought her assassins should have finished the job and kill me all the way, eh? Haha! I know you would never think that. */
IF ~~ THEN + weak_poison_06
END

IF ~~ THEN weak_poison_05
SAY @13 /* [Imoen]Yes, I knoooow, but... */
IF ~~ THEN + weak_poison_06
END

IF ~~ THEN weak_poison_06
SAY @14 /* [Imoen]Ugh! I just hope I'll never fall victim to such a "weak" poison again. It made me stay behind when you were leaving to face a warlady, after all! */
IF ~~ THEN DO ~IncrementGlobal("C#IM_DialogueSoD","GLOBAL",1)
SetGlobal("C#RtD_WeakPoison_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END


/* Imoen tries to continue Duke Jannath's training */

IF WEIGHT #-1
~Global("C#IM_DialogueSoD","GLOBAL",4)~ THEN jannaths_wisdom
SAY @15 /* [Imoen]Alright, what did she teach me. Hmm.... clear my head and mind. Cleeear my miiiind... */
++ @16 /* [PC Reply]Duke Jannath? */ + jannaths_wisdom_02
++ @17 /* [PC Reply]Well, that's an interesting sight - you trying to concentrate. */ + jannaths_wisdom_01
++ @18 /* [PC Reply]You alright over there? */ + jannaths_wisdom_02
++ @19 /* [PC Reply]I don't have time for this. */ + jannaths_wisdom_07
END

IF ~~ THEN jannaths_wisdom_01
SAY @20 /* [Imoen]My miiiind... Hey, I can't do that if you're watching me! */
IF ~~ THEN + jannaths_wisdom_02
END

IF ~~ THEN jannaths_wisdom_02
SAY @21 /* [Imoen]I am trying to practice what Duke Jannath taught me. With a clear mind, it is much easier to focus on whatever magic I want to - */
IF ~~ THEN + jannaths_wisdom_08
IF ~RandomNum(3,5)~ THEN + jannaths_wisdom_09
IF ~RandomNum(2,5)~ THEN + jannaths_wisdom_10
IF ~RandomNum(1,5)~ THEN + jannaths_wisdom_11
END

IF ~~ THEN jannaths_wisdom_03
SAY @22 /* [Imoen]Oh, pfut you already pfroke my confentrafion. */
IF ~~ THEN + jannaths_wisdom_05
END

IF ~~ THEN jannaths_wisdom_04
SAY @23 /* [Imoen]Abfolutely! I learnpf a lopf! */
IF ~~ THEN + jannaths_wisdom_05
END

IF ~~ THEN jannaths_wisdom_05
SAY @24 /* [Imoen]Pfah! PfAH! Alright, it doesn't mean I like having my hair in my mouth, though. */
IF ~~ THEN + jannaths_wisdom_07
END

IF ~~ THEN jannaths_wisdom_06
SAY @25 /* [Imoen]Yeah, I gueff you are righpf. */
IF ~~ THEN + jannaths_wisdom_15
END

IF ~~ THEN jannaths_wisdom_07
SAY @26 /* [Imoen]Where was I? Ah, right. Cleeeeear my miiiiind... Ugh. */
IF ~~ THEN + jannaths_wisdom_15
END

IF ~~ THEN jannaths_wisdom_08
SAY @27 /* [Imoen]Oh, look! I can take my hair in my mouf now! Fee? */
++ @28 /* [PC Reply]I see, focus training with Duke Jannath was a complete success! */ + jannaths_wisdom_04
++ @29 /* [PC Reply]Having a concentration span of longer than 15 seconds would also help. */ + jannaths_wisdom_03
++ @30 /* [PC Reply]I won't disturb your sofisticated training any longer, then. */ + jannaths_wisdom_03
++ @31 /* [PC Reply]Maybe now is not the right time for training. */ + jannaths_wisdom_06
END

IF ~~ THEN jannaths_wisdom_09
SAY @32 /* [Imoen]Oh, look! Is that an eagle up there? */
++ @28 /* [PC Reply]I see, focus training with Duke Jannath was a complete success! */ + jannaths_wisdom_13
++ @29 /* [PC Reply]Having a concentration span of longer than 15 seconds would also help. */ + jannaths_wisdom_12
++ @30 /* [PC Reply]I won't disturb your sofisticated training any longer, then. */ + jannaths_wisdom_12
++ @31 /* [PC Reply]Maybe now is not the right time for training. */ + jannaths_wisdom_14
END

IF ~~ THEN jannaths_wisdom_10
SAY @33 /* [Imoen]Oh, look! I can hop on one leg again! See? My poison-related restrictions are really over. */
COPY_TRANS_LATE bdimoen jannaths_wisdom_09
END

IF ~~ THEN jannaths_wisdom_11
SAY @34 /* [Imoen]Oh, look! I never noticed this kind of moss also grows here. It's totally soft... */
COPY_TRANS_LATE bdimoen jannaths_wisdom_09
END

IF ~~ THEN jannaths_wisdom_12
SAY @35 /* [Imoen]Oh, but you already broke my concentration. */
IF ~~ THEN + jannaths_wisdom_07
END

IF ~~ THEN jannaths_wisdom_13
SAY @36 /* [Imoen]It was! I learnd a lot! */
IF ~~ THEN + jannaths_wisdom_07
END

IF ~~ THEN jannaths_wisdom_14
SAY @37 /* [Imoen]Yeah, I guess you are right. */
IF ~~ THEN + jannaths_wisdom_15
END

IF ~~ THEN jannaths_wisdom_15
SAY @38 /* [Imoen]I'll try this again later. */
IF ~~ THEN DO ~IncrementGlobal("C#IM_DialogueSoD","GLOBAL",1)~ EXIT
END


/* after meeting Caelar at the bridge */

IF WEIGHT #-1
~Global("C#IM_SoDCaelarBridge","GLOBAL",1)~ THEN after_cwc
SAY @39 /* [Imoen]We met Caelar! Did you see her eyes? I could see them shining from over here. It was mezmerizing! */
++ @40 /* [PC Reply]They were, indeed! It made it hard to hear her words. */ + after_cwc_01
++ @41 /* [PC Reply]Is that all you noticed from the confrontation with Caelar? */ + after_cwc_01
++ @42 /* [PC Reply]Caelar is very charsmatic. Her eyes add to the fact. */ + after_cwc_02
++ @43 /* [PC Reply]Let's not talk about that. */ + after_cwc_07
END

IF ~~ THEN after_cwc_01
SAY @44 /* [Imoen]I didn't really listen to what Caelar was saying. I watched her eyes and how the sunlight got caught in her white hair... */
++ @45 /* [PC Reply]And, what was shinier, her hair or her eyes? */ + after_cwc_03
++ @46 /* [PC Reply]Well, seems someone had fun, at least. */ + after_cwc_05
++ @47 /* [PC Reply]I am glad we do not have to rely on you for diplomatic relations, Imoen. */ + after_cwc_04
++ @48 /* [PC Reply]Not all of us can indulge in the luxury of not carefully listening to our foes, Imoen. */ + after_cwc_04
++ @49 /* [PC Reply]You are not serious. */ + after_cwc_05
END

IF ~~ THEN after_cwc_02
SAY @50 /* [Imoen]I also noticed her hair glowing in the sunlight. */
++ @45 /* [PC Reply]And, what was shinier, her hair or her eyes? */ + after_cwc_03
++ @46 /* [PC Reply]Well, seems someone had fun, at least. */ + after_cwc_05
++ @47 /* [PC Reply]I am glad we do not have to rely on you for diplomatic relations, Imoen. */ + after_cwc_04
++ @48 /* [PC Reply]Not all of us can indulge in the luxury of not carefully listening to our foes, Imoen. */ + after_cwc_04
++ @49 /* [PC Reply]You are not serious. */ + after_cwc_05
END

IF ~~ THEN after_cwc_03
SAY @51 /* [Imoen]Her hair! Especially if she raised her head a bit, like this! It looked very haughty - and beautiful. */
++ @52 /* [PC Reply]You do have an eye for details, Imoen. */ + after_cwc_05
++ @46 /* [PC Reply]Well, seems someone had fun, at least. */ + after_cwc_04
++ @53 /* [PC Reply]Are you making fun of me? */ + after_cwc_05
++ @54 /* [PC Reply]Is that really all you noted from her speech?... */ + after_cwc_04
END

IF ~~ THEN after_cwc_04
SAY @55 /* [Imoen]What? Nah. You make it sound like I'm retarded or something. */
IF ~~ THEN + after_cwc_05
END

END //APPEND
CHAIN
IF ~~ THEN bdimoen after_cwc_05
@56 /* [Imoen]There just wasn't anything in her babbling worth listening to! */
== bdimoen IF ~OR(3)
		Global("C#RtD_CaelarPlan","GLOBAL",2)
		Global("C#RtD_CaelarPlan","GLOBAL",3)
		Global("C#RtD_RoadToDiscovery","GLOBAL",0)
	OR(4)
		Global("C#RtD_CaelarPlan","GLOBAL",2)
		Global("C#RtD_CaelarPlan","GLOBAL",3)
		GlobalGT("bd_plot","global",169) //after CWC Parley with Caelar
		Global("C#RtD_RoadToDiscovery","GLOBAL",1)~ THEN @57 /* [Imoen]Except that they want to free the trapped souls from Avernus, appearently. */
== bdimoen IF ~GlobalGT("bd_mdd018","global",0)~ THEN @58 /* [Imoen]Well, alright, that she's really not a Bhaalchild is an interesting info. */ 
== bdimoen @59 /* [Imoen]It was all just stagy melodramatics. *She* marches an army through the lands, murdering and plundering, but she would be the savior and you are at fault people are doomed? Nah. "Reconsider your course, <CHARNAME>" - bah. Right back at ya, Caelar! */ 
END
++ @60 /* [PC Reply]Seems you did notice the crucial parts, though. */ + after_cwc_06
++ @61 /* [PC Reply]Maybe that's the right way to react to her way of talking. */ + after_cwc_07
++ @62 /* [PC Reply]I do agree that talking to her did not give as much answers as I'd hoped for. */ + after_cwc_07
++ @63 /* [PC Reply]Well, she's gone now, anyway. */ + after_cwc_07

APPEND bdimoen 
IF ~~ THEN after_cwc_06
SAY @64 /* [Imoen]I did listen! I just didn't think it was worth it. */
++ @61 /* [PC Reply]Maybe that's the right way to react to her way of talking. */ + after_cwc_07
++ @62 /* [PC Reply]I do agree that talking to her did not give as much answers as I'd hoped for. */ + after_cwc_07
++ @63 /* [PC Reply]Well, she's gone now, anyway. */ + after_cwc_07
END

IF ~~ THEN after_cwc_07
SAY @65 /* [Imoen]Well, maybe she'll have something interesting to say next time. - We need to work on finding our way to her side of the river first, though - with Coastway Crossing turning out to be a "Coastway NON-Crossing" for us, huh. */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDCaelarBridge","GLOBAL",2)~ EXIT
END

/* After dream "Candlekeep" */
IF ~Global("C#IM_SoDNightmare","GLOBAL",1)~ THEN slayer_dream
SAY @66 /* ~[Imoen]Did ya sleep well?~ */
++ @67 /* ~Funny you asked. I dreamed about you.~ */ + slayer_dream_01
++ @68 /* ~I had a weird dream. You were in it, too.~ */ + slayer_dream_01
++ @69 /* ~I did. Let's move on.~ */ + slayer_dream_05
END

IF ~~ THEN slayer_dream_01
SAY @70 /* ~[Imoen]Me?~ */
++ @71 /* ~Yes, you said I abandoned you and that you have nothing left to live for.~ */ + slayer_dream_02
++ @72 /* ~You talked as if I had left you.~ */ + slayer_dream_02
++ @73 /* ~It wasn't funny! Your dream self aksed me to kill you! And you transformed into some blurry beast, and...~ */ + slayer_dream_03
++ @74 /* ~Let's move on.~ */ + slayer_dream_05
END

IF ~~ THEN slayer_dream_02
SAY @81 /* ~[Imoen]Aw, do you feel guilty because you had to leave me at the palace?~ */
++ @73 /* ~It wasn't funny! Your dream self aksed me to kill you! And you transformed into some blurry beast, and...~ */ + slayer_dream_03
++ @75 /* ~"Had to leave you"? Last time I checked, it was your decision!~ */ + slayer_dream_06
++ @76 /* ~No, should I?~ */ + slayer_dream_04
++ @74 /* ~Let's move on.~ */ + slayer_dream_05
END

IF ~~ THEN slayer_dream_03
SAY @77 /* ~[Imoen]Awww, it's so cute when you worry about me!~ */
IF ~~ THEN + slayer_dream_04
END

IF ~~ THEN slayer_dream_04
SAY @78 /* ~[Imoen]Don't worry, I'm fine. Now, at least, that I am here and on the road again - with you!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN slayer_dream_05
SAY @79 /* ~[Imoen]Alright! No need to be so short tempered.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN slayer_dream_06
SAY @80 /* ~[Imoen]Of course it was! Someone got off on the wrong foot today, huh?~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDNightmare","GLOBAL",2)~ EXIT
END

END //APPEND