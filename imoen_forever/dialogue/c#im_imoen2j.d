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




/* after fight with Bodhi for the Shadow Thieves */
CHAIN
IF WEIGHT #-1
~Global("C#IM_BODHI2_14","GLOBAL",2)~ THEN IMOEN2J bodhis_andeutungen
@10
== IMOEN2J IF ~GlobalGT("C#Imoen_SoDThrix","GLOBAL",0)~ THEN @92 /* ~Kinda... kinda like that demon in Avernus.~ */
== IMOEN2J IF ~Global("C#IM_ApplySpellprotection","LOCALS",1)~ THEN @11 
== IMOEN2J IF ~!Global("C#IM_ApplySpellprotection","LOCALS",1)~ THEN @91 
END
++ @12 + bodhis_andeutungen_04
+ ~!Dead("Minsc") !Dead("Jaheira")~ + @13 + bodhis_andeutungen_04
+ ~OR(2)
Dead("Minsc") Dead("Jaheira")~ + @14 + bodhis_andeutungen_04
++ @15 + bodhis_andeutungen_05
++ @16 + bodhis_andeutungen_03
++ @17 + bodhis_andeutungen_02
++ @18 + bodhis_andeutungen_05


APPEND IMOEN2J

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




/* Is Irenicus still a threat? */

IF WEIGHT #-1
~Global("C#IM_DialogueSoA","GLOBAL",2)~ THEN where_is_irenicus
SAY @93 /* ~<CHARNAME>, glaubst du... glaubst du, dass die Verhüllten Magier den Irenicus unter Kontrolle haben? Und wir vor ihm sicher sind?~ */
++ @94 /* ~Ich weiß nicht, Imoen. Schön wäre es natürlich.~ */ + where_is_irenicus_02
++ @95 /* ~So, wie er durch die Verhüllten Magier auf der Promenade durchgewalzt ist? Ich bezweifle es.~ */ + where_is_irenicus_02
++ @96 /* ~Das glaube ich nicht. Es war eindeutig, dass er freiwillig mitgegangen ist. Wenn sie es nicht irgendwie geschafft haben, ihn zu überrumpeln, dann sitzt er jetzt wieder unbehelligt irgendwo.~ */ + where_is_irenicus_01
++ @97 /* ~Na, sie haben ihn in ihre Verwahrung genommen, oder nicht? Da werden sie ja wohl mit Dissidenten fertig werden, auch wenn diese etwas mächtiger sind.~ */ + where_is_irenicus_02
END

IF ~~ THEN where_is_irenicus_01
SAY @98 /* ~...Und bereitet die weiteren Experimente vor, die er mit uns vor hatte. (schaudert).~ */
IF ~~ THEN + where_is_irenicus_02
END

IF ~~ THEN where_is_irenicus_02
SAY @99 /* ~(seufz) Er war viel zu großkotzig selbstüberzeugt bei seiner Verhaftung, als dass er in den Verhüllten Magiern eine Gefahr sähe. Hochmut kommt zwar bekanntlich vor dem Fall, aber bei ihm denke ich, dass er mächtig genug ist, den Verhüllten Magiern genau so weiter einzuheizen, wie er es auf der Promenade gemacht hat.~ */
= @100 /* ~Und was er zu mir sagte da im Verwaltungsgebäude... und vor allem *wie*. Da läuft's mir jetzt noch kalt den Rücken runter. Als könnte er uns jederzeit wieder problemlos einfangen.~ */
= @101 /* ~Wir sollten auf der Hut sein. Ich glaube, das einzige, was uns Zeit verschafft, ist, dass seine bisherige "Basis" zum großen Teil zerstört wurde. Aber wenn er die wieder aufgebaut hat... Dann sollten wir nicht mehr hier sein. Oder zusammen mit neuen Freunden so stark, dass er uns nichts anhaben kann! Wäre doch gelacht, wenn das "starke" Bhaalkind ihm so gar nichts entgegenzubringen hätte, oder?!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoA","GLOBAL",3)~ EXIT
END

END //APPEND

/* player dawdles in Chapter 2 */
/* Du, <CHARNAME>, sollten wir nicht einmal nach Irenicus suchen und fragen, was er von uns wollte? */

