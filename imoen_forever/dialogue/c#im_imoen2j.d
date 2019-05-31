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

/* interjections into Bodhi's dialogue by fight for Aran */

//BODHI2 14
/* #39725 ~I know more than your brain could hold in a lifetime.  There is so much beneath your nose; so much you do not see.  Why, even Imoen escaped your notice. ~ */
I_C_T BODHI2 14 C#IM_BODHI2_14
== IMOEN2J IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @8 
== BODHI2 @9
END


APPEND IMOEN2J

/* after fight with Bodhi for the Shadow Thieves */
IF WEIGHT #-1
~Global("C#IM_BODHI2_14","GLOBAL",2)~ THEN bodhis_andeutungen
SAY @10
= @11 
++ @12 + bodhis_andeutungen_04
+ ~!Dead("Minsc") !Dead("Jaheira")~ + @13 + bodhis_andeutungen_04
+ ~OR(2)
Dead("Minsc") Dead("Jaheira")~ + @14 + bodhis_andeutungen_04
++ @15 + bodhis_andeutungen_05
++ @16 + bodhis_andeutungen_03
++ @17 + bodhis_andeutungen_02
++ @18 + bodhis_andeutungen_05
END

IF ~~ THEN bodhis_andeutungen_01
SAY @19
IF ~~ THEN DO ~SetGlobal("C#IM_BODHI2_14","GLOBAL",3)~ EXIT
END

IF ~~ THEN bodhis_andeutungen_02
SAY @20
IF ~~ THEN + bodhis_andeutungen_01
END

END //APPEND

CHAIN
IF ~~ THEN IMOEN2J bodhis_andeutungen_03
@21
= @22
== IMOEN2J IF ~OR(3)
Global("C#IM_HadDream1","GLOBAL",2)
Global("C#IM_HadDream2","GLOBAL",2)
Global("C#IM_HadDream3","GLOBAL",2)~ THEN @23
END
IF ~~ THEN + bodhis_andeutungen_01

APPEND IMOEN2J

IF ~~ THEN bodhis_andeutungen_04
SAY @24
++ @25 + bodhis_andeutungen_01
++ @16 + bodhis_andeutungen_03
++ @17 + bodhis_andeutungen_02
END

IF ~~ THEN bodhis_andeutungen_05
SAY @26
++ @25 + bodhis_andeutungen_01
++ @16 + bodhis_andeutungen_03
++ @17 + bodhis_andeutungen_02
END




/* Reaktion auf CHARNAME's dreams */

/* first dream */

IF WEIGHT #-1
~Global("C#IM_HadDream1","GLOBAL",1)~ THEN firstdream
SAY @27 /*~Heute Nacht hast du mir aber einen miesen Traum geschickt, <CHARNAME>! Wobei, wenn ich dich so anschaue - du siehst heute morgen auch nicht gerade danach aus, als seist du von Sune wachgeküsst worden. Eher von Talos persönlich, wenn ich dich genauer ansehe.~ */
++ @29 /* ~Ich soll *dir* einen Traum geschickt haben? Ich würde eher sagen, dass du *mich* heute Nacht ganz schön auf Trab gehalten hast.~ */ + firstdream_10
++ @28 /* ~Ich hatte einen seltsamen Traum...~ */ + firstdream_05
++ @30 /* ~Ich möchte da nicht drüber sprechen, Imoen.~ */ + firstdream_01
END

IF ~~ THEN firstdream_01
SAY @31 /* ~Musst du ja auch nicht, du kannst auch einfach nur zuhören!~ */
IF ~~ THEN + firstdream_06
END

IF ~~ THEN firstdream_02
SAY @32 /* ~Was, du hast von mir geträumt? Das ist ja verrückt. Was habe ich denn gemacht?~ */
++ @33 /* ~Erstmal mich in unserer alten Heimat Kerzenburg rumgeführt und mir erzählt, dass du dich an nichts erinnern kannst... und dass ich "zu weit weg" bin... und kurz bevor Irenicus aufgetaucht ist, bist du in tausend Stücke zersprungen.~ */ + firstdream_03
++ @34 /* ~Imoen, lass' mich in Ruhe. Ich möchte nicht darüber sprechen.~ */ + firstdream_04
END

