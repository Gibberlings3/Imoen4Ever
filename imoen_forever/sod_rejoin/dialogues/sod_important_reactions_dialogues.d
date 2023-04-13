/* NPC reactions to specific crucial knowledge about Caelar's plans */


APPEND bdimoen

/* 1.1 General reaction to Hephernaan is betraying Caelar: knowledge gained BEFORE the portal scene at Dragonspear basement; PC does NOT know that he is working for a fiend yet. */
IF WEIGHT #-1
~Global("C#IM_SoD_HephernaanBetrayal","GLOBAL",1)~ THEN hephernaan_betraying_caelar
SAY @15 /* [Imoen]What is this talk about Hephernaan betraying Caelar, <CHARNAME>? With all the crusade is doing, what *else* could there be Hephernaan would want to use it for? And how would he bring the crusaders to betray Caelar - they are *her* followers, not his! This doesn't make any sense. Or does it? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_HephernaanBetrayal","GLOBAL",2) SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* 1.2 + 1.3 General reaction to the knowledge that Hephernaan is working for a fiend */
/* for Imoen: will only trigger if Caelar's plans on freeing souls from Avernus is known. */
IF WEIGHT #-1
~Global("C#IM_SoD_HephernaanFiend","GLOBAL",1)~ THEN hephernaan_working_for_fiend
SAY @16 /* [Imoen]Hephernaan has a fiend master, huh? Well, Caelar surely took on an advisor who has *good connections* to Avernus. */
++ @17 /* [PC Reply](jesting) You are very right! Smart woman, this Caelar. */ + hephernaan_working_for_fiend_03
++ @18 /* [PC Reply]Hahaha! Thanks for your humor, I really needed the laugh. */ + hephernaan_working_for_fiend_01
++ @19 /* [PC Reply]We are facing a crusade who is planning on tearing a rift to Avernus, with an advisor of the warlady secretely working for a fiend who tries to cross over into our plane - and you are jesting about it? */ + hephernaan_working_for_fiend_02
++ @20 /* [PC Reply]Yes, and we will make sure this won't help him one bit. */ + hephernaan_working_for_fiend_04
END

IF ~~ THEN hephernaan_working_for_fiend_01
SAY @21 /* [Imoen]That's what your little Imoen is here for, no? Lighten up your frowny face! */
IF ~~ THEN + hephernaan_working_for_fiend_04
END

IF ~~ THEN hephernaan_working_for_fiend_02
SAY @22 /* [Imoen]Yeah, sorry, forgot to put on a frowny face like you! */
IF ~~ THEN + hephernaan_working_for_fiend_04
END

IF ~~ THEN hephernaan_working_for_fiend_03
SAY @23 /* [Imoen]I know, right? */
IF ~~ THEN + hephernaan_working_for_fiend_04
END

IF ~~ THEN hephernaan_working_for_fiend_04
SAY @24 /* [Imoen]If Hephernaan wants to help a fiend master to cross here, and is using Caelar and her crusade for it... It makes sense, though - this is really the only thing Hephernaan could betray Caelar with where he only needs to lean back and wait for Caelar and the crusaders to go through with their plan. Caelar will be betrayed by doing exactly what she was planning to do! */
= @25 /* [Imoen]This is hilarious! Wouldn't it be such a serious matter, I'd be tempted to say that I'd like to watch how it unfolds, and see Caelar's face when it does, heheh... But I know this is not a joking matter. We need to stop him. We need to stop all of them! We will, <CHARNAME>, right? Just like we did Sarevok? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_HephernaanFiend","GLOBAL",2)~ EXIT
IF ~GlobalGT("C#IM_SoD_AllForAun","GLOBAL",0) Global("C#IM_SoD_WhoBetraysWho","GLOBAL",0)~ THEN DO ~SetGlobal("C#IM_SoD_HephernaanFiend","GLOBAL",2)~ + who_betrays_who
END

/* When knowing about Hephernaan's betrayal and Caelar's uncle both */

