	***						  ***
	*** This whole mod is a spoiler to the BGII story ***	
	***						  ***



			               "Imoen 4 Ever"
			für BG:EE, BGII, BGT, BGII:EE, and EET
					von jastey 
					Version 1





DESCRIPTION

Die Imoen 4 Ever Mod wandelt Imoen in eine tatsächliche Weggefährtin für die ganze Baldurs Tor Saga. Die wichtigsten Story-Elemente wurden beibehalten, so dass sie temporär in SoD und BGII die Gruppe verlässt. Sie stößt dann aber danach schnell wieder zurück zum HC, so dass sie als durchgängige Begleiterin angesehen werden kann.

Achtung: Der SoD-Teil ist noch nicht fertig.

Hierbei wurden so viele vertonte Originalzeilen verwendet wie möglich, aber manche machten ohne Imoen vor Ort (Cutscnes in BGII) oder mit Imoen daneben (Korlasz' Dungeon in SoD) keinen Sinn mehr und mussten entfernt werden.

Die Mod ist mit SoD und allen BGII-Spielen kompatibel (BGII, BGT; BGII:EE, EET). Für die EET die Mod direkt in den EET-Spieleordner installieren.


BGII:
-----------------------------------
Diese Mofdifikation lässt Imoen in Kapitel 2 wieder zum HC zurückkehren, gleich nach dem ersten Gespräch mit Gaelan in den Slums. 
Der Spieler kann dann Kaptel 2 und 3 in Ruhe spielen und die BGII-Welt erkunden, ohne das Dilemma, dass man Quests machen möchte aber eigentlich schnell Imoen retten müsste. 
Nach der Ankunft in Brynnlaw wird Imoen dann tatsächlich entführt, und von da an geht das Spiel mit dem normalen BGII-Inhalt weiter.
Damit nicht plötzlich der Dieb in der Gruppe fehlt, wird in diesem Fall Yoshimo in Brynnlaw zu treffen sein. Er wartet in der Taverne.

Damit die Mod Sinn macht, wurden alle Dialogzeilen, die sich auf Imoens Verschwinden beziehen, entweder deaktiviert oder durch ein Erwähnen von Irenicus ersetzt.

Die Mod verändert auch die Szenen entsprechend, in denen der Spieler etwas über Irenicus' (und Imoens) Verbleib erfährt. 



SoD:
-----------------------------------
Mit diesem Tweak wird Imoen im Anfangsdungeon von SoD weiter normal in der Gruppe sein, wenn sie dies beim Übergang von BG:EE ebenfalls war. Sie wird dann wie alle anderen NPC auch die Gruppe nach dem Säubern der Gruft verlassen. In den darauf folgenden Szenen im Herzogspalast wurde ihre Rolle im Originalinhalt des Spiels nicht verändert. 
Imoen hat in Korlasz' Gruft einen PID ("Klickdialog"), der aus ihren originalen Dialogoptionen erstellt wurde. Zusätzlich wird sie über Herzogin Jannath sprechen und warum diese ein solches Interesse an ihr hat. Ihre Zeilen über magische Studien wird sie allerdings nur sagen, wenn sie bereits eine Magier Klasse hat. 
Nach dem Überfall im Herzogspalast wird sie zu verletzt sein, um den HC weiter zu begleiten. Ihr "leb wohl"-Dialog wurde entsprechend geändert, um diese gegenüber dem Originalspiel geänderte Motivation für ihr Zurückbleiben zu berücksichtigen. 

Wenn Imoen beim Endkampf gegen Sarevok nicht dabei war, wird sie wie im Originalspiel als nicht-aufnehmbarer NPC in Korlasz' Gruft anwesend sein.

Kompatibilitätshinweis für Modder: Die Imoen in der Gruppe nutzt den normalen Skriptnamen von Imoen, welcher auch der in SoD verwendete ist. 
Ihre beiden "finalen" Dialogstates sowohl in Korlasz' Gruft, als auch der letzte Dialogstate beim Verabschieden im Herzogspalast (BDIMOEN 85) sind von dieder Mod unverändert gelassen worden, damit andere Mods hier normal ihre Einmischdialoge einfügen können (z.B. um nach dem Besiegen von Korlaz dem HC auf Wiedersehen zu sagen oder Imoen im Herzogspalst zu verabschieden.)

Geplant ist, in späteren MOdversionen Imoen im ersten Kolaitionslager wieder zur Gruppe dazustoßen zu lassen, so dass sie bis zum gescripteten Ende von SoD als aufnehmbarer NPC zur Verfügung stehen wird.


INSTALLATION

Installationsreihenfolge: die Mod ist als Questmod anzusehen (nicht als Tweakmod), und sollte for allen NPC-Mods installiert werden, die Einmischdialoge in den Kapiteln 2 und 3 in SvA haben.

 
Extract the contents of the mod archive to your game's main directory. 
NOTE: For BG(II):EE it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.


Windows
On successful extraction, there should be an imoen_forever folder and a setup-imoen_forever.exe file in your game folder. To install, simply double-click setup-imoen_forever.exe and follow the instructions on screen.
Run setup-imoen_forever.exe in your game folder to reinstall or uninstall the mod.

There is no Mac OS X or Linux versions yet but if you know what you are doing you can use the mod folder and set it up.


NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 


If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads you found this mod in.



COMPATIBILITY

Note: this mod is to be treated as a quest mod, so install it before any NPC mods that could add interjections or reply options in chapters 2&3 in SoA to make sure the correct ones are patched by this mod.

Compatibility is a bit on the tough side with this mod since all mods assume Imoen is being taken at the Waukeen's Promenade fight and stays in Irenicus' grasps until the PC reaches Spellhold. 

The mod is:
-compatible with Almateria's Restauration Project "Extended Waukeen's Promenade Cutscene" (independent of installation order)

-compatible with Tweaks Anthology "Faster Chapter 1&2 Cut-Scenes & Dreams" (component "Convenience Tweaks and/or Cheats") if Tweak Anthology is installed after.

-technical compatible with Alternatives (independent of installation order) (reply options of Alternatives still refer to Imoen missing, though)

-compatible with Saerileth's route to Spellhold if installed *after* Saerileth mod.

---------
more notes for modders:
Crossmod variable: "C#IM_ImoenStays"

Global("C#IM_ImoenStays","GLOBAL",0) - Inside ID, Imoen gets kidnapped, Imoen is taken by the Coweld Wizards at the Promenade
Global("C#IM_ImoenStays","GLOBAL",1) - Imoen is back after the PC talked to Gaelan the first time (slums) - Imoen is spawned beside the PC when he leaves Gaelan's house. No missing Imoen here, Imoen is no longer kidnapped.
Global("C#IM_ImoenStays","GLOBAL",2) - Imoen gets kidnapped in Brynnlaw, Imoen is taken by Irenicus inside Spellhold, Imoen is kidnapped
Global("C#IM_ImoenStays","GLOBAL",3) - Imoen is back, "normal status": after Spellhold, Irenicus took her soul for Bodhi.

Compatibility with other mods:
Note: During the time until the player enters the slums for the first time, Imoen will be kidnapped like in the original game. I.e. there is time for any "OMG Imoen is gone" talks to happen while the player roams the Waukeens Promenade. I.e. dialogues / banters tagged with Global("C#IM_ImoenStays","GLOBAL",0) could happen here although the mod content will kick in later. 
This means: Global("C#IM_ImoenStays","GLOBAL",0) is NOT a check whether the mod is not installed, but a toggle of the game events when the mod content kicks in.

Trigger for NPC mod compatibility (triggers listed here are *additional* to whatever needs to be used to time the dialogues right):

Content that could fire with this mod or without (with the right timing):
-----
1. Dialogues or Banters *with* Imoen that should happen after she is freed in Spellhold that are general enough so they can also fire with this mod:
GlobalGT("Chapter",GLOBAL",3) !Global("C#IM_ImoenStays","GLOBAL",1)
(i.e. was kidnapped by Irenicus, soul taken, PC came to rescue her; will fire once Imoen is in party after Spellhold, should not fire in chapter 2 or 3 pre-Spellhold, should fire with or without this mod)

2. NPC talking / commenting *about* Imoen being taken pre-spellhold meant to fire before getting to her:
!Global("C#IM_ImoenStays","GLOBAL",1)
(could also fire in chapter 4 in Brynnlaw after she was kidnapped *with* this mod, should fire in chapters 2,3,4 (Brynnlaw) without this mod)


Content that should *not* fire with this mod:
-----
Global("C#IM_ImoenStays","GLOBAL",0)
(Dialogues or banters with or about Imoen that *explicitely* state that she was taken and held by Irenicus since the Promenade fight (should only fire without this mod. Please note that for BGT+EET, you need also e.g. GlobalGT("Chapter",GLOBAL",3) or they could fire in ID.)


Crossmod content for this mod:
-----
1. NPC commenting on Imoen being taken but released by the Cowled Wizards, to fire in chapter 2 or 3 or also at the neginning in Brynnlaw until Imoen is taken to Spellhold:
Global("C#IM_ImoenStays","GLOBAL",1)

NPC talk to Imoen after Spellhold and explicitely address the fact that she was taken twice, or that she was still taken by Irenicus although the Coweld Wizards let her go the first time he tried to take her with him at the Promenade fight: Global("C#IM_ImoenStays","GLOBAL",3)





CREDITS



TOOLS USED
IESDP (http://iesdp.gibberlings3.net/)

Infinity Explorer			http://infexp.sourceforge.net
Near Infinity				http://www.idi.ntnu.no/~joh/ni
WeiDU					http://www.weidu.org

Modding communities, tutorials and technical assistance:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/


LEGAL INFORMATION

=============================================================================
Imoen 4 Ever Mod for Baldur's Gate II © jastey. This mod is not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., the Wizards of the Coast, Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
=============================================================================
=============================================================================
REDISTRIBUTION NOTE: Imoen 4 Ever Mod was created to be freely enjoyed by all Baldur's Gate players and may not be sold.
=============================================================================



HISTORY

Version 1:
-removed "test symbol" from Imoen's protection spell against chunked death

Version Beta 0.2: 
-Added component "Imoen stays in group in Korlasz' Dungeon" for SoD 

alpha Versions, Beta 0.1: first public release

