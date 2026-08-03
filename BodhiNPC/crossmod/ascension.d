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
	IF ~InParty("YFBodhi")~ THEN BEGIN finBodhiCrossmod
	SAY @60
	IF ~~ THEN + YFfinBodhiCrossmodChain
	END
END

APPEND YFBoElfj
	IF ~InParty("YFBodElf")~ THEN BEGIN finBodhElfCrossmod
	SAY @60
	IF ~~ THEN + YFfinBodhiCrossmodChain
	END
END

CHAIN YFBod25j YFfinBodhiCrossmodChain
@61 
DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("irenic2b",FALSE)~ 
EXIT

CHAIN YFBoElfj YFfinBodhiCrossmodChain
@61 
DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("irenic2b",FALSE)~ 
EXIT