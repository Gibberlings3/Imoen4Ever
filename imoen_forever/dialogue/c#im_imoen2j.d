/* Imoen "found" some things by the Cowled Wizards! */

APPEND IMOEN2J

IF WEIGHT #-1
~Global("C#IM_FoundThings","LOCALS",1)~ THEN foundthings
SAY @0 
++ @1 + foundthings_02
++ @2 + foundthings_01
++ @3 + foundthings_01
++ @4 + foundthings_02
END

IF ~~ THEN foundthings_01
SAY @5
IF ~~ THEN + foundthings_03
END

IF ~~ THEN foundthings_02
SAY @6
IF ~~ THEN + foundthings_03
END

IF ~~ THEN foundthings_03
SAY @7
IF ~~ THEN DO ~SetGlobal("C#IM_FoundThings","LOCALS",2)~ EXIT
END

END //APPEND