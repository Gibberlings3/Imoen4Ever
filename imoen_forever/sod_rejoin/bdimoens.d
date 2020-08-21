/* Imoen's Greetings Dialogue in bd1000.are */

BEGIN BDIMOENS

/* rejoining in bd1000 */
CHAIN
IF ~Global("C#IM_ImoenRejoinsbd1000","GLOBAL",3)~ THEN BDIMOENS heya_its_me
@0
== BDIMOENS @1
== BDIMOENS @2
END
++ @3 + heya_its_me_00
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @4 + heya_its_me_01
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @5 + heya_its_me_02
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @6 + heya_its_me_01
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @7 + heya_its_me_06
++ @8 + heya_its_me_04
++ @9 + heya_its_me_05


APPEND BDIMOENS
IF ~~ THEN heya_its_me_00
SAY @10
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @4 + heya_its_me_01
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @5 + heya_its_me_02
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @6 + heya_its_me_01
+ ~OR(2)
Global("C#IM_ImoenJannathSoD","GLOBAL",1)
GlobalGT("#L_ImoenInPalace","GLOBAL",0) //Transitions
~ + @7 + heya_its_me_06
++ @11 + heya_its_me_04
++ @9 + heya_its_me_05
END

IF ~~ THEN heya_its_me_01
SAY @12
IF ~~ THEN + heya_its_me_09
IF ~!AreaCheck("bd0103")~ THEN + heya_its_me_03
END

IF ~~ THEN heya_its_me_02
SAY @13
IF ~~ THEN + heya_its_me_03
END

IF ~~ THEN heya_its_me_03
SAY @14
IF ~~ THEN + heya_its_me_08
END

IF ~~ THEN heya_its_me_04
SAY @18
IF ~~ THEN DO ~SetGlobal("C#IM_ImoenRejoinsbd1000","GLOBAL",5) 
SetDialog("BDIMOENJ")
JoinParty()~ EXIT
IF ~AreaCheck("bd0103")~ THEN DO ~SetGlobal("C#IM_ImoenRejoinsbd1000","GLOBAL",4) 
SetDialog("BDIMOENJ")
JoinParty()~ EXIT
END

IF ~~ THEN heya_its_me_05
SAY @19
IF ~~ THEN DO ~SetGlobal("C#IM_ImoenRejoinsbd1000","GLOBAL",5)
SetGlobal("bd_joined","locals",0) 
SetDialog("BDIMOEN")
EscapeAreaMove("bd1000",470,3737,N)~ EXIT
END

IF ~~ THEN heya_its_me_06
SAY @20
IF ~~ THEN + heya_its_me_09
IF ~!AreaCheck("bd0103")~ THEN + heya_its_me_03
END

IF ~~ THEN heya_its_me_07
SAY #%16415% /* ~Oh, fine! I'll just pester about around here until you realize you can't live without little Imoen. You know you will.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_ImoenRejoinsbd0103","GLOBAL",1)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN BDIMOENS heya_its_me_08
@22
== BDIMOENS IF ~Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN @15
== BDIMOENS IF ~!Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN @16
== BDIMOENS @17
END
++ @8 + heya_its_me_04
+ ~!AreaCheck("bd0103")~ + @9 + heya_its_me_05
+ ~AreaCheck("bd0103")~ + @9 + heya_its_me_07

APPEND BDIMOENS
IF ~~ THEN heya_its_me_09
SAY @23
IF ~~ THEN + heya_its_me_08
END

END //APPEND