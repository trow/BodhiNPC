ALTER_TRANS finbodh BEGIN 7 END BEGIN 0 END BEGIN
  TRIGGER ~!InParty("YFBodhi") !InParty("YFBodElf")~
END

ALTER_TRANS finbodh BEGIN 7 END BEGIN 1 END BEGIN
  TRIGGER ~!InParty("YFBodhi") !InParty("YFBodElf")~
END

ALTER_TRANS finbodh BEGIN 7 END BEGIN 2 END BEGIN
  TRIGGER ~!InParty("YFBodhi") !InParty("YFBodElf")~
END

ALTER_TRANS finbodh BEGIN 7 END BEGIN 3 END BEGIN
  TRIGGER ~!InParty("YFBodhi") !InParty("YFBodElf")~
END

EXTEND_BOTTOM finbodh 7
  IF ~InParty("YFBodhi")~ 
  THEN REPLY @59 EXTERN YFBod25j finBodhiCrossmod
  
  IF ~InParty("YFBodElf")~ 
  THEN REPLY @59 EXTERN YFBoElfj finBodhElfCrossmod
END

APPEND YFBod25j
	IF ~~ THEN BEGIN finBodhiCrossmod
	SAY @60
		IF ~Global("BalthazarFights","GLOBAL",1)DifficultyLT(4)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2a")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",1)DifficultyGT(3)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2b")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",0)DifficultyLT(5)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2a")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",0)DifficultyGT(4)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2b")~ EXIT
	END
END

APPEND YFBoElfj
	IF ~~ THEN BEGIN finBodhElfCrossmod
	SAY @60
		IF ~Global("BalthazarFights","GLOBAL",1)DifficultyLT(4)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2a")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",1)DifficultyGT(3)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2b")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",0)DifficultyLT(5)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2a")~ EXIT
		IF ~Global("BalthazarFights","GLOBAL",0)DifficultyGT(4)~ THEN DO
			~ClearAllActions()StartCutSceneMode()StartCutScene("irenic2b")~ EXIT
	//IF ~~ THEN + YFfinBodhiElfCrossmodChain
	END
END

//CHAIN YFBod25j YFfinBodhiCrossmodChain
//@61 
//DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("irenic2b",FALSE)~ 
//EXIT
//
//CHAIN YFBoElfj YFfinBodhiElfCrossmodChain
//@61 
//DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("irenic2b",FALSE)~ 
//EXIT