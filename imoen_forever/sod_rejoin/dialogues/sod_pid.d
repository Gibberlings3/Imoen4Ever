APPEND bdimoen

IF ~IsGabber(Player1)~ THEN sod_pid
SAY @2 /* [Imoen]Yep? */
+ ~Global("C#IM_SoDPID_Jannath","LOCALS",0)~ + @3 /* [PC Reply]Wie war das Training mit Duke Jannath? */ DO ~SetGlobal("C#IM_SoDPID_Jannath","LOCALS",1)~ + training_with_liia
+ ~Global("C#IM_SoDPID_Jannath","LOCALS",1)~ + @4 /* [PC Reply]Do you regret leaving Duke Jannath? */ DO ~SetGlobal("C#IM_SoDPID_Jannath","LOCALS",2)~ + miss_jannaths_lectures
+ ~Global("C#IM_SoDPID_HowAreaYou","LOCALS",0)~ + @0 /* [PC Reply]How are you? Have you overcome the limitations caused by the poison completely? */ /* ~Wie geht es Euch? Die Einschränkungen durch das Gift sind vollständig überwunden?~ */ DO ~SetGlobal("C#IM_SoDPID_HowAreaYou","LOCALS",1)~ + poison_gone
+ ~Global("C#IM_SoDPID_HappyHaveYou","LOCALS",0)~ + @1 /* [PC Reply]I am happy that you are by my side again. */ /* ~Ich freue mich, dass Ihr wieder an meiner Seite seid.~ */ DO ~SetGlobal("C#IM_SoDPID_HappyHaveYou","LOCALS",1)~ + happy_have_you
++ @5 /* Schon gut. */ + nothing
END

IF ~~ THEN miss_jannaths_lectures
SAY @6 /* [Imoen](sigh) <CHARNAME>, do you know this feeling, you know - when you have what you wanted, and that is really, really great - but you can't stop thinking about what you had elsewhere and you wished you could still have it, you know, just for a couple of hours here or there... */
IF ~~ THEN + miss_jannaths_lectures_01
END
END //APPEND

CHAIN
IF ~~ THEN bdimoen miss_jannaths_lectures_01
@7 /* [Imoen]I do miss the training with Liia... The actual training. Not her notorious scolding when I did something wrong, not the palace, but the times I got to spend on focussing magic - practicing my skills - wielding arcane powers! - under the surveillance of a tutor. */
== bdimoen IF ~!Class("%IMOEN_DV_SOD%",MAGE_ALL) !Class("%IMOEN_DV_SOD%",SORCERER)~ THEN @8 /* [Imoen]Not that I'd *achieve* much - but it was fun to try! I think I could do it. I really could! */
== bdimoen IF ~PartyHasItem("X#TOME")~ THEN @9 /* [Imoen]She also examined my tome, you know, this one, that I created out of the spell book of that mage bounty hunter who came for you at the Friendly Arm Inn... That feels sooooo long ago now! Anyway, she said it was very impressive! */
== bdimoen @10 /* [Imoen]She said my talent was impressive. Hmm - now that I think about it, that was often before she scolded me for doing something wrong. Still, that's what she said - "impressive", u-huh, yes, <PRO_SIRMAAM>! */
END
++ @11 /* [PC Reply]I can undertand that you miss the training. Duke Jannath is a well versed mage, you were lucky she took you on. */ + miss_jannaths_lectures_04
++ @12 /* [PC Reply]I told you to stay and make use of the teaching! */ + miss_jannaths_lectures_02
++ @13 /* [PC Reply]It was your decision to follow me. Don't start lamenting about it now! */ + miss_jannaths_lectures_03

APPEND bdimoen

IF ~~ THEN miss_jannaths_lectures_02
SAY @14 /* [Imoen]Aw, but that was because my hands were still shaking, no? */
IF ~~ THEN + miss_jannaths_lectures_05
END

