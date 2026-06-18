
//SoA Interjections

//Windspear Hills Knights. Script for first one is in YFBodhi.baf
CHAIN IF ~Global("YFBodhiInterjectsNobleOrder","GLOBAL",1)~ THEN YFBodhij YFBodhiInterjectsKnights1
	@1 /*I admire your perseverance. No matter how often or how thoroughly I kill you half-dozen fools, you always come back for more.*/ 
		DO ~SetGlobal("YFBodhiInterjectsNobleOrder","GLOBAL",2)~
EXIT

INTERJECT_COPY_TRANS2 KNIGHT 0 YFBodhiInterjectsKnights2
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN 
	@2 /*They will indeed return. I once ate every tasty morsel of Sir Laren's flesh... I even broke and consumed his bones until not one piece of him remained. Yet there he was today... healthy and whole.*/
END

//Bertrand Talk
CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("YFBodhi") Global("YFBodhiTalksBertrand1","GLOBAL",0)~ THEN BERTRAND YFBodhiLovesBertrand1
	@3 /*Bodhi, my luscious dark wine, are you here for me? There is no other woman to whom I offer my unequaled skills for free.*/
		DO ~SetGlobal("YFBodhiTalksBertrand1","GLOBAL",1) SetGlobalTimer("YFBertrandBodhiTimer","GLOBAL",ONE_DAY)~
== YFBodhiJ @4 /*I pay you in your continued breathing, my pet, and while one should always embrace the pleasures and passions of the flesh, I am currently busy.*/
== BERTRAND @5 /*You have been gone for some time. I feared you were dead and rejoice that you are merely undead.*/
== YFBodhiJ @6 /**smiles* Your audacity is as refreshing as always. I must wait for <CHARNAME> to call a rest, but then, as before, I will join you after I feed.*/
EXIT

//2nd Bertrand talk.
CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("YFBodhi") Global("YFBodhiTalksBertrand1","GLOBAL",1) GlobalTimerExpired("YFBertrandBodhiTimer","GLOBAL")~ THEN BERTRAND YFBodhiLovesBertrand2
	@7 /*Bodhi, my delicious dark wine, I could not help but notice that during our last encounter, you seemed displeased with me.*/
		DO ~SetGlobal("YFBodhiTalksBertrand1","GLOBAL",2)~
== YFBodhij @8 /*I was displeased, my pet, but not with you.*/
== BERTRAND @9 /*Perhaps I could lend you my sympathetic ear? It is the most desired ear in Amn.*/
== YFBodhij @10 /*That night was our first shared evening since I acquired a new soul and I was hoping your well-honed skills would awaken my cold heart.*/
	= @11 /*But it was not to be. It seems the elf inside me desires sensual pleasure in a way that is incompatible with my vampiric condition.*/
== BERTRAND @12 /*That must be frustrating. I saw the remains of your frustration throughout the district.*/
== YFBodhij @13 /*I still gain enjoyment from the hunt and kill... So I shall bear my misfortune with dignity.*/
	= @14 /*But this means that we must say our farewells.*/
== BERTRAND @15 /*Only until you cure your vampirism, Then I know you will return to me.*/
== YFBodhij @16 /**smiles* Now you are just trying to boost my spirits.*/
== BERTRAND @17 /*When your spirits are high, you kill fewer people. How's a poor gnome supposed to make a living with you eating all of my customers?*/
== YFBodhiJ @18 /*Goodbye, Bertrand.*/
EXIT

//1st Interjection in Priestess Demin's talks in Suldanessellar
INTERJECT_COPY_TRANS2 SUDEMIN 1 YFBodhiDeminInterjection1 /*Oh... Th-thank you for your assistance, strangers. Forgive me also if I reward your effort with questions. How do you come to be here?*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @19 /*Surely you must be powerful enough to see through the disguise spell that Elhan's wizard cast on me.*/
		= @20 /*Can you hear me, priestess? Or do my words fall on deaf ears?*/
END

