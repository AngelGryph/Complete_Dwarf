BEGIN "bdyeslic"

IF ~Global("bd_joined", "locals", 0) Global("bd_ncp_camp", "locals", 0)~
BEGIN intro
  SAY ~About time someone finally came to this Moradin-forsaken pit!  Care to help an old dwarf clean up some walking dead?~
  IF ~OR(2) BeenInParty("Yeslick") Global("SOD_fromimport", "global", 1)~
    REPLY ~Yeslick, is that you!?~
    GOTO yeslick_reunited
  IF ~!BeenInParty("Yeslick")~
    REPLY ~Hey, aren't you the dwarf I met in the mines?~
    GOTO yeslick_mines
  IF ~~
    REPLY ~That's the idea.  Why do you ask, and who are you?~
    GOTO yeslick_hero
END

IF ~~
BEGIN yeslick_reunited
  SAY ~<CHARNAME>!?  Heh, figures it would be you.  Ye never seemed like the type that would be happy to be cooped up in a palace fer weeks.~
  IF ~~
    REPLY ~Good to see you again, master dwarf.  Care to join me?~
    DO ~SetGlobal("bd_yeslick_was_in_bg1_party", "GLOBALS", 1)~
    GOTO yeslick_join
END

IF ~~
BEGIN yeslick_mines
  SAY ~Ah, then yer the brave fool who took back me ancestors' mines from the Throne.  Come down another dark pit, have you?~
  IF ~~
    REPLY ~Yeah, and this time I could use a stout hammer and good dwarven senses.  Care to join me?~
    GOTO yeslick_join
END

IF ~~
BEGIN yeslick_hero
  SAY ~Yeslick be my name. And you are... wait, I recognize ye from when I was at Baldur's Gate.  Aren't ye the one they call hero?~
  IF ~~
    REPLY ~They call me that alright, but I don't know if it's deserved.~
    GOTO yeslick_mines
  IF ~~
    REPLY ~Yep, that's me, the Hero of Baldur's Gate.~
    GOTO yeslick_mines
END

IF ~~
BEGIN yeslick_join
  SAY ~It would be my pleasure, friend.  Onwards we go!~
  IF ~~
    DO ~JoinParty()~
    EXIT
END