CHAIN
IF WEIGHT #-1
~Global("C#IM_LookForIrenicus","GLOBAL",1)~ THEN IMOEN2J seek_out_irenicus
@102 /* ~Du, <CHARNAME>, sollten wir nicht einmal nach Irenicus suchen und fragen, was er von uns wollte? Also, ich meine "fragen", nicht fragen, du verstehst schon.~ */
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @103 /* ~[Jaheira] Wenn wir das vorhaben, dann nur mit sehr guter Vorbereitung und mächtiger Unterstützung. Wir wissen alle, wozu dieser Mann fähig ist.~ */
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @104 /* ~[Minsc with Boo] Oh, es juckt Minsk in den Fingern, diesen bösen Mann zu fassen zu kriegen! Oder besser gesagt, es juckt ihm im Fuß, ihm einen ordentlichen Tritt in den Hintern zu verpassen, nicht wahr, Boo?~ */
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
!HasItem("MISC84","MINSC")~ THEN @105 /* ~[Minsc without Boo] Oh, es juckt Minsk in den Fingern, diesen bösen Mann zu fassen zu kriegen! Aber erst muss Minsk seinen Boo wiederfinden! Ohne Boo kann Minsc ihm nicht gegenübertreten!~ */
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @106 /* ~[Yoshimo] Ja, mich reizt es auch sehr, diesen Irenicus noch einmal zu "besuchen". Wir sollten allerdings Vorsicht walten lassen und seine... Möglichkeiten nicht unterschätzen.~ */
END
++ @107 /* ~Auf alle Fälle gehen wir ihm nach.~ */ + seek_out_irenicus_02
++ @108 /* ~Ja, das werden wir. Ich möchte aber besser vorbereitet sein, bevor ich ihm noch einmal gegenübertrete.~ */ + seek_out_irenicus_01
++ @109 /* ~Nach dem was er uns angetan hat - und vor allem mit welcher Leichtigkeit - zieht es mich jetzt nicht gerade dahin, eine Konfrontation mit ihm zu suchen.~ */ + seek_out_irenicus_01
++ @110 /* ~Nein. Irenicus ist weg, und das ist gut so. Ich möchte ein bisschen mein Leben genießen.~ */ + seek_out_irenicus_01


CHAIN
IF ~~ THEN IMOEN2J seek_out_irenicus_01
@111 /* ~Ja, das stimmt schon. Ich denke nur, dass er die Zeit auch nicht ungenutzt verstreichen lassen wird, weißt du? Er ist auch so schon sehr stark gewesen, die Frage ist, ob er in der Zwischenzeit nicht zusätzlich noch viele Anhänger um sich schart oder so.~ */
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @112 /* ~[Jaheira] Irenicus hat ein sehr spezielles Interesse an Euch und das wird nicht einfach so verschwinden, <CHARNAME>. Ihr tut gut daran, Euch auf eine Konfrontation vorzubereiten.~ */
END
IF ~~ THEN + seek_out_irenicus_02


APPEND IMOEN2J

IF ~~ THEN seek_out_irenicus_02
SAY @113 /* ~Ich denke, dass es sinnvoll ist, wenn wir seine Spur aufnehmen. Hilfsangebote haben wir ja genug... Ist mir jedenfalls lieber, als wenn er uns plötzlich aus einem Hinterhalt angreift.~ */
= @114 /* ~Aber noch ein bisschen stärker werden ist sicher keine schlechte Idee. Mich zieht nichts zurück in eine seiner Zellen, soviel ist sicher.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_LookForIrenicus","GLOBAL",2)~ EXIT
END

END //APPEND

/* after paying for passage to Brynnlaw */
CHAIN
IF WEIGHT #-1
~Global("C#IM_BoughtPassage","GLOBAL",1)~ THEN IMOEN2J brynnlaw_passage_paid
@115 /* ~Ich finde es gut, dass wir diesem Irenicus nachgehen!~ */
DO ~SetGlobal("C#IM_BoughtPassage","GLOBAL",2)~
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @116 /* ~[Jaheira] Ja, es wird Zeit, diesen... diesen Mörder zu stellen! Ich hoffe trotzdem, dass wir gut genug vorbereitet sind.~ */
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @117 /* ~[Minsc with Boo] Minsk und Boo freuen sich darauf, den Mörder unserer Dynaheir zu stellen. Dynaheir, wir kommen!~ */
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
!HasItem("MISC84","MINSC")~ THEN @118 /* ~[Minsc without Boo] Minsk freut sich darauf, den Mörder unserer Dynaheir zu stellen. Aber nicht ohne Boo! <CHARNAME> wollte nicht aufbrechen, bevor Boo wieder bei Mink ist.... oder?~ */
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @119 /* ~[Yoshimo] Nun wird es also bald ernst - wir werden unserem Entführer wieder gegenübertreten. Ich begleite Euch bei diesem Unterfangen, <CHARNAME>. Es... es ist auch für mich eine persönliche Angelegenheit.~ */
== IMOEN2J @120 /* ~Ich meine, ich habe Knie wie Espenlaub und meine Hände sind schweißnass bei dem Gedanken. Aber es ist das richtige. Wir können nicht wie die Maus vor der Schlange sitzen bleiben, bis er uns überrumpelt. Und weggerannt sind wir auch noch nie!~ */
EXIT


APPEND IMOEN2J


/* after Spellhold */

/* Imoen, child of Bhaal */

