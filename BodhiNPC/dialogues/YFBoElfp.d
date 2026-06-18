BEGIN YFBoElfp

//If you remove Bodhi from your party.
APPEND YFBoElfP IF ~Global("YFBodElfRemoved","GLOBAL",0)~ THEN YFbodhiElfLeaving1
SAY @0 /*So, <CHARNAME>, is this the point where we part ways?*/
	++ @1 /*No, I still want you with me.*/ GOTO bBodhiElfPDoesntLeave1
	++ @2 /*Yes, wait right here.*/  GOTO YFBodhiElfWaits1
	+~!AreaCheck("AR4000") !AreaCheck("AR4500")~+ @3 /*Yes, return to my pocket plane and wait there.*/ GOTO YFBodhiElfPPlane1
	END
END

CHAIN YFBoElfP YFBodhiElfPPlane1
	@4 /*That's a pity... I do so enjoy your presence.*/
	= @5 /*Don't make me wait too long, I might hunger for some... company.*/
	DO ~SetGlobal("YFBodElfRemoved","GLOBAL",1) CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1615.1679],S)~
EXIT

CHAIN YFBoElfP YFBodhiElfWaits1
	@4 /*That's a pity... I do so enjoy your presence.*/
	= @5 /*Don't make me wait too long, I might hunger for some... company.*/
		DO ~SetGlobal("YFBodElfRemoved","GLOBAL",1)~
EXIT

CHAIN YFBoElfP bBodhiElfPDoesntLeave1
	@6 /*I am delighted to hear that. We have been having so much fun that I could not bear to leave.*/
		DO ~JoinParty()~ 
EXIT

//If Bodhi is waiting and you talk to her.
APPEND YFBoElfP IF ~Global("YFBodElfRemoved","GLOBAL",1)~ THEN YFbodhiElfWaiting1
SAY @7 /*Finally... I am so hungry that I could eat a whole family of halflings. Shall we resume our travels?*/
	++ @8 /*Yes.*/ DO ~SetGlobal("YFBodElfRemoved","GLOBAL",0) JoinParty()~ EXIT
	++ @9 /*No, just wait here.*/ EXIT 
	END
END


