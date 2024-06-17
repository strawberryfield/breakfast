Bathroom kit by The Strawberry Field begins here.

Include Locksmith by Emily Short.

Volume 0 - Common properties

A thing can be clean or dirty. A thing is usually clean.

Volume 1 - Electrical stuffs

A ceiling lamp is a kind of thing. The description is "[if lit]It's not a good idea to look at a lit lamp[otherwise]An ordinary white ceiling lamp[end if]."
A light switch is a kind of device. The description is "An ordinary electrical wall switch." 
A light switch has a thing called powered item.
Understand "electrical switch" as a light switch.
Understand "lamp" as a light switch.

After switching on a light switch (called current switch):
	now the powered item of the current switch is lit;
	if the action is not silent, say "You switched on [the powered item of the current switch].".
After switching off a light switch (called current switch):
	now the powered item of the current switch is not lit;
	if the action is not silent, say "You switched off [the powered item of the current switch].".

Understand "power on/-- [something]" as switching on.
Understand "power off/down [something]" as switching off.
Understand "power [something] on/--" as switching on.
Understand "power [something] off/down" as switching off.

Does the player mean switching on a light switch: it is likely. 
Does the player mean switching off a light switch: it is likely. 

Volume 2 - Sink 

A sink-item is a kind of thing.

Washing hands is an action applying to nothing and requiring light.
Washing hands in is an action applying to one thing and requiring light.
Understand "wash the/my/-- hands" as washing hands.
Understand "clean the/my/-- hands" as washing hands.
Understand "wash the/my/-- hands in/with [sink-item]" as washing hands in.
Understand "clean the/my/-- hands in/with [sink-item]" as washing hands in.

Carry out washing hands in:
	try washing hands instead.
	
Check washing hands:
	unless a sink-item is in the location of the player, say "There is nothing to wash with." instead.
Carry out washing hands:
	now the player is clean.
Report washing hands:
	say "Now your hands smell clean.".

Volume 3 - WC

A wc-room is a kind of room.
Definition: a wc-room is busy if a person is in it.

After opening a bathroom-door:
	now the back side of noun is lighted;
	continue the action.
After closing a bathroom-door:
	now the back side of noun is dark;
	continue the action.

Before going from a wc-room:
	let WC be a random wc-bowl in the location;
	if WC is dirty, say "Would you have liked to find the toilet dirty when you entered?" instead.

Chapter 3.1 - The bowl

A wc-bowl is a kind of supporter. A wc-bowl is scenery and enterable.
A wc-bowl is in every wc-room.
Understand "wc/bowl" or "wc bowl" as a wc-bowl.

Chapter 3.2 - The flush button

A flush button is a kind of thing. The description is "A large white button. You should press it after using the wc.".
A flush button is scenery.
A flush button is in every wc-room.

Instead of pushing a flush button:
	say "You cleaned the bowl with the water flush.";
	let W be a random wc-bowl in the location of the player;
	now W is clean.

Flushing is an action applying to an object.
Understand "flush [something]" as flushing.
Understand "flush" as flushing.
Rule for supplying a missing noun while flushing (this is the flush the room rule):
	now the noun is the location.
	
Check flushing:
	unless the noun is a flush button or the noun is a wc-room, say "There is nothing to flush here." instead.
Carry out flushing:
	let W be a random flush button in the location of the player;
	try pushing w.

Chapter 3.3

Urinating into is an action applying to an object.
Understand "urinate in/into/to/-- [something]" as urinating into.
Understand "urinate" as urinating into.
Understand "use wc/toilet/bowl" as urinating into.
Understand the command "pee" as "urinate".
Understand the command "wee" as "urinate".

Rule for supplying a missing noun while urinating into (this is the urinating everywhere rule):
	now the noun is the location.
Check urinating into:
	unless the noun is a wc-bowl or the noun is a wc-room, say "Make sure you behave like a polite person." instead.
Carry out urinating into:
	now the actor is dirty;
	let WC be the noun;
	unless the noun is a wc-bowl, let WC be a random wc-bowl in the noun;
	now WC is dirty.
Report urinating into:
	say "An inevitable need has finally been resolved!".

Section 3.3.1 - Sitting on bowl
	
After entering a wc-bowl:
	say "You are sitting on the bowl.";
	try urinating into the noun.

Understand "sit on/down/--" as entering.
Rule for supplying a missing noun while entering when the location is a wc-room (this is the seat on the wc rule):
	let WC be a random wc-bowl in the location;
	now the noun is the WC.

Volume 4 - Door

The bathroom-door is a kind of door.
A latch is a kind of thing. The description is "A turnable tab that locks the door." 
Understand "knob" as latch. 
A latch is part of every bathroom-door.

Does the player mean entering a door: it is likely. 
Does the player mean opening a door: it is likely. 
Does the player mean closing a door: it is likely. 

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
