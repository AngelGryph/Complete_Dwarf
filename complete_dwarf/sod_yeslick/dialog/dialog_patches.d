APPEND "bdschael"

IF ~~
BEGIN mh#yeslick
  SAY ~Your dwarf ally left the city about a week ago, and did not say where he was headed.  However, we do know that a group of dwarves is digging for something in a cavern near Coast Way crossing, he might be with them.~
  COPY_TRANS "bdschael" 44
END

END // APPEND "bdschael"


EXTEND_BOTTOM "bdschael" 40 41 42 43
  IF ~Or(2)
      Global("SOD_fromimport", "global", 1)
      BeenInParty("yeslick")~
    REPLY ~Do you know where Yeslick went?~
    GOTO mh#yeslick
END


APPEND "bddeep"

IF ~~
BEGIN mh#yeslick
  SAY ~Ah, t' alaghor be a friend o' ye?  Aye, he offered his hammer t' our cause a day o' two back.  Ain't seen him since hell broke loose down below, sorry t' say.  He may yet live though, seemed like he'd nae go down easy.~
  IF ~~
    GOTO 29
END

END // APPEND "bddeep"


EXTEND_BOTTOM "bddeep" 23
  IF ~Or(2)
      Global("SOD_fromimport", "global", 1)
      BeenInParty("yeslick")~
    REPLY ~I'm looking for another dwarf, a cleric of Clangeddin named Yeslick.  Do you know where he is perhaps?~
    GOTO mh#yeslick
END


