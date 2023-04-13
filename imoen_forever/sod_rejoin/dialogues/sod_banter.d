
CHAIN
IF 
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Voghiln")
!StateCheck("Voghiln",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Voghiln") See(Player1)
Global("bd_VoghilnRomance4","GLOBAL",2)
Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN BDIMOENB imoen_safana_voghiln_sod_01
@0 /* [Imoen]<CHARNAME> is my friend, Voghiln. You playing with her heart like that - I didn't like this at all. Same for Safana. Pfeh! I won't talk to you ever again! */
DO ~SetGlobal("C#ImSoD_SafanaVoghilnBanter","GLOBAL",1)~
EXIT


/* Voghiln */
CHAIN
IF 
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Voghiln")
!StateCheck("Voghiln",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Voghiln") See(Player1)
Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)
Global("C#ImSoD_VoghilnBanter","GLOBAL",0)~ THEN BDIMOENB imoen_voghiln_sod_01
@1 /* [Imoen]Voghiln, you seem to know a lot about having fun. Any hints on how to dawdle away time in a war camp? */
DO ~SetGlobal("C#ImSoD_VoghilnBanter","GLOBAL",1)~
== BDVOGHIB @2 /* [Voghiln]Ho! I could sing a ballad of true love and dragons... */
== BDIMOENB @3 /* [Imoen]Uhm - no offence, but no. */
== BDVOGHIB @4 /* [Voghiln]We go and fetch some ale, ja? */
== BDIMOENB @5 /* [Imoen]Pffff, you think I need your advice to know that time passes jollier with a mug of ale? Forget I asked. */
== BDVOGHIB @6 /* [Voghiln]I also know lots of games. */
== BDIMOENB @7 /* [Imoen]Games! That sounds like fun. What kind? */
== BDVOGHIB @8 /* [Voghiln]We could play with cards. */
== BDIMOENB @9 /* [Imoen]Cards, and then what. I'm not in for complicated rules for a booooring card game. */
== BDVOGHIB @10 /* [Voghiln]Then we play dice. You throw them and... have to taking off something. */
== BDIMOENB @11 /* [Imoen]You mean like - taking off clothes? Ugh, not interested. No offence, Voghiln, but... */
== BDVOGHIB @12 /* [Voghiln]But it is fun if you see something from the other you didn't see yet, ja? Something hidden and secret - that's a good game, ja? */
== BDIMOENB @13 /* [Imoen]Yes, but... Wait, reveal something hidden and secret *does* sound good. How about the loser has to show something they kept hidden in their pockets? This way, I get to see everyone's trinkets! Now that sounds like fun! Hey, everyone! Voghiln and I want to play a *great* game soon. Who'll join us? */
EXIT


/* Safana (after BG1 NPC banter) Global("X#SAIM2","GLOBAL",1) */
CHAIN
IF WEIGHT #-1
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("%IMOEN_DV_SOD%") See(Player1)
Global("X#SAIM2","GLOBAL",1)
Class("%IMOEN_DV_SOD%",THIEF_ALL)
Global("C#ImSoD_SafanaBanter","GLOBAL",0)~ THEN BDSAFANB imoen_safana_sod_01_a
@14 /* [Safana]Imoen, you seem to have improved your lock-picking skill since last we travelled together, hmm? I am not sure there is still much I could teach you in this regard. */
DO ~SetGlobal("C#ImSoD_VoghilnBanter","GLOBAL",1)~
== BDSAFANB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @15 /* [Safana]The skill of unlocking mens' hearts, on the other hand... */
== BDIMOENB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @16 /* Nah, don't worry, Safana. I'll do it the "Imoen" way, you know. You stick to your "Safana" way, it suits you better, anyway. */
END
IF ~~ THEN EXIT
IF ~GlobalGT("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN EXTERN BDIMOENB imoen_safana_sod_01_c


/* no bg1npc banter run */
/* Safana (after BG1 NPC banter) Global("X#SAIM2","GLOBAL",0) */
CHAIN
IF WEIGHT #-1
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("%IMOEN_DV_SOD%") See(Player1)
Global("X#SAIM2","GLOBAL",0)
Class("%IMOEN_DV_SOD%",THIEF_ALL)
Global("C#ImSoD_SafanaBanter","GLOBAL",0)~ THEN BDSAFANB imoen_safana_sod_01_b
@17 /* [Safana]Imoen, you seem so focussed on unlocking locks... There is much more one can learn to unlock, my little darling, and I could teach you so much. Us girls should to stick together, don't you think? */
DO ~SetGlobal("C#ImSoD_SafanaBanter","GLOBAL",1)~
== BDIMOENB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @18 /* [Imoen]I have nothing against sticking together, but what where you thinking about? */
== BDSAFANB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @19 /* [Safana]Well, how about we start with the basics of women's skills - unlocking mens' hearts, gaining their favor and loaylaty - life can be so enjoyable with these little pleasantries. */
== BDIMOENB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @20 /* [Imoen]Ah, I think I'll pass. */
== BDSAFANB IF ~Global("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN @21 /* [Safana]You don't know what you are missing out on. */
END
IF ~~ THEN EXIT
IF ~GlobalGT("C#ImSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN EXTERN BDIMOENB imoen_safana_sod_01_c

CHAIN
IF ~~ THEN BDIMOENB imoen_safana_sod_01_c
@22 /* [Imoen]Safana, don't you *dare* offer me to "unlock mens' hearts" - not after what you did to <CHARNAME>! Stay away from me. */
== BDSAFANB @23 /* [Safana]Your loss, darling. */
EXIT


/* Edwin */
/* after PID */
CHAIN
IF WEIGHT #-1
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("%IMOEN_DV_SOD%") See(Player1)
Class("Edwin",MAGE_ALL)
Global("C#ImSoD_EdwinMageBanter","GLOBAL",0)~ THEN BDEDWINB imoen_edwin_mage_sod_01
@24 /* [Edwin]Hmm? What are you staring at me and waving your hand about? Are you mocking me? */
DO ~SetGlobal("C#ImSoD_EdwinMageBanter","GLOBAL",1)~
== BDIMOENB @25 /* [Imoen]No! Not at all. I am trying to repeat the moves you did to cast that spell. */
== BDEDWINB @26 /* [Edwin]Mimicking? *You* would think you could mimick me? (Well, what did I expect from a chimp.) */
== BDEDWINB IF ~!Class("%IMOEN_DV%",MAGE_ALL)~ THEN @27 /* [Edwin]And what good would that do? (This stupidity is unbelievable. Well, at least she chose the right person to take as an example.) */
== BDEDWINB IF ~Class("%IMOEN_DV%",MAGE_ALL)~ THEN @28 /* [Edwin]Be sure you do not hurt yourself or anyone else! (Or me. This stupidity is unbelievable. Well, at least she chose the right person to study from.) */
EXIT

/* Corwin */

CHAIN
IF WEIGHT #-1
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Corwin")
!StateCheck("Corwin",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("%IMOEN_DV_SOD%") See(Player1)
Global("C#ImSoD_CorwinBanter","GLOBAL",0)~ THEN BDCORWIB imoen_corwin_sod_01
@29 /* [Corwin]Imoen, do you have an idea what strings Duke Jannath set in motion to take you in as her apprentice? */
DO ~SetGlobal("C#ImSoD_CorwinBanter","GLOBAL",1)~
== BDIMOENB @30 /* [Imoen]Erm - no? */
== BDCORWIB @31 /* [Corwin]Reorganizing her schedule, vacating the room in the palace for you, paying for spell ingredients... */
== BDIMOENB @32 /* [Imoen]Look, I get that some people are disappointed that I ended the training early, but there is just some things I need to do, and accompanying <CHARNAME> on an adventure is one of these things. */
== BDCORWIB @33 /* [Corwin]I hope Roma won't turn out to be as short-sighted as you. I'd light a fire under her bottom if she'd ever turn such an opportunity down so thoughtlessly. */
== BDIMOENB @34 /* [Imoen]Yes, I'm sorry - mom. */
EXIT


/* Corwin #2 */
CHAIN
IF 
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Corwin")
!StateCheck("Corwin",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Corwin") See(Player1)
Global("C#ImSoD_CorwinBanter2","GLOBAL",0)~ THEN BDIMOENB imoen_corwin_sod_02
@35 /* [Imoen]Corwin, you must be very relieved that Sarevok's time over the Watch is over. */
DO ~SetGlobal("C#ImSoD_CorwinBanter2","GLOBAL",1)~
== BDCORWIB @36 /* [Corwin]You've no idea. */
== BDIMOENB @37 /* [Imoen]It must have been really unnevering, with your family and everything. Finally, Roma is safe again! */
== BDCORWIB @38 /* [Corwin]Safe? You noticed the state the city was in when we left? That we are marching against a warlady's army? */
== BDIMOENB @39 /* [Imoen]Aw - I meant from Angelo and the erosion of the Flaming Fist from within, the danger to the city from Sarevok - you know, *that*. But fine, be like that. */
EXIT


/* Dynaheir - follow up from BG1NPC */
CHAIN
IF 
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Dynaheir") See(Player1)
OR(2) Global("X#IMDY2","GLOBAL",1) Global("X#DYIM1","LOCALS",1)
Global("C#ImSoD_DynaheirBG1NPCBanter","GLOBAL",0)~ THEN BDIMOENB imoen_dynaheir_bg1npc_sod_01
@40 /* [Imoen]Dynaheir? You made a great secret out of it, but now I know why you came to the Sword Coast, anyway! Your special mission was to study children of Bhaal! M-hm, it's not a secret any more. */
DO ~SetGlobal("C#ImSoD_DynaheirBG1NPCBanter","GLOBAL",1)~ 
== BDDYNAHB @41 /* [Dynaheir]Indeed, Minsc and I came here to seek out offsping of the god of murder. */
== BDIMOENB @42 /* [Imoen]But how did you know <CHARNAME> would be one? Not even <PRO_HESHE> knew it for a long time! */
== BDDYNAHB @43 /* [Dynaheir]It was revealed to us when it was told <CHARNAME>. We didn't know it before, either. */
== BDIMOENB @44 /* [Imoen]Oh, so you *didn't* know <PRO_HESHE> is one? - Then why did you travel with <PRO_HIMHER> before that? */
== BDDYNAHB @45 /* [Dynaheir]<CHARNAME> had the courtesy to free me from the Gnoll's capture, Imoen. It was a friendly turn to support <PRO_HIMHER> afterwards. */
== BDIMOENB @46 /* [Imoen]Yes, I know that, of course. So it was a mere coincidence that <PRO_HESHE> turned out of be a Bhaalchild? */
== BDDYNAHB @47 /* [Dynaheir]It was, indeed. Luck was smiling on us that day. */
EXIT

/* Dynaheir - teach me magic */
CHAIN
IF WEIGHT #-1
~CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("%IMOEN_DV_SOD%") See(Player1)
Global("C#ImSoD_DynaheirBanter","GLOBAL",0)~ THEN BDDYNAHB imoen_dynaheir_sod_01
@48 /* [Dynaheir]Imoen, if thou come any closer I will be able to feel thy breath on my skin. */
DO ~SetGlobal("C#ImSoD_DynaheirBanter","GLOBAL",1)~
== BDIMOENB @49 /* [Imoen]Woops, sorry. I only wanted to see exactly what you did there with your spell book. */
== BDDYNAHB @50 /* [Dynaheir]It is not polite to get so close to a mage when she wants to deal with her spells. Is there anything in particualy thou art interested in? */
== BDIMOENB @51 /* [Imoen]Erm... no... I mean, yes, I'm interested in *everything*! */
== BDDYNAHB @52 /* [Dynaheir]Everything? Oh, thou mean about the general art of casting spells? */
== BDIMOENB @53 /* [Imoen]Exactly! Can you teach me? At least a little? */
== BDDYNAHB @54 /* [Dynaheir]I don't know how much I could teach thee, Imoen, but I am willing to try. But thou need to leave me my space and let me decide when I will have time for thee, alright? */
== BDIMOENB @55 /* [Imoen]Oooh, ab-so-lute-ly! I'll be right here. */
EXIT




