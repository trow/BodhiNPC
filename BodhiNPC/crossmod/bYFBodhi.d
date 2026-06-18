//BEGIN bYFBodhi

//1st Clara Banter
CHAIN IF ~InParty("YF_Clara") !StateCheck("YF_Clara",CD_STATE_NOTVALID) InMyArea("YF_Clara") !StateCheck("YFBodhi",CD_STATE_NOTVALID) Global("YFBODHICLARA","GLOBAL",0)~ THEN bYFBodhi YFBodhiClara1
@9 /*Do I scare you so much, child? You flinch when I even look your way.*/
DO ~SetGlobal("YFBODHICLARA","GLOBAL",1)~
== BYF_Clar @10 /*I have already been killed once by your kind, Bodhi; I do not fear you.*/
== bYFBodhi @11 /*You smell of nothing BUT fear, but your brave face is appreciated.*/
= @12 /*You are safe from me, however, as delicious as you might be. I have sworn myself to <CHARNAME>, and that included not eating <PRO_HISHER> pets.*/
== BYF_Clar @13 /*I am not a pet! I am Caroline Aurora...*/
== bYFBodhi @14 /*That name means nothing. You are flesh and blood... meat for the hungry... prey for the strong...*/
= @15 /*Nothing more.*/
EXIT

//2nd Clara Banter
CHAIN IF ~InParty("YF_Clara") IfValidForPartyDialog("YF_Clara") InMyArea("YF_Clara") !StateCheck("YFBodhi",CD_STATE_NOTVALID) Global("YFBODHICLARA","GLOBAL",1)~ THEN bYFBodhi YFBodhiClara2
@31 /*I smell you, Shadow Thief... come out and play.*/
= @32 /*Why do you live when your comrades are dead? Was <CHARNAME> careless in <PRO_HISHER> slaughter? How did you escape your fate?*/
= @33 /*Should I finish the job?*/
== BYF_Clar @34 /*Stop it, Bodhi! I'm not your prey!*/
= @35 /*I'm also not a Shadow Thief anymore.*/
== bYFBodhi @36 /*Are you not? You were a Shadow Thief... you smell like a Shadow Thief... you cannot change what you are.*/
== BYF_Clar @37 /*Why not? You did! You weren't always a vampire!*/
== bYFBodhi @38 /*No... I was one of the people... graceful and beautiful... wise and immortal...*/
= @39 /*That life was taken from me!*/
= @40 /*The only pleasure that remains to me is hunting down succulent... delicious... flesh!*/
= @41 /*Hide from me all you like... I can smell your fear.*/
DO ~SetGlobal("YFBODHICLARA","GLOBAL",2) ChangeStat("YF_Clara",HIDEINSHADOWS,10,ADD) ChangeStat("YF_Clara",STEALTH,10,ADD)~
== BYF_Clar @42 /*Well then, I'll just have to fix that, won't I?*/
EXIT


//3rd Clara Banter - she talks first
CHAIN IF ~InParty("YFBodhi") IfValidForPartyDialog("YF_Clara") InMyArea("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID) Global("YFBODHICLARA","GLOBAL",2)~ THEN BYF_Clar YFBodhiClara3
@43 /*How about now?*/
DO ~SetGlobal("YFBODHICLARA","GLOBAL",3) ChangeStat("YF_Clara",HIDEINSHADOWS,10,ADD) ChangeStat("YF_Clara",STEALTH,10,ADD)~
== bYFBodhi @44 /*Hmm... no, I can hear you but that is all.*/
= @45 /*Well done. I did not expect you to succeed in masking your scent, not from me.*/
== BYF_Clar @46 /*Practice makes perfect. Hunters do it all the time. Of course, that's just with animals, not vampires, but the principle is the same...*/
== bYFBodhi @47 /*I am more animal than most, little fleshling.*/
= @48 /*You are my companion so helping you become a more skilled hunter seemed prudent.*/
= @49 /*Hunt me, though, and I will dine on your liver and make jewelry from your bones.*/
EXIT