IF WEIGHT #-1
~Global("C#IM_DialogueSoA","GLOBAL",52)~ THEN imoen_bhaalchild
SAY @130 /* ~Ich bin also auch ein Kind des Bhaal... Oder doch nicht mehr? Das mit der fehlenden Seele macht die Situation irgendwie kompliziert.~ */
++ @131 /* ~Wie geht es dir mit diesem Wissen, Imoen?~ */ + imoen_bhaalchild_03
++ @132 /* ~Unglaublich, oder?~ */ + imoen_bhaalchild_03
+ ~OR(2)
GlobalGT("C#Imoen_SoDThrix","GLOBAL",0)
GlobalGT("C#IM_BODHI2_14","GLOBAL",0)~ + @133 /* ~Dass irgendwas mit deiner Seele besonders war, hatten wir ja schon angedeutet bekommen.~ */ DO ~SetGlobal("C#_IM_imoenbhaalchild_01","LOCALS",1)~ + imoen_bhaalchild_01
++ @134 /* ~Du wolltest mir schon immer die Show stehlen, was?~ */ + imoen_bhaalchild_02
++ @135 /* ~Darüber reden bringt nichts. Lass' uns unsere Seelen suchen.~ */ + imoen_bhaalchild_08
END

END //APPEND

CHAIN
IF ~~ THEN IMOEN2J imoen_bhaalchild_01
@136 /* ~Ja, aber doch nicht das! Erinner dich doch mal, wie es bei dir angefangen hatte. Die mächtigsten Magier der Reiche interessieren sich für dich, die Harfner ebenfalls, du kriegst Fähigkeiten in irgendwelchen Träumen...~ */
== IMOEN2J IF ~GlobalGT("SelfTalk","GLOBAL",0)~ THEN @137 /* ~Du verwandelst dich in den Schlächter!~ */
== IMOEN2J @138 /* ~Und ich? Laufe unauffällig an deiner Seite und bis auf ein paar Andeutungen von Bösewichten spricht nichts dafür, dass an mir irgendwas besonders wär oder ich gar dasselbe Schicksal teilen könnte.~ */
/* magic missile ability. "##" needs to be replaced by a variable name in case there is a dialogue about this */
== IMOEN2J IF ~Global("#L_ImoenIMM","GLOBAL",1)
!GlobalGT("##","GLOBAL",0)~ THEN @212 /* ~Oh! Oh! Meine Fähigkeit, magische Geschosse zu werfen! Kommt das von meinem Bhaalerbe? Ich dachte immer, das wäre durch die Magie von Irenicus geschehen...~ */
== IMOEN2J IF ~Global("#L_ImoenIMM","GLOBAL",1)~ THEN @213 /* ~Ja, gut, eine Fähigkeit habe ich auch erhalten, aber unter derartig seltsamen Umständen, dass der Ursprung nicht wirklich klar ist.~ */
END
IF ~~ THEN + imoen_bhaalchild_03

APPEND IMOEN2J

IF ~~ THEN imoen_bhaalchild_02
SAY @139 /* ~Was heißt hier wollte? Wenn unsere Geschichte mal besungen wird ist es ja wohl sonnenklar, dass es die von "Imoen aus Kerzenburg und ihr Freund <CHARNAME>" sein wird. (grins)~ ~Was heißt hier wollte? Wenn unsere Geschichte mal besungen wird ist es ja wohl sonnenklar, dass es die von "Imoen aus Kerzenburg und ihre Freundin <CHARNAME>" sein wird. (grins)~ */
IF ~~ THEN + imoen_bhaalchild_03
END

IF ~~ THEN imoen_bhaalchild_03
SAY @140 /* ~(scoff) Schön, wenn man es selbst dann auch mal erfährt, dass man ein Kind Bhaals ist. Aber wem sage ich das.~ */
= @141 /* ~Diese ganze Zeit... die ganze Zeit bei Irenicus in seinem Verlies hat er nie gesagt, dass ich auch die Bhaalessenz in mir trage. Nicht mal in Andeutungen. Ich habe das wirklich erst zeitgleich mit dem Verlust meiner Seele erfahren, <CHARNAME>.~ */
++ @142 /* ~Das ist hart. Ich hatte Zeit, mich an den Gedanken zu gewöhnen, ein Kind des Bhaal zu sein... Du musst mit der Information, ebenfalls eins zu sein, ohne Seele zurecht kommen.~ */ + imoen_bhaalchild_05
++ @143 /* ~Puh, das muss echt hart gewesen sein. Ich weiß ja, wie ich mich dabei gefühlt habe, und ich wusste wenigstens, was ich bin.~ */ + imoen_bhaalchild_05
++ @144 /* ~...Besser spät als nie?~ */ + imoen_bhaalchild_04
++ @135 /* ~Darüber reden bringt nichts. Lass' uns unsere Seelen suchen.~ */ + imoen_bhaalchild_08
END

