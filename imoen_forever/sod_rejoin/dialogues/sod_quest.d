/* all those desparate people (with empty pockets) (Imoen THIEF_ALL)*/
APPEND bdimoen
IF WEIGHT #-1
~Global("C#IM_SoDQuest","GLOBAL",1)~ THEN no_fun
SAY @85 /* [Imoen]I don't know, this is no fun any more. */ /* ~I don't know, this is no fun any more.~ */
++ @86 /* [PC Reply]Being chased by assassins? Yes, I agree. */ /* ~Being chased by assassins? Yes, I agree.~ */ + no_fun_01
++ @87 /* [PC Reply]Having to save the world again? You are right there. */ /* ~Having to save the world again? You are right there.~ */ + no_fun_01
++ @88 /* [PC Reply]I think what we do here is of great importance, Imoen. */ /* ~I think what we do here is of great importance, Imoen.~ */ + no_fun_02
++ @89 /* [PC Reply]What exactly are we talking about? */ /* ~What exactly are we talking about?~ */ + no_fun_02
END

IF ~~ THEN no_fun_01
SAY @90 /* [Imoen]No! I mean - yes, that, too. But that's not what I meant. */ /* ~No! I mean - yes, that, too. But that's not what I meant.~ */
IF ~~ THEN + no_fun_02
END

IF ~~ THEN no_fun_02
SAY @91 /* [Imoen]I am referring to ... relieving people from, er, things they might not miss. */ /* ~I am referring to ... disburden people from, er, things they might not be missing.~ */
++ @92 /* [PC Reply]You are stealing from the refugees? Do you have no shame? */ /* ~You are stealing from the refugees? Do you have no shame?~ */ + no_fun_03
++ @93 /* [PC Reply]Please, do not steal from our allies. It might lead to misunderstandings. */ /* ~Please, do not steal from our allies. It might lead to misunderstandings.~ */ DO ~SetGlobal("C#IM_nofun_05","LOCALS",1)~ + no_fun_05
++ @94 /* [PC Reply]What? Do you renounce your thieving ways? That's something new. Has Duke Jannath brainwashed you already, hm? */ /* ~What? Do you renounce your thieving ways? That's something new. That Duke Jannath washed your head alright, hm?~ */ + no_fun_08
++ @95 /* [PC Reply]This is no longer fun for you? You indeed seem to be ill, my friend. */ /* ~This is no longer fun for you? You indeed seem to be ill, my friend.~ */ + no_fun_12
END

IF ~~ THEN no_fun_03
SAY @97 /* [Imoen]But that's exactly what I was referring to! */ /* ~But that's exactly what I was referring to!~ */
IF ~~ THEN + no_fun_09
END

IF ~~ THEN no_fun_04
SAY @98 /* [Imoen]Of c... I mean, a girl has to stay in practice, right? */ /* ~Of c... I mean, a girl has to stay in practive, right?~ */
+ ~Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_06
+ ~!Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_07
++ @111 /* [PC Reply]Of course! You have to go for our pompeous "friends" in the camp if you want to have good results. */ /* ~Of course! You have to go for our pompeous "friends" in the camp if you want to have good results.~ */ + no_fun_13
++ @107 /* [PC Reply]Imoen! We are about to face a murderous crusade and that's what you are thinking about? */ /* ~Imoen! We are about to face a murderous crusade and that's what you are thinking about?~ */ + no_fun_14
++ @100 /* [PC Reply]Honestly - I don't realy care about your problems in this case. */ /* ~Honestly - I don't realy care about your problems in this case.~ */ + no_fun_10
END

IF ~~ THEN no_fun_05
SAY @101 /* [Imoen]<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - with getting caught, that is. Don't look at me like that! You can relax. No one will miss anything important, I swear. */ /* ~<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - without getting caught, that is. Don't look at me like that! You can relax. Noone will miss anything important, I swear.~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_06
SAY @102 /* [Imoen]But I have to do *something*, or I'll be out of training soon enough. Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I shouldn't enrich myself in the camp and I won't. That's good deeds I'll be doing - *and* staying skilled! Now off we go, saving the world again! */ /* ~But I have to do *something*, or I'll be out of training soon enough. Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I shouldn't enrich myself in the camp and I won't. That's good deeds I'll be doing - *and* staying skilled! Now off we go, saving the world again!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN no_fun_07
SAY @101 /* [Imoen]<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - with getting caught, that is. Don't look at me like that! You can relax. No one will miss anything important, I swear. */ /* ~<CHARNAME>! Do you think I'm stupid? I'll never steal inside the camps. I mean - with getting caught, that is. Don't look at me like that! You can relax. Noone will miss anything important, I swear.~ */
IF ~~ THEN + no_fun_06
END

