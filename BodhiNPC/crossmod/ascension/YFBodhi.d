

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
  IF ~OR(2) InParty("YFBodhi") InParty("YFBodElf")~ 
  THEN REPLY @59 EXTERN YFBodhij finBodhCrossmod
END

APPEND YFBodhij
	IF ~InParty("YFBodhi")~ THEN BEGIN finBodhCrossmod
	SAY @60
	END
END // APPEND finbodh