IF ~~ THEN who_betrays_who
SAY @26 /* [Imoen]Wait - so Caelar is deceiving her followers by not telling them that her ulterior motive is to free her uncle - and Hephernaan is betraying Caelar *and* the crusaders because *his* ulterior motive is freeing a fiend master? I know we have to stop them, <CHARNAME>, but - I *really* need to get some popped corn soon! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_WhoBetraysWho","GLOBAL",1)~ EXIT
END


/* 4. Caelar is no child of Bhaal. */

/* 4.1 Conclusion that Caelar is no child of Bhaal: after PC reasons / concludes / speculates that Caelar / Hephernaan want PC's blood for [open portal to Avernus] AND hearing rumors that she is a child of Bhaal (or the portal would already be open / she wouldn't go for the PC.) */
IF WEIGHT #-1
~Global("C#IM_SoD_CaelarNoBhaalChild","GLOBAL",1)~ THEN caelar_no_bhaalchild_conclusion_1
SAY @27 /* [Imoen]<CHARNAME> - if the crusade wants to open the portal below Dragonspear Castle, and it can be opened by blood of a Bhaalchild, and Caelar is rumored to be one - does it mean it's already open?! */
++ @28 /* [PC Reply]No, I am sure we'd have noticed if it were. */ + caelar_no_bhaalchild_conclusion_01
++ @29 /* [PC Reply]I don't think so. */ + caelar_no_bhaalchild_conclusion_03
++ @30 /* [PC Reply]Maybe... */ + caelar_no_bhaalchild_conclusion_02
++ @31 /* [PC Reply]No need to speculate about any of it, Imoen. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_01
SAY @32 /* [Imoen]Right, the crusaders are preparing and ready to descend into Avernus. They would all move to Dragonspear Castle if it would be open. */
++ @33 /* [PC Reply]I agree. I guess it's not open then. */ + caelar_no_bhaalchild_conclusion_03
++ @31 /* [PC Reply]No need to speculate about any of it, Imoen. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_02
SAY @34 /* [Imoen]But wouldn't the crusaders act differently if it were? All move to the Castle etcetera. They would need every manpower - to descent as well as protect the portal from outcoming fiends, no? */
++ @33 /* [PC Reply]I agree. I guess it's not open then. */ + caelar_no_bhaalchild_conclusion_03
++ @31 /* [PC Reply]No need to speculate about any of it, Imoen. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_03
SAY @35 /* [Imoen]Question is - why not? They hold the Castle, they do not want to waste time, do they? */
++ @36 /* [PC Reply]I really don't know why they would do what they are doing, Imoen. The logic of the crusade left me long ago. */ + caelar_no_bhaalchild_conclusion_04
++ @37 /* [PC Reply]Maybe they are missing something to open it. Or Caelar's blood is not enough to open the portal? */ + caelar_no_bhaalchild_conclusion_05
++ @31 /* [PC Reply]No need to speculate about any of it, Imoen. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_04
SAY @38 /* [Imoen]Yeah, who knows what's going on with them. I surely don't. */
++ @37 /* [PC Reply]Maybe they are missing something to open it. Or Caelar's blood is not enough to open the portal? */ + caelar_no_bhaalchild_conclusion_05
++ @31 /* [PC Reply]No need to speculate about any of it, Imoen. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_05
SAY @39 /* [Imoen]Ooh. They came after you so many times - the portal is not open yet - because Caelar isn't a child of Bhaal! It does make sense, no? */
++ @40 /* [PC Reply]It makes a lot of sense. I think this is the answer to your question. */ + caelar_no_bhaalchild_conclusion_06
++ @41 /* [PC Reply]Or maybe not. We don't know. Let's move on. */ + caelar_no_bhaalchild_conclusion_07
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_06
SAY @42 /* [Imoen]That would be two good things - the portal is not open, and Caelar is not your half-sister! I like this. */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_CaelarNoBhaalChild","GLOBAL",2)
SetGlobal("C#SoD_CaelarNoBhaalChild","GLOBAL",1) //cross-mod variable: prevent other NPCs to come with the same conclusion.
SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

IF ~~ THEN caelar_no_bhaalchild_conclusion_07
SAY @43 /* [Imoen]Well, alright. */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_CaelarNoBhaalChild","GLOBAL",-1) 
SetGlobal("C#SoD_CaelarNoBhaalChild","GLOBAL",1) //cross-mod variable: prevent other NPCs to come with the same conclusion.
~ EXIT
END