IF ~~ THEN imoen_bhaalchild_04
SAY @146 /* ~<CHARNAME> wieder mit den pragmatischen Antworten.~ */
IF ~~ THEN + imoen_bhaalchild_06
END

IF ~~ THEN imoen_bhaalchild_05
SAY @147 /* ~Ja, ich tu mir auch unendlich leid, haha!~ */
IF ~~ THEN + imoen_bhaalchild_06
END

END //APPEND
CHAIN
IF ~~ THEN IMOEN2J imoen_bhaalchild_06
@148 /* ~Trotzdem - so gar nichts davon zu wissen...~ */
== IMOEN2J IF ~OR(2)
GlobalGT("C#Imoen_SoDThrixSoul","GLOBAL",0)
GlobalGT("C#IM_BODHI2_14","GLOBAL",1)~ THEN @149 /* ~Die ganzen Andeutungen...~ */
== IMOEN2J IF ~Global("C#_IM_imoenbhaalchild_01","LOCALS",0)
OR(2)
GlobalGT("C#Imoen_SoDThrixSoul","GLOBAL",0)
GlobalGT("C#IM_BODHI2_14","GLOBAL",1)~ THEN @150 /* ~Du weißt schon, wir hatten schon darüber gesprochen. Jetzt verstehe ich sie endlich.~ */

== IMOEN2J IF ~GlobalGT("C#Imoen_SoDThrixSoul","GLOBAL",0)~ THEN @145 /* ~The demon even called me your sister! I always thought he meant our closeness due to a childhood together in Candlekeep... Why wasn't I suspicious at all that there could be more to it?~ */

== IMOEN2J @151 /* ~Hätte ich es wissen müssen?~ */
END
++ @152 /* ~Was? Wie sollst du auf den Gedanken kommen, dass du auch ein Kind des Bhaal bist. Es ist nicht so, dass die hier an jeder Ecke stehen würden.~ */ + imoen_bhaalchild_07 
++ @153 /* ~Dass wir beide das sind ist wirklich ein seltsamer Zufall.~ */ + imoen_bhaalchild_07
++ @154 /* ~Imoen, ich hatte doch auch keinen blassen Schimmer. Und das nach den Träumen und den Fähigkeiten!~ */ + imoen_bhaalchild_07
++ @135 /* ~Darüber reden bringt nichts. Lass' uns unsere Seelen suchen.~ */ + imoen_bhaalchild_08

CHAIN
IF ~~ THEN IMOEN2J imoen_bhaalchild_07
@155 /* ~Du tatst mir immer so Leid, seit dein Erbe ans Licht kam. Dass Gorion dir so gar nichts davon erzählt hatte und so, das fand ich immer total komisch... Und nun werde ich mich Zeit meines Lebens fragen, ob er von mir überhaupt nichts wusste? Das wäre aber ein zu großer Zufall, dass ich dann ausgerechnet auch in Kerzenburg lande - und wir beide zusammen losziehen?~ */
= @156 /* ~Die ganze Zeit habe ich mit dir mitgefiebert, zuerst die komischen Träume damals an der Schwertküste, in denen du Fähigkeiten erhalten hast.~ */
= @157 /* ~Dein "Bruder" Sarevok, der dir nachstellte, lange Zeit ohne dass wir wussten, wer es war.~ */
== IMOEN2J IF ~GlobalGT("bd_plot","GLOBA",0)~ THEN @158 /* ~Caelar mit einem ganzen Kreuzzug und einem Trip nach Avernus...~ */
== IMOEN2J @159 /* ~Dann Irenicus - ich dachte immer, dass ich das eben als deine Freundin ertragen muss, was der da mit mir anstellt. Als zusätzliches "Anschauungsmaterial". Wie Khalid... (schaudert)~ */
= @160 /* ~Und jetzt plötzlich wird mir klar, dass das alles mir genauso hätte passieren können? Dass wohl dasselbe mir geschehen wäre, wenn wir uns getrennt hätten - oder... dass mir manches davon noch bevorsteht? Der Gedanke, dass bei mir dasselbe anfangen könnte wie bei dir macht mir Angst.~ */
END
++ @161 /* ~Und wenn das so sein sollte, dann kannst du dich darauf verlassen, dass wir das gemeinsam durchstehen!~ */ + imoen_bhaalchild_08
++ @162 /* ~Wir werden es sehen, Imoen.~ */ + imoen_bhaalchild_08
++ @163 /* ~Davon musst du ausgehen, fürchte ich.~ */ + imoen_bhaalchild_11
+ ~GlobalGT("SelfTalk","GLOBAL",0)~ + @164 /* ~Dass das Bhaalerbe nicht unbedingt mit der Seele verschwindet hat sich wohl bei mir gezeigt. Du musst dich auf alles gefasst machen.~ */ + imoen_bhaalchild_11
++ @165 /* ~Als mir Irenicus die Seele genommen hat... dieses schwarze Loch, dass sich da auftat - immerhin *wusste* ich, was sich da dagegen gewehrt hat und was mich jetzt mit dem Gefühl zurücklässt, meine Zähne in alles zu schlagen, was sich mir entegegenstellt.~ */ + imoen_bhaalchild_10
++ @166 /* ~Ich habe es in den Träumen üben können, mich gegen das Böse in mir zu stellen. Dich hat es völlig unvorbereitet erwischt.~ */ + imoen_bhaalchild_10
+ ~!GlobalGT("SelfTalk","GLOBAL",0)~ + @167 /* ~Oder die Bhaalessenz ist mit der Seele verloren gegangen und du bist zumindest davor sicher.~ */ + imoen_bhaalchild_09
++ @135 /* ~Darüber reden bringt nichts. Lass' uns unsere Seelen suchen.~ */ + imoen_bhaalchild_08


