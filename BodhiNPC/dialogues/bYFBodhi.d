BEGIN bYFBodhi

CHAIN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID) Global("YFBODHIKORG","GLOBAL",0)~ THEN BKORGAN YFBodhiKorgan1
@1 /*Vampire, ye be a coward through an' through.*/
DO ~SetGlobal("YFBODHIKORG","GLOBAL",1)~
== bYFBodhi @2 /*Am I? I fight by your side, kill as you kill...*/
== BKORGAN @3 /*Pshaw, ye kill th' weak an' easy. Ye switched sides because we be stronger an' ye were afraid t' die, but if th' goin' gets tough, ye'll flee an' leave us t' rot.*/
== bYFBodhi @4 /*And you, dwarf? Are you a trustworthy companion? Will you stand by <CHARNAME>'s side until the very end, no matter who we face?*/
= @5 /*Do you not fear death?*/
== BKORGAN @6 /*Hahaha, if I die then I'll die laughin', with me axe in me enemy's skull an' our bloods poolin' on th' ground.*/
= @7 /*When ye die, you'll be cowerin' in yer coffin, beggin' fer yer life.*/
== bYFBodhi @8 /*Perhaps. But your life will end soon, Korgan, whereas I will live for centuries to come.*/
EXIT

//1st Edwin Banter - he starts talk
CHAIN IF WEIGHT #-1 ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InMyArea("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID) Global("YFBODHIEDWIN","GLOBAL",0)~ THEN BEDWIN YFBodhiEdwin1
@16 /*There is power in enchanted items, Bodhi! You should be more careful!*/
DO ~SetGlobal("YFBODHIEDWIN","GLOBAL",1)~
== bYFBodhi @17 /*I do not need to take care, Edwin. Our enemies are weak and I am strong.*/
== BEDWIN @18 /*Yes, very strong, but that is the problem. You shred enchanted cloaks and destroy scrolls containing unknown secrets. This is folly!*/
= @19 /*Why are we fighting if not to take the secrets and power of the fallen? (Surely this is obvious. I am traveling with fools.)*/
== bYFBodhi @20 /*Power comes from within me, Edwin. I do not need your scrolls. Cast your spells as you wish and leave me be.*/
EXIT

//2nd Korgan Banter
CHAIN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("Korgan") !StateCheck("YFBodhi",CD_STATE_NOTVALID) !AreaType(DUNGEON) Global("YFBODHIKORG","GLOBAL",1)~ THEN bYFBodhi YFBodhiKorgan2
@21 /*I see you at night, Korgan, you are a hunter just as I am.*/
DO ~SetGlobal("YFBODHIKORG","GLOBAL",2)~
= @22 /*Well, not quite as I am. You are slow and fat and prefer to chase the first lass you see.*/
= @23 /*I am more discerning and take only the strongest and most powerful.*/
== BKORGAN @24 /*Ye do yerself a disservice with yer delusions, woman. Ye hunt those weaker than yerself, as do I, an' we both take 'em with our bare hands.*/
= @25 /*We both like a spirited fight, as long as th' outcome is not in doubt; th' only difference is my lasses still live when I be done with 'em.*/
EXIT

//Korgan Items Banter - he speaks first
CHAIN IF WEIGHT #2 ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("YFBodhi") !StateCheck("YFBodhi",CD_STATE_NOTVALID) GlobalGT("YFBODHIKORG","GLOBAL",0) Global("YFBODHIKORG2","GLOBAL",0)~ THEN BKORGAN YFBodhiKorgan3
@26 /*Do ye plan t' leave nothin' behind fer us to use? By th' gods, woman, learn some finesse!*/
DO ~SetGlobal("YFBODHIKORG2","GLOBAL",1)~
== bYFBodhi @27 /*I am sorry, Korgan, have I done something to deserve your whining? I kill your enemies for you, do I not?*/
== BKORGAN @28 /*Ye destroy everything! Ye kill our enemies, ye break their armor, ye break their weapons, ye even turn their gold t' dust!*/
= @29 /*How is an honest dwarf supposed t' make a livin'?*/
== bYFBodhi @30 /*The weak need weapons and armor, dwarf. I desire only the soft flesh beneath. I cannot help it if your flimsy toys shatter in my hands.*/
EXIT

