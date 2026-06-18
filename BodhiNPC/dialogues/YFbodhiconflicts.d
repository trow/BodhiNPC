
//Conflicts between other NPC's and Bodhi. SoA and ToB

CHAIN IF ~Global("YFBodhiFirstTalk","GLOBAL",1)~ THEN YFBOD25J YFBodhiQuestionsSoul
	@0 /*I am alive, <CHARNAME>, but do I have a soul?*/
END
	++ @1 /*Yes, you took Imoen's soul. It's yours.*/
		DO ~SetGlobal("YFBodhiHasSoul","GLOBAL",1) SetGlobal("YFBodhiFirstTalk","GLOBAL",2)~ GOTO YFBodhiHasImoensSoul1
	++ @2 /*No, we killed you and took Imoen's soul back.*/ GOTO YFBodhiHasNoSoul1
	
CHAIN YFBOD25J	YFBodhiHasImoensSoul1
	@3 /*Yes, I remember now. It feels good to be whole.*/ 
EXIT

CHAIN YFBOD25J YFBodhiHasNoSoul1
	@4 /*Then I will not make the same mistake twice. I will find another cure for my affliction.*/
	DO ~LeaveParty() EscapeArea()~
EXIT
	
//If Aerie is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFAerieObjectsBodhiSoA","GLOBAL",1)~ THEN AERIEJ YFAerieHatesBodhiSoA1
	@5 /*I... I cannot believe you would allow Bodhi to live! W-we are through!*/
	DO ~SetGlobal("YFAerieObjectsBodhiSoA","GLOBAL",2) SetGlobal("KickedOut","LOCALS",8)~
	== HAERDAJ IF ~IfValidForPartyDialog("HaerDalis") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @6 /*Wherever my sweet mourning dove goes, I shall surely follow.*/
	DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== AERIEJ @7 /*Goodbye, <CHARNAME>.*/
EXIT
	
CHAIN IF WEIGHT #-1 ~Global("YFAerieObjectsBodhiToB","GLOBAL",1)~ THEN AERIE25J YFAerieHatesBodhiToB1
	@5 /*I... I cannot believe you would allow Bodhi to live! W-we are through!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFAerieObjectsBodhiToB","GLOBAL",2)~
	== HAERD25J IF ~IfValidForPartyDialog("HaerDalis") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @6 /*Wherever my sweet mourning dove goes, I shall surely follow.*/
	DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== AERIE25J @7 /*Goodbye, <CHARNAME>.*/
EXIT

//If Imoen is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFImoenObjectsBodhiSoA","GLOBAL",1)~ THEN IMOEN2J YFImoenHatesBodhiSoA1
	@8 /*<CHARNAME>, how could you do this? We grew up together!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFImoenObjectsBodhiSoA","GLOBAL",2)~
	= @9 /*Without my soul, I'll keep getting weaker... I cannot stay here a moment longer.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFImoenObjectsBodhiToB","GLOBAL",1)~ THEN IMOEN25J YFImoenHatesBodhiToB1
	@8 /*<CHARNAME>, how could you do this? We grew up together!*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFImoenObjectsBodhiToB","GLOBAL",2)~
	= @9 /*Without my soul, I'll keep getting weaker... I cannot stay here a moment longer.*/
EXIT

//If Keldorn is in the party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFKeldornObjectsBodhiSoA","GLOBAL",1)~ THEN KELDORJ YFKeldornHatesBodhiSoA1
	@10 /*You saved Bodhi? She who has stolen the soul of your own kin?*/
	DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFKeldornObjectsBodhiSoA","GLOBAL",2)~
	= @11 /*Torm take you! I must warn the Order!*/
EXIT
	
CHAIN IF WEIGHT #-1 ~Global("YFKeldornObjectsBodhiToB","GLOBAL",1)~ THEN KELDO25J YFKeldornHatesBodhiToB1
	@10 /*You saved Bodhi? She who has stolen the soul of your own kin?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFKeldornObjectsBodhiToB","GLOBAL",2)~
	= @11 /*Torm take you! I must warn the Order!*/
EXIT

//If Anomen has not failed his test and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFAnomenObjectsBodhiSoA","GLOBAL",1)~ THEN ANOMENJ YFAnomenHatesBodhiSoA1
	@12 /*You would side against the forces of righteousness?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFAnomenObjectsBodhiSoA","GLOBAL",2)~
	= @13 /*If you call Bodhi a friend, then you are no friend of mine!*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFAnomenObjectsBodhiToB","GLOBAL",1)~ THEN ANOME25J YFAnomenHatesBodhiToB1
	@12 /*You would side against the forces of righteousness?*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFAnomenObjectsBodhiToB","GLOBAL",2)~
	= @13 /*If you call Bodhi a friend, then you are no friend of mine!*/
EXIT	

//If Jaheira is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFJaheiraObjectsBodhiSoA","GLOBAL",1)~ THEN JAHEIRAJ YFJaheiraHatesBodhiSoA1
	@14 /*After everything we taught you, I cannot believe you would betray us so!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFJaheiraObjectsBodhiSoA","GLOBAL",2)~
	= @15 /*If you are with Bodhi, we are finished!*/ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFJaheiraObjectsBodhiToB","GLOBAL",1)~ THEN JAHEI25J YFJaheiraHatesBodhiToB1
	@14 /*After everything we taught you, I cannot believe you would betray us so!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFJaheiraObjectsBodhiToB","GLOBAL",2)~
	= @15 /*If you are with Bodhi, we are finished!*/ 
