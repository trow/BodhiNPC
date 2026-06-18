BEGIN YFBod25j


APPEND YFBod25j IF WEIGHT #-1 ~Global("YFBodhiMist","GLOBAL",1)~ THEN BEGIN YFbodhimisttalk1
SAY @0 /*No, no it's mine! This life is mine! [BODHIX41.WAV]*/
	= @1 /*<CHARNAME>, I flee. When I am whole I will find you, if you live.*/
	IF ~~ THEN DO ~ApplySpellRES("YFbomi25",Myself) TransformItem("YFbohair","YFbohar2") SetGlobal("YFBodhiMist","GLOBAL",2) SetGlobal("YFBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR4000",771,931,S)~ EXIT
	END
END

APPEND YFBod25j IF WEIGHT #-1 ~Global("YFBodhiBurns","GLOBAL",1)~ THEN BEGIN YFbodhiburnstalk1
SAY @2 /*The sun, it burns! I will find you later.*/
	IF ~~ THEN DO ~ApplySpellRES("YFbomi25",Myself) TransformItem("YFbohair","YFbohar2") SetGlobal("YFBodhiBurns","GLOBAL",2) SetGlobal("YFBodhiRemoved","GLOBAL",2) LeaveParty() EscapeAreaMove("AR4000",771,931,S)~ EXIT
	END
END


//1st Hexxat Cloak Talk
CHAIN IF WEIGHT #-1 ~Global("YFCloakTalk","GLOBAL",1)~ THEN HEXXA25J YFHexxatWhines
@3 /*You are wearing my cloak.*/
DO ~SetGlobal("YFCloakTalk","GLOBAL",2)~
== YFBod25j @4 /*It was Dragomir's cloak, was it not? <CHARNAME> killed Dragomir which makes it <CHARNAME>'s cloak, and <CHARNAME> gave it to me.*/
== HEXXA25J @5 /*You must return it to me.*/
== YFBod25j @6 /*Must I? It was a treasured gift.*/
= @7 /*I think I will keep it. Any complaints must go to our leader.*/
== HEXXA25J @8 /*This is unacceptable, <CHARNAME>. I cannot move in sunlight without it.*/
END
	++ @9 /*Sorry, Hexxat, I need Bodhi more than you.*/ + YFSIHex
	++ @10 /*You'll just have to find another one.*/ + YFSIHex
	++ @11 /*There's two vampires and one cloak; you'll just have to learn to share.*/ + YFSIHex
	++ @12 /*Hexxat's right, Bodhi, you need to return it.*/ EXTERN YFBod25j YFBodhiSad
	
CHAIN HEXXA25J YFSIHex
@13 /*This is disappointing. I hope you will change your mind.*/
EXIT

CHAIN YFBod25j YFBodhiSad
@14 /*You give it to me only to ask for its return? My heart is broken, <CHARNAME>. With the sun denied me, I will sulk in the dark.*/
DO ~ActionOverride("HEXXAT",TakePartyItem("ohhcloak")) XEquipItem("ohhcloak","YFBodhi",SLOT_CLOAK,EQUIP)~
EXIT

//2nd Hexxat Talk
CHAIN IF WEIGHT #-1 ~Global("YFCloakTalk","GLOBAL",3)~ THEN YFBod25j YFDoubleMintTwins
@15 /*It seems that Dragomir's cloak is not as unique as I thought.*/
DO ~SetGlobal("YFCloakTalk","GLOBAL",4)~
== HEXXA25J @16 /*He was a large vampire. When I had an opportunity, I recut his cloak and made two. I did not need the spare until now.*/
= @17 /*It is clear that <CHARNAME> relies on you. I will have to accept your company as well.*/
EXIT