/* 4.2 Reaction to the knowledge that Caelar is no Bhaalchild. */
/* happens after Boareskyr bridge scene */
IF WEIGHT #-1
~Global("C#IM_SoD_CaelarNoBhaalChild","GLOBAL",3)~ THEN caelar_no_bhaalchild
SAY @44 /* [Imoen]Caelar is no half-sister of my <CHARNAME>, mh-mh! Because not all evil overlords are suddenly Bhaalchildren, no, <PRO_SIRMAAM>! <CHARNAME> has nothing to do with this! Go and look for another bogeyman, you folks! Shoo, shoo! */
++ @45 /* [PC Reply]Thanks, Imoen. I fear Caelar's missing heritage will have little influence on how they see me, though. */ + caelar_no_bhaalchild_02
++ @46 /* [PC Reply]Anyone specific you are talking to? */ + caelar_no_bhaalchild_01
++ @47 /* [PC Reply]Let them talk, Imoen. */ + caelar_no_bhaalchild_01
END

IF ~~ THEN caelar_no_bhaalchild_01
SAY @48 /* [Imoen]It stresses me when they talk about you behind your back! If it's things that are not true. I mean - I don't mind praises - especially if they include tales about curageous and intelligant Imoen, always on your side!... */
IF ~~ THEN + caelar_no_bhaalchild_03
END

IF ~~ THEN caelar_no_bhaalchild_02
SAY @49 /* [Imoen]Oh, I am sure Caelar being a child of Bhaal would have made your standing worse! */
IF ~~ THEN + caelar_no_bhaalchild_01
END

IF ~~ THEN caelar_no_bhaalchild_03
SAY @50 /* [Imoen]People are so full of presumptions... and they forget so easily. Hellooo - Hero of Baldur's Gate here, anyone remembering? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_CaelarNoBhaalChild","GLOBAL",4)
SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END


/* 5. Caelar wants to open a portal to Avernus. */

/* 5.1 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND Hephernaan is working for a fiend. */
/* Conclusions are only for smart NPCs. Use this dialogue template only if you also activated the script blocks for it. */
IF WEIGHT #-1
~Global("C#IM_SoD_PortalConclusion","GLOBAL",1)~ THEN 1_conclusion_portal
SAY @0 /* [Imoen]Wait a minute, if Caelar and her people want to free the trapped souls from Avernus. And Hephernaan works for a Fiend Master who wants to cross over here - then they both work to open a direct connection between the planes, a portal! */ /* ~Sagt mal, wenn Caelar und ihre Leute die gefangenen Seelen aus Avernus befreien wollen. Und Hephernaan für einen Fiend Master arbeitet, der hierher übertreten will - dann arbeiten beide daran, eine direkte Verbindung zwischen den Ebenen zu öffnen, ein Portal!~ */
IF ~~ THEN DO ~SetGlobal("C#SoD_PortalConclusion_1","GLOBAL",1)~ + conclusion_portal_01
END

/* 5.2 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND that there is a dormant rift below Dragonspear Castle. */
/* Conclusions are only for smart NPCs. Use this dialogue template only if you also activated the script blocks for it. */
IF WEIGHT #-1
~Global("C#IM_SoD_PortalConclusion","GLOBAL",2)~ THEN 2_conclusion_portal
SAY @1 /* [Imoen]Wait a minute, if Caelar and her people want to free the trapped souls from Avernus. And since there is a sleeping portal under Dragonspear Castle - then they are working on opening the portal as a direct path between the planes! */ /* ~Sagt mal, wenn Caelar und ihre Leute die gefangenen Seelen aus Avernus befreien wollen. Und da ein schlafendes Portal unter der Drachenspeerfeste ist - dann arbeiten die doch daran, das Portal als direkten Weg zwischen den Ebenen zu öffnen!~ */
IF ~~ THEN DO ~SetGlobal("C#SoD_PortalConclusion_2","GLOBAL",1)~ + conclusion_portal_01
END

