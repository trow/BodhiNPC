BEGIN YFBodhip

//If you remove Bodhi from your party.
APPEND YFBodhip IF ~Global("YFBodhiRemoved","GLOBAL",0) !Global("YFBodhiBurns","GLOBAL",3) !Global("YFBodhiBurns","GLOBAL",4)~ THEN YFbodhiask
SAY @0 /*You wish me to leave?*/
	++ @1 /*No, my mistake. Stay with me.*/ DO ~JoinParty()~ EXIT
	++ @2 /*Yes, just wait here.*/ DO ~SetGlobal("YFBodhiRemoved","GLOBAL",1)~ EXIT
	++ @3 /*Yes, but return to your lair. I shall meet you there.*/ DO ~SetGlobal("YFBodhiRemoved","GLOBAL",1) EscapeAreaMove("AR0809",1234,551,SW)~ EXIT
	END
END

//If Bodhi is waiting and you talk to her.
APPEND YFBodhip IF ~Global("YFBodhiRemoved","GLOBAL",1)~ THEN YFbodhidefault
SAY @4 /*Finally. I was beginning to hunger. Shall we resume our travels?*/
	++ @5 /*Yes.*/ DO ~SetGlobal("YFBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	++ @6 /*No, just wait here.*/ EXIT 
	END
END

//Bodhi's talk after coming back if dying.
APPEND YFBodhip IF WEIGHT #-1 ~Global("YFBodhiMist","GLOBAL",8) Global("YFBodhiRemoved","GLOBAL",2)~ THEN YFbodhimisttalkp8
	SAY @7 /*You have survived! That was unexpected, but not undesired.*/
	IF ~~ THEN DO ~SetGlobal("YFBodhiMist","GLOBAL",0) SetGlobal("YFBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	END
END

//Bodhi's talk after coming back if dying.
APPEND YFBodhip IF WEIGHT #-1 ~Global("YFBodhiBurns","GLOBAL",7) Global("YFBodhiRemoved","GLOBAL",2)~ THEN YFbodhiburnstalkp7
	SAY @8 /*Finally. I do not know why you insist on traveling during the day.*/
	IF ~~ THEN DO ~SetGlobal("YFBodhiBurns","GLOBAL",0) SetGlobal("YFBodhiRemoved","GLOBAL",0) JoinParty()~ EXIT
	END
END