IF ~~ THEN no_fun_08
SAY @104 /* [Imoen]What? Noooo. I'd never do *that*! Although Duke Jannath was quite scary, indeed... */ /* ~What? Noooo. I'd never do *that*! Although Duke Jannath was quite scary, indeed...~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_09
SAY @105 /* [Imoen]Their pockets are just empty, there is nothing to be found. And some are also greasy, yuck. */ /* ~Their pockets are just empty, there is nothing to be found. And some are also greasy, yuck.~ */
++ @106 /* [PC Reply]So you *did* try stealing from the refugees! */ /* ~So you *tried* stealing from the refugies!~ */ + no_fun_04
+ ~Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_06
+ ~!Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_07
++ @111 /* [PC Reply]Of course! You have to go for our pompeous "friends" in the camp if you want to have good results. */ /* ~Of course! You have to go for our pompeous "friends" in the camp if you want to have good results.~ */ + no_fun_13
++ @107 /* [PC Reply]Imoen! We are about to face a murderous crusade and that's what you are thinking about? */ /* ~Imoen! We are about to face a murderous crusade and that's what you are thinking about?~ */ + no_fun_14
++ @100 /* [PC Reply]Honestly - I don't realy care about your problems in this case. */ /* ~Honestly - I don't realy care about your problems in this case.~ */ + no_fun_10
END

IF ~~ THEN no_fun_10
SAY @108 /* [Imoen]Aw, you are no fun. Maybe I should start sneaking stones into your backpack. It would at least keep me in practice! */ /* ~Aw, you are no fun. Maybe I should start sneaking stones into your backpack. It would at least keep me skilled!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest","GLOBAL",8)~ EXIT
END

IF ~~ THEN no_fun_11
SAY @109 /* [Imoen]I was referring to the refugees. */ /* ~I was referring to the refugees.~ */
IF ~~ THEN + no_fun_09
END

IF ~~ THEN no_fun_12
SAY @110 /* [Imoen]What? Noooo. No no. */ /* ~What? Noooo. No no.~ */
IF ~~ THEN + no_fun_11
END

IF ~~ THEN no_fun_13
SAY @112 /* [Imoen]<CHARNAME>! Do you think I'm stupid? I know that myself! But that doesn't change the empty pockets of the refugees, does it? So sad, reaching into an empty pocket... */ /* ~Wow. I didn't even really think about that. I guess Liia *did* mess with my head, huh. Hmm, but that doesn't change the empty pockets of the refugees. So sad, reaching into an empty pocket...~ */
= @113 /* [Imoen]Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I should steal from the camp and that's what I'll be doing. *And* it's good deeds I'll be doing - while staying skilled! Now off we go, saving the world again! */ /* ~Oh! Oh! I have a fabulous idea. I'll just sneak everything I'll find in the camp into some poor refugee's pocket. Hey, don't look at me like that. You said I should steal from the camp and that's what I'll be doing. *And* it's good deeds I'll be doing - while staying skilled! Now off we go, saving the world again!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN no_fun_14
SAY @138 /* [Imoen]Well, even more the reason to stay in practice, no? */ /* ~Well, even more the reason to stay in practice, no?~ */
+ ~Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_06
+ ~!Global("C#IM_nofun_05","LOCALS",1)~ + @99 /* [PC Reply]Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings. */ /* ~Do not enrich yourself from our allies, Imoen. It might lead to misunderstandings.~ */ + no_fun_07
++ @111 /* [PC Reply]Of course! You have to go for our pompeous "friends" in the camp if you want to have good results. */ /* ~Of course! You have to go for our pompeous "friends" in the camp if you want to have good results.~ */ + no_fun_13
++ @100 /* [PC Reply]Honestly - I don't realy care about your problems in this case. */ /* ~Honestly - I don't realy care about your problems in this case.~ */ + no_fun_10
END

END //APPEND