IF ~~ THEN miss_jannaths_lectures_03
SAY @15 /* [Imoen]I'm not! I'm only a little... sad about not having both. */
IF ~~ THEN + miss_jannaths_lectures_05
END

IF ~~ THEN miss_jannaths_lectures_04
SAY @16 /* [Imoen]Yes... (sigh). */
IF ~~ THEN + miss_jannaths_lectures_05
END
END //APPEND

CHAIN
IF ~~ THEN bdimoen miss_jannaths_lectures_05
@17 /* [Imoen]Well - it's not the first time little Imoen has to make the best out of what she's got, is it? And what I don't have, I'll find somewhere... heheh! */
/* Imoen is not a mage */
== bdimoen IF ~!Class("%IMOEN_DV_SOD%",MAGE_ALL) !Class("%IMOEN_DV_SOD%",SORCERER)
Class(Player1,MAGE_ALL)~ THEN @18 /* [Imoen]But - *you* could teach me! No, don't roll your eyes. I won't bother you! I'll just watch you veeery closely from now on... */
== bdimoen IF ~!Class("%IMOEN_DV_SOD%",MAGE_ALL) !Class("%IMOEN_DV_SOD%",SORCERER)
!Class(Player1,MAGE_ALL)~ THEN @19 /* [Imoen]Hmmm... and I think I already know who could teach me! Why yearn for the things out of our reach, if there is a solution right in front of your nose! There is quite a few mages around, I would say. Now I'll just have to watch them veeery closely... */
== bdimoen IF ~ OR(2) Class("%IMOEN_DV_SOD%",MAGE_ALL) Class("%IMOEN_DV_SOD%",SORCERER)~ THEN @20 /* [Imoen]Hmm, I am sure I can still learn something by just watching all the mages - there will be plenty to go around, with the coalition and all! */
EXIT

APPEND bdimoen
IF ~~ THEN training_with_liia
SAY @21 /* [Imoen]Oh, it was... stenuous. I had to concentrate *all* the time! Without doing something else! */
++ @22 /* [PC Reply](jesting) What? That's outrageous! */ + training_with_liia_01
++ @23 /* [PC Reply]Duh? You need to focus when handling arcane powers, Imoen. */ + training_with_liia_03
++ @24 /* [PC Reply]Sounds like good training, then. */ + training_with_liia_02
++ @25 /* [PC Reply]I was referring to how much progress you made. */ + training_with_liia_02
END

IF ~~ THEN training_with_liia_01
SAY @26 /* [Imoen]Right? */
IF ~~ THEN + training_with_liia_02
END
END //APPEND

CHAIN
IF ~~ THEN bdimoen training_with_liia_02
@27 /* [Imoen]She showed me some tricks to clear my mind for it. And I admit that it helps me to achieve what I want to achieve. */
== bdimoen IF ~Global("X#IMGetsSpellbook","GLOBAL",2)~ THEN @28 /* [Imoen]You know. So that I know beforehand what my spell will do. Ahum. */
== bdimoen @29 /* [Imoen]She said I shouldn't cast magic out of a whim. And I said "but the enemy shouldn't know what hit 'em!" And then she made me clear my mind again... Sooo exhausting, I tell ya! */
END
IF ~~ THEN EXIT

APPEND bdimoen

IF ~~ THEN training_with_liia_03
SAY @30 /* [Imoen]I know! But why does it have to be so... *tedious*? */
IF ~~ THEN + training_with_liia_02
END

IF ~~ THEN poison_gone
SAY @31 /* [Imoen]Yes! My hand do not tremble any more, see? And I am great - I am adventuring again. With you! */
IF ~~ THEN EXIT
END

IF ~~ THEN happy_have_you
SAY @32 /* [Imoen]And I! I really missed this. Well, sleeping in a real bed is nice, but this - this is better. */
IF ~~ THEN EXIT
END

IF ~~ THEN nothing
SAY @33 /* [Imoen]Alright! */
IF ~~ THEN EXIT
END

END //APPEND