//2nd Interjection in Priestess Demin's talks in Suldanessellar
INTERJECT_COPY_TRANS2 SUDEMIN 5 YFBodhiDeminInterjection2 /*Elhan is like many of us and would prefer this incident solved without involving others. Forgive him his hesitation; he only wishes for the best outcome.*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @21 /*Elhan is a fool and a coward who only desires to protect himself from embarrassment.*/
END

//3rd Interjection- Priestess Demin.
INTERJECT_COPY_TRANS2 SUDEMIN 11 YFBodhiDeminInterjection3 /*Certainly you are entitled to your misgivings. You would not be here if you were not driven by powerful emotions, and the Exile is good at provoking a reaction.*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @22 /*You wound me, <CHARNAME>. If I did not know that you were merely playing along, I might take your insults personally.*/
END

//4th Interjection- Priestess Demin.
INTERJECT_COPY_TRANS2 SUDEMIN 16 YFBodhiDeminInterjection4 /*Of the two, the "sister" was the insatiable one. She was not as regarded, but she held great influence over her "brother" and pulled him into her madness.*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @23 /*I was the greatest warrior this city has ever seen, but martial prowess was not considered a great virtue among my people.*/
		= @24 /*It seems fitting that my brother alone created a sorcerous plan to turn himself into a god and yet somehow my people would still pin the majority of the blame on me.*/
	== SUDEMIN IF ~IfValidForPartyDialog("YFBodhi")~ THEN @24000 /*His good heart resisted at first, but his "sister's" unrelenting pressure eventually proved too much for even him.*/
END

//5th Interjection- Priestess Demin.
INTERJECT_COPY_TRANS2 SUDEMIN 17 YFBodhiDeminInterjection5 /*Together they sought more than was possible; they wished the power of the gods, and they were not concerned about the consequences. */
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @25 /**He* wished to be a god... I was merely bored and looking for a challenge.*/
END

//5th Interjection- Priestess Demin.
INTERJECT_COPY_TRANS2 SUDEMIN 18 YFBodhiDeminInterjection6 /*He of the Exiles performed a dark ritual and committed a grave offense against the greatest symbol of our longevity: the Tree of Life.*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @26 /*I guarded the entrance for Jon, holding off the entire elven honor guard singlehandedly. She will likely fail to mention this.*/
END	

//Interjection into the Avatar of Rillifane's dialogue in the Elven Temple.
INTERJECT_COPY_TRANS2 SUAVATAR 4 YFBodhiRillifaneInterjection1 /* ** HE HOLDS SHE WHO IS OF MY BLOOD IMPRISONED WITHIN CORRUPTION. HE USES HER LINK TO THE TREE OF LIFE TO DRAIN ITS POWER. ** */
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @27 /*So my sister is Rillifane's child. I always suspected she was, but my mother refused to confirm it.*/
		= @28 /*She would never say who fathered me either. Jon did not know who is father was, so the three of us had that in common. Though Ellesime is likely the only one with divine blood.*/
		= @29 /*Jon and I are not actually siblings, of course, but we said our unknown paternity made us so and along with Ellesime, we swore to protect one another until the leaves fell and the world ended.*/
		= @30 /*He and my sister later becoming lovers made life more... complicated.*/
	== SUAVATAR @31 /***WHO SPEAKS? YOU, EXILE, DID YOU THINK YOUR DISGUISE WOULD FOOL ME? THAT YOU COULD SPEAK AND I WOULD NOT HEAR?***/	
		= @32 /*** HOWEVER, I SEE YOU BEAR THE MARK OF FRIENDSHIP. YOUR PRESENCE SHALL BE TOLERATED.***/
	== YFBodhij @33 /*It seems I must thank Elhan and his pet warsage for their magic after all.*/
	== SUAVATAR @34 /***YOU LOVE YOUR SISTER AND YOU WILL SAVE HER FROM HIM.***/
END

