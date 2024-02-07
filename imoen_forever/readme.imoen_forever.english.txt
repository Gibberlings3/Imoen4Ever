***						  ***
*** This whole mod is a spoiler to the BGII story ***	
***						  ***



                    "Imoen 4 Ever"
       for BG:EE, BGII, BGT, BGII:EE, and EET
                    by jastey 






DESCRIPTION

This mod aims at making Imoen a steady companion throughout the whole BG-Saga. Imoen-related story content is being considered, therefore Imoen will be out of party temporarily to reflect the most crucial original game events. This mod makes her rejoin the party after such incidents, so that she can be seen as an actual travel companion in SoD and BGII.

The mod tries to use as many originally voiced lines as possible, but some had to be taken out because they didn't make any sense without Imoen being there (BGII) or with Imoen actually being in the party (Korlasz' Crypt in SoD).

The mod is compatible with SoD and all BGII games: BGII, BGT, BGII:EE, EET. For EET, install the mod dirctly into your EET game folder.

The mod has 14 components. The first 5 are for BGII; for these, the 1st component is required to install any of the other, optional components (numbers 2 to 5).
The last components (numbers 6 to 13) are for SoD; for these, components 6 *or* 7 are required to install any of the other, optional components (for details refer to components' descriptions).
Component 14 offers an alternate portrait for Imoen by Acifer. It is optional and independent on any other I4E component.

Please note: For Imoen to react to game events in SoD accordingly, the main component (Tracking System, 2nd component) of "Road to Discovery" needs to be included in your install (independent of install order).


Components for BGII content:

1 I4E in BGII: Imoen Returns after Talking to Gaelan in Chapter 2 
-----------------------------------
This component gives back Imoen in Chapter 2 and 3, right after the first dialogue with Gaelan. The player can then explore and play all quests without any time pressure or moral dilemma about a friend needing rescue.
The original game content kicks in again after the arrival in Brynnlaw: Imoen will now be kidnapped.

All(most all) lines referring to Imoen being taken and needing rescue where replaced with references to Irenicus, instead.

Please note: For BGII(:EE), the Imoen inside Irenicus Dungeon is *not* the one you will get back. This is due to the original game behavior where Imoen rejoining in Spellhold is not the Imoen from ID, and there is nothing I4E could do here as the different creature files use different dialogue and script names (i.e. death variables which cannot be changed inside a running game).
For BGT/EET, Imoen will be continuous, like it is normal for these games.


2 I4E in BGII: Give Imoen Dialogue Content in SoA
-----------------------------------
This adds dialogue and interjections to Imoen.
In chapter 2&3 e.g. Imoen will react to the PC's dreams. After Spellhold she will talk about her abduction by Irenicus and her Bhaal heritage.

The component is compatible with Imoen Friendship mod v3.6 and higher.


3 I4E in BGII: Yoshimo Comes to Brynnlaw
-----------------------------------
This component will make Yoshimo appear in Brynnlaw when the group travelled there - he will have sneaked onto the same ship. He will only appear if he is not dead and was left standing somewhere.
Yoshimo will then be available for recruitment in the Brynnlaw tavern.
This option was added so the group has the chance to have a thief in the party after Imoen got abducted in Brynnlaw, and so the player has a chance to see Yoshimo's story without "wasting" another party slot.
There will be no changes to Yoshimo if he is in party when the group travels to Brynnlaw.


4 I4E in BGII: Give Imoen Protection Spell in Chapters 2 & 3
-----------------------------------
This component makes the protection spell against permanent death for Imoen optional. I originally added it to the main component because I thought Imoen needs to be protected against permanent death until I figured that it is not needed since e.g. EET manages without this for all other crucial NPCs, too.

This component puts the effects "disable permanent death", "Immunity to effect Imprisonment", "Immunity to effect Maze", and "Immunity to effect Disintegrate" onto Imoen when she returns in the slums in chapter 2. The effects are removed when she is found in Spellhold.

Despite the obvious advantage of Imoen being protected against permanent death in chapters 2&3, it is also a story element that is tied to the strange belt Imoen was wearing in Irenicus Dungeon - Irenicus wants her to be protected for his later plans.


5 I4E in BGII: Compatibility with Alternatives and Saerileth
-----------------------------------
This component patches the cutscenes of Alternatives and the Saerileth mod the player gets to see when travelling to Brynnlaw so it is not Imoen who is with Irenicus in Spellhold.
This component needs to be installed after the main component of Imoen4Ever and the Alternatives and/or Saerileth mods (or both) are installed.
The two mods are detected and patched individually of course.



Components for SoD content:

6 I4E in SoD: Imoen Remains in Group in Korlasz' Dungeon
-----------------------------------
With this tweak, Imoen will remain in your group in the beginning of SoD if she was in BG:EE. She will be a party member in Korlasz's crypt up until the point where all party members leave and the PC finds themselves in the Ducal Palace. This component does not change any other Imoen content for the further game. 
Inside Korlasz' Crypt, Imoen will have a PID (player initiated dialogue) out of her original game dialogue. She will talk about Duke Jannath taking an interest in her, but she will only talk about her magic studies if she was already dual-classed to T/M in BG:EE.
If Imoen was not in party in the transition from BG:EE to SoD, her presence in Korlasz' Crypt will play like in the original game with no changes. 

Compatibility note for modders: Inparty Imoen uses the same script name as the original SoD-Imoen. Her "final" dialogue states inside Korlasz' crypt (BDIMOEN 53 and BDIMOEN 54) are unchanged and can be used for mod NPCs to add their good-byes via I_C_T.
Inparty Imoen in Korlasz' Dungeon will use the Override script "C#STIMOE".

Compatibility with Transitions: if the mod Transitions from Lauriel is installed, none of the changes added by this component will show, because the dungeon is then accessible in "BG1 world", and Imoen in party then will just be the normal BG1 one without any SoD-specific dialogues.

Compatibility with EndlessBg1: This component is not compatible with EndlessBG1's component "Korlasz' Dungeon is in BG1". It is also not needed: with "Korlasz' Dungeon is in BG1" from EndlessBG1, Imoen will also remain in the group in Korlasz' Dungeon.


7 I4E in SoD: Imoen Returns to PC in First Coalition Camp (bd1000)
-----------------------------------
This component will make Imoen rejoin after the PC reaches the first Coalition camp (bd1000.are). Leave the camp to the northeast where Edwin appears for the first time. Imoen will appear and ask to rejoin. 
After that, she will behave like a normal SoD NPC: she can be left standing in the camp(s), will return to the camp(s) if told so upon kickout, and will move with the camp(s) according to the campaign's progress.
Imoen will be in group until the events after the celebration at the end. From there, the normal game content for Imoen will kick in again.

This component also adds the most crucial game reactions, but no further dialogue.

Compatibility note for modders: Inparty Imoen uses the same script name as the original SoD-Imoen. Her joined dialogue is BDIMOEN.dlg as well as her kickout dialogue (as it is for SoD originally). Her override script is bdimoens. 


8 I4E in SoD: Imoen Gives Better Reason to Stay Behind in Palace
-----------------------------------
This component alters Imoen's "good bye" dialogue the evening before the PC heads out against the crusade with her new motive to stay behind: After the attack, Imoen will be in no shape to accompany the PC because of the poison. 

Again, the last dialogue state in the Ducal Palace (BDIMOEN 85) stays unchanged in case mod NPCs want to interject (e.g. say hello/goodbye to Imoen after her recovery).


9 I4E in SoD: Play Cutscene With Imoen and Duke Jannath
-----------------------------------
In the original game, the PC can witness Imoen's training with Duke Jannath via a scrying pool in lich area of the dwarven dig (bd1200.are).
This component makes this a cutscene for the player when the PC is marching out of the City with the Flaming Fist.

This component requires component 7 "Imoen Returns to PC in First Coalition Camp" to be installed.


10 I4E in SoD: Give Imoen Dialogue Content in SoD Chapters 8-12
-----------------------------------
This component gives Imoen more reactions to game events, dialogues, and interjections, in addition to the basic ones that are included in component 7. I made this an optional component so players have the choice in case they do not agree to my characterization of Imoen.

There is also a small quest that plays out in the main coalition camp. Imoen needs to be a thief for the quest to trigger.

This component requires component 7 "Imoen Returns to PC in First Coalition Camp" to be installed.

Please note: For Imoen to react to game events in SoD accordingly, the main component (Tracking System, 2nd component) of "Road to Discovery" needs to be included in your install (independent of install order).


11 I4E in SoD: Imoen at the End of the Game Should be the One that Was in Party (SoD Only)
-----------------------------------
This component is for SoD only: at the end of SoD when the original game content kicks in, the Imoen coming to the prison exit will be the same that was in the group before.
This is useful if Imoen had some items etc. on her you want to swap before the final save or something. 


12 I4E in SoD: Unify Imoen's Portrait
-----------------------------------
This component comes with two options:
1. Use Imoen's SoD Portrait after Korlasz' Crypt
   This option will leave Imoen the BG1 portrait in Korlasz' Dungeon in case she is in party (via component 6), and will switch to her SoD portrait starting with the poison attack in the Palace.

2. Use Imoen's BG1 Portrait in all of SoD
   This option will leave Imoen's BG1 portrait for Imoen in all of SoD - also for the interactions with her when she is not in party.

Compatibility note: The portrait names used are the ones for the original BG1/SoD portraits.
Do not install either component if you are using a different portrait for Imoen or have other portrait mods installed that change Imoen's portrait, unless you know the mods are compatible.
This component will be overwritten by component 14 "14 I4E in all games: Alternate Imoen Portrait by Acifer" without technical problems if both are installed.


13 I4E in SoD: Imoen's chest moves with the campaign, too 
-----------------------------------
With this component, the contents of Imoen's chest in the 3rd floor of the palace will move along the camps as well - if Imoen joins the group in one of the camps. Imoen's items will be inside the tent next to the PC's chest in each camp in that case.

This component requires component 7 "Imoen Returns to PC in First Coalition Camp" to be installed.

As of version 11, compatibility with Another fine Hell is also provided if I4E is installed after AfH.


14 I4E in SoD: Give Imoen PID during chapters 8 to 12
-----------------------------------
This component adds player initiated dialogues (PID) to Imoen for chapters 8 to 12 after she returned to the group before the original ending starts.
It is a new component introduced in v11.

This component requires component 7 "Imoen Returns to PC in First Coalition Camp" to be installed.


15 I4E in all games: Alternate Imoen Portrait by Acifer 
-----------------------------------
This optional component installs an alternate Imoen portrait, by Acifer. 
The portrait will be used for Imoen in all parts (BG1, SoD, BGII) of the present game. For this, portrait naming of the original Imoen portraits will be used.
The component is optional and independent on any other I4E component.
This component is technicall compatible with component 12 "I4E in SoD: Unify Imoen's Portrait" but will overwrite it.
Other portrait mods for Imoen installed after this one will overwrite its content.



INSTALLATION

For installation order, the main BGII component of this mod is to be treated as a quest mod (not a tweak mod) and should be installed before any other NPC mods that add interjections in SoA chapter 2&3.
 
NOTE: If you've previously installed the mod, remove it before extracting a new version. To do this, uninstall all previously installed components and delete the mod folder and executables.
Make sure the game is not running while installing the mod.
When installing or uninstalling, do not close the DOS window by clicking on the X button! Instead, press the Enter key when instructed to do so.

If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads you found this mod in.

Notes to modding EE games
-----------------------------------
If you use SoD from GOG or Steam, you need to prepare your game with DLC Merger or modmerge before installing any mods:
argent77's DLC Merger
modmerge(if in doubt, use the DLC Merger instead)
For Enhanced Edition it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.
The EE games are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames.

Windows
-----------------------------------
Extract the contents of the mod archive to your game's main directory (BG:EE/SOD/BG2/BGT/BGII:EE/EET which contains the CHITIN.KEY file). On successful extraction, there should be an imoen_forever folder and a setup-imoen_forever.exe file in your game folder. To install, simply double-click setup-imoen_forever.exe and follow the instructions on screen.
Run setup-imoen_forever.exe in your game folder to reinstall, uninstall or otherwise change components.

Mac OS X
-----------------------------------
Extract the mod archive, then copy the contents of the folder into your game folder (BG:EE/SOD/BG2/BGT/BGII:EE/EET which contains the CHITIN.KEY file). If properly extracted, you should have a "imoen_forever" folder, setup-imoen_forever, and setup-imoen_forever.command in your game folder. To install, simply double-click setup-imoen_forever.command and follow the instructions on screen.
Run setup-imoen_forever.command in your game folder to reinstall, uninstall or otherwise change components.

Linux
-----------------------------------
Extract the contents of the mod to the folder of the game you wish to modify. Download the latest version of WeiDU for Linux from https://github.com/WeiDUorg/weidu/releases and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal and cd to your BG2 installation directory, run 'tolower' and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. If you're unsure, running tolower and choosing both options is the safe bet.
Run WeInstall imoen_forever in your game folder to install the mod. Then run wine BGMain.exe and start playing. 


COMPATIBILITY

Note: For installation order, the main BGII component of this mod is to be treated as a quest mod (not a tweak mod) and should be installed before any other NPC mods that add interjections in SoA chapter 2&3.

BGII compatibility:
--------------------------------------------
Compatibility is a bit on the tough side with this mod since all mods assume Imoen is being taken at the Waukeen's Promenade fight and stays in Irenicus' grasps until the PC reaches Spellhold. I hope more mods will be made compatible with Imoen 4 Ever in the near future.
In general: There should be no problem with mods that do not introduce talking NPCs in chapter 2 or 3, i.e. all mods with content that either do not include NPCs or where the content kicks in after going to Brynnlaw, e.g. NPC mods starting in the Underdark or ToB mods.

As of 09/01/20, the mod is compatible with the following mods that add dialogues with Imoen and/or content about Imoen in chapter 2&3:
    Afaaq, the Djinni Companion for BG2 and BG2:EE
    Ajantis NPC for BGII
    Almateria's Restauration Project "Extended Waukeen's Promenade Cutscene" (independent of installation order)
    Alternatives (independent of installation order as long as the compatibility component is installed after Alternatives)
    Ascalon's Breagar NPC
    Edwin Romance
    IEP Banters Mod (v5.7 or higher)
    Imoen Friendship (v3.6 or higher)
    NPC Strongholds as of v8.1
    Tweaks Anthology "Faster Chapter 1&2 Cut-Scenes & Dreams" (component "Convenience Tweaks and/or Cheats") if Tweak Anthology is installed after.
    Unfinished Business as of v28beta

I4E is also technically compatible with Saerileth's route to Spellhold if component 5 is installed *after* Saerileth mod (the mod still refers to Imoen being taken, though.)

Check for more compatible mods at the compatibility list here:
https://www.gibberlings3.net/forums/topic/30399-imoen-4-ever-compatibility-notes/

The mod is *not* compatible with my "Imoen is Stone" mod.

---------
more notes for modders with regard to BGII compatibility:
Crossmod variable: "C#IM_ImoenStays"

Global("C#IM_ImoenStays","GLOBAL",0) - Inside ID, Imoen gets kidnapped, Imoen is taken by the Cowled Wizards at the Promenade
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

NPC talk to Imoen after Spellhold and explicitely address the fact that she was taken twice, or that she was still taken by Irenicus although the Cowled Wizards let her go the first time he tried to take her with him at the Promenade fight: Global("C#IM_ImoenStays","GLOBAL",3)


SoD compatibility:
--------------------------------------------
The SoD parts of the mod should be considered as an NPC mod and should be installed after the following mods so the crossmod and compatibility content will be installed:
-The Boareskyr Bridge Scene (reason: Imoen reacts to the scene)
-jastey's SoD Tweak Pack (reason: some tweaks would "move" Imoen's interejctions to different dialogue lines than they were intended for)
Install order with Another fine Hell is unimportant but I'd recommend installing I4E after AfH so AfH can be bundled with the quest mods.