/* 5.3 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND that the PC's blood is needed to open the portal. */
/* Conclusions are only for smart NPCs. Use this dialogue template only if you also activated the script blocks for it. */
IF WEIGHT #-1
~Global("C#IM_SoD_PortalConclusion","GLOBAL",3)~ THEN 3_conclusion_portal
SAY @2 /* [Imoen]Wait a minute, if Caelar and her people want to free the trapped souls from Avernus. And since there is a sleeping portal under Dragonspear Castle that can be opened with Bhaal blood, and we know that Caelar has been trying to get you and your blood - then they are working on opening the portal as a direct path between the planes! */ /* ~Sagt mal, wenn Caelar und ihre Leute die gefangenen Seelen aus Avernus befreien wollen. Und da ein schlafendes Portal unter der Drachenspeerfeste ist, dass mit Bhaalblut geöffnet werden kann, und wir wissen, dass Caelar versucht hat, an Euch und Euer Blut zu kommen - dann arbeiten die doch daran, das Portal als direkten Weg zwischen den Ebenen zu öffnen!~ */
IF ~~ THEN DO ~SetGlobal("C#SoD_PortalConclusion_3","GLOBAL",1)~ + conclusion_portal_01
END

IF ~~ THEN conclusion_portal_01
SAY @3 /* [Imoen]There's no other way! Is there? */ /* ~Anders geht es ja gar nicht! Oder?~ */
++ @4 /* [PC Reply]I agree with you there. */ /* ~I agree with you there.~ */ + conclusion_portal_02
++ @5 /* [PC Reply]We don't know that. Even if - I don't care. We'll see how it all plays out. */ /* ~We don't know that. Even if - I don't care. We'll see how it all plays out.~ */ + conclusion_portal_03
END

IF ~~ THEN conclusion_portal_02
SAY @6 /* [Imoen]Yes, because I'm not that stupid, am I! I also see the connections. - Which, by the way, I don't like at all, <CHARNAME>. Not at all! */ /* ~Ja, ich bin nämlich gar nicht so doof, nicht whar! Ich sehe auch die Zusammenhänge. - Die mir übrigens gar nicht gefallen, <CHARNAME>. Gar nicht!~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalConclusion","GLOBAL",4)
SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

IF ~~ THEN conclusion_portal_03
SAY @7 /* [Imoen]Alright... We'll stop them before anything could happen, anyway, right? */ /* ~Alright... We'll stop them before anything could happen, anyway, right?~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalConclusion","GLOBAL",-1)~ EXIT
END


/* 5.4 General reaction: Caelar wants to open a portal to Avernus. (No reaction to needed blood, PC does not know yet.) BEFORE portal scene at Dragonspear Castle */
IF WEIGHT #-1
~Global("C#IM_SoD_PortalAvernus","GLOBAL",1)~ THEN knows_avernus_portal
SAY @8 /* [Imoen]If they really manage to open the portal, <CHARNAME>. Imagine that! Powerful magic - bright colors - glaring lightning! And then there are a whole lot of demons rushing to this side, and in front of them are the crusaders, and.... Ooh, this is horrible! */ /* ~Wenn die wirklich schaffen, das Portal zu öffnen, <CHARNAME>! Stellt Euch das mal vor! Mächtige Magie - leuchtende Farben - grelle Blitze! Und dann sind da ganz viele Dämonen, die auf diese Seite drängen, und davor stehen die Kreuzzügler, und... Ooh, this is horrible!~ */
++ @9 /* [PC Reply]It is, indeed. We need to stop them before it is to late! */ /* ~It is, indeed. We need to stop them before it is to late!~ */ + knows_avernus_portal_03
++ @10 /* [PC Reply]This can't happen, Imoen. The sake of these lands depend on it. */ /* ~This can't happen, Imoen. The sake of these lands depend on it.~ */ + knows_avernus_portal_04
++ @11 /* [PC Reply]"Powerful magic - bright colors - glaring lightning"? Sounds like you would enjoy watching this. */ /* ~"Mächtige Magie - leuchtende Farben - grelle Blitze"? Sounds like you would enjoy watching this.~ */ + knows_avernus_portal_01
++ @12 /* [PC Reply]Haha, yes - right in their faces. */ /* ~Haha, yes - right in their faces.~ */ + knows_avernus_portal_02
END