//2nd Avatar of Rillifane Interjection
INTERJECT_COPY_TRANS2 SUAVATAR 8 YFBodhiRillifaneInterjection2 /* ** RISE, SPIRITS... IT IS I, RILLIFANE RALLATHIL OF THE SELDARINE WHO CALLS YOU. DEFEND OUR CHILDREN THIS DAY. ** */
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @35 /*This will be a massacre, <CHARNAME>. My brother's forces stand no chance.*/
		= @36 /*And so another of his foolish plans unravels.*/
END

//Interjection into Jon's fight at the Tree
INTERJECT_COPY_TRANS2 SUJON 1 YFBodhiJonTreeInterjection /*You... you live *yet*! You have less than a fraction of your soul, and yet somehow you *continue* to oppose me?*/
	== SUJON IF ~IfValidForPartyDialog("YFBodhi")~ THEN @37 /*And you, my traitorous "sister"... I see you through your pathetic disguise.*/
		= @38 /*Let me guess, <CHARNAME> defeated you in battle so you showed your belly and accepted a new master? How utterly predictable.*/
	== YFBodhiJ IF ~IfValidForPartyDialog("YFBodhi")~ THEN @39 /*We had our souls, my brother. Together the world was ours for the taking.*/
		= @40 /*But you had to once again implement your insane plan for godhood... doomed to fail and destroy us both.*/
		= @41 /*When faced with defeat, this time I chose the winning side.*/
END

//Hell Interjection
INTERJECT_COPY_TRANS2 Player1 25 YFBodhiHellInterjection /*You doubt they will be pleased with their present circumstance when you don't even know why you are here yourself.*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @42 /*So this is hell... how disappointing. I had hoped to avoid this place for years to come.*/
END

//Hell Jon Fight Interjection
INTERJECT_COPY_TRANS HELLJON 7 YFBodhiHellJonFightnterjection /*We shall see, <CHARNAME>. We shall see!*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @43 /*Every time is the same, my brother. You are incapable of choosing a new path, so how can you expect a different result?*/
END

INTERJECT_COPY_TRANS HELLJON 8 YFBodhiHellJonFightnterjection /*Your soul was never truly yours, Bhaal child! You should let me put it to better use!*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @43 /*Every time is the same, my brother. You are incapable of choosing a new path, so how can you expect a different result?*/
END

INTERJECT_COPY_TRANS HELLJON 9 YFBodhiHellJonFightnterjection /*An odd situation, but I have no doubt about the outcome!*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @43 /*Every time is the same, my brother. You are incapable of choosing a new path, so how can you expect a different result?*/
END

INTERJECT_COPY_TRANS HELLJON 10 YFBodhiHellJonFightnterjection /*You will not be so calm when I doom you to nonexistence!*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @43 /*Every time is the same, my brother. You are incapable of choosing a new path, so how can you expect a different result?*/
END

//Interjection into Ellesime's talk after Player 1 regains consciousness. 
INTERJECT SUELLE2 4 YFBodhiEllesimeInterjection1 /*I have planned a small ceremony to reward you for your actions and to show our gratitude despite what your motives might have been.*/
	== SUELLE2 IF ~IfValidForPartyDialog("YFBodhi") Global("YFBodhiEllesimeInterjectGlobal","GLOBAL",0)~ THEN @44 /*But before it starts, I wish to speak with you about my... sister.*/
END SUELLE2 YFBodhiEllesimeInterjection3

INTERJECT SUELLE2 7 YFBodhiEllesimeInterjection2 /*I have planned a ceremony to reward you and to show our gratitude for your actions. You are a hero to the elves... perhaps even a legend in the making.*/
	== SUELLE2 IF ~IfValidForPartyDialog("YFBodhi") Global("YFBodhiEllesimeInterjectGlobal","GLOBAL",0)~ THEN @44 /*But before it starts, I wish to speak with you about my... sister.*/
END SUELLE2 YFBodhiEllesimeInterjection3

CHAIN SUELLE2 YFBodhiEllesimeInterjection3
	@45 /*She was my kin before her fall and I would like her to be so once again.*/
		DO ~SetGlobal("YFBodhiEllesimeInterjectGlobal","GLOBAL",1)~
	= @46 /*We have offered her her life... her soul... should she accept, she will again be one of us.*/
	= @47 /*She, however, is still undecided.*/