/* witness scene: fiancée is very heart stricken because her fiancé proposed to her with a ring out of tin because they didn't have anything else, and now she found an angel's skin ring in his pocket. */

BEGIN C#IMSQ01 //Fiancée
BEGIN C#IMSQ02 //Fiancé
BEGIN C#IMSQ03 //Refugee
BEGIN C#IMSQ04 //Refugee
BEGIN C#IMSQ05 //Refugee
BEGIN C#IMSQ06 //Refugee
BEGIN C#IMSQ07 //Refugee

/* Encounter one: bickering betrothed */
CHAIN
IF ~Global("C#IM_SoDQuest_Enc","GLOBAL",1)~ THEN C#IMSQ01 accusation
@139 /* [female refugee]An Angel Skin Ring! - Can you believe that? My fiancÃ© has an Angel Skin Ring in his pocket, and to me he proposed with a ring twirled out of *tin* because we couldn't afford anything else after losing our home. Or so I thought?! */ /* ~[female refugee]An Angel Skin Ring! - Can you believe that? My fiancé has an Angel Skin Ring in his pocket, and to me he proposed with a ring twirled out of *tin* because we couldn't afford anything else after losing our home. Or so I thought?!~ */
== C#IMSQ02 @140 /* [male refugee]I didn't know it's in there! I don't know where it comes from, either! */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @141 /* [Imoen]Uhm, well, that's possible, no? */
== C#IMSQ01 @142 /* [female refugee]So, were did it come from, eh? Did it create itself out of thin air? */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @143 /* [Imoen]Well, mmmmaybe someone put it into your pocket, you know, as a treat. After hearing about your tin ring. It's possible, right? */ 
== C#IMSQ01 @144 /* [female refugee]That's the lamest excuse I ever heard. In times like these, noone would just give away a ring. No - you'll get a mouthful later, you hear me? Hiding such a ring from me! Can you believe it... */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @145 /* [Imoen]Oof... */
END
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest_Enc","GLOBAL",2)~ EXIT


/* Encounter two: bickering friends no. 1 */
CHAIN
IF ~Global("C#IM_SoDQuest_Enc","GLOBAL",3)~ THEN C#IMSQ04 bye
@146 /* [female refugee]I don't know where it came from, but it was in my pocket! This gem is worth a fortune. I can book a carriage to Waterdeep! */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @147 /* [Imoen]Yes! Isn't this great? - At last, someone who is happy. */
== C#IMSQ04 @148 /* [female refugee]Which means I don't need *you* any more. I'm a wealthy woman now, I can't share my wealth with everyone. */
== C#IMSQ05 @149 /* [female refugee]"Everyone"? I thought we are in this together! */
== C#IMSQ04 @150 /* [female refugee]Not any more. I'm off to Waterdeep. I'm sure you'll be fine, with all the soldiers protecting the camp. Bye! */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @151 /* [Imoen]But... aw, man, that was mean. The were meant for both of them! */
END
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest_Enc","GLOBAL",4)~ EXIT

/* Encounter three: bickering friends no. 2 */
CHAIN
IF ~Global("C#IM_SoDQuest_Enc","GLOBAL",5)~ THEN C#IMSQ06 encounter_3
@152 /* [male refugee]...well aware, but that you would go to such measures is beyond my imagination. Placing a gem into my pillow so *I* would be suspected of thieving and kicked out of camp! How low can one fall! */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @153 /* [Imoen]Aw!... No, that's not what... */
== C#IMSQ07 @154 /* [male refugee]What? I did no such thing! Why would I give a gem to *you* just to get you out of this camp. Had I such a gem, I would use it for myself! ...Wait - yes, of course it's *my* gem! Give me *my* gem back! */
== C#IMSQ06 @155 /* [male refugee]No way, you liar! You just said it's not yours! So it's mine - I found it! */
== C#IMSQ07 @156 /* [male refugee]No! Give me the gem! Give it to me! */
END
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest_Enc","GLOBAL",6)~ EXIT


/* Encounter 4: no thief */
APPEND C#IMSQ03 
IF ~Global("C#IM_SoDQuest_Enc","GLOBAL",7)
See("bdrayphu")
!StateCheck("bdrayphu",CD_STATE_NOTVALID)~ THEN return_rayphu
SAY @157 /* [male refugee]...I swear I don't know where they are coming from. Please believe me! */
IF ~~ THEN + return
END

