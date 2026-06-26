// Bodhi is summoned via Fate Spirit. This code is taken directly from the game.
// #3 means that Bodhi should be placed after the first 3 lines.

EXTEND_TOP FATESP 6 #3
+ ~!InMyArea("YFBodhi") Global("YFBodhiSummoned","GLOBAL",0)~ + @0 /*Bring me Bodhi, the bloodthirsty vampire.*/
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("YFBod25",[1999.1228],0) 
SetGlobal("YFBodhiSummoned","GLOBAL",1)~ GOTO 8
END