IF ~~ THEN firstdream_03
SAY @35 /* ~Uah, so genau wollte ich es glaube ich doch nicht hören... In meinem Traum bist *du* in Kerzenburg durch die Gegend gestolpert und wusstest nicht mehr, wie es wohin geht.~ */
= @36 /* ~Zusammen haben wir dann den Weg gefunden. Hat das... hat das irgendwas zu bedeuten?~ */
++ @37 /* ~Dass du meine allerbeste Freundin bist, Imoen.~ */ + firstdream_07
++ @38 /* ~Es könnte immer noch Zufall sein.~ */ + firstdream_08
++ @72 /* ~Eigentlich ist es nicht allzu verwunderlich, wenn wir beide von Orten aus der Vergangenheit träumen, oder? Wir haben eben schon viel zusammen erlebt.~ */ + firstdream_09
++ @39 /* ~Gute Frage. Ich hätte ja gedacht, dass es einer meiner Bhaalerbe-Träume ist, wie ich sie auch an der Schwertküste hatte, aber wenn du auch von Kerzenburg geträumt hast...~ */ + firstdream_08
++ @40 /* ~Ehrlich gesagt ist mir das gerade egal.~ */ + firstdream_04
END

IF ~~ THEN firstdream_04
SAY @41 /* ~Ja, schon gut! Eulenbär.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream1","GLOBAL",2)~ EXIT
END

IF ~~ THEN firstdream_05
SAY @42 /* ~Ich auch!~ */
IF ~~ THEN + firstdream_06
END

IF ~~ THEN firstdream_06
SAY @43 /* ~Ich habe von Kerzenburg geträumt... und von dir.~ */
++ @44 /* ~Moment, jetzt bin ich interessiert. Ich habe nämlich von dir geträumt - in Kerzenburg!~ */ + firstdream_02
++ @34 /* ~Imoen, lass' mich in Ruhe. Ich möchte nicht darüber sprechen.~ */ + firstdream_04
END

IF ~~ THEN firstdream_07
SAY @45 /* ~Haha! Scherzkeks. Ich meine, ja, das war eine sehr liebe Antwort. Aber im Ernst jetzt?~ */
++ @38 /* ~Es könnte immer noch Zufall sein.~ */ + firstdream_08
++ @72 /* ~Eigentlich ist es nicht allzu verwunderlich, wenn wir beide von Orten aus der Vergangenheit träumen, oder? Wir haben eben schon viel zusammen erlebt.~ */ + firstdream_09
++ @39 /* ~Gute Frage. Ich hätte ja gedacht, dass es einer meiner Bhaalerbe-Träume ist, wie ich sie auch an der Schwertküste hatte, aber wenn du auch von Kerzenburg geträumt hast...~ */ + firstdream_08
++ @40 /* ~Ehrlich gesagt ist mir das gerade egal.~ */ + firstdream_04
END

IF ~~ THEN firstdream_08
SAY @75 /* ~Ich meine, Irenicus wird doch nicht?... Der ist doch gar nicht hier!~ */
= @46 /* ~Naja... Wäre ja nicht die erste verrückte Sache, die uns passiert, aber solange wir zusammen bleiben, können uns doch ein paar Träume nichts anhaben, oder?~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream1","GLOBAL",2)~ EXIT
END

IF ~~ THEN firstdream_09
SAY @73 /* ~Hm, vielleicht hast du recht...~ */
IF ~~ THEN + firstdream_08
END

IF ~~ THEN firstdream_10
SAY @90 /* ~Was? Wieso das denn?~ */
IF ~~ THEN + firstdream_06
END



/* Second dream: */

