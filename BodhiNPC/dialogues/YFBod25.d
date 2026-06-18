
//Fate Spirit dialogue has to be separate for EET to work right.
// After Bodhi is summoned via Fate Spirit.

BEGIN YFBod25

//if you saved her
APPEND YFBod25 IF ~Global("YFBodhiSummoned","GLOBAL",2)~ THEN YFbs1
SAY @1 /*So, you wish me to hunt with you once again? Excellent. Let our prey fear the sound of our approach.*/ 
	IF ~~ THEN DO ~SetGlobal("YFBodhiJoinedTOB","GLOBAL",1) SetGlobal("YFBodhiSummoned","GLOBAL",3) JoinParty()~ EXIT
	END
END

