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
A food-item can be bread-placeable. A food-item is usually not bread-placeable.
A food-item has some text called attributes.
Rule for printing the name of a food-item (called target):
	if the attributes of the target are not empty, say "[attributes of the target] ";
	say printed name of the target.
	
A butter-item is a kind of food-item. It is spreadable. It is bread-placeable.
The flavor-description of a butter-item is "soft, creamy, and rich, with just a hint of sweetness".
The scent-description of a butter-item is "smell of good milk cream".

Does the player mean tasting a food-item: it is likely.
Does the player mean smelling a food-item: it is likely.
Does the player mean eating a food-item: it is likely.
Does the player mean quizzing about a food-item: it is likely.
Does the player mean taking a food-item: it is likely.

Book 2.1 - bread

A bread-slice is a kind of food-item.
A bread-filling is a kind of supporter. A bread-filling is part of every bread-slice.
A bread-slice can be buttered or unbuttered. A bread-slice is usually unbuttered.

To decide which bread-filling is fill holder of (target - a bread-slice):
	decide on a random bread-filling which is part of the target.
	
[Definition: a bread-slice (called target) is buttered:
	if the list of butter-items held by the fill holder of the target is empty, decide no;
		decide yes.]

Definition: a bread-slice (called target) is dressed:
	let the filler list be the list of food-items which are not butter-items held by the fill holder of the target;
	if the filler list is empty, decide no;
		decide yes.

To say dressing of (target - bread-slice):
	say list of food-items which are not knobs of butter held by the fill holder of the target.

Rule for printing the name of a bread-slice (called target):	
	say "[if target is buttered]buttered [end if][printed name of the target][if target is dressed] dressed with a [dressing of target][end if]".

Understand the buttered property as describing a bread-slice.
	
Book 2.2 - jams

A jam-item is a kind of food-item. It is spreadable. It is bread-placeable.

A single portion jar is a kind of container.
A single portion jar is closed, openable not lockable.

Instead of closing an open single portion jar, say "Once opened, the package [cannot] be resealed."
Instead of inserting something into a single portion jar, say "[We] [can't] do it."
	
Understand "single/-- portion/serving/-- container/jar" as a single portion jar.

Does the player mean taking a closed single portion jar: it is very likely.

Book 2.3 - vegetables

A vegetable is a kind of food-item.
A vegetable can be chopped. A vegetable is usually not chopped.
Understand the chopped property as describing a vegetable.
Rule for printing the name of a vegetable: say "[if chopped]chopped [end if][printed name]".

Chapter 2.3.1 - cutting

Instead of cutting a food-item, say "There is no point in cutting [the noun]."
Instead of cutting a vegetable, say "You should specify what you cut it with."

Cutting it with is an action applying to two things.
Understand "cut [something] with/using [something]" as cutting it with.
Understand "use [something] to cut/chop [something]" as cutting it with (with nouns reversed).
To cut is a verb.
to chop is a verb.

Does the player mean cutting a vegetable on a chopping board with: it is likely.

Check cutting it with:
	unless the second noun is a knife, say "A knife is needed to cut." instead;
	unless the noun is a vegetable, say "There is no point in cutting [the noun]." instead;
	unless the noun is on a chopping board, say "It is better to lean on a chopping board." instead;
	if the noun is chopped, say "It's already chopped." instead.
Carry out cutting it with:
	now the noun is chopped.
Report cutting it with:
	say "[We] [cut] [the printed name of the noun] using [the second noun] in small pieces."
	
Volume 3 - Spreading

Spreading it on is an action applying to two things.
Understand "spread [something] on/over [something]" as spreading it on.

Check spreading it on:
	unless the noun is a food-item, say "There is no need to spread something inedible." instead;
	unless the noun is spreadable, say "[We] [cannot] spread [the noun]." instead;
	unless the second noun is a bread-slice, say "[The noun] should be spread on a slice of bread, not [the second noun]." instead;
	if the noun is a butter-item and the second noun is buttered, say "It's already buttered." instead;
	if the second noun is dressed, say "[We] [cannot] spread [the noun] over another dressing." instead.	
	
Carry out spreading it on:
	now the noun is in the fill holder of the second noun;	
	if the noun is a butter-item, now the second noun is buttered.

Report spreading it on:
	say "Now [we] [have] [a second noun].[paragraph break]".	

Does the player mean spreading a food-item on: it is likely.

Instead of putting something on a bread-slice:
	unless the noun is a food-item, say "There is no point in putting something inedible on [a second noun]." instead;
	unless the noun is bread-placeable, say "Isn't a good idea to put [a noun] on [a second noun]." instead;
	if the noun is spreadable, try spreading the noun on the second noun instead;
	if the second noun is buttered, say "[A noun] on [a second noun]? Very strange." instead;
	if the second noun is dressed, say "[We] already [have] [a second noun], why put another filling on top?" instead;
	now the noun is in the fill holder of the second noun;
	say "Now [we] [have] [a second noun].".	

Understand "dress [something] with [something]" as putting it on (with nouns reversed).	
	
		
Volume 4 - Service containers and supporters

Book 4.1 - containers and supporters

A service container is a kind of container. It is open and not openable.
A service supporter is a kind of supporter. 
Instead of taking a service container, say "[The noun] is a container that has to remain at the disposal of everyone, so leave it where it is.".
Instead of taking a service supporter, say "[The noun] has to remain at the disposal of everyone, so leave it where you found it.".

To say cannot return food:
	say "Any food that has been in contact with you will no longer be of use to others.".
Instead of inserting something into a service container, say cannot return food.
Instead of inserting something into a service supporter, say cannot return food.

The sc-content flag is a truth state that varies. The sc-content flag is false.

To say round content of (C - a thing):
	let N be the number of things held by C;
	let X be the first thing held by C;
	say "[adjectival N in round numbers] [if N is greater than 1][printed plural name of X][otherwise][X][end if]".

Instead of examining a service container:
	say "[description of the noun][/n]";
	now examine text printed is true;
	if the noun is empty, say "It is actually empty";
	otherwise:
		say "It contains [round content of the noun]";
	say ". [/n]".
Rule for printing the name of a service container (called target):
	say "[printed name of target][if sc-content flag is true] [list the contents of target][end if]".
To say list the contents of (C - a service container):
	if C is empty, say "which is actually empty";
	otherwise:
		say "with [round content of C]".

Instead of examining a service supporter:
	say "[description of the noun][/n]";
	now examine text printed is true;
	if the noun is empty, say "It is actually empty";
	otherwise:
		say "On it you can see [round content of the noun]";
	say ". [/n]".
Rule for printing the name of a service supporter (called target):
	say "[printed name of target][if sc-content flag is true] [list the contents of target][end if]".
To say list the contents of (C - a service supporter):
	if C is empty, say "which is actually empty";
	otherwise:
		say "with [round content of C]".

Book 4.2 - service tables

A service table is a kind of supporter.

Instead of examining a service table:
	say "[description of the noun][line break]";
	now examine text printed is true;
	now sc-content flag is true;
	say "On it [is-are a list of things held by the noun].";
	now sc-content flag is false.

Book 4.3 - chopping boards

A chopping board is a kind of service supporter.
The description is "A wooden chopping board."
Understand "cutting board" as a chopping board.

	
Food ends here.