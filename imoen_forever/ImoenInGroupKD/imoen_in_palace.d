
/* after Imoen recovers from the poison: different reason why she is not coming with the PC again */

ADD_TRANS_TRIGGER BDIMOEN 67 ~Global("C#st_ImoenInGroupKD","GLOBAL",0)~ 
ADD_TRANS_TRIGGER BDIMOEN 78 ~Global("C#st_ImoenInGroupKD","GLOBAL",0)~ 

EXTEND_BOTTOM BDIMOEN 67 
+ ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~ + #%35302% /* ~Imoen. It's good to see you up and about. How are you doing?~ */ DO ~SetGlobal("BD_MDD007","BD0103",2)~ + new_1
  IF ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~ THEN REPLY #%55721% /* ~What was that man in the hood doing here?~ */ DO ~SetGlobal("BD_MDD007","BD0103",2)
~ GOTO new_2
  IF ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~ THEN REPLY #%35304% /* ~You look well, Imoen. Are you ready to pay Caelar back?~ */ DO ~SetGlobal("BD_MDD007","BD0103",2)~ + new_3
END

EXTEND_BOTTOM BDIMOEN 86 
+ ~GlobalGT("#L_ImoenInPalace","GLOBAL",0)~ + @28 /* ~As I said, I accepted your decision to train with Duke Jannath, so you don't need to worry about not coming with me.~ */ DO ~SetGlobal("BD_MDD007","BD0103",2)~ + new_12
END

APPEND BDIMOEN

IF ~~ THEN new_1
SAY @20
IF ~~ THEN + new_6
END

IF ~~ THEN new_2
SAY #%55722% /* ~You don't know him? He said he was a friend of yours. We've known some pretty strange characters, so I didn't think it was weird to have someone pop in looking for you.~ [BD55722] */
  IF ~~ THEN REPLY #%55723% /* ~I don't know who he is—he's certainly no friend of mine.~ */ GOTO new_4
  IF ~~ THEN REPLY #%55725% /* ~Eh. It's a mystery for another <DAYNIGHTALL>. How are you?~ */ GOTO new_1
  IF ~~ THEN REPLY #%55726% /* ~I have no friends, just allies and tools.~ */ GOTO new_5
END

IF ~~ THEN new_3
SAY #%35323% /* ~I knew you'd say that. I'm... I'm sorry. I can't go with you.~ [BD35323] */
IF ~~ THEN + new_6
END

IF ~~ THEN new_4
SAY @21
  IF ~~ THEN REPLY #%55725% /* ~Eh. It's a mystery for another <DAYNIGHTALL>. How are you?~ */ GOTO new_1
  IF ~~ THEN REPLY #%55726% /* ~I have no friends, just allies and tools.~ */ GOTO new_5
END

IF ~~ THEN new_5
SAY #%66750% /* ~Gee, thanks. Actually, I'm kind of glad you said that—it'll make what I have to say a little easier.~ [BD66750] */
IF ~~ THEN + new_6
END

IF ~~ THEN new_6
SAY #%55732% /* ~I wanted to talk to you about going to battle the crusade. I can't do it, <CHARNAME>. I can't go with you.~ [BD55732] */
+ ~GlobalGT("#L_ImoenInPalace","GLOBAL",0)~ + @29 /* ~That's alright, Imoen. I know you are training with Duke Jannath. I wouldn't want to take you away from that, anyhow.~ */ + new_11
++ @22 + new_9
  IF ~~ THEN REPLY #%55743% /* ~I don't want you to. You'll be safer here.~ */ GOTO new_7
  IF ~  Global("bd_liia_trains_immy","global",1)
~ THEN REPLY #%55744% /* ~Liia Jannath told me you're neither the thief you were nor the mage you will be at the moment. Best you remain here.~ */ GOTO new_9
  IF ~~ THEN REPLY #%55745% /* ~Good. I'd not have had you anyway. You'd only slow me down.~ */ GOTO new_8
  IF ~~ THEN REPLY #%55746% /* ~Can't go with me? What nonsense is this?~ */ GOTO new_9
END

IF ~~ THEN new_7
SAY #%35327% /* ~Well, so would you, silly! But that doesn't matter, does it? I know that look in your eyes. I'm just wasting my breath.~ [BD35327] */
IF ~~ THEN + new_9
END

IF ~~ THEN new_8
  SAY #%35347% /* ~Gods! You can really be mean sometimes, you know that?~ [BD35347] */
  IF ~~ THEN + 88
END
END //APPEND

CHAIN
IF ~~ THEN BDIMOEN new_9
 @23
== BDIMOEN IF ~!GlobalGT("#L_ImoenInPalace","GLOBAL",0)~ THEN @24
== BDIMOEN IF ~GlobalGT("#L_ImoenInPalace","GLOBAL",0)~ THEN @32 /* ~So I'll keep on staying with Duke Jannath and use the time while I'm healing to train my magic abilities with her.~ */
= @25
END
  IF ~~ THEN REPLY #%35344% /* ~I understand. I'm glad you're not coming, in a way. You'll be safer here.~ */ GOTO new_10
  IF ~~ THEN REPLY #%35345% /* ~But... we're adventurers...~ */ GOTO new_10
  IF ~~ THEN REPLY #%35350% /* ~I thought you were made of sterner stuff, Imoen. If this is truly how you feel, then it's best you don't accompany us. I wouldn't want you dragging us down.~ */ GOTO 87


APPEND BDIMOEN

IF ~~ THEN new_10
  SAY @26
= #%66751% /* ~We need to talk about you going to Dragonspear Castle. Don't do it. Don't go.~ [BD66751] */
  IF ~~ THEN + 83
END

IF ~~ THEN new_11
  SAY @30 /* ~I know, but it's not only that...~ */
IF ~~ THEN + new_9
END

IF ~~ THEN new_12
  SAY @31 /* ~I know that! But I do worry. I would rather come with you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 84
END

END //APPEND

EXTEND_BOTTOM BDIMOEN 78
  IF  ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~  THEN REPLY #%35320% /* ~Would that I could. But Caelar has forced my hand.~ */ GOTO 84
  IF  ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~  THEN REPLY #%35321% /* ~The city needs me. What would you have me do?~ */ GOTO 82
  IF  ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~  THEN REPLY #%35322% /* ~Caelar and her crusade must never be allowed to attack us again.~ */ GOTO 84
+ ~GlobalGT("C#st_ImoenInGroupKD","GLOBAL",0)~ + @27 + 84
END