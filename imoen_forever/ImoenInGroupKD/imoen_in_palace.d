ALTER_TRANS bdimoen
	BEGIN 67 END
	BEGIN 0 END 
	BEGIN "EPILOGUE" ~GOTO new_1~ END

ALTER_TRANS bdimoen
	BEGIN 67 END
	BEGIN 2 END 
	BEGIN "EPILOGUE" ~GOTO new_3~ END

ALTER_TRANS bdimoen
	BEGIN 68 END
	BEGIN 0 END 
	BEGIN "EPILOGUE" ~GOTO new_4~ END

ALTER_TRANS bdimoen
	BEGIN 68 END
	BEGIN 1 END 
	BEGIN "EPILOGUE" ~GOTO new_1~ END

APPEND BDIMOEN

IF ~~ THEN new_1
SAY @20
IF ~~ THEN + 72 
END

IF ~~ THEN new_3
SAY #%35323% /* ~I knew you'd say that. I'm... I'm sorry. I can't go with you.~ [BD35323] */
IF ~~ THEN + 72 
END

IF ~~ THEN new_4
SAY @21
  IF ~~ THEN REPLY #%55725% /* ~Eh. It's a mystery for another <DAYNIGHTALL>. How are you?~ */ GOTO new_1
  IF ~~ THEN REPLY #%55726% /* ~I have no friends, just allies and tools.~ */ GOTO 71 
END

END //APPEND

ALTER_TRANS bdimoen
	BEGIN 72 END
	BEGIN 1 END 
	BEGIN "EPILOGUE" ~GOTO new_9~ END

ALTER_TRANS bdimoen
	BEGIN 72 END
	BEGIN 2 END 
	BEGIN "EPILOGUE" ~GOTO 87~ END

ALTER_TRANS bdimoen
	BEGIN 72 END
	BEGIN 3 END 
	BEGIN "EPILOGUE" ~GOTO new_9~ END

ALTER_TRANS bdimoen
	BEGIN 78 END
	BEGIN 0 END 
	BEGIN "EPILOGUE" ~GOTO 84~ END

ALTER_TRANS bdimoen
	BEGIN 78 END
	BEGIN 2 END 
	BEGIN "EPILOGUE" ~GOTO 84~ END

ALTER_TRANS bdimoen
	BEGIN 80 END
	BEGIN 0 END 
	BEGIN "EPILOGUE" ~GOTO new_9~ END

EXTEND_BOTTOM bdimoen 72
+ ~GlobalGT("#L_ImoenInPalace","GLOBAL",0)~ + @29 /* ~That's alright, Imoen. I know you are training with Duke Jannath. I wouldn't want to take you away from that, anyhow.~ */ + new_11
++ @22 + new_9
END

ALTER_TRANS bdimoen
	BEGIN 87 END
	BEGIN 0 END 
	BEGIN "EPILOGUE" ~GOTO 88~ END

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
++ @27 + 84
END