IF WEIGHT #-1
~Global("C#IM_HadDream2","GLOBAL",1)~ THEN seconddream
SAY @47 /* ~Du hast auch schlecht geschlafen, oder?~ */
++ @74 /* ~Ohja... und von Irenicus und dir geträumt. Er hat dich gefoltert...~ */ + seconddream_02
++ @48 /* ~Wieder so ein Irenicus-erklärt-mir-mein-Potential-Traum.~ */ + seconddream_01
++ @49 /* ~Was auch immer. Ich möchte nicht darüber sprechen.~ */ + seconddream_04
END


IF ~~ THEN seconddream_01
SAY @50 /* ~Und... kam ich da wieder vor?~ */
++ @51 /* ~Ja. Dich hat er gefoltert.~ */ + seconddream_02
++ @49 /* ~Was auch immer. Ich möchte nicht darüber sprechen.~ */ + seconddream_04
END

IF ~~ THEN seconddream_02
SAY @52 /* ~Echt? In meinem Traum wurdest *du* gefoltert!~ */
++ @53 /* ~Moment - du hast auch wieder von mir geträumt?~ */ + seconddream_03
++ @49 /* ~Was auch immer. Ich möchte nicht darüber sprechen.~ */ + seconddream_04
END

IF ~~ THEN seconddream_03
SAY @54 /*~Ja, das sage ich doch! Und von Irenicus auch!~ */
++ @55 /* ~Ich hoffe sehr für Irenicus, dass er da nichts mit zu tun hat!~ */ + seconddream_06
++ @56 /* ~Das wird immer bizarrer.~ */ + seconddream_05
++ @57 /* ~Irgendwie ist es aber auch nicht so verwunderlich, nach dem, was er uns angetan hat.~ */ + seconddream_05
END

IF ~~ THEN seconddream_04
SAY @58 /* ~Ist gut.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream2","GLOBAL",2)~ EXIT
END

IF ~~ THEN seconddream_05
SAY @59 /* ~Meinst du... meinst du, Irenicus tut uns das irgendwie an?~ */
IF ~~ THEN + seconddream_06
END

IF ~~ THEN seconddream_06
SAY @60 /* ~Uuh, ich hoffe stark, dass Irenicus da nicht dahintersteckt...~ */
++ @81 /* ~Mach' dir keine Sorgen, Imoen. Auch wenn er es sein sollte, wir passen aufeinander auf!~ */ + seconddream_08
++ @82 /* ~Wär' mir auch egal, solange er mich damit in Zukunft in Ruhe lässt.~ */ + seconddream_07
END

IF ~~ THEN seconddream_07
SAY @83 /* ~Ach, und bei mir könnte weitermachen, ja? Danke auch, du Vogel.~ */
IF ~~ THEN + seconddream_09
END

IF ~~ THEN seconddream_08
SAY @84 /* ~Genau so machen wir's!~ */
IF ~~ THEN + seconddream_09
END

IF ~~ THEN seconddream_09
SAY @80 /* ~Andererseits... wenn Irenicus es nicht ist, was könnte dann der Grund sein, dass wir so ähnliche Träume haben?~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream2","GLOBAL",2)~ EXIT
END





/* third dream: */

IF WEIGHT #-1
~Global("C#IM_HadDream3","GLOBAL",1)~ THEN thirddream
SAY @61 /* ~Du hast im Schlaf gemurmelt... Hattest du wieder einen... einen von *den* Träumen?~ */
++ @62 /* ~Du etwa auch wieder?~ */ + thirddream_01
++ @63 /* ~Ja. Irenicus, mein Bhaalerbe, Geschenk annehmen, blablabla.~ */ + thirddream_02
++ @64 /* ~Lass' gut sein, Imoen. Wir können's eh nicht ändern.~ */ + thirddream_04
END

IF ~~ THEN thirddream_01
SAY @65 /* ~Ja. Du warst da, und Irenicus hat dir wieder weh getan...~ */
IF ~~ THEN + thirddream_02
END