IF ~~ THEN knows_avernus_portal_01
SAY @13 /* [Imoen]I'd never say no to a display of powerful magic, <CHARNAME>, you know this! Well - preferably not if it bears the danger of hurting us, of course. And what about the crusaders! */ /* ~I'd never say no to a display of powerful magic, <CHARNAME>, you know this! Well - preferably not if it bears the danger of hurting us, of course. And what about the crusaders!~ */
IF ~~ THEN + knows_avernus_portal_05
END

IF ~~ THEN knows_avernus_portal_02
SAY @51 /* [Imoen]That's what I meant! This is not good! */
IF ~~ THEN + knows_avernus_portal_05
END

IF ~~ THEN knows_avernus_portal_03
SAY @52 /* [Imoen]We do - and what about the crusaders! */
IF ~~ THEN + knows_avernus_portal_05
END

IF ~~ THEN knows_avernus_portal_04
SAY @53 /* [Imoen]The land - and what about the crusaders! */
IF ~~ THEN + knows_avernus_portal_05
END

IF ~~ THEN knows_avernus_portal_05
SAY @54 /* [Imoen]They think they are rescuing their loved ones, but it's possible they'll be trapped between the coalition on the one side and fiends on the other! <CHARNAME>, this thought is so sad! */
++ @55 /* [PC Reply]It is what they *want*, apparently. My sympathy is limited. */ + knows_avernus_portal_06  
++ @56 /* [PC Reply]I hope they will! I don't see why *we* would have to fight the first wave on our own, I really don't! */ + knows_avernus_portal_06
++ @57 /* [PC Reply]Noone deserves such a fate, I agree with you. */ + knows_avernus_portal_09
++ @58 /* [PC Reply]Oh, I think this sight would give me a little moment of satisfaction, to be honest. */ + knows_avernus_portal_06
++ @59 /* [PC Reply]You mean we'll not only save the lands but also the crusaders from their own stupidity? There is some truth to that, indeed. */ + knows_avernus_portal_08
++ @60 /* [PC Reply]For whatever reason, let's make sure this won't happen. */ + knows_avernus_portal_07
END

IF ~~ THEN knows_avernus_portal_06
SAY @61 /* [Imoen]Well, alright - thinking about it, I guess they had it coming. */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalAvernus","GLOBAL",2)~ EXIT
END

IF ~~ THEN knows_avernus_portal_07
SAY @62 /* [Imoen]That's what we will do, right? We are stopping the bad guys! That's us! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalAvernus","GLOBAL",2)~ EXIT
END

IF ~~ THEN knows_avernus_portal_08
SAY @63 /* [Imoen]Ich hab aber so ein Gefühl, dass die uns das nicht leicht machen werden... */
IF ~~ THEN + knows_avernus_portal_07
END

IF ~~ THEN knows_avernus_portal_09
SAY @64 /* [Imoen]Well, thinking about it, I guess they had it coming... But we will try and stop it, right? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalAvernus","GLOBAL",2)~ EXIT
END

/* 7. Caelar needs the PC's blood to open the portal. */

/* 7.1 Conclusion that Caelar needs the PC's blood to open the portal: if Caelar needs Bhaalblood AND PC knows that she is no Bhaalspawn herself. */
/* Conclusions are only for smart NPCs. Use this dialogue template only if you also activated the script blocks for it. */
IF ~Global("C#IM_SoD_PortalPCBloodConclusion","GLOBAL",1)~ THEN 1_portal_needs_pc_blood_conclusion
SAY @65 /* [Imoen]So, if Caelar needs divine blood but is no Bhaalchild herself - and has a dormant portal to Avernus that could be opened with it - and want to enter Avernus with her crusade... */
++ @66 /* [PC Reply]Yes, I know. She wants my blood to open the portal. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_01
++ @67 /* [PC Reply]It's a real mystery how all this is connected, isn't it. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_01
++ @68 /* [PC Reply]Whatever, Imoen. We will see what happens. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_02
END

/* 7.2 Conclusion that Caelar needs the PC's blood to open the portal: if Caelar needs Bhaalblood AND wanted to kidnap the PC. */
IF ~Global("C#IM_SoD_PortalPCBloodConclusion","GLOBAL",2)~ THEN 2_portal_needs_pc_blood_conclusion
SAY @69 /* [Imoen]So, Caelar is trying to get your blood - and has a dormant portal to Avernus that can be opened with it - and want to enter Avernus with her crusade... */
++ @66 /* [PC Reply]Yes, I know. She wants my blood to open the portal. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_01
++ @67 /* [PC Reply]It's a real mystery how all this is connected, isn't it. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_02
++ @68 /* [PC Reply]Whatever, Imoen. We will see what happens. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",1)~ //cross-mod variable: prevent other NPCs to come with the same conclusion. 
+ portal_needs_pc_blood_conclusion_03
END

IF ~~ THEN portal_needs_pc_blood_conclusion_01
SAY @70 /* [Imoen]Well, we'll make sure she won't get to your blood so she can't open the portal! Piece of cake! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalPCBloodConclusion","GLOBAL",3)
SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",3) 
//SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",2) will be set by script
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

IF ~~ THEN portal_needs_pc_blood_conclusion_02
SAY @71 /* [Imoen]Uhm... no? It's pretty clear, I think. Oh - you were jesting? */
++ @66 /* [PC Reply]Yes, I know. She wants my blood to open the portal. */ + portal_needs_pc_blood_conclusion_01
++ @68 /* [PC Reply]Whatever, Imoen. We will see what happens. */ + portal_needs_pc_blood_conclusion_02
END