Modder compatibility notes for SoD:
For detection of Imoen4Ever, the component "Imoen remains in the Group in SoD" sets a variable Global("C#IM_ImoenInSoD","GLOBAL",1) in both Undercity area and Ducal Palace third floor (bd0103.bcs).
If your mod NPC talks in Korlasz' Crypt about Imoen having joined Duke Jannath, please check whether Imoen might be in group, first.

The component "Imoen returns to PC in first camp bd1000" sets a variable 
Global("C#IM_ImoenComesBackSoD","GLOBAL",1) also in both Undercity area and Ducal Palace third floor (bd0103.bcs) for detection whether Imoen returned to the PC.
This should be helpful in case Imoen came back but was not taken into party but is waiting in the camp.



NOTE TO GERMAN PLAYERS

The German version is consistent to the fan-made "Shai Huluds Text-Patch". This means, that names and terms could differ from the official German version shipped with the game. Install the fan made SoD translation for a consistent game experience.
Download Link: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/



CREDITS

Acifer - Imoen portrait, promotion picture, beta testing, mod name

Argent77 - coding help for non-destructive ADD_TRANS_TRIGGER patching

UnderstandMouseMagic: idea about Imoen staying behind in SoD because of her poison injury.

Translations:
------------

Lauriel - proof reading (English) (v4)

