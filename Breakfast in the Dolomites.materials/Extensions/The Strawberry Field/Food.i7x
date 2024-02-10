Food by The Strawberry Field begins here.

Volume 1 - Smell and Taste

A thing has some text called the scent-description.

The scent-description of a person is usually "deodorant".

A thing has some text called the flavor-description.

Instead of tasting something:
	if the flavor-description of the noun is "":
		if the noun is r-abstract:
			say "There's not enough there to provide much flavour.";
		else:
			say "[regarding the noun][They] [taste] as I would have expected.";
	otherwise:
		say "[flavor-description of the noun].[paragraph break]".

Instead of smelling something:
	if the scent-description of the noun is "":
		if the noun is r-abstract:
			say "There's hardly any odour to [the noun].";
		else:
			say "[regarding the noun][They] [smell] as I would have expected.";
	otherwise:
		say "[regarding the noun][They] [smell] like [scent-description of the noun].[paragraph break]".

Instead of tasting something which is not edible:
	if the noun is a person:
		say "That would be unpleasantly intimate.";
	otherwise:
		say "[one of]I have an aversion to licking things that aren't meant for human consumption.[or]Doesn't that seem kind of germy?[or]Ew.[at random]".

Understand "bite [someone]" as attacking.

Understand "bite [something]" as tasting.

Food ends here.