	***						  ***
	*** This whole mod is a spoiler to the BGII story ***	
	***						  ***



			               "Imoen 4 Ever"
			for BG:EE, BGII, BGT, BGII:EE, and EET
					by jastey 






DESCRIPTION

This mod aims at making Imoen a steady companion throughout the whole BG-Saga. Imoen-related story content is being considered, therefore Imoen will be out of party temporarily to reflect the most crucial original game events. This mod makes her rejoin the party after such incidents, so that she can be seen as an actual travel companion in SoD (not finished yet) and BGII.

Note: The SoD part is not finished yet.

The mod tries to use as many originally voiced lines as possible, but some had to be taken out because they didn't make any sense without Imoen being there (BGII) or with Imoen catually being in the party (SoD).

The mod is compatible with SoD and all BGII games: BGII, BGT, BGII:EE, EET. For EET, install the mod dirctly into your EET game folder.

The mod has two optional components:

BGII:
-----------------------------------
This mod gives back Imoen in Chapter 2 and 3, right after the first dialogue with Gaelan. The player can then explore and play all quests without any time pressure or moral dilemma about a friend needing rescue.
The original game content kicks in again after the arrival in Brynnlaw: Imoen will now be kidnapped, and Yoshimo will be available for recruitment in the Brynnlaw tavern.

All(most all) lines referring to Imoen being taken and needing rescue where replaced with references to Irenicus, instead.

Please note: For BGII(:EE), the Imoen inside Irenicus Dungeon is *not* the one you will get back. This is due to teh original game behavior where imoen rejoining in Spellhold is not Imoen from ID, and there is nothing I4E could do here as the different creature files use different dialogue and script names (i.e. death variables which cannot be changed inside a running game).

For BGT/EET, Imoen will be continuous.

SoD:
-----------------------------------
With this tweak, Imoen will remain in your group in the beginning of SoD if she was in BG:EE. She will be a party member in Korlasz's crypt up until the point where all party members leave and the PC finds themselves in the Ducal Palace. From there, Imoen will take her role as in the original game. (Planned: let her rejoin in the first coalition camp.)
Inside Korlasz' Crypt, Imoen will have a PID (player initiated dialogue) out of her original game dialogue. She will talk about Duke Jannath taking an interest in her, but she will only talk about her magic studies if she was already dual-classed to T/M in BG:EE.
After the attack in the Ducal Palace, she will be in no shape to accompany the PC because of the poison. Her "good bye" dialogue the evening before the PC heads out against the crusade is changed with her new motive to stay behind accordingly. 

If Imoen was not in party in the end fight of BG:EE, her presence in Korlasz' Crypt will play like in the original game with no changes. (Planned: but she will rejoin at the first coalition camp.)

