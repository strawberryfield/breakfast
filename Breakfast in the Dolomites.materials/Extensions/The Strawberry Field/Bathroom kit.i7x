Bathroom kit by The Strawberry Field begins here.

Include Locksmith by Emily Short.

Volume 0 - Common properties

A thing can be clean or dirty. A thing is usually clean.

Volume 1 - Electrical stuffs

A ceiling lamp is a kind of thing. The description is "[if lit]It's not a good idea to look at a lit lamp[otherwise]An ordinary white ceiling lamp[end if]."
A light switch is a kind of device. The description is "An ordinary electrical wall switch." 
Understand "electrical switch" as a light switch.
Powering relates a light switch to a ceiling lamp. The verb to power means the powering relation.

After switching on a light switch (called current switch):
	let the lamp be a random ceiling lamp which is powered by the current switch; 
	now the lamp is lit;
	say "You switched on [the lamp].".
After switching off a light switch (called current switch):
	let the lamp be a random ceiling lamp which is powered by the current switch; 
	now the lamp is not lit;
	say "You switched off [the lamp].".

Volume 2 - Sink 

A sink-item is a kind of thing.

Washing hands is an action applying to nothing and requiring light.
Understand "Wash the/-- hands" as washing hands.
Understand "Clean the/-- hands" as washing hands.

Check washing hands:
	unless a sink-item is in the location of the player, say "There is nothing to wash with." instead.
Carry out washing hands:
	now the player is clean.
Report washing hands:
	say "Now your hands smell clean.".

Volume 3 - WC

A wc-room is a kind of room.
A wc-bowl is a kind of supporter. A wc-bowl is enterable.

Urinating into is an action applying to an object.
Understand "Urinate in/into/to/-- [something]" as urinating into.
Understand "Urinate" as urinating into.
Understand "Use wc/toilet/bowl" as urinating into.

Rule for supplying a missing noun while urinating into (this is the urinating everywhere rule):
	now the noun is the location.
Check urinating into:
	unless the noun is wc-bowl or the noun is a wc-room, say "Make sure you behave like a polite person." instead.
Carry out urinating into:
	now the actor is dirty;
	now the noun is dirty.
Report urinating into:
	say "An inevitable need has finally been resolved!".
	
After entering a wc-bowl:
	say "You are sitting on the bowl.";
	try urinating into the noun.

Volume 4 - Door

The bathroom-door is a kind of door.
A latch is a kind of thing. The description is "A turnable tab that locks the door." 
Understand "knob" as latch. 
A latch is part of every bathroom-door.

Instead of turning a latch (called knob): 
	let the target door be the a random bathroom-door which incorporates the knob;
	if the location of the player is the front side of the target door, say "There is no latch to turn." instead;
	if the target door is open, say "The latch doesn't work while the door is open." instead;
	if the target door is locked:
		say "Click! You turn the latch, and the door is unlocked.";
		now the target door is unlocked;
	otherwise:
		say "Click! You turn the latch, and the door is locked.";
		now the target door is locked.

Before unlocking keylessly a bathroom-door (called target) while the location of the player is the back side of the target:
	if the target is unlocked, say "[The target] is already unlocked." instead;
	let the knob be a random latch which is part of the target;
	try turning the knob instead.

Before locking keylessly a bathroom-door (called target) while the location of the player is the back side of the target:
	if the target is locked, say "[The target] is already secure." instead;
	let the knob be a random latch which is part of the target;
	try turning the knob instead.

To say only from inside (d - a bathroom-door): say "only from inside the [printed name of back side of d]" in lower case.
To say only latch: say "with its latch, not with a key".

Before unlocking keylessly a bathroom-door (called target) while the location of the player is the front side of the target:
	say "You can unlock the door [only from inside target]." instead.

Before locking keylessly a bathroom-door (called target) while the location of the player is the front side of the target:
	say "You can lock the door [only from inside target]." instead.

Before locking a bathroom-door (called target) with something while the location of the player is the back side of the target:
	say "[The target] locks [only latch]." instead.

Before unlocking a bathroom-door (called target) with something while the location of the player is the back side of the target:
	say "[The target] unlocks [only latch]." instead.

Before locking a bathroom-door (called target) with something while the location of the player is the front side of the target:
	say "[The target] locks [only latch], and [only from inside target]." instead.

Before unlocking a bathroom-door (called target) with something while the location of the player is the front side of the target:
	say "[The target] unlocks [only latch], and [only from inside target]." instead.


Bathroom kit ends here.