APPEND IMOEN2J

IF ~~ THEN imoen_bhaalchild_08
SAY @168 /* ~Ich spüre das Fehlen meiner Seele, <CHARAME>. Da ist ein schwarzes Loch in mir, und es will gefüllt werden... mit Grausamkeiten...~ */
= @169 /* ~Dass wir das zusammen durchstehen tröstet mich wirklich sehr, <CHARNAME>. Nicht, weil du dasselbe durchmachst. Sondern weil wir zusammen sind und ich weiß, dass ich das nicht alleine durchstehen muss.~ */
= @170 /* ~Hm. Und wo sind meine ganzen besonderen Fähigkeiten, bitte sehr? Also, bei den ganzen Nachteilen, die das Bhaalerbe so mit sich bringt, hätte ich wenigstens die gerne!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoA","GLOBAL",53)~ EXIT
END

IF ~~ THEN imoen_bhaalchild_09
SAY @172 /* ~Oh, das wäre eine Möglichkeit... Aber kein wirklicher Trost.~ */
IF ~~ THEN + imoen_bhaalchild_08
END
 
IF ~~ THEN imoen_bhaalchild_10
SAY @173 /* ~Hmm... Ich bin mir nicht sicher, dass mir das Trost spendet, <CHARNAME>. Das haut in die Kerbe, dass ich Sorge habe, dass jetzt alles, was du durchgemacht hast, ebenfalls bei mir ansteht, und durch den Verlust meiner Seele wahrscheinlich im Zeitraffer.~ */
++ @174 /* ~Es sollte keinen Trost spenden. Du musst noch mehr als ich aufpassen, dass du dich ohne Seele nicht verlierst. Genau das meinte ich.~ */ + imoen_bhaalchild_11
++ @175 /* ~Ich meinte, dass ich sehr gut verstehen kann, wie du dich fühlen musst.~ */ + imoen_bhaalchild_08
++ @162 /* ~Wir werden es sehen, Imoen.~ */ + imoen_bhaalchild_08
+ ~GlobalGT("SelfTalk","GLOBAL",0)~ + @164 /* ~Dass das Bhaalerbe nicht unbedingt mit der Seele verschwindet hat sich wohl bei mir gezeigt. Du musst dich auf alles gefasst machen.~ */ + imoen_bhaalchild_11
+ ~!GlobalGT("SelfTalk","GLOBAL",0)~ + @167 /* ~Oder die Bhaalessenz ist mit der Seele verloren gegangen und du bist zumindest davor sicher.~ */ + imoen_bhaalchild_09
++ @135 /* ~Darüber reden bringt nichts. Lass' uns unsere Seelen suchen.~ */ + imoen_bhaalchild_08
END

IF ~~ THEN imoen_bhaalchild_11
SAY @171 /* ~Ja, das fürchte ich auch!...~ */
IF ~~ THEN + imoen_bhaalchild_08
END


/* Rettung aus Spellhold */

IF WEIGHT #-1
~Global("C#IM_DialogueSoA","GLOBAL",54)~ THEN after_spellhold
SAY @121 /* ~Du glaubst gar nicht wie froh ich bin, dass ich nicht die ganze Zeit seit dem Kampf in der Promenade wieder in Irenicus' Händen war.
Und dass du schon so nah warst, als er mich wieder geholt hat. Dadurch wusste ich, dass du bald da sein würdest.~ */
++ @122 /* ~Ja, hat ja auch unheimlich viel gebracht.~ */ + after_spellhold_01
++ @123 /* ~Als das Teleportationstor sich hinter dem Verhüllten Magier und dir in Brynnlaw schloss, da wurde mir klar, dass wir zu früh die Verfolgung nach Irenicus aufgenommen hatten - dass wir zu schwach waren.~ */ + after_spellhold_01
++ @128 /* ~Ich würde dich niemals in den Händen dieses Verrückten lassen. Imoen. Niemals. In einem anderen Leben hätte er dich vielleicht schon in Athkatla wieder mitgenommen, und selbst dann wäre ich für dich gekommen.~ */ + after_spellhold_04
++ @124 /* ~Ich war ja eh schon auf dem Weg in die Feste.~ */ + after_spellhold_02
END

