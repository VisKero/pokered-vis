_GreensHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_GreensHouseDaisyOfferMapText::
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_GreensHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_GreensHouseDaisyUseMapText::
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_GreensHouseDaisyWalkingText::
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

_GreensHouseTownMapText::
	text "It's a big map!"
	line "This is useful!"
	done