memory, Roberciiik - Polish (v9)

Raza, stn & Arcanecoast Team, Arkie - Russian (v11.3)

Shai Hulud - German (v11.3)



TOOLS USED
IESDP                      https://gibberlings3.github.io/iesdp/index.htm
Near Infinity              https://forums.beamdog.com/discussion/30593/new-versions-of-nearinfinity-available/p1
WeiDU                      https://github.com/WeiDUorg/weidu/releases/latest
                           (formerly: http://www.weidu.org)

Modding communities, tutorials and technical assistance:

Kerzenburgforum				https://baldurs-gate.de/index.php
The Gibberlings Three		        https://www.gibberlings3.net/
Pocket Plane Group			https://www.pocketplane.net/
Spellhold Studios			http://www.shsforums.net/

Further Links:
Road to Discovery:
https://www.gibberlings3.net/mods/other/road_to_discovery/

DLC Merger: 				https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game



LEGAL INFORMATION

=============================================================================
Imoen 4 Ever Mod for Baldur's Gate II © jastey. This mod is not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., the Wizards of the Coast, Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
=============================================================================
=============================================================================
REDISTRIBUTION NOTE: Imoen 4 Ever Mod was created to be freely enjoyed by all Baldur's Gate players and may not be sold.
=============================================================================



HISTORY

Version 11.4:
-Imoen should not give her BGII-Kickout dialogue in BG1 (for BGT).
-All lines should be traified.
-Typo corrections.
-Rephrased note about compatibility with Road to Discovery in the readme: RtD does not have to be installed before Ajantis Expansion.

Version 11.3:
-Russian version finished, by Arkie.
-One more dialogue added to SoD: Imoen will react to the second dream.
-All lines from tp2 should be in setup.tra.
-typo corrections and small text corrections.

Version 11.2:
-German version finished, by Shai Hulud.
-All strings should be traify-d.

Version 11.1:
-English version should not contain German string.

Version 11:
-SoD content finished.
-German proofread (v9), by Shai Hulud.

Version 10:
-new optional component (not dependent on the others): new alternate portrait for Imoen for all games, by Acifer.
-Imoen should not mention protection spell unless the component is installed; Irenicus mentioning it should be patched correctly.
-More reactions in BGII chapters 2&3: Imoen notices cows in the slums.
-One more reaction to item in SoD.

Version 9:
-"Imoen Remains in Group in Korlasz' Dungeon": Imoen will notify Duke Jannath about the Bhaal research found in Korlasz' Crypt. Research can be given Duke Jannath if Imoen didn't take them.
-"Imoen Remains in Group in Korlasz' Dungeon": added check for EndlessBG1's "Korlasz' Dungeon is in BG1" component (the components are not compatible and redundant with regard to Imoen remaining in party in Korlasz' Crypt).
-"Imoen gives better reason to stay behind in Palace": component is no longer dependent on component "Imoen remains in the group in Korlasz' dungeon" - neither for installation, nor ingame. Imoen will now always give the changed reason for her remaining in the palace. Coding syntax was optimized.

Version 8:
-new component: Imoen's chest moves with the campaign, too.
-one more interjection in crusader camp.
-added check to SoD kickout dialogue so it can't trigger in BGII.
-typo corrections.
-added globally unique LABELs to support Project Infinity.

Version 7.2:
-Imoen should initiate kickout dialogue in BGII

Version 7.1:
-completion of Russian version with changes of v7, by Arkie

Version 7:
-Ophyllis should reply correctly after Imoen's interjection
-Imoen should start her correct dialogue at the Sewer exit
-more interjections in SoD
-more lines altered from "searching for Imoen" to "going after Irenicus"
-typo corrections
-added UnderstandMouseMagic to credits
-Internal restructure: texts will be copied to "autotra" folder before used in game (and converting them to utf8 for EE) and using marker file so text conversion is done only once; Russian version now uses English setup.tra directly. 
-added check to tp2 to forbid installation after EET_End
-corrected entry for "Beregost_House08_L2" on cpmvars.tpas

Version 6:
-Added Russian version by Raza, stn & Arcanecoast Team
- Imoen should not die instead of Ophyllis after interjecting into his (last) dialogue
- Imoen should not loop her "arrival in hell" StringHead line. Her script action should not block the rest of the area script.
- Imoen's generic kickout dialogue should not block the original dialogue at the and of SoD.
- typo corrections

Version 5:
-Added SoD content
-Changed mod organization to more optional components
-More dialogues in BGII added (optional).
-Content compatibility with Imoen Friendship mod added.
-more reply options referring to Imoen missing disabled
-patching of reply options will be done for the relevant strings only (no destructive patching). Thank you to Argent77 for the coding help!

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

