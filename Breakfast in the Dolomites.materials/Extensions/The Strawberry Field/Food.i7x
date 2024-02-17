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

Volume 2 - Food items

A food-item is a kind of thing. It is edible.
A food-item can be spreadable. A food-item is usually not spreadable.

A butter-item is a kind of food-item. It is spreadable.
The flavor-description of a butter-item is "soft, creamy, and rich, with just a hint of sweetness".
The scent-description of a butter-item is "smell of good milk cream".

Book 2.1 - bread

A bread slice is a kind of food-item.
A bread-filling is a kind of supporter. A bread-filling is part of every bread slice.

To decide which bread-filling is fill holder of (target - a bread slice):
	decide on a random bread-filling which is part of the target.
	
Definition: a bread slice (called target) is buttered:
	if the list of butter-items held by the fill holder of the target is empty, decide no;
		decide yes.

Definition: a bread slice (called target) is dressed:
	let the filler list be the list of food-items which are not butter-items held by the fill holder of the target;
	if the filler list is empty, decide no;
		decide yes.

To say dressing of (target - bread slice):
	say "[list of food-items which are not knobs of butter held by the fill holder of the target]".

Rule for printing the name of a bread slice (called target):	
	say "[if target is buttered]buttered [end if][printed name of the target][if target is dressed] dressed with a [dressing of target][end if]".
	
Volume 3 - Spreading

Spreading is an action applying to two things.
Understand "spread [something] on/over [something]" as spreading.

Check spreading:
	unless the noun is a food-item, say "There is no need to spread something inedible." instead;
	unless the noun is spreadable, say "You cannot spread [the noun]." instead;
	unless the second noun is a bread slice, say "[The noun] should be spread on a slice of bread, not [the second noun]." instead;
	if the noun is a knob of butter and the second noun is buttered, say "It's already buttered." instead;
	if the second noun is dressed, say "You cannot spread [the noun] over another dressing." instead.	
	
Carry out spreading:
	now the noun is in the fill holder of the second noun.	

Report spreading:
	say "Now you have [a second noun].[paragraph break]".	

Food ends here.