Compatibility note for modders: Inparty Imoen uses the same script name as the original SoD-Imoen (which is Imoen's script name). Both her "final" dialogue inside Korlasz's crypt, as well as the last dialogue state in the Ducal Palace (BDIMOEN 85) stay unchanged in case mod NPCs want to interject (e.g. say goodbye to the PC after defeating Korlasz or say hello/goodbye to Imoen after her recovery).





INSTALLATION

For installation order, this mod is to be treated as a quest mod (not a tweak mod) and should be installed before any other NPC mods that add interjections in SoA chapter 2&3.
 
Extract the contents of the mod archive to your game's main directory. The game will be recognized automatically and the appropriate content will be installed.

NOTE: 
-If you use SoD from GOG or Steam, you need to prepare your game with modmerge or Argent's DLC merger before installing any mods.
-For BG(II):EE it is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.


Windows
On successful extraction, there should be an imoen_forever folder and a setup-imoen_forever.exe file in your game folder. To install, simply double-click setup-imoen_forever.exe and follow the instructions on screen.
Run setup-imoen_forever.exe in your game folder to reinstall or uninstall the mod.

There is no Mac OS X or Linux versions yet but if you know what you are doing you can use the mod folder and set it up.


NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 


If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads you found this mod in.



COMPATIBILITY

Note: this mod is to be treated as a quest mod, so install it before any NPC mods that could add interjections or reply options to chapter 2&3 in BGII to make sure the correct ones are patched by this mod.

Compatibility is a bit on the tough side with this mod since all mods assume Imoen is being taken at the Waukeen's Promenade fight and stays in Irenicus' grasps until the PC reaches Spellhold. I hope more mods will be made compatible with Imoen 4 Ever in the near future.

The mod is:
-compatible with Almateria's Restauration Project "Extended Waukeen's Promenade Cutscene" (independent of installation order)

-compatible with Tweaks Anthology "Faster Chapter 1&2 Cut-Scenes & Dreams" (component "Convenience Tweaks and/or Cheats") if Tweak Anthology is installed after.

-technical compatible with Alternatives (independent of installation order) (reply options of Alternatives still refer to Imoen missing, though)

-compatible with Saerileth's route to Spellhold if installed *after* Saerileth mod.

In general: There should be no problem with mods that do not introduce talking NPCs in chapter 2 or 3, i.e. all mods with content that either do not include NPCs or where the content kicks in after going to Brynnlaw, e.g. NPC mods starting in the Underdark or ToB mods.

There will be a list of mods with content-wise compatibility in the mod's forum at G3.


The mod is *not* compatible with my "Imoen is Stone" mod.

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
GlobalGT("Chapter","GLOBAL",3) !Global("C#IM_ImoenStays","GLOBAL",1)
(i.e. was kidnapped by Irenicus, soul taken, PC came to rescue her; will fire once Imoen is in party after Spellhold, should not fire in chapter 2 or 3 pre-Spellhold, should fire with or without this mod)

2. NPC talking / commenting *about* Imoen being taken pre-spellhold meant to fire before getting to her:
!Global("C#IM_ImoenStays","GLOBAL",1)
(could also fire in chapter 4 in Brynnlaw after she was kidnapped *with* this mod, should fire in chapters 2,3,4 (Brynnlaw) without this mod)


Content that should *not* fire with this mod:
-----
Global("C#IM_ImoenStays","GLOBAL",0)
(Dialogues or banters with or about Imoen that *explicitely* state that she was taken and held by Irenicus since the Promenade fight (should only fire without this mod. Please note that for BGT+EET, you need also e.g. GlobalGT("Chapter","GLOBAL",3) or they could fire in ID.)


Crossmod content for this mod:
-----
1. NPC commenting on Imoen being taken but released by the Cowled Wizards, to fire in chapter 2 or 3 or also at the neginning in Brynnlaw until Imoen is taken to Spellhold:
Global("C#IM_ImoenStays","GLOBAL",1)

NPC talk to Imoen after Spellhold and explicitely address the fact that she was taken twice, or that she was still taken by Irenicus although the Coweld Wizards let her go the first time he tried to take her with him at the Promenade fight: Global("C#IM_ImoenStays","GLOBAL",3)





CREDITS

Acifer - promotion picture, beta testing

memory - Polish translation



TOOLS USED
IESDP					https://gibberlings3.github.io/iesdp/index.htm
Near Infinity				https://forums.beamdog.com/discussion/30593/new-versions-of-nearinfinity-available/p1
WeiDU					https://github.com/WeiDUorg/weidu/releases/latest
 					(formerly: http://www.weidu.org)

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

Version 4:
-detection variable whether Imoen will stay in the group in Korlasz' Dungeon should be applied to the correct script (cpmvar.tpas should be read in)
-English version proof read by Lauriel

Version 3:
-added note to readme about Imoen in ID not being the same as outside like in the original games (BGII+BGII:EE only)
-(EET) fixed bug in EET where Imoen's dialogue would hang in Korlasz's crypt
-Imoen's scenery comments in Korlasz' crypt should trigger correctly
-added imoen_forever.ini with mod info
-removed more instances to references of Imoen being kidnapped: fence standing next to temple of Ilmater, High merchant Logan of Trademeet, Samuel Thunderburp (owner of Five Flagons).
-added folder libiconv-1.9.2-1-src.7z with iconv licence info

Version 2:
-Polish version by memory
-BGII and SoD contents splitted into two optional components
-reply options Nalia, Hendak referring to Imoen missing disabled
-remark from Bodhi about captured Imoen removed
-Anomen will not refer to Imoen if she is in party (romance dialogue)
-SoD part installs correctly 
-typo corrections

Version 1:
-removed "test symbol" from Imoen's protection spell against chunked death

Version Beta 0.2: 
-Added component "Imoen stays in group in Korlasz' Dungeon" for SoD 

alpha Versions, Beta 0.1: first public release