EXIT

//If Cernd is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFCerndObjectsBodhiSoA","GLOBAL",1)~ THEN CERNDJ YFCerndHatesBodhiSoA1
	@16 /*Bodhi is an unnatural creature and your betrayal of your own sister does not speak highly of you.*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFCerndObjectsBodhiSoA","GLOBAL",2)~
	= @17 /*I will walk alone in the woods... away from your corrupting influence.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFCerndObjectsBodhiToB","GLOBAL",1)~ THEN CERND25J YFCerndHatesBodhiToB1
	@16 /*Bodhi is an unnatural creature and your betrayal of your own sister does not speak highly of you.*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFCerndObjectsBodhiToB","GLOBAL",2)~
	= @17 /*I will walk alone in the woods... away from your corrupting influence.*/
EXIT	
	
//If Minsc is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFMinscObjectsBodhiSoA","GLOBAL",1)~ THEN MINSCJ YFMinscHatesBodhiSoA1
	@18 /*You would betray little Imoen and let the vampire keep her soul? Boo is shaking with rage, and I am finished with you!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFMinscObjectsBodhiSoA","GLOBAL",2)~
	== NEERAJ IF ~IfValidForPartyDialog("Neera") Global("YFMinscNeera","GLOBAL",2)~ THEN @19 /*Wait... are we leaving? Minsc, you have to warn me when you're going to do this!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== MINSCJ @20 /*We depart in righteous fury! */
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFMinscObjectsBodhiToB","GLOBAL",1)~ THEN MINSC25J YFMinscHatesBodhiToB1
	@18 /*You would betray little Imoen and let the vampire keep her soul? Boo is shaking with rage, and I am finished with you!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFMinscObjectsBodhiToB","GLOBAL",2)~
	== NEERA25J IF ~IfValidForPartyDialog("Neera") Global("YFMinscNeera","GLOBAL",2)~ THEN @19 /*Wait... are we leaving? Minsc, you have to warn me when you're going to do this!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) LeaveParty() EscapeArea()~
	== MINSC25J @20 /*We depart in righteous fury!*/
EXIT

//If Rasaad is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFRasaadObjectsBodhiSoA","GLOBAL",1)~ THEN RASAADJ YFRasaadHatesBodhiSoA1
	@21 /*The path you walk is too dark for me, my friend.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFRasaadObjectsBodhiSoA","GLOBAL",2)~ 
	= @22 /*Beware that Bodhi does not end your life while you sleep.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFRasaadObjectsBodhiToB","GLOBAL",1)~ THEN RASAA25J YFRasaadHatesBodhiToB1
	@21 /*The path you walk is too dark for me, my friend.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFRasaadObjectsBodhiToB","GLOBAL",2)~ 
	= @22 /*Beware that Bodhi does not end your life while you sleep.*/
EXIT

//If Valygar is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFValygarObjectsBodhiSoA","GLOBAL",1)~ THEN VALYGARJ YFValygarHatesBodhiSoA1
	@23 /*Bodhi lives an unnatural life. She renews her strength daily at the cost of other lives.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFValygarObjectsBodhiSoA","GLOBAL",2)~
	= @24 /*If she is your friend, then I know where I stand.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFValygarObjectsBodhiToB","GLOBAL",1)~ THEN VALYG25J YFValygarHatesBodhiToB1
	@23 /*Bodhi lives an unnatural life. She renews her strength daily at the cost of other lives.*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFValygarObjectsBodhiToB","GLOBAL",2)~
	= @24 /*If she is your friend, then I know where I stand.*/
EXIT

//If Nalia is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFNaliaObjectsBodhiSoA","GLOBAL",1)~ THEN NALIAJ YFNaliaHatesBodshiSoA
	@25 /*I cannot believe you, <CHARNAME>! Bodhi hunts the very people we are supposed to be helping!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFNaliaObjectsBodhiSoA","GLOBAL",2)~
	= @26 /*I'm leaving. I hope I never see you again.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFNaliaObjectsBodhiToB","GLOBAL",1)~ THEN NALIA25J YFNaliaHatesBodshiToB
	@25 /*I cannot believe you, <CHARNAME>! Bodhi hunts the very people we are supposed to be helping!*/
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFNaliaObjectsBodhiToB","GLOBAL",2)~
	= @26 /*I'm leaving. I hope I never see you again.*/
EXIT

//If Mazzy is in your party and detects Bodhi. SoA and ToB.
CHAIN IF WEIGHT #-1 ~Global("YFMazzyObjectsBodhiSoA","GLOBAL",1)~ THEN MAZZYJ YFMazzyHatesBodhiSoA
	@27 /*You would sacrifice Imoen's soul to ally yourself with this monster?! Bodhi slaughters innocents daily!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFMazzyObjectsBodhiSoA","GLOBAL",2)~
	= @28 /*I shall return with enough allies to end both your lives forever.*/
EXIT

CHAIN IF WEIGHT #-1 ~Global("YFMazzyObjectsBodhiToB","GLOBAL",1)~ THEN MAZZY25J YFMazzyHatesBodhiToB
	@27 /*You would sacrifice Imoen's soul to ally yourself with this monster?! Bodhi slaughters innocents daily!*/ 
		DO ~SetGlobal("KickedOut","LOCALS",8) SetGlobal("YFMazzyObjectsBodhiToB","GLOBAL",2)~
	= @28 /*I shall return with enough allies to end both your lives forever.*/
EXIT

