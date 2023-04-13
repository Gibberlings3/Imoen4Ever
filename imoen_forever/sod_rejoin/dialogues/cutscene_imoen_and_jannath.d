/* trigger cutscene with Imoen and Liia Jannath */

EXTEND_BOTTOM BDIMOEN 140
IF ~~ THEN + alter_cutscene
END

CHAIN
IF ~~ THEN BDIMOEN alter_cutscene
@5000 /* ~But what if <PRO_HESHE> gets in danger without me?!~ */
== BDLIIA @5001 /* ~Imoen!~ */
END
IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("c#imscry")~ EXIT

/* REPLACE_ACTION_TEXT 

/* trigger cutscene with Imoen and Liia after coalition left BG */
COPY_EXISTING ~bdschael.dlg~ ~override~
    DECOMPILE_AND_PATCH BEGIN
        SPRINT textToReplace ~\(StartCutScene("bdcut08")\)~
        COUNT_REGEXP_INSTANCES ~%textToReplace%~ num_matches
        PATCH_IF (num_matches > 0) BEGIN
            REPLACE_TEXTUALLY ~%textToReplace%~ ~StartCutScene("c#imscry")~
            PATCH_PRINT ~Patching: %num_matches% matches found in %SOURCE_FILESPEC% for REPLACE_TEXTUALLY: %textToReplace%~
        END ELSE BEGIN
            PATCH_WARN ~WARNING: could not find %textToReplace% in %SOURCE_FILESPEC%~
        END
    END
BUT_ONLY

*/

REPLACE_TRANS_ACTION bdschael BEGIN 247 END BEGIN END ~StartCutScene("bdcut08")~ ~StartCutScene("bdscry01")~

REPLACE_TRANS_ACTION bdschael BEGIN 247 END BEGIN END ~StartCutSceneEx("bdcut08",FALSE)~ ~StartCutScene("bdscry01")~