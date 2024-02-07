/* Imoen needs other kickout dialogue before Brynnlaw */

APPEND IMOEN2P

IF WEIGHT #-1
~%IT_IS_BGII%
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("KickedOut","LOCALS",1)~ THEN kickout
SAY @0 
  IF ~~ THEN REPLY #49270 /* ~I would be happy to have you join me.~ */ GOTO 2
  IF ~~ THEN REPLY #49271 /* ~I have no need of you at present.~ */ GOTO 1
END

IF WEIGHT #-1
~%IT_IS_BGII%
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) Global("KickedOut","LOCALS",0)~ THEN kickout_01
  SAY @1
  IF ~!AreaCheck("AR0406")~ THEN REPLY #49277 /* ~I think it best.~ */ GOTO 5
  IF ~AreaCheck("AR0406")~ THEN REPLY #49277 /* ~I think it best.~ */ GOTO 5_coppercoronet
  IF ~~ THEN REPLY #49279 /* ~No, stay with me.~ */ GOTO 2
END

IF ~~ THEN BEGIN 5_coppercoronet
  SAY @2 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("ar0406",504,1493,0)~ EXIT
END

END //APPEND