IF ~~ THEN after_spellhold_01
SAY @125 /* ~Heh, sei nicht so ungerecht zu dir. Irenicus ist eben ein wirklich starker Zauberer, und in der Feste hatte er glaube ich ideale Voraussetzungen für seine weiteren Experimente gefunden. Die meisten Apparate die er verwendet hat waren wohl auch vorher schon dort... (schauder)~ */
IF ~~ THEN + after_spellhold_03
END

IF ~~ THEN after_spellhold_02
SAY @126 /* ~Ja, genau das meine ich ja.~ */
IF ~~ THEN + after_spellhold_03
END

IF ~~ THEN after_spellhold_03
SAY @127 /* ~Doch, das war viel Wert, dass du schon so nah warst. Dadurch habe ich das besser ertragen, was er mit mir gemacht hat. Weil ich wusste, dass du bald da sein wirst.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoA","GLOBAL",55)~ EXIT
END

IF ~~ THEN after_spellhold_04
SAY @129 /* ~Das ist echt lieb, dass du das sagst.~ */
IF ~~ THEN + after_spellhold_03
END


/* Why is it so different for me? */

IF WEIGHT #-1
~Global("C#IM_DialogueSoA","GLOBAL",56)~ THEN imoen_bhaalchild_2
SAY @176 /* ~Ich frage mich immer noch, warum sich bei mir das Bhaalerbe so gar nicht gezeigt hat.~ */
= @177 /* ~Es ist eindeutig, dass bei dir die Bhaalessenz stärker war. Oder... aktiver? Nur Gorion weiß, wovor er dich gerettet hat. Die Harfner hielten dich wohl nicht ohne Grund für besonders gefährdet, und auch Sarevok wusste, auf wen er es abziehlt. Vielleicht ist da schon was in der Vergangenheit mit dir geschehen, weswegen sich bei dir das Erbe so viel früher und stärker gezeigt hat?~ */
++ @178 /* ~Hm, das ist gut möglich.~ */ + imoen_bhaalchild_2_01
++ @179 /* ~Leider habe ich trotz der Riesenbibliothek in Kerzenburg mich nie mit den Kindern Bhaals oder der Prophezeihung Alaundos beschäftigt. Ich habe keine Ahnung, ob die göttliche Essenz sich in unterschiedlichen Abkömmlingen unterschiedlich zeigt.~ */ + imoen_bhaalchild_2_01
++ @180 /* ~Trotzdem ist das, was du durchmachst, für dich härter, weil es komplett unvorbereitet war und du es unter sehr traumatisierenden Umständen erst erfahren hast.~ */ + imoen_bhaalchild_2_01
++ @181 /* ~Ich bin halt was ganz besonderes.~ */ + imoen_bhaalchild_2_03
++ @182 /* ~Wir werden sehen, was passiert. Lass uns weiterziehen, je eher wir unsere Seelen wiederhaben, desto besser.~ */ + imoen_bhaalchild_2_05
END

END //APPEND IMOEN2J

CHAIN
IF ~~ THEN IMOEN2J imoen_bhaalchild_2_01
@183 /* ~Es steht außer Frage, dass du schon mehr Aufmerksamkeit erregt hast, selbst bevor sich dein Erbe zeigte.~ */
== IMOEN2J IF ~GlobalGT("bd_plot","GLOBAL",0)~ THEN @211 /* ~Ich meine... hm. Die Aufmerksamkeit von Duke Jannah? Die war doch wohl nicht deswegen... Da ging es doch um mein magisches Talent!~ */
END
IF ~~ THEN + imoen_bhaalchild_2_04


APPEND IMOEN2J

IF ~~ THEN imoen_bhaalchild_2_02
SAY @184 /* ~Die Seele zu verlieren und im selben Moment erst von meinem Bhaalerbe zu erfahren mag für mich persönlich herber sein als für dich. Trotzdem!~ */
IF ~~ THEN + imoen_bhaalchild_2_04
END

IF ~~ THEN imoen_bhaalchild_2_03
SAY @185 /* ~War ja klar, dass diese Bemerkung von dir kommt, du Flitzpiepe.~ */
IF ~~ THEN + imoen_bhaalchild_2_01
END

IF ~~ THEN imoen_bhaalchild_2_04
SAY @186 /* ~Ich bin überzeugt davon, dass die Bhaalessenz bei dir stärker ausgeprägt ist. Du bist eben was spezielles, <CHARBAME>. Aber das wussten wir ja schon vorher. (lächelt).~ */
IF ~~ THEN + imoen_bhaalchild_2_06
END