IF ~~ THEN thirddream_02
SAY @66 /* ~In meinem Traum hat er dir einfach nur weh getan. "Siehst du das?" hat er mich gefragt. "Siehst du es?" Es... es war wie da in seinem Verlies. (schaudert)~ */
++ @67 /* ~Die Träume haben bestimmt was mit meinem Bhaalerbe zu tun. Eine andere Erklärung gibt es nicht.~ */ + thirddream_03
++ @68 /* ~Für einen Zufall sind das mittlerweile zu viele parallele Träume! Und immer Irenicus und mein Bhaalerbe.~ */ + thirddream_03
++ @64 /* ~Lass' gut sein, Imoen. Wir können's eh nicht ändern.~ */ + thirddream_04
END

IF ~~ THEN thirddream_03
SAY @69 /* ~Es muss was mit deinem göttlichen Blut zu tun haben, <CHARNAME>. Es macht mir Angst... Du sahst so verloren aus, so... alleine.~ */
IF ~~ THEN + thirddream_04
END

IF ~~ THEN thirddream_04
SAY @70 /* ~Ich... ich lasse dich nicht im Stich, <CHARNAME>. Nie! Das weißt du, ja?~ */
= @71 /* ~Das nächste mal, wenn wir so einen bekloppten Traum haben, dann werde ich dich suchen. Wirst du mich auch suchen? */
++ @86 /* ~Ja, Imoen, das werde ich.~ */ + thirddream_05
++ @87 /* ~Wir halten zusammen, Imoen. Wie Gorion es uns gelehrt hat. Wenn du möchtest, dass ich dich im Traum suche, dann werde ich das tun.~ */ + thirddream_05
++ @88 /* ~Pfff, Imoen, wir reden erstens über Träume, und zweitens brauche ich deine Hilfe nicht.~ */ + thirddream_06
END

IF ~~ THEN thirddream_05
SAY @85 /* ~Zusammen schaffen wir das!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream3","GLOBAL",2)~ EXIT
END

IF ~~ THEN thirddream_06
SAY @89 /* ~Wenn du meinst... trotzdem werde ich immer nach dir Ausschau halten, ob es dir nun passt oder nicht!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_HadDream3","GLOBAL",2)~ EXIT
END


END //APPEND





/* Salvanas */

CHAIN
IF WEIGHT #-1 
~!InPartySlot(LastTalkedToBy,0)
Name("imoen2",LastTalkedToBy)
InParty("imoen2")
    !StateCheck("imoen2",CD_STATE_NOTVALID)
    Detect("imoen2")
Global("C#IM_SalvanasImoen","AR0406",0)~ THEN SALVANAS slavanas 
@76 /* ~Oh, guten Tag, mein reizendes Mädchen! Eure zauberhafte Aura umhüllt mich mit dem warmen Gefühl des Wissens, dass wir beide als Anwender der Magie wie füreinander geschaffen sind und unsere Energien für ein größeres Ganzes unbedingt vereinen sollten. Ich kann das Prickeln Eurer Magie nämlich bis tief in mein Herz hinein verspüren!~ */ DO ~SetGlobal("C#IM_SalvanasImoen","AR0406",1)~ 
== IMOEN2J @77 /* ~Bis in Euer Herz oder in Eure Hose? Ich glaube nämlich eher letzteres. Achtung, oder es gibt einen Strahl der Schwächung - zwischen die Beine!~ */
== SALVANAS @78 /* ~Aber nein... Eure magische Aura strahlt so hell, dass ich von Eurer weiblichen Energie einfach nur geblendet bin!~ */
== IMOEN2J @79 /* ~Ich kann Euch gerne den Gefallen tun und zusätzlich den Zauber „Blindheit“ auf Euch wirken, wenn Ihr noch mehr von meiner Aura sehen wollt. (kichert) Lasst uns gefälligst in Ruhe, blöder Kerl!~ */
EXIT