== YFBodhij @48 /*Before I come to a decision, <CHARNAME>, I am curious as to your opinion.*/
	= @49 /*If I accept, I would be elven again. I would release Imoen's soul and regain my own. This is everything I dreamed of, when dreams were possible, and yet for some reason I am unsure...*/
== SUELLE2 @50 /*I have missed you, child of my mother. You saved us, your home, and your people. Please accept your reward.*/
	= @51 /*Come back to me, little sister.*/
END
	++ @52 /*Do it, Bodhi. How could you pass up this chance?*/ EXTERN YFBodhij  YFBodhiFinalYes1
	++ @53 /*No, Bodhi; you would lose your strength, your power, and your control... all for a people who will never truly accept you.*/ EXTERN YFBodhij YFBodhiFinalNo1
	
CHAIN YFBodhij YFBodhiFinalYes1
	@54 /*My... sister... I accept.*/
== SUELLE2 @55 /*You could not have given me more joy. We will restore your body, your soul, your name...*/
== YFBodhij @56 /*I shall continue being called Bodhi.*/
	= @57 /*When we were cast out, we had nothing, not even our names, but one day I called him, "Jon" and it worked! We realized that despite owning nothing, we could give names to one another.*/
	= @58 /*He called me, "Bodhi", and from that day forward I was determined to live... I had hope.*/
== SUELLE2 @59 /*Then "Bodhi" you shall be, little sister. Close your eyes; this will take but a moment.*/
	DO ~ClearAllActions() StartCutSceneMode() StartCutScene("YFBoTran")~
EXIT		

APPEND YFBodhij IF ~~ THEN BEGIN YFBodhiFinalNo1
	SAY @60 /*<CHARNAME> is right. There is no place for me here.*/
	IF ~~ THEN EXTERN SUELLE2 YFBodhiFinalNo2
	END
END

APPEND SUELLE2 IF ~~ THEN BEGIN YFBodhiFinalNo2
	SAY @61 /*You bring me grief with your response, but I shall not lose hope. You are immortal; you may yet still change your mind.*/
		= @62 /*Should you ever choose to come back to us, I will welcome you with open arms.*/
	IF ~~ THEN EXTERN SUELLE2 4 /*I have planned a small ceremony to reward you for your actions and to show our gratitude despite what your motives might have been.*/
	END
END

//Bodhi-Ellesime Dialogue After Yes Cutscene.
APPEND SUELLE2 IF WEIGHT #-1 ~Global("YFBodhiEllesimeDialogue","GLOBAL",1)~ THEN BEGIN YFBodhiFinalYes2
	SAY @63 /*Now embrace me, my sister. It has been too long.*/
	IF ~~ THEN DO ~SetGlobal("YFBodhiEllesimeDialogue","GLOBAL",2)~ EXTERN SUELLE2 7 /*I have planned a ceremony to reward you and to show our gratitude for your actions. You are a hero to the elves... perhaps even a legend in the making.*/
	END
END
		
//Interjection into Ellesime's Final Speech
INTERJECT_COPY_TRANS2 SUELLE2 12 YFEllesimeBodhiFinalInterjection1 /*These deeds were not performed alone... Suldanessellar also extends its gratitude to those who have traveled with you and fought by your side to help save our city.*/
	== SUELLE2 IF ~Global("YFBodhiEllesimeDialogue","GLOBAL",2) IfValidForPartyDialog("YFBodhi")~ THEN @64 /*In particular, we welcome the daughter-of-my-mother to our home once again.*/
		= @65 /*Bodhi-of-the-Fallen-Leaves, it is good to have you with us. Your actions saved us all.*/
END	