IF ~~ THEN portal_needs_pc_blood_conclusion_03
SAY @72 /* [Imoen]Yes, I guess we will! */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalPCBloodConclusion","GLOBAL",-1)~ EXIT
END


/* 7.3 + 7.4 General reaction to the knowledge that Caelar needs the PC's blood to open the portal */
/* Knowledge is gained before Hephernaan's betrayal/going to Avernus */
IF WEIGHT #-1
~Global("C#IM_SoD_PortalPCBlood","GLOBAL",1)~ THEN portal_needs_pc_blood
SAY @73 /* [Imoen]So, your blood opens portals now, hmm? Maybe we should bottle it up and sell it. We could make a fortune! */
++ @74 /* [PC Reply]Imoen! Do you think this is funny? */ + portal_needs_pc_blood_01
++ @75 /* [PC Reply]I'd prefer not being the cause for open portals to Avernus, thanks very much. */ + portal_needs_pc_blood_03
++ @76 /* [PC Reply]"Bhaalchild blood! It will give you a hell of a time!" - Yes, sounds like a *great* idea, Imoen. */ + portal_needs_pc_blood_04
++ @77 /* [PC Reply]We could keep it in mind - you never know. */ + portal_needs_pc_blood_02
++ @78 /* [PC Reply]Let's hope no bargain hunters get the idea. */ + portal_needs_pc_blood_03
END

IF ~~ THEN portal_needs_pc_blood_01
SAY @79 /* [Imoen]Do you see me laughing? */
IF ~~ THEN + portal_needs_pc_blood_02
END

IF ~~ THEN portal_needs_pc_blood_02
SAY @80 /* [Imoen]I'm all serious! Had we only known this when Ophyllis lost all the gold! Haha! */
IF ~~ THEN + portal_needs_pc_blood_03
END

IF ~~ THEN portal_needs_pc_blood_03
SAY @81 /* [Imoen]Nah, I was jesting, of course. But not about this - I let noone hurt my <CHARNAME>. No matter what for. Do you hear? NOONE! And I'll start right with Caelar - bah, all her talking about doing the right thing and being a hero - and all she wanted was to lure you into a trap. */
IF ~~ THEN DO ~SetGlobal("C#IM_SoD_PortalPCBlood","GLOBAL",2)~ EXIT
END

IF ~~ THEN portal_needs_pc_blood_04
SAY @82 /* [Imoen]Heh! 3 for the price of 4! */
IF ~~ THEN + portal_needs_pc_blood_02
END
END //APPEND

/* 8. Reaction to betrayal at the portal */
I_C_T BDHEPHER 16 C#IM_SoDPortalScene
== bdimoen IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @83 /* [Imoen]He hurt you! That scoundrel just wait until we catch up with him! */ DO ~RealSetGlobalTimer("C#IM_DialogueTimer","GLOBAL",300)~
END

APPEND bdimoen
/* 9. Incident at Boareskyr Bridge. */

