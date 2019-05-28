	***						  ***
	*** This whole mod is a spoiler to the BGII story ***	
	***						  ***



			               "Imoen 4 Ever"
				for BGII, BGT, BGII:EE, and EET
					by jastey 
					Version 1





DESCRIPTION

This mod gives back Imoen in Chapter 2 and 3, right after the first dialogue with Gaelan. The player can then explore and play all quests without any time pressure or moral dilemma about a friend needing rescue.
The original game content kicks in again after the arrival in Brynnlaw: Imoen will now be kidnapped, and Yoshimo will be available for recruitment in the Brynnlaw tavern.

All lines referring to Imoen being taken and needing rescue where replaced with references to Irenicus, instead.

The mod tries to use as many originally voiced lines as possible, but some had to be taken out because they didn't make any sense without Imoen being there. 



INSTALLATION

 
Extract the contents of the mod archive to your game's main directory. 
NOTE: For BGII:EE it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.


Windows
On successful extraction, there should be an imoen_forever folder and a setup-imoen_forever.exe file in your game folder. To install, simply double-click setup-imoen_forever.exe and follow the instructions on screen.
Run setup-imoen_forever.exe in your game folder to reinstall or uninstall the mod.

There is no Mac OS X or Linux versions yet but if you know what you are doing you can use the mod folder and set it up.


NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 


If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads you found this mod in.



COMPATIBILITY

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

alpha Versions: first public release