IF ~~ THEN imoen_bhaalchild_2_05
SAY @187 /* ~Da hast du auf alle Fälle Recht.~ */
IF ~~ THEN + imoen_bhaalchild_2_06
END

IF ~~ THEN imoen_bhaalchild_2_06
SAY @188 /* ~Ich habe die Hoffnung, dass die Auswirkungen bei mir vielleicht nicht so heftig sein werden. Und bezüglich des Bhaalerbes konnte ich mir ja alles bei dir schonmal ansehen. Wär doch gelacht, wenn die gute Imoen das nicht gewuppt kriegt!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoA","GLOBAL",57)~ EXIT
END

END //APPEND


CHAIN
IF WEIGHT #-1
~Global("C#IM_DialogueSoA","GLOBAL",58)~ THEN IMOEN2J bhaalsiblings
@189 /* ~Sag mal, <CHARNAME>, sind wir jetzt eigentlich Geschwister?~ */
== IMOEN2J IF ~Race(Player1,HUMAN) 
!Race(Myself,HUMAN) !Race(Myself,HALF_ELF) !Race(Myself,HALFORC)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,HALF_ELF) 
!Race(Myself,HUMAN) !Race(Myself,HALF_ELF)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,ELF) !Race(Myself,ELF) !Race(Myself,HALF_ELF)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,DWARF) !Race(Myself,DWARF)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,HALFLING) !Race(Myself,HALFLING)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,GNOME) !Race(Myself,GNOME)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~Race(Player1,HALFORC) !Race(Myself,HALFORC)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J IF ~!Race(Player1,HUMAN)
!Race(Player1,HALF_ELF)
!Race(Player1,ELF)
!Race(Player1,DWARF)
!Race(Player1,HALFLING)
!Race(Player1,GNOME)
!Race(Player1,HALFORC)
OR(7) Race(Myself,HUMAN) Race(Myself,HALF_ELF) Race(Myself,ELF)
Race(Myself,DWARF) Race(Myself,HALFLING) Race(Myself,GNOME) Race(Myself,HALFORC)~ THEN @190 /* ~Guck nicht so! Ich bin mir bewusst, dass wir wohl kaum dieselbe Mutter hatten.~ */
== IMOEN2J @191 /* ~Ich meine so über die Bhaalessenz. Wir haben ja theoretisch denselben Vater, oder?~ */
END
++ @192 /* ~(neckend) Ich wusste es schon immer - ich kriege dich nie los, du kleine Klette.~ */ DO ~SetGlobal("C#IM_bhaalsiblings_02","LOCALS",1)~ + bhaalsiblings_02
++ @193 /* ~Genausowenig wie die Bhaalessenz vererbbar ist sind wir Geschwister im körperlichen Sinne, Imoen.~ */ DO ~SetGlobal("C#IM_bhaalsiblings_01","LOCALS",1)~ + bhaalsiblings_01
++ @194 /* ~Das ist ein schöner Gedanke, Imoen. Ja, ich denke, wir sind jetzt Geschwister.~ */ + bhaalsiblings_08
++ @195 /* ~Das ist eine gute Frage. Ich bin mir nicht sicher, wie das mit den Göttern und ihren Avataren funktioniert.~ */ + bhaalsiblings_07
++ @196 /* ~Scheint wohl so, oder?~ */ + bhaalsiblings_03
++ @197 /* ~Ich möchte über das Thema nicht mehr sprechen.~ */ + bhaalsiblings_05


APPEND IMOEN2J

IF ~~ THEN bhaalsiblings_01
SAY @198 /* ~Ja, das meinte ich auch nicht. Ich meinte so im spirituellen Sinn!~ */
+ ~Global("C#IM_bhaalsiblings_02","LOCALS",0)~ + @192 /* ~(neckend) Ich wusste es schon immer - ich kriege dich nie los, du kleine Klette.~ */ DO ~SetGlobal("C#IM_bhaalsiblings_02","LOCALS",1)~ + bhaalsiblings_02
++ @194 /* ~Das ist ein schöner Gedanke, Imoen. Ja, ich denke, wir sind jetzt Geschwister.~ */ + bhaalsiblings_08
++ @195 /* ~Das ist eine gute Frage. Ich bin mir nicht sicher, wie das mit den Göttern und ihren Avataren funktioniert.~ */ + bhaalsiblings_07
++ @196 /* ~Scheint wohl so, oder?~ */ + bhaalsiblings_03
++ @197 /* ~Ich möchte über das Thema nicht mehr sprechen.~ */ + bhaalsiblings_05
END