/* 9.1 Quick reaction line: will only show if The Boareskyr Bridge Scene mod is not installed / didn't run. Uses the same line! -> crossmod with TBBS is in the tp2. */
IF WEIGHT #-1
~Global("C#IM_SoDBoareskyrBridgeScene","GLOBAL",1)
Global("C#IM_SoD_c#stff24_10","GLOBAL",0)~ THEN bhaal_bridge
SAY @14 /* [Imoen]<CHARNAME>! Are you alright? */ /* ~<CHARNAME>! Are you alright?~ */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDBoareskyrBridgeScene","GLOBAL",2)~ EXIT
END

/* 9.2 General dialogue after bridge incident. Will run after timer. (True also in case The Boareskyr Bridge mod is installed and the above quick reaction line didn't run.) Tthis follow-up dialogue triggers after timer is run. */
IF WEIGHT #-1
~Global("C#IM_SoDBoareskyrBridgeScene","GLOBAL",3)
Global("C#IM_SoD_c#stff24_10","GLOBAL",1)~ THEN bhaal_bridge_00
SAY @84 /* [Imoen]What happened on that bridge - it was like you were marked. Or stamped! You remember the stamps they had in the scribes' office, where they marked the incoming letters? On the bridge, it looked like the gods punched you with a big, huuuuuge, godly stamp with the scull symbol of Bhaal! POMP! */
++ @85 /* [PC Reply]That's actually a really funny thought. And probably not that off, either... */ + bhaal_bridge_02
++ @86 /* [PC Reply]I really needed you to recall the incident with your overboarding fantasy, thanks, Imoen. */ + bhaal_bridge_01
++ @87 /* [PC Reply]Yes, and I can tell you it felt that way, too. */ + bhaal_bridge_02
++ @88 /* [PC Reply]Gods, you are really silly sometimes. */ + bhaal_bridge_01
END

IF ~~ THEN bhaal_bridge_01
SAY @89 /* [Imoen]I'm sorry, <CHARNAME>... The resemblance was just too great! */
IF ~~ THEN + bhaal_bridge_02
END

IF ~~ THEN bhaal_bridge_02
SAY @90 /* [Imoen]It scared me. I don't scare that easily usually, or do I? It was like you were being *claimed*... I didn't like that. I didn't like that at all! Noone stamps their claim on my friend, no sir! They'll have to go through *me* first, you hear that, you pantheon? */
IF ~~ THEN DO ~SetGlobal("C#IM_SoDBoareskyrBridgeScene","GLOBAL",4)~ EXIT
IF ~Global("C#IM_SoD_c#stff24_10","GLOBAL",1)~ THEN DO ~SetGlobal("C#IM_SoDBoareskyrBridgeScene","GLOBAL",4)~ + bhaal_bridge_03
END

IF ~~ THEN bhaal_bridge_03
SAY @91 /* [Imoen]Seems like crossing the bridge without rising suspicion didn't went that well, eh? */
++ @92 /* [PC Reply]Not exactly, no. */ + bhaal_bridge_05
++ @93 /* [PC Reply](scoff) You think? */ + bhaal_bridge_05
++ @94 /* [PC Reply]No, it didn't. I guess whoever didn't know about my heritage so far will definitely have heard of it by now. */ + bhaal_bridge_06
++ @95 /* [PC Reply]Imoen, knock it off. I am dealing with serious stuff, and all you can do is jesting! */ + bhaal_bridge_04
END

IF ~~ THEN bhaal_bridge_04
SAY @96 /* [Imoen]I wasn't jesting! It was a, er, serious observation. Well, almost serious. */
IF ~~ THEN + bhaal_bridge_05
END

IF ~~ THEN bhaal_bridge_05
SAY @97 /* [Imoen]Oh well... I guess it's out in the open now - your Bhaalheritage. You can't hide *this* as easily as gaining abilities in your dreams! */
IF ~~ THEN + bhaal_bridge_06
END

IF ~~ THEN bhaal_bridge_06
SAY @98 /* [Imoen]I guess the gods made sure not talking about it is no longer an option, huh. Anyhooo - anyone making any comments or giving you any looks - you send them my way, <CHARNAME>, you do that! */
IF ~~ THEN EXIT
END

END //APPEND