//Interjection into dialogue of Skeleton Warrior in dungeon outside of Bodhi's hideout
INTERJECT_COPY_TRANS2 GRSKEL1 0 YFBodhiSkeletonWarriorHideoutInterjection1 /*Ahhhh... fleshling! This is OUR land in the evening... this is no place for such as YOU!*/
	== YFBodhij IF ~IfValidForPartyDialog("YFBodhi")~ THEN @66 /*The night is mine, and mine alone. Come and test my strength.*/
END

//Rose Talk
CHAIN IF WEIGHT #-1 ~IfValidForPartyDialog("YFBodhi") Global("YFRoseBodhi","GLOBAL",0) OR(3) Global("YFRMISC9J","GLOBAL",1) Global("YFRMISC9I","GLOBAL",1) Global("YFRMISC9K","GLOBAL",1)~ THEN MURDGIRL YFrosebodhi
@67 /*What can I... Oh, you're one of...*/
DO ~SetGlobal("YFRoseBodhi","GLOBAL",1)~
== YFBodhij @68 /*Indeed. Tell me, walker-of-the-night, you were given the journal of Jon Irenicus for your little dream. What did you think of it? I do so wish to hear your honest thoughts.*/
== MURDGIRL @69 /*Well, if you're certain... I've read the thing cover to cover and I'm really not a fan. He's pompous, arrogant, and far too fond of his own opinion. But he does use a clever turn of phrase now and then.*/
== YFBodhij @70 /*You have no idea, succulent fleshling, of whom you speak. And yet this bold assumption is not wrong.*/
EXIT

//Tree of Life
EXTEND_BOTTOM PLAYER1 33 /*You turn and regard those who remain in your party. You feel a need, perhaps, to ascertain their loyalty, their friendship, or to offer a chance to reconsider.*/
IF ~IfValidForPartyDialog("YFBodhi") Global("YFBodhiTree","GLOBAL",0)~ THEN EXTERN PLAYER1 YFBodhiTree1
END

CHAIN PLAYER1 YFBodhiTree1
@71 /*Bodhi, dark and mysterious. The vampire was once your enemy and you wonder if she is truly ready to kill her brother at your side.*/
DO ~SetGlobal("YFBodhiTree","GLOBAL",1)~
END
	++ @72 /*Are you with me, Bodhi? Truly with me?*/ EXTERN YFBodhij YFBodhiTree2
	++ @73 /*Can you give me any advice on fighting Irenicus? You did know him best.*/ EXTERN YFBodhij YFBodhiTree2
	++ @74 /*Moment of truth, vampire. Can I trust you or will you stab me in the back?*/ EXTERN YFBodhij YFBodhiTree2
	
CHAIN YFBodhij YFBodhiTree2
@75 /*I am a survivor, <CHARNAME>. My brother has overreached, as always, and his doom is inevitable. If you were smart, you would disrupt his plans and then run like the wind.*/
= @76 /*We'd come back with an Elven army and perhaps a god or two on our side.*/
= @77 /*But you are probably too foolish for such sense... so let's do what you always do: rush through the door, weapons drawn, and take things as they come.*/
= @78 /*Jon's magic is powerful, but if  we can disrupt it, he will bleed and die like any other man.*/
END
COPY_TRANS PLAYER1 33 


		
///TOB Interjections - Same File

//Saradush Vampire Talk
INTERJECT_COPY_TRANS2 SARPEL01 6 YFGoodHunting /*I have no idea how many there are now. So many people die every day here; what's a few more? I was taken down to the prison myself... but I got away. And now they hunt for me.*/
	== YFBod25j IF ~InMyArea("YFBodhi") InParty("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID)~ THEN @9991 /*No one will bother me if I hunt here? Such a wonderful place you have brought me to, <CHARNAME>. And here I was beginning to think you didn't care.*/
END

//Saradush Head Vampire
INTERJECT_COPY_TRANS2 SARVAM01 2 YFVampireFaceOff /*You... you are a powerful one of your kind. I can smell the murder in your heart. You shall never let us live, I would think.*/
	== YFBod25j IF ~InMyArea("YFBodhi") InParty("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID)~ THEN @9992 /*You were powerful, but your time is over. Stronger predators are here to take your place.*/
END