IF ~Global("C#IM_SoDQuest_Enc","GLOBAL",7)
OR(2) 
!See("bdrayphu")
StateCheck("bdrayphu",CD_STATE_NOTVALID)~ THEN return_no_rayphu
SAY @158 /* [male refugee]Ah, I wanted to hand these gems in to Sir Rayphus, but he doesn't seem to be available. */
IF ~~ THEN + return
END
END //APPEND

CHAIN
IF ~~ THEN C#IMSQ03 return
@159 /* [male refugee]I just found them stowed away in my pillow. Surely someone is missing them, and I do not want to be accused of thieving! I know I am lucky to have found shelter in this camp, I will not risk it over some trinkets - especially since I don't know who placed them there. */
== bdrayphu IF ~See("bdrayphu")
!StateCheck("bdrayphu",CD_STATE_NOTVALID)~ THEN @160 /* [Sir Rayphus]Thanks for your honesty. I will take the gems and look for the rightful owners - as well as the thief who took them. */
== C#IMSQ03 IF ~See("bdrayphu")
!StateCheck("bdrayphu",CD_STATE_NOTVALID)~ THEN @161 /* [male refugee]Thank you! That takes a huge weight off my shoulders. */
== C#IMSQ03 @162 /* [male refugee]I will go now - I don't want to be around in case the thief comes back and notices the gems are gone... */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @163 /* [Imoen]But... they were meant for you! And noone here misses them, they belonged to crusaders! Er... I think! I wouldn't *know* of course... uh, but that's what I would *think* happened here. */
== C#IMSQ03 @164 /* [male refugee]That's a rediculous thought - a saint going around and giving treats to the poor refugees? Hmm - I don't think so. I'll definitely hide to make sure the thief won't hassle me! */
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @165 /* [Imoen]Not a saint, but... oh, bummer! */
== bdsafanj IF ~GlobalGT("SDD303","GLOBAL",0)
InParty("Safana") See("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)
InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @166 /* [Safana]Seems your attempts at pickpocketing also gave rather... unexpected results, Imoen. */
== bdsafana IF ~GlobalGT("SDD303","GLOBAL",0)
!InParty("Safana") See("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)
InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @166 /* [Safana]Seems your attempts at pickpocketing also gave rather... unexpected results, Imoen. */
== bdimoen IF ~GlobalGT("SDD303","GLOBAL",0)
InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @167 /* [Imoen]Yeah, yeah - rub it in. */
END
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest_Enc","GLOBAL",8)~ EXIT

CHAIN
IF WEIGHT #-1
~Global("C#IM_SoDQuest","GLOBAL",3)~ THEN bdimoen difficult
@137 /* [Imoen]Making other people happy is *difficult*, <CHARNAME>. Who would have thought that they would accept gifts so... so badly? */ /* @137 /* [Imoen]Making other people happy is *difficult*, <CHARNAME>. Who would have thought that they would accept gifts so... so badly? */ */
END
++ @168 /* [PC Reply]What do you mean? */ + difficult_03
++ @169 /* [PC Reply]Yes, I noticed instances were your gift receiver didn't seem to be too happy about finding trinkets they didn't know they were the owners of. */ + difficult_03
++ @170 /* [PC Reply]What did you expect? */ + difficult_01
++ @171 /* [PC Reply]I told you it's a bad idea to go around and play gift fairy. */ + difficult_02


APPEND bdimoen

IF ~~ THEN difficult_01
SAY @172 /* [Imoen]I don't know... Some joy? Gratitude not so much, as I didn't want anyone to know it was me. */
IF ~~ THEN + difficult_03
END

IF ~~ THEN difficult_02
SAY @173 /* [Imoen]Aw, but you just didn't want to part with the jewels! */
IF ~~ THEN + difficult_03
END

IF ~~ THEN difficult_03
SAY @174 /* [Imoen]I think... I think it was wrong to give gems away. Noone seemed really happy to have them... */
+ ~Global("C#HuSoD_bdimoen_quest_interject","GLOBAL",1)~ + @175 /* You heard Husam - these are probably just the uncontent ones. The other ones are already happily on their way to Baldur's Gate. */ + difficult_04
++ @176 /* [PC Reply]It's hard to please people - especially everyone. */ + difficult_05
++ @177 /* [PC Reply]Maybe you are giving the gifts to them wrongly. */ + difficult_04
++ @178 /* [PC Reply]I am sorry it didn't go as planned. What would you like to do now? */ + difficult_15
++ @179 /* [PC Reply]Aw, I can't see you like this. How about that - we give whatever gems and trinkets you have left to Sir Rayphus, and he can distribute them to the refugees fairly. Sounds like a plan? */ + difficult_06
++ @180 /* [PC Reply]You should have given them to me from the start. We'd have a use of them ourselves. */ + difficult_07
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_04
SAY @182 /* [Imoen]Yes, but how else should I do it? I wanted to be all *sneaky* about it! That was part of the thrill... */
++ @176 /* [PC Reply]It's hard to please people - especially everyone. */ + difficult_05
++ @178 /* [PC Reply]I am sorry it didn't go as planned. What would you like to do now? */ + difficult_15
++ @179 /* [PC Reply]Aw, I can't see you like this. How about that - we give whatever gems and trinkets you have left to Sir Rayphus, and he can distribute them to the refugees fairly. Sounds like a plan? */ + difficult_06
++ @180 /* [PC Reply]You should have given them to me from the start. We'd have a use of them ourselves. */ + difficult_07
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_05
SAY @183 /* [Imoen]Yes, I noticed... (sigh) */
++ @178 /* [PC Reply]I am sorry it didn't go as planned. What would you like to do now? */ + difficult_15
++ @179 /* [PC Reply]Aw, I can't see you like this. How about that - we give whatever gems and trinkets you have left to Sir Rayphus, and he can distribute them to the refugees fairly. Sounds like a plan? */ + difficult_06
++ @180 /* [PC Reply]You should have given them to me from the start. We'd have a use of them ourselves. */ + difficult_07
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_06
SAY @184 /* [Imoen]That's a great idea! Then they'll accept them for sure. He can say that they were donated by an unknown donor! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDGemsRayphus","GLOBAL",1)~ + difficult_17
IF ~!AreaCheck("bd4300")~ THEN DO ~SetGlobal("C#IM_SoDGemsRayphus","GLOBAL",1)~ + difficult_08
END

IF ~~ THEN difficult_07
SAY @185 /* [Imoen]Yes, I guess you are right... I didn't take any from our shared stack, I swear! */
IF ~~ THEN + difficult_16
IF ~!AreaCheck("bd4300")~ THEN + difficult_08
END

IF ~~ THEN difficult_08
SAY @186 /* [Imoen]The thing is... umm... there is still some gems I hid at the tents. */
++ @187 /* [PC Reply]What do you suggest? */ + difficult_09
++ @188 /* [PC Reply]We should go and collect them. Where did you put them? */ + difficult_11
++ @189 /* [PC Reply]Don't tell me you want *me* to go around and collect them. */ + difficult_10
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_09
SAY @190 /* [Imoen]I would like to get them back. Would you come with me? */
++ @188 /* [PC Reply]We should go and collect them. Where did you put them? */ + difficult_11
++ @189 /* [PC Reply]Don't tell me you want *me* to go around and collect them. */ + difficult_10
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_10
SAY @191 /* [Imoen]And if I say please? */
++ @188 /* [PC Reply]We should go and collect them. Where did you put them? */ + difficult_11
++ @192 /* [PC Reply]Fine - where are they? */ + difficult_11
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_11
SAY @193 /* [Imoen]Thanks! Erm... I don't really remember.. but I placed all of them at the right side of the tent entrances. And it was eight stacks, I remember how I counted the gems so they would be equally distributed. */
++ @194 /* [PC Reply]Alright, we will search the tents for your gems. */ + difficult_14
++ @195 /* [PC Reply]You're not serious. Do you expect me to go gem hunting through the whole camp? */ + difficult_12
END

IF ~~ THEN difficult_12
SAY @196 /* [Imoen]Umm... yes? Pleeease? */
++ @194 /* [PC Reply]Alright, we will search the tents for your gems. */ + difficult_14
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_13
SAY @197 /* [Imoen]Fiiine... I will just leave the others where they are and not listen to people's complaining. I am *sure* they will do some good. */
IF ~~ THEN + difficult_16
END

IF ~~ THEN difficult_14
SAY @198 /* [Imoen]Great! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ THEN difficult_15
SAY @199 /* [Imoen]Well, I do not want to play fairy any more. */
++ @179 /* [PC Reply]Aw, I can't see you like this. How about that - we give whatever gems and trinkets you have left to Sir Rayphus, and he can distribute them to the refugees fairly. Sounds like a plan? */ + difficult_06
++ @180 /* [PC Reply]You should have given them to me from the start. We'd have a use of them ourselves. */ + difficult_07
++ @181 /* [PC Reply]I can't be bothered with this, Imoen. They are your gems, do with them what you want. */ + difficult_13
END

IF ~~ THEN difficult_16
SAY @200 /* [Imoen]You know what - I'll focus on filling *our* pockets again from now on, and leave the decision about how to spend them to you. Sounds like a plan, no? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDQuest","GLOBAL",8)~ EXIT
END

IF ~~ THEN difficult_17
SAY @201 /* [Imoen]Well, I don't have any now, so I guess it's just a nice throught. Still, it *is* a nice thought! */
IF ~~ THEN + difficult_16
END

/* collected all gems */
IF WEIGHT #-1
~Global("C#IM_SoDQuest","GLOBAL",6)~ THEN all_gems
SAY @202 /* I think we have all of them. Phew, what a waste of time. */
++ @203 /* [PC Reply]Not exactly. That's a nice sum of gems you collected there. */ + all_gems_01
++ @204 /* [PC Reply]A waste, indeed. */ + all_gems_01
END

IF ~~ THEN all_gems_01
SAY @205 /* [Imoen]Well, it's a nice amount of glittering stones, alright! */
IF ~~ THEN + all_gems_03
IF ~Global("C#IM_SoDGemsRayphus","GLOBAL",1)~ THEN + all_gems_02
END

IF ~~ THEN all_gems_02
SAY @206 /* [Imoen]Let's bring them to Sir Rayphus like you suggested... before I change my mind! */
IF ~~ THEN DO ~EraseJournalEntry(@100001) SetGlobal("C#IM_SoDQuest","GLOBAL",7)~ UNSOLVED_JOURNAL @100002 + all_gems_04
END

IF ~~ THEN all_gems_03
SAY @207 /* [Imoen]Here they are - I'll leave them all with you, like you requested. */
IF ~~ THEN DO ~EraseJournalEntry(@100001) SetGlobal("C#IM_SoDQuest","GLOBAL",9)~ SOLVED_JOURNAL @100003 + all_gems_04
END

IF ~~ THEN all_gems_04
SAY @208 /* [Imoen]I tell you what, <CHARNAME> - it's the collecting of gems I like doing best. I think I'll focus on finding them for us again, and leave the rest to you! */
IF ~~ THEN EXIT
END

END //APPEND

EXTEND_BOTTOM BDRAYPHU 12
+ ~PartyHasItem("c#imsgm")~ + @209 /* [PC Reply]My friend collected these gems from the crusaders, and we thought you could distribute them to refugees who would need the help the most. */ + give_gems
END

CHAIN
IF ~~ THEN BDRAYPHU give_gems
@210 /* [Sir Rayphus]Oh, what a cheritable donation. I will see to them being given to needing parties accordingly. Have thanks for your generosity. */
== bdimoen IF ~Global("C#IM_SoDQuest","GLOBAL",6) InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @211 /* [Imoen]Generosity, uh-huh! He meant me with that, you know? I'm a very generous person - today. Now let's go, <CHARNAME> - I need to fill *our* pockets again. */ 
END
IF ~~ THEN DO ~ActionOverride("BDRAYPHU",TakePartyItemAll("c#imsgm"))
ActionOverride("BDRAYPHU",DestroyItem("c#imsgm"))~ EXIT
IF ~Global("C#IM_SoDQuest","GLOBAL",7)~ THEN DO ~EraseJournalEntry(@100001)
EraseJournalEntry(@100002)
SetGlobal("C#IM_SoDQuest","GLOBAL",8) ActionOverride("BDRAYPHU",TakePartyItemAll("c#imsgm"))
ActionOverride("BDRAYPHU",DestroyItem("c#imsgm"))~ SOLVED_JOURNAL @100004 EXIT