IF ~~ THEN bhaalsiblings_02
SAY @199 /* ~Nee, kriegst du auch nicht, <CHARNAME>! Was dachtest du denn? Haha!~ */
+ ~Global("C#IM_bhaalsiblings_01","LOCALS",0)~ + @193 /* ~Genausowenig wie die Bhaalessenz vererbbar ist sind wir Geschwister im körperlichen Sinne, Imoen.~ */ DO ~SetGlobal("C#IM_bhaalsiblings_01","LOCALS",1)~ + bhaalsiblings_01
++ @194 /* ~Das ist ein schöner Gedanke, Imoen. Ja, ich denke, wir sind jetzt Geschwister.~ */ + bhaalsiblings_08
++ @195 /* ~Das ist eine gute Frage. Ich bin mir nicht sicher, wie das mit den Göttern und ihren Avataren funktioniert.~ */ + bhaalsiblings_07
++ @196 /* ~Scheint wohl so, oder?~ */ + bhaalsiblings_03
++ @197 /* ~Ich möchte über das Thema nicht mehr sprechen.~ */ + bhaalsiblings_05
END

END //APPEND

CHAIN
IF ~~ THEN IMOEN2J bhaalsiblings_03
@200 /* ~Und Sarevok wäre unser "großer Bruder"...~ */
== IMOEN2J IF ~Gender(Player1,FEMALE)~ THEN @201 /* ~Ich hätte gerne einen großen Bruder gehabt. Aber natürlich nicht so einen!~ */
END
+ ~Gender(Player1,FEMALE)~ + @202 /* ~Wenn du's so siehst, haben wir wohl unzählige "große Brüder".~ */ + bhaalsiblings_04
+ ~!Gender(Player1,FEMALE)~ + @203 /* ~Wenn du's so siehst, haben wir wohl unzählige "Geschwister".~ */ + bhaalsiblings_09
++ @204 /* ~Wie du meinst, Imoen.~ */ + bhaalsiblings_06
++ @197 /* ~Ich möchte über das Thema nicht mehr sprechen.~ */ + bhaalsiblings_06

APPEND IMOEN2J

IF ~~ THEN bhaalsiblings_04
SAY @205 /* ~Ooh, you are right! I could just take a pick! There must be dozens, if not hundrets or even thousands of them!~ */
IF ~~ THEN + bhaalsiblings_09
END
 
IF ~~ THEN bhaalsiblings_05
SAY @206 /* ~Gut, dann nicht.~ */
IF ~~ THEN + bhaalsiblings_06
END

IF ~~ THEN bhaalsiblings_06
SAY @207 /* ~Still - calling you my <PRO_BROTHERSISTER> is something I'll enjoy very much! Now more than ever.~ */
IF ~~ THEN DO ~SetGlobal("C#IM_DialogueSoA","GLOBAL",59)~ EXIT
END

IF ~~ THEN bhaalsiblings_07
SAY @208 /* ~Aber der Gedanke ist lustig, oder?~ */
IF ~~ THEN + bhaalsiblings_03
END

IF ~~ THEN bhaalsiblings_08
SAY @209 /* ~Juhu! Ich habe einen Bruder!~ ~Juhu! Ich habe eine Schwester!~ */
IF ~~ THEN + bhaalsiblings_03
END

IF ~~ THEN bhaalsiblings_09
SAY @210 /* ~Hmm, uh. That thought is scary. I'll go with the "not physically related" theory.~ */
IF ~~ THEN + bhaalsiblings_06
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


/* Cow in the slums */

CHAIN
IF ~Global("C#IM_SlumCow","GLOBAL",1)~ THEN IMOEN2J cow_slums
@214 /* ~[Imoen]A cow! In the midst of the houses. I didn't expect to see them here.~ */
DO ~SetGlobal("C#IM_SlumCow","GLOBAL",2)~
== IMOEN2J IF ~GlobalGT("C#Q11_CowQuest","GLOBAL",0)~ THEN @215 /* ~[Imoen]Do you remember poor Mrs Thirsty and her cow in Baldur's Gate? What a hassle it was, with her cow inside the city. "No cows are allowed inside the city walls!"~ */
== IMOEN2J IF ~GlobalGT("ysTalkedToFarmer","GLOBAL",0)~ THEN @216 /* ~[Imoen]Unless you are the Seatower farmer, of course. Then you can have - two, three?~ */
== IMOEN2J @217 /* ~[Imoen]We are in Athkatla, the biggest city I've ever seen - much bigger than Baldur's Gate - and they keep cows on the streets of the slums. Do you think there will be other animals in other parts of the city? Elefants in the Promenade? Wolves in the Graveyard? Peacocks in the Temple District? (giggle)~ */
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @218 /* ~[Jaheira]This is not a zoo, Imoen. The cows belong to very poor people who can't afford to rent a willow outside of town. They are here for milk and also meat.~ */
== IMOEN2J IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @219 /* ~[Imoen]You really don't have to treat me like a child, Jaheira. I am well aware of that.~ */
== IMOEN2J @220 /* ~[Imoen]I feel a bit sorry for the cow... It belongs onto a green willow, not on the side of the dirty road. Well, it looks well enough. So, there is street cats and dogs, and apparently, also street cows.~ */
EXIT



