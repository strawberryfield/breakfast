"Breakfast in the Dolomites" by Roberto Ceccarelli

Volume 0 - Introduction

The release number is 1.
The story creation year is 2024.
The story genre is "Screwball comedy".
The story headline is "A play just for fun comedy".
The story description is "It is the mid-1990s. On a Friday evening in the summer, a young man and his girlfriend leave work for a short holiday in the Dolomites.
You play as Francesco, about 30 years old, blond hair. You work as a software engineer, like photography and hiking in the mountains. 
Monica, your girlfriend, is beautiful: tall, slim, with lots of slightly reddish, frizzy hair and sparkling green eyes: could you not fall in love with her? 
She loves strolling around looking in shop windows; a peppy girl, she won't forgive you anything you do that she doesn't like, but deep down she has her heart beating for you.
What a strange thing love is...

You have to plan the first day of your holiday. There are no treasures to be found, no mysteries to be solved: the only prize is to spend a beautiful day in this wonderful mountain world.".
Release along with the cover art ("Breakfast in the Dolomites") and the library card.

Chapter 0.1 - Includes

Include Cleared Events by Daniel Stelzer.
Include Large Game Speedup by Nathanael Nerode.
Include Conversation Package by Eric Eve.
Include Metric Units by Graham Nelson.
Include Assorted Text Generation by Emily Short.
Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects (for Glulx only) by Emily Short.
Include Scopability by Brady Garvin.
Include Customized Trinity Inventory by The Strawberry Field.
Include Measured Liquid by Emily Short.
Include Commons by The Strawberry Field.
Include Food by The Strawberry Field.
Include Workers by The Strawberry Field.
Include Bathroom kit by The Strawberry Field.
Include Written papers by The Strawberry Field.

Chapter 0.2 - Game start

[ uncomment below for release]
[	
When play begins:
	say "[story-beginning]";
	say "[/p][/b]«The Strawberry Field»[/r] [/i]presents[/r][/p]";
	pause the game.
]

Arrival-trigger is a truth state that varies. 
After printing the banner text:
[	pause the game;
	now arrival-trigger is true;
	say "[arrive to hotel][/n]";
	Monica leaves the car in 1 turn from now.]
	[ uncomment above for release, than comment below]
	now the player is in the reception;
	now the player is registered;
	now the player wear the red backpack;
	let K be a random room key in sleeping room;
	now the player carries K;
	now Monica is in the reception;
	now Monica is registered;
	now Monica carries the pink trolley;
	let K be a random room key in sleeping room;
	now K is in the handbag;
	now The check-in-trigger is true;
	Monica leaves the car never.
	
Volume 1 - Commons 

Book 1.1 - Typography

Chapter 1.1.1 - Styles

Table of User Styles (continued)
style name	color	italic	font weight
special-style-1	"#FF0000"	false	regular-weight
note-style	"#0000A0"	true	bold-weight


Book 1.2 - Patches

Chapter 1.2.1 - Measured liquids interfere with content of supporters

[resolved by otisdog]
After printing the name of a fluid container (called the target) while not [examining or searching or] pouring (this is the alternate suffix with contents rule):
	if the current action is the action of opening the target:
		do nothing;
	if the target is a liquid source:
		do nothing instead;
	if the target is closed and the target is not transparent:
		do nothing instead; 
	if the person asked is not the player:
		do nothing instead;
	unless the target is empty:
		unless examining the target or searching the target: [added]
			say " of [liquid of the target]" (A);
			omit contents in listing.

The alternate suffix with contents rule is listed instead of the suffix with contents rule in the after printing the name rules.

Chapter 1.2.2 - Measured liquids interfere with Trinity Inventory

[resolved by otisdog]
Rule for inventory listing the contents of a fluid container (called target):
	do nothing.

Carry out taking inventory when the number of listed when carried things carried by the player is at least one (this is the alternate non-empty inventory rule):
	say "holding [a list of listed when carried things carried by the player][run paragraph on]" (A).

The alternate non-empty inventory rule is listed instead of the non-empty inventory rule in the carry out taking inventory rules.

The inventory normal rule is not listed in any rulebook.

Volume 2 - Rooms definitions

The Car is a room. 
The Parking is a room.
The Garden is east of the parking.
The Reception is a room.
The Stairs is above the reception.
The bathroom-antechamber is a dark room.
The bathroom door is a closed, openable, not lockable, scenery door.
The bathroom door is inside from the reception and outside from the bathroom-antechamber.
The Dining room is east of the reception.
The Buffet is north of the dining room.
The Kitchen is a room.
The Sleeping room is a room.

Book 2.1 - The car

The description of the car is "A city car; the interior space is not much, but more than enough for a young couple. [/n]Next to the dashboard, under the radio, is a small drawer."
Instead of an actor dancing while the location of the actor is the car: say "Not enough room in here.".

Chapter 2.1.1 - The dashboard

Section 2.1.1.1 - The Dashboard

The dashboard is a scenery open, not openable container in the car. 
The description is "An old-fashioned dashboard with analogue instruments[if your-car-key is enclosed by the dashboard]. [/n]The key is inserted[end if].".
Instead of examining the dashboard, say "[description of the dashboard][/n]".

Section 2.1.1.2 - The key

your-car-key is a thing in the dashboard. Printed name is "your car[']s key".
The description is "The key to open and start your car."
Understand "key" as your-car-key.

Section 2.1.1.3 - The drawer

The tiny drawer is a closed openable container. It is part of the dashboard.
Instead of inserting something which is not your-car-key into the dashboard, try inserting the noun into the tiny drawer.

Section 2.1.1.4 The radio

The radio is a device. It is part of the dashboard.
Instead of switching on the radio, say "This is not the time to turn on the radio.".

Chapter 2.1.2 - The car door

The car door is a closed openable lockable scenery door.
The description is "[if the location of the player is the car]The door of your car[otherwise][car external][end if].".
It is outside of the car and inside from the parking.

Your-car-key unlocks the car door.
 
To say car external:
	say "Your little white city car, the door ";
	if the car door is open:
		if the boot is open, say "and the boot are open";
		otherwise: 
			say "is open and the boot is closed";
	otherwise:
		if the boot is open, say "is closed and the boot is open";
		otherwise:
			say "and the boot are closed".
	

Chapter 2.1.3 - The car boot

The boot is a closed openable lockable scenery container in the parking.
Understand "trunk" as the boot.

Section 2.1.3.1 - Locking rules

Before locking the car door with your-car-key while the car door is closed and the boot is open:
	say "The car boot is open." instead.
After locking the car door with your-car-key:
	now the boot is locked;
	continue the action.
After unlocking the car door with your-car-key:
	now the boot is unlocked;
	continue the action.

Section 2.1.3.2 - Boot content

The pink trolley is a closed openable container in the boot.
The description is "A jaunty pink trolley.".
Instead of opening the pink trolley:
	say "[alert][Monica] [look] at you with a fierce gaze." instead.

Response of Monica when asked for the pink trolley:
	try asking Monica to try giving the pink trolley to the player.
Instead of taking the pink trolley while the pink trolley is carried by Monica:
	try asking Monica to try giving the pink trolley to the player.
Persuasion rule for asking Monica to try giving the pink trolley to the player: persuasion succeeds.
Instead of Monica giving the pink trolley to the player:	
	now the player carries the pink trolley;
	say "[heart][/ss]Will you carry it for me? How kind you are!' [/se]she thanks you with a wonderful smile.";
	the rule succeeds.
	
The red backpack is a closed openable wearable container in the boot.
The description is "Your beloved, somewhat frayed, red backpack.".
Understand "baggage/luggage" as the red backpack.
Instead of opening the red backpack, say "There is nothing you need in your backpack now.".

Chapter 2.1.4 - Timed events

At the time when Monica leaves the car:
	say "[Monica] [jump] out of the car, then [close] the car door.";
	now Monica is in the parking;
	Monica takes trolley in 2 turn from now.

At the time when Monica takes trolley:
	if the boot is locked:
		say "[alert][/ss]Unlock the car!' [/se][Monica] [cry]."; 
		Monica takes trolley in 1 turn from now;
	otherwise:
		unless the boot is open:
			now the boot is open;
			say "[Monica] [open] the car boot revealing [a list of things in the boot], then [regarding Monica][they] [take] [their] pink trolley.";
		otherwise:
			say "[Monica] [take] [their] pink trolley from the boot.";
		now Monica carries the pink trolley;
	Monica knocks in 1 turns from now.

Mknock-count is a number that varies. Mknock-count is 0.	
At the time when Monica knocks:
	if the location of the player is the car:
		Increase Mknock-count by 1;
		say "[alert][Monica] [are] knocking on the door of the car[other times of Mknock-count].[/ss]What are you still doing in there?' [/se][they] [ask].";
		Monica knocks in 1 turns from now.	
	
Book 2.2 - The parking

The description of the parking is "The hotel's reserved car park. [/n]Your white car is perhaps the smallest of all. [/n]To the east is the garden.".

Chapter 2.2.1 - Rules

Before going to the garden from the parking:
	unless the red backpack is enclosed by the player:
		say "[alert][/ss]You forgot to take your luggage.' [/se][Monica] [remind] you." instead;
	unless the car door is closed:
		say "[alert][/ss]How distracted you are tonight: you left the car door open!' [/se][Monica] [exclaim]." instead;
	unless the boot is closed:
		say "[alert][/ss]It's better to close the car boot.' [/se][Monica] [suggest]." instead;
	unless the car door  is locked:
		say "[alert][/ss]There are a lot of thieves in this world, did you check to make sure that you've locked the car?' [/se][Monica] [ask]." instead;
	unless the pink trolley is enclosed by a people:
		say "[alert][/ss]I'd better carry the trolley myself!' [/se][Monica] [say] annoyed and [take] [their] trolley again.";
		now Monica carries the pink trolley.
		
After going to the garden from the parking:
	say "[Monica] [follow] you. [/n]";
	now Monica is in the garden;
	now arrival-trigger is false;
	continue the action.

Chapter 2.2.2 - Backdrops

The sky is a backdrop. The sky is in the parking and in the garden.
The description is "The sky is black because the moon is new; this makes it possible to admire a great number of stars.".
Understand "moon/stars" as the sky.

The ground is a backdrop. The ground is in the parking and in the garden.
The description is "[if the location of the player is the parking]An asphalted square; the parking spaces are marked with yellow paint[otherwise]A gravel driveway with well-mown grass to the sides[end if].".

Book 2.3 - The garden

The description of the garden is "There are fir trees in the garden and wooden tables and chairs in the lawn. [/n]The driveway is lit by a few marker lamps. At the end of it a sliding door is the entrance to the hotel. [/n]Parking is to the west.".

Instead of going to the parking from the garden, say "You didn't forget anything important in the car.".

Chapter 2.3.1 - The sliding door

The sliding door is a scenery closed openable door. The description is "An automatic glass sliding door."
The sliding door is inside from the garden and outside from the reception.

After opening the sliding door, say "[We] [come] closer to [the noun] and it automatically [open].".
After closing the sliding door, say "[We] [move] away from [the noun] and it automatically [close].".
Instead of going through the sliding door:
	try opening the noun;
	the sliding door closes in 0 turns from now;
	continue the action.
After going through the sliding door:
	say "[Monica] also [walk] through the door.";
	now Monica is in the location of the player;
	now check-in-trigger is true;
	the receptionist greets in 1 turn from now;
	continue the action.
At the time when the sliding door closes:
	try closing the sliding door.

To say automatic door:
	say "It is an automatic door".
Instead of opening the sliding door while the location of the player is the reception, say "[automatic door].".
Instead of closing the sliding door while the location of the player is the reception, say "[automatic door].".
	
Book 2.4 - The reception

The description of the reception is "[if unvisited]This charming little hotel welcomes guests with its cosy reception area: the inviting atmosphere is immediately apparent, with a blend of rustic elegance and modern comfort. [/n][end if]The receptionist stands behind a tastefully crafted wooden desk, ready to assist guests with a genuine smile. [/n]Stairs lead to the upper floors. To the east is the dining room, along the wall is a door. [if unvisited][/p]The reception of this little hotel in the Dolomites serves as the perfect introduction to the unique blend of comfort and authenticity that awaits guests throughout their stay, promising a memorable and rejuvenating experience in this picturesque mountain retreat. [end if]".

The wooden desk is a scenery supporter in the reception.
Understand "counter" as the wooden desk.
The staircases are scenery in the reception.
Understand "stairs" as staircases.

A room key is a kind of thing. 
The description is "This is a standard Yale key with an oval pendant with the word 'edelweiss' on it.".
Before listing contents: group room keys together.
Two room keys are in the sleeping room.

Chapter 2.4.1 - Rules for check-in

To decide if check-in is completed:
	if the player is registered and Monica is registered, decide yes;
	decide no.
	
Section 2.4.1.1 - Movements during check-in

Instead of going east during the check-in, say "It is late, the lights are out and there is no one around.".
Instead of going through the bathroom door during the check-in, say "There is nothing interesting there.".
Instead of opening the bathroom door during the check-in, say "There is nothing interesting there.".
Instead of examining the bathroom door during the check-in, say "There is not much light there, all you see is an ordinary wooden door.".

Instead of going outside during the check-in:
	say "[alert][/ss]Where are you going?[run paragraph on]";
	unless check-in is completed, say " We have to complete the check-in![run paragraph on]";
	say "' [/se][Monica] [say]. [/n]It would be completely useless to go out, you have everything you need with you.".

Instead of going up during the check-in:
	unless check-in is completed, say "You have not yet completed your check-in." instead;
	unless a room key is enclosed by the player:
		if a room key is on the wooden desk, say "[/ss]Mr. Francesco, you forgot your key.' [/se][the naming of the receptionist] reminds you." instead;
		say "[alert][/ss]Are you sure you took the room key?' [/se][Monica] [ask]." instead;
	unless a room key is enclosed by Monica, say "[Monica] [have] not yet taken [their] key." instead;
	unless the red backpack is enclosed by a people, say "[/ss]Mr. [printed name of the player], you forgot your backpack.' [/se][the naming of the receptionist] [remind] you." instead;
	unless the pink trolley is enclosed by a people, say "[/ss]You forgot your trolley.' [/se][the naming of the receptionist] [remind] you." instead;
	Monica gets tired never;
	now the check-in-trigger is false.
		
Section 2.4.1.2 - Wallet items

Instead of taking the driving license during the check-in, say "[We] [have] driven for hours to get here, now it is time to rest.".
Instead of giving the identity card to the receptionist during the check-in:
	try showing the identity card to the receptionist.
Instead of showing the identity card to the receptionist during the check-in:
	say "You show your identity card to [the naming of receptionist].";
	say "[/ss]Thank you Mr. [printed name of the player].' [/se]he says, then he copies your data into the computer.";
	now the player is registered;
	Monica urges your document never;
	if Monica is registered, receptionist closes check-in in 0 turns from now.

Section 2.4.1.3 - Room keys

Instead of giving a room key to Monica during the check-in:
	if a room key is enclosed by Monica:
		say "[heart][/ss]It is better if we keep one each.' [/ss][Monica] [suggest]." instead;
	unless the player carries a room key:
		say "(first taking a room key)[command clarification break]";
		let K be a random room key in the reception;
		try taking K;
	let K be a random room key carried by the player;
	now K is in the handbag;
	Monica asks for key never;
	say "You give a key of the room to your girlfriend. [/n]She takes the key and puts it into her handbag. [/n][heart][/ss]Thank you my love.' [/r][/n]".

Section 2.4.1.4 - Movements during breakfast

To say breakfast time:
	if the location of Monica is the reception,	say "[alert][/ss]Where are you going?' [/se][Monica] [say], [/ss]now it's breakfast time!' [/r][/n]";
	otherwise:
		say "[Monica] is waiting for you at the table. [/n]".	
Instead of going outside from the reception during the breakfast:
	say "[breakfast time]".
Instead of going up during the breakfast:
	say "[breakfast time]".

Section 2.4.1.5 - Movements during morgen receptionist

To say more important things:
	say "There are more important things to do now.".
Instead of going east during the Morgen receptionist:
	say "[alert][/ss]Why don't you listen to what I'm suggesting?' [/se][Monica] [rebuke] you.".
Instead of going through the bathroom door during the Morgen receptionist, say more important things.
Instead of opening the bathroom door during the Morgen receptionist, say more important things.

Chapter 2.4.2 - Timed events

Section 2.4.2.1 - Check-in

At the time when the receptionist greets:
	say "[/ss]Good evening, welcome to our hotel!' [/se][the naming of receptionist] [greet] you.[/ss]How can I help you?' [/r][/n]";
	Monica greets the receptionist in 0 turns from now;
	Monica remember to greet in 1 turn from now;

Mrtg-count is a number that varies. Mrtg-count is 0.
At the time when Monica remember to greet:
	increase Mrtg-count by 1;
	say "[alert][/ss]Don't be rude, say hello to [the naming of receptionist].' [/se][Monica] [suggest] in your ear[other times of Mrtg-count].";
	Monica remember to greet in 1 turn from now;		

At the time when Monica greets the receptionist:
	say "[/ss][good evening receptionist].' [/se][Monica] [say][greet-to receptionist].". 	

At the time when the receptionist confirms reservation:
	say "[/ss]Here it is.' [/se][the naming of receptionist] reports. [/n][/ss]We have reserved the 'edelweiss' room for you: our rooms do not have a number, but the name of a flower.' [/r][/n]";
	say "[/ss]Oh nice!' [/se][Monica] [say] and [open] [their] handbag. [/n]";
	say "[The naming of receptionist] smiles. [/n]";
	now the shiny black handbag is open;
	the receptionist asks for documents in 1 turn from now.

At the time when the receptionist asks for documents:
	say "[/ss]May I have your documents so that I can register?' [/se][the naming of receptionist] [ask].";
	Monica shows document in 1 turn from now.
	
At the time when Monica shows document:
	say "[Monica] [take] [their] identity card and [show] it to [the naming of receptionist]. [/n]";
	say "[regarding receptionist][They] [copy] some data into the computer and [say] [/ss]Thank you Miss [Monica].' [/r][/n]";
	say "[Monica] [put] [their] identity card back in [their] handbag and [close] it.";
	now the shiny black handbag is closed;
	now Monica is registered;
	unless the player is registered, Monica urges your document in 2 turns from now;
	otherwise:
		receptionist closes check-in in 0 turns from now.

Muyd-count is a number that varies. Muyd-count is 0.
At the time when Monica urges your document:
	unless the player is registered:
		increase Muyd-count by 1;
		say "[alert][/ss]What are you waiting for? Show the document to [the naming of receptionist].' [/se][Monica] [urge] you[other times of Muyd-count].";
		Monica urges your document in 1 turn from now.

At the time when receptionist closes check-in:
	say "[The naming of receptionist] takes two keys and puts them on the desk. [/n]";
	repeat with K running through room keys in sleeping room: 
		now K is on the wooden desk;
	say "[/ss]These are the keys of your room.' [/se][the naming of receptionist] [explain].";
	say "[/ss]In the room you will find a brochure with all the useful information about the hotel, but if you have any questions I am at your disposal.' [/r][/n]";
	Monica takes key in 1 turn from now.

At the time when Monica takes key:
	if number of room keys on the wooden desk is zero:
		say "[alert][Monica] would have liked to take a key, but you took them all. [They] [look] at you with a stern stare, maybe it's best if you give [them] one of the keys.";
		Monica asks for key in 1 turn from now;
	otherwise:	
		say "[Monica] [take] a key from the desk and [put] it in [their] handbag.";
		now a random room key on the wooden desk is in the handbag;
		Monica gets tired in 2 turns from now.

Mtired-count is a number that varies. Mtired-count is 0.	
At the time when Monica gets tired:
	increase Mtired-count by 1;
	say "[/ss]I'm tired, let[']s go to sleep.' [/se][Monica] [ask] in a whisper[other times of Mtired-count].";
	Monica gets tired in 2 turns from now.

Maskkey-count is a number that varies.	
At the time when Monica asks for key:
	increase Maskkey-count by 1;
	say "[alert][/ss]Why did you take both keys? It's better if we each keep one!' [/se][Monica] [challenge] you rather annoyed[other times of Maskkey-count].";
	Monica asks for key in 1 turn from now.
	
Section 2.4.2.2 - Morgen receptionist
	
Mrtm-count is a number that varies. Mrtm-count is 0.
At the time when Monica remember to morgen:
	unless the current interlocutor is the receptionist:
		increase Mrtm-count by 1;
		say "[alert][/ss]Don't be rude, greet [the naming of receptionist].' [/se][Monica] [suggest] in your ear[other times of Mrtm-count].";
		Monica remember to morgen in 1 turn from now;		

At the time when Monica morgen the receptionist:
	say "[/ss][good morning receptionist].' [/se][Monica] [say][greet-to receptionist].". 	

Mub-count is a number that varies. Mub-count is 0.
At the time when Monica urges breakfast:
	if Monica is in the location:
		increase Mub-count by 1;
		say "[alert][/ss]Shall we go for breakfast?' [/se][Monica] [urge][other times of Mub-count], [/ss]I'm quite hungry.' [/r][/n]";
	Monica urges breakfast in 1 turn from now.
	
Chapter 2.4.3 - Conversation

Section 2.4.3.1 - Check-in

Instead of hailing during the check-in:
	try saying hello to the receptionist.
Instead of saying hello to someone (called the other) during the check-in:
	unless the other is Monica:
		now the current interlocutor is the receptionist;
		say "[/ss][good evening receptionist], we are [printed name of the player] and [Monica] and we have a reservation.' [/r][/n][/ss]Just a moment, I look for it.' [/se][the naming of receptionist] [state] and [type] something on the computer.";
		the receptionist confirms reservation in 1 turn from now;
		Monica remember to greet never;
	otherwise:
		continue the action.

Section 2.4.3.2 - Morgen receptionist

Instead of hailing for the first time during the morgen receptionist:
	if the location of the player is the reception, try saying hello to the receptionist.
Instead of saying hello to someone (called the other) during the morgen receptionist:
	unless the other is Monica:
		if the location of the player is the reception:
			now the current interlocutor is the receptionist;
			say "[/ss][good morning receptionist].' [/se][we] [say][greet-to receptionist].";
			Monica remember to morgen never;
			now morgen-trigger is false;
	otherwise:
		continue the action.

Book 2.5 - The bathroom

Chapter 2.5.1 - The antechamber

The description of the bathroom-antechamber is "The small room is floored and covered with white tiles; on some tiles on the walls there are colorful drawings of flowers.[/n]There are three doors: one is made of light wood and leads outside, the other two are white, one facing east and the other west, for men and women respectively. Near each door there is an electrical wall switch.[/p][if antechamber-lamp is lit]The light comes from a ceiling lamp[otherwise]A lamp is at the ceiling, but it's off; the light comes from the wooden door[end if].".
The printed name of the bathroom-antechamber is "Bathroom antechamber".

Section 2.5.1.1 - The bathroom door

The description of the bathroom door is "A light wooden door[if the location of the player is the front side of the noun]. A tiny brass sign states [italic type]'Toilet'[roman type][end if].".
Understand "bath/toilet door/--" as the bathroom door.

After deciding the scope of the player when the location is the bathroom-antechamber:
	place the bathroom door in scope;
	place the antechamber light switch in scope.
	
After opening the bathroom door:
	now the bathroom-antechamber is lighted;
	continue the action.
After closing the bathroom door:
	now the bathroom-antechamber is dark;
	continue the action.

Does the player mean opening a closed door: it is likely.
Does the player mean closing an open door: it is likely.

Section 2.5.1.2 - The sink

The sink is a sink-item in the bathroom-antechamber. "On a side there is the sink where you can wash your hands."
The sink is fixed in place. The description is "A white sink with a large countertop around it on which there is everything you need to wash and dry your hands."

Section 2.5.1.3 - Light

The antechamber-lamp is a scenery ceiling lamp in the bathroom-antechamber. Printed name is "bathroom antechamber ceiling lamp".

The bathroom antechamber light switch is a scenery light switch in the bathroom-antechamber.
The powered item of the bathroom antechamber light switch is the antechamber-lamp.
Does the player mean switching on the bathroom antechamber light switch: it is very likely.
Does the player mean switching off the bathroom antechamber light switch: it is very likely.

Section 2.5.1.4 - Darkness

Before deciding the scope of the player when the location is bathroom-antechamber:
	let L be a random latch which is part of the men's toilet door;
	now L is unscopable;
	let L be a random latch which is part of the women's toilet door;
	now L is unscopable.
	
Chapter 2.5.2 - Men's toilet

To say toilet-description: say "The floor and walls are covered with white tiles. The wc is in the middle of the wall in front of you, above it is a large white button. ".
The Men's toilet is a dark wc-room. The description is "[toilet-description]".

Section 2.5.2.1 - The door

The men's toilet door is a scenery bathroom-door. 
The description is "A white lacquered door, [if the location of the player is the front side of the noun]a stylised metal sign of a man is attached to the casement.[otherwise]a latch allows you to lock the door[end if].".
The men's toilet door is east of the bathroom-antechamber and outside of the men's toilet.
Understand "gents/men/gentlemen/gentlemen's/gents' door/toilet/--" as the men's toilet door.

Instead of an actor opening the men's toilet door:
	if the actor is male, continue the action;
	say "Be careful: this toilet is reserved for gents!".

Section 2.5.2.2 - The light

The men-toilet lamp is a scenery ceiling lamp in the men's toilet. Printed name is "men's toilet ceiling lamp".
The men's toilet light switch is a scenery light switch in the bathroom-antechamber.
The powered item of the men's toilet light switch is the men-toilet lamp.
Understand "gents/men/gentlemen/gentlemen's/gents' light/lamp/switch/toilet/--" as the men's toilet light switch.

To say no unpower (lamp - a thing): say "It is not appropriate to turn off [the lamp] because there is someone inside.".
Instead of switching off the men's toilet light switch while the men's toilet is busy, say "[no unpower men-toilet lamp]".

Section 2.5.2.3 - Darkness

After deciding the scope of the player when the location is the men's toilet:
	place the men's toilet door in scope;
	let L be a random latch which is part of the men's toilet door;
	now L is scopable.

Chapter 2.5.3 - Women's toilet

The Women's toilet is a dark wc-room. The description is "[toilet-description]".

Section 2.5.3.1 - The door

The women's toilet door is a scenery bathroom-door. 
The description is "A white lacquered door, [if the location of the player is the front side of the noun]a stylised metal sign of a woman is attached to the casement.[otherwise]a latch allows you to lock the door[end if].".
The women's toilet door is west of the bathroom-antechamber and outside of the women's toilet.
Understand "ladies/women/ladies' door/toilet/--" as the women's toilet door.

Instead of an actor opening the women's toilet door:
	if the actor is female, continue the action;
	say "Be careful: this toilet is reserved for ladies!".

Section 2.5.3.2 - The light

The women-toilet lamp is a scenery ceiling lamp in the women's toilet. Printed name is "women's toilet ceiling lamp".
The women's toilet light switch is a scenery light switch in the bathroom-antechamber.
The powered item of the women's toilet light switch is the women-toilet lamp.
Understand "ladies/women/ladies' light/lamp/switch/toilet/--" as the women's toilet light switch.

Instead of switching off the women's toilet light switch while the women's toilet is busy, say "[no unpower women-toilet lamp]".

Section 2.5.3.3 - Darkness

After deciding the scope of the player when the location is the women's toilet:
	place the women's toilet door in scope;
	let L be a random latch which is part of the women's toilet door;
	now L is scopable.
	
Chapter 2.5.4 - Be polite and green

To say wc inside visible: say "The whole reception could see the inside of the toilet".

Before opening a bathroom-door while the bathroom door is open and the location of the player is the bathroom-antechamber, say "[wc inside visible]." instead.
Before opening the bathroom door while a bathroom-door is open and the location of the player is the bathroom-antechamber, say "[wc inside visible]." instead.

Before going through the bathroom door from the bathroom-antechamber:
	if the player is dirty, say "Grubby![line break]Who knows what that sink is for..." instead;
	if the men-toilet lamp is lit and the men's toilet is not busy, say "[We] forgot the toilet light on." instead;
	if the antechamber-lamp is lit and the men's toilet is not busy and the women's toilet is not busy and leading actors are alone:
		try opening the bathroom door;
		say "[We] forgot the light on." instead.

Book 2.6 - The dining room

The description of the dining room is "[if unvisited]Rustic wooden beams and locally sourced stone accents complement the alpine setting, while tasteful decor elements pay homage to the region's cultural heritage. [end if]The tables are elegantly set with crisp linens. Around the tables is a bench covered in dark green velvet. [if unvisited][/n]Bathed in natural light that filters through large windows, the room offers panoramic views of the surrounding majestic peaks, creating a serene and inspiring atmosphere. [end if][/n]The reception area is to the west, to the north is the buffet area, and to the east a door leads to the kitchen.".

Chapter 2.6.1 - Furniture

Section 2.6.1.1 - Kitchen door

The kitchen door is a scenery, closed, openable, not lockable door.
The description is "A two-leaf saloon-style door. At the top of each leaf is a circular pane of glass that is fogged by steam."
The kitchen door is east of the dining room and west of the kitchen.

Instead of opening the kitchen door: say "This type of door opens when you walk through it and closes immediately afterwards thanks to some springs.".
Instead of going through the kitchen door: say "Oh no, access to the kitchen is restricted to service personnel.".

Section 2.6.1.2 - The bench

The bench is a scenery enterable supporter in the dining room.
The description is "A wooden bench padded with dark green velvet cushions."
After getting off the bench, say "[We] stand up.".
Rule for supplying a missing noun while entering when the location is the dining room (this is the seat at the tabe rule): now the noun is the bench.

Section 2.6.1.3 - The table
	
The table is a scenery supporter in the dining room.
For printing a locale paragraph about the table:
	if the player is enclosed by the bench,  say "On the table in front of you [is-are a list of things on the table].".

Instead of examining the table during search for the table, say "All tables are similar and well laid out.".

A houseware is a kind of thing. 
A cutlery is a kind of houseware.
A knife is a kind of cutlery. The plural of knife is knives.
A teaspoon is a kind of cutlery.
A fork is a kind of cutlery.

A towel is a kind of houseware. The description is "A white paper towel.".
Two knives, two teaspoons ,two forks and two towels are on the table.

The round plastic container is an open, not openable, not lockable container on the table. 
The description is "A light brown plastic cylinder; on the surface reads: 'For a clean table'.".
Instead of taking the round plastic container, say "[alert][/ss]But what do you do with the waste container?' [/se][Monica] [ask].".
Instead of taking something which is enclosed by the round plastic container, say "[alert][/ss]Leave it there!' [/se][Monica] [scold] you [/ss]Now you'd better go wash your hands.' [/r][/n]".

Chapter 2.6.2 - Rules

After going to the dining room from the reception:
	if the location of Monica is the reception:
		say "[Monica] [follow] you.";
		now Monica is in the dining room;
		Monica urges breakfast never;
		now search-table-trigger is true;
	continue the action.
	
Section 2.6.2.1 - Good manners

Instead of eating something while the player is not enclosed by the bench:
	if Monica is in the location:
		say "[alert][/ss]But what are you doing?' [/se][Monica] [rebuke] you. [/ss1]You should eat sitting at the table!' [/r][/n]";
	otherwise:
		say "I am sure that [Monica] would scold you if she could see you now.".

Instead of drinking something while the player is not enclosed by the bench:
	if Monica is in the location:
		say "[alert][/ss]Naughty!' [/se][Monica] [exclaim]. [/ss1]You should drink sitting at the table!' [/r][/n]";
	otherwise:
		say "If [Monica] were here, she would not allow you to do such a thing.".

Chapter 2.6.3 - Timed events

At the time when the waiter welcomes:
	if search-table-trigger is true:
		unless the current interlocutor is a waiter:
			let the current waiter be a random waiter in the location;
			now the current interlocutor is the current waiter;
			say "[The naming of the current waiter] [see] you confused, [approach] you and [say] hello: [/ss]Good morning!' [/r][/n]";
			say "[/ss]Can I help you?' [/se][regarding the current waiter][they] [ask].".

At the time when Monica sits at table:
	if Monica is in the dining room:
		say "[Monica] [sit] down on the bench.";
		now Monica is on the bench;
		Monica invites to sit in 0 turns from now;
	otherwise:
		Monica sits at table in 1 turn from now.

At the time when Monica invites to sit:
	if the location is the dining room and the player is not enclosed by the bench:
		say "[/ss]Why don't you sit?' [/se][Monica] [ask]. [/n]";
		Monica invites to sit in 1 turns from now.
			
Chapter 2.6.4 - Conversation

Section 2.6.4.1 - Searching for the table

Instead of hailing during the Search for the table:
	if the current interlocutor is nothing:
		let W be a random waiter in the location;
		say "[We] [approach] [the naming of W] and say hello: [run paragraph on]";
		try saying hello to W;
	otherwise:
		let W be the current interlocutor;
		now the current interlocutor is nothing;
		try saying hello to W.
Instead of saying hello to someone (called the other) during the Search for the table:
	unless the other is Monica:
		now the current interlocutor is the other;
		say "[/ss1][good morning current interlocutor], we are staying in the 'Edelweiss' room and it is our first day here.' [/r][/n][/ss]Oh, welcome! Let me show you to your table.' [/se][the naming of current interlocutor] [regarding current interlocutor][say] and [go] to a free table. [/n][/ss]This is the table we have reserved for you, I hope it is to your liking.' [/se][regarding the current interlocutor][they] [point] to you the table.";
		say "[heart][/ss]It's perfect!' [/se][Monica] [exclaim] [/ss1][thanks current interlocutor].' [/r][/n]";
		the waiter welcomes never;
		now search-table-trigger is false;
		Monica sits at table in 1 turn from now;
	otherwise:
		continue the action.

Instead of saying yes during Search for the table, try hailing.
Instead of calling a waiter during Search for the table, try hailing.

Instead of entering the bench during Search for the table, say "[alert][/ss]The first thing we need to know is where to sit.' [/se][Monica] [remind]. [/n]".

Instead of going somewhere during Search for the table, say "[alert][/ss]Let's go. Instead of wandering around, let's find our table.' [/se][Monica] [remind]. [/n]".
		
Section 2.6.4.2 - Other responses

Response of a waiter when asked about bathroom:
	say “[/ss]Where can I find the toilet?’ [/se][we] [ask]. [/n]”;
	say "[/ss]'Oh yes, it's inside the door in front of the reception desk.' [/se][the naming of the noun] [answer].".

Understand "the/-- weather forecast/--" or "the/-- forecast" as "[weather]".	
Response of a worker when asked about "[weather]" during the Breakfast:
	say “[/ss]Do you know it might rain today?’ [/se][we] [ask]. [/n]”;
	say "[/ss]You can find the weather report in the daily hotel newsletter on your table.' [/se][regarding the noun][they] [explain].".	
			
Chapter 2.6.5 - Order

Section 2.6.5.1 - Start

After entering the bench:
	if the current interlocutor is a waiter:
		reset order;
		setnode main-order node;
		now ordering-trigger is true;
	otherwise:
		waiter comes for order in 1 turn from now;
	continue the action.
	
At the time when waiter comes for order:
	if the player is enclosed by the bench:
		let current waiter be a random waiter in the dining room;
		say "[A naming of current waiter] is at your table. [/n]";
		now the current interlocutor is the current waiter;
		reset order;
		setnode main-order node;
		now ordering-trigger is true.

To say ask for choice:
	say "[/se][regarding the current interlocutor][they] [ask] you to choose. [/n]".
To say ask for choice again:
	say "[/se][regarding the current interlocutor][they] [ask] you again to choose. [/n]".
To say order confirmation:
	say "[leavenode][/ss]Good choice.' [/se][the naming of current interlocutor] [confirm] you. [/n]";
	finalize order.

An order-convnode is a kind of convnode.
An order-convnode is closed and not auto-suggesting.
Default response for an order-convnode:
	say "[/ss]Don't change the topic.' [/se][Monica] [say] [us]. [/n]".

Rule for printing a parser error when the latest parser error is the not a verb I recognise error during ordering:
	abide by the default answer response rules for the current node.
		
Section 2.6.5.2 - Main node

To say available hot drinks:
	say "a coffee, a cappuccino, a hot chocolate or a tea".
The main-order node is a order-convnode.
Node-introduction for main-order node:
	say "[/ss]May I serve you a hot beverage?' [/se][the naming of current interlocutor] [ask], then [explain]: ";
	say "[/ss1]I can offer you [available hot drinks].' [/r][/n]".

The coffee-order node is an order-convnode.
The cappuccino-order node is an order-convnode.
The tea-order node is an order-convnode.

The espresso-order node is an order-convnode.
The barley-order node is an order-convnode.
	
Understand "hot/-- chocolate" as "[chocolate]".

Response for main-order node when answered that "coffee":
	now next-node of current node is coffee-order node;
	say "[leavenode][/ss]Espresso, moka or barley?' [ask for choice]".
Response for main-order node when answered that "cappuccino":
	now next-node of current node is cappuccino-order node;
	say "[leavenode][/ss]Regular, soy milk or barley coffee?' [ask for choice]".
Response for main-order node when answered that "[chocolate]":
	now the order content is a random mug in the kitchen;
	now the liquid of the order content is hot chocolate;
	now the fluid content of the order content is 200 ml;
	say order confirmation.
Response for main-order node when answered that "tea":
	now next-node of current node is tea-order node;
	say "[leavenode][/ss]Lemon, milk or nothing?' [ask for choice]".
Default answer response for main-order node:
	say "[/ss]The only hot drinks that are available are [available hot drinks].' [/se][the naming of current interlocutor] [state]. [/n]".
Response for main-order node when saying no:
	say "[leavenode][/ss]If you want something hot later, don't hesitate to call me or my colleague.' [/se][the naming of current interlocutor] [say] and [go] away. [/n]";
	now the current interlocutor is nothing;
	now ordering-trigger is false.
Response for main-order node when saying yes:
	say "[/ss]Well!' [/se][regarding current interlocutor][they] [say] and then [ask]: [/ss1]What do you prefer?' [/r][/n]".
	
After reading a command when the current node is main-order node:
	if the player's command matches "coffee":
		replace the player's command with "answer coffee to [printed name of current interlocutor]";
	otherwise if the player's command matches "cappuccino": 
		replace the player's command with "answer cappuccino to [printed name of current interlocutor]";
	otherwise if the player's command matches "[chocolate]": 
		replace the player's command with "answer chocolate to [printed name of current interlocutor]";
	otherwise if the player's command matches "tea": 
		replace the player's command with "answer tea to [printed name of current interlocutor]".

Section 2.6.5.3 - Coffee node

Understand "barley coffee/--" as "[barley]".

Response for coffee-order node when answered that "espresso":
	now next-node of current node is espresso-order node;
	say "[leavenode][/ss]Regular, short or tall?' [ask for choice again]".
Response for coffee-order node when answered that "[barley]":
	now next-node of current node is barley-order node;
	say "[leavenode][/ss]Small or large cup?' [ask for choice again]".
Response for coffee-order node when answered that "moka":
	now the order content is a random coffeecup in the kitchen;
	now the liquid of the order content is moka coffee;
	now the fluid content of the order content is 40 ml;
	say order confirmation.
Default answer response for coffee-order node:
	say "[/ss]Sorry, I did not understand your preference for coffee: espresso, moka or barley?' [/se][the naming of current interlocutor] [state]. [/n]".

After reading a command when the current node is coffee-order node:
	if the player's command matches "espresso":
		replace the player's command with "answer espresso to [printed name of current interlocutor]";
	otherwise if the player's command matches "moka": 
		replace the player's command with "answer moka to [printed name of current interlocutor]";
	otherwise if the player's command matches "[barley]": 
		replace the player's command with "answer barley to [printed name of current interlocutor]".

Section 2.6.5.4 - Espresso node

Understand "regular/normal/plain/standard" as "[regular]".
Understand "short/low/shrunk/limited" as "[short]".
Understand "tall/long/high/lengthy" as "[tall]".

To prepare (V - a volume) of espresso:
	now the order content is a random coffeecup in the kitchen;
	now the liquid of the order content is espresso;
	now the fluid content of the order content is V; 
	say order confirmation.
	
Response for espresso-order node when answered that "[regular]":
	prepare 30 ml of espresso.
Response for espresso-order node when answered that "[short]":
	prepare 20 ml of espresso.
Response for espresso-order node when answered that "[tall]":
	prepare 40 ml of espresso.
Default answer response for espresso-order node:
	say "[/ss]Sorry, I did not understand your espresso preference: regular, low or high?' [/se][the naming of current interlocutor] [state]. [/n]".
	
After reading a command when the current node is espresso-order node:
	if the player's command matches "[regular]":
		replace the player's command with "answer regular to [printed name of current interlocutor]";
	otherwise if the player's command matches "[short]": 
		replace the player's command with "answer short to [printed name of current interlocutor]";
	otherwise if the player's command matches "[tall]": 
		replace the player's command with "answer tall to [printed name of current interlocutor]".

Section 2.6.5.5 - Barley node

Understand "small/little/tiny/short/shrunk/espresso cup/--" as "[small]".
Understand "large/big/tea/cappuccino/long/engthy cup/--" as "[large]".

Response for barley-order node when answered that "[small]":
	now the order content is a random coffeecup in the kitchen;
	now the liquid of the order content is barley coffee;
	now the fluid content of the order content is 40 ml;
	say order confirmation.
Response for barley-order node when answered that "[large]":
	now the order content is a random cup in the kitchen;
	now the liquid of the order content is barley coffee;
	now the fluid content of the order content is 150 ml;
	say order confirmation.
Default answer response for barley-order node:
	say "[/ss]Sorry, I did not understand your preference for barley coffee: small or large cup?' [/se][the naming of current interlocutor] [state]. [/n]".
	
After reading a command when the current node is barley-order node:
	if the player's command matches "[small]":
		replace the player's command with "answer small to [printed name of current interlocutor]";
	otherwise if the player's command matches "[large]": 
		replace the player's command with "answer large to [printed name of current interlocutor]".
		
Section 2.6.5.6 - Cappuccino node

Understand "soy/soya milk/--" as "[soy]".

To prepare a full cup of (L - a liquid):
	now the order content is a random cup in the kitchen;
	now the liquid of the order content is L;
	now the fluid content of the order content is 200 ml;
	say order confirmation.
	
Response for cappuccino-order node when answered that "[regular]":
	prepare a full cup of cappuccino.
Response for cappuccino-order node when answered that "[soy]":
	prepare a full cup of soy cappuccino.
Response for cappuccino-order node when answered that "[barley]":
	prepare a full cup of barley cappuccino.
Default answer response for cappuccino-order node:
	say "[/ss]Sorry, I did not understand your preference for cappuccino: regular, soy milk or barley coffee?' [/se][the naming of current interlocutor] [state]. [/n]".

After reading a command when the current node is cappuccino-order node:
	if the player's command matches "[regular]":
		replace the player's command with "answer regular to [printed name of current interlocutor]";
	otherwise if the player's command matches "[soy]": 
		replace the player's command with "answer soy to [printed name of current interlocutor]";
	otherwise if the player's command matches "[barley]": 
		replace the player's command with "answer barley to [printed name of current interlocutor]".

Section 2.6.5.7 - Tea node

Understand "none/nothing/neither" as "[nothing]".

To prepare tea:
	now the order content is a random cup in the kitchen;
	now the liquid of the order content is cappuccino;
	now the fluid content of the order content is 150 ml;
	say order confirmation.
To prepare a pot of (L - a liquid):
	now the order second-content is a random pot in the kitchen;
	now the liquid of the order second-content is L;
	now the fluid content of the order second-content is 5 ml.
			
Response for tea-order node when answered that "[nothing]":
	prepare tea.
Response for tea-order node when answered that "lemon":
	prepare a pot of lemon juice;
	prepare tea.
Response for tea-order node when answered that "milk":
	prepare a pot of milk;
	prepare tea.
Default answer response for tea-order node:
	say "[/ss]Sorry, I did not understand your preference for tea: lemon, milk or neither?' [/se][the naming of current interlocutor] [state]. [/n]".

After reading a command when the current node is tea-order node:
	if the player's command matches "[nothing]":
		replace the player's command with "answer nothing to [printed name of current interlocutor]";
	otherwise if the player's command matches "lemon": 
		replace the player's command with "answer lemon to [printed name of current interlocutor]";
	otherwise if the player's command matches "milk": 
		replace the player's command with "answer milk to [printed name of current interlocutor]".

Section 2.6.5.8 - Order handling

The round tray is a portable supporter in the kitchen.
The order content is an object that varies. The order content is nothing.
The order second-content is an object that varies. The order second-content is nothing.
The order handler is an object that varies.

To reset order:
	now the order content is nothing;
	now the order second-content is nothing;
	now the order handler is nothing;
	now the round tray is in the kitchen.
	
To finalize order:
	say "[/ss]What can I get for you, miss?' [/se][regarding current interlocutor][they] [ask] [Monica]. [/n]";
	if the liquid of the order content is hot chocolate:
		say "[/ss]A cappuccino.' ";
		let Monica-drink be a random cup in the kitchen;
		now the liquid of Monica-drink is cappuccino;
		now the fluid content of Monica-drink is 200 cc;
		now Monica-drink is on the round tray;
	otherwise:
		say "[/ss]A cup of hot chocolate.' ";
		let Monica-drink be a random mug in the kitchen;
		now the liquid of Monica-drink is hot chocolate;
		now the fluid content of Monica-drink is 250 cc;
		now Monica-drink is on the round tray;
	say "[/se][Monica] [answer]. [/n]";
	say "[/ss]Perfect!' [/se][the naming of current interlocutor] [exclaim]. [/n]";
	now the order handler is the current interlocutor; 
	now the order content is on the round tray;
	unless the order second-content is nothing, now the order second-content is on the round tray; 
	now the order handler carries the round tray;
	say "[/ss]I'll be back soon with what you've ordered.' [/se][regarding order handler][they] [say]";
	unless visit buffet completed, say " [/ss1]In the meantime, you can help yourself to the buffet.' [/r][/p]";
	otherwise:
		say ". [/p]";
	say "[The naming of order handler] [go] to the kitchen. [/n]"; 
	now the order handler is in the kitchen;
	now ordering-trigger is false;
	now the current interlocutor is nothing;
	waiter returns with order in three turns from now.
	
At the time when waiter returns with order:
	if the player is enclosed by the bench:
		now the order handler is in the dining room;
		say "[The naming of order handler] [return] with a tray containing your order. [/n]";
		say "[/ss]Here are your hot drinks!' [/se][regarding order handler][they] [exclaim] ";
		say "[/ss1][A list of things on the round tray].' [/r][/n]";
		say "[The naming of order handler] then [regarding order handler][place] the contents of the tray on the table. [/n]";
		repeat with D running through the things on the round tray:
			now D is on the table;
		mark order hot drinks as done;
	otherwise:
		waiter returns with order in one turn from now.
	
Chapter 2.6.6 - Hot drinks details

To say /cie:
	say "[/se][the naming of current interlocutor] [regarding current interlocutor][one of][explain][or][answer][or][say][at random]. ".
To say /cia:
	say "[regarding current interlocutor][They] also [add]: [/ss1]".

Section 2.6.6.1 - Coffee
	
Response of a waitstaff worker when asked-or-told about "coffee":
	follow the about coffee rule.
Response for an order-convnode when asked-or-told about "coffee":
	follow the about coffee rule.
This is the about coffee rule:
	say "[/ss]This is the best way to start the day with a sprint.' [/cie][/ss1]To prepare the coffee, we use a blend of 100% arabica beans of the highest quality, carefully roasted. This gives it a smooth and intense flavour and a superb aroma.' [/r][/n]";
	say "[/cia]We can extract it with an espresso machine or with a moka, as you do at home. We can also make it with barley.' [/r][/n]".

Section 2.6.6.2 - Cappuccino

Response of a waitstaff worker when asked-or-told about "cappuccino":
	follow the about cappuccino rule.
Response for an order-convnode when asked-or-told about "cappuccino":
	follow the about cappuccino rule.
This is the about cappuccino rule:
	say "[/ss]My favourite breakfast choice.' [/cie][/ss1]Traditionally, it is made with one third coffee, one third milk and the rest with a soft froth of whipped milk. In addition to its delicious taste, our cappuccino offers several health benefits: the espresso base provides a dose of antioxidants, while the milk contributes essential nutrients like calcium.' [/r][/n]";
	say "[/cia]I can also make it with soy milk or barley coffee.' [/r][/n]".	

Section 2.6.6.3 - Chocolate

Response of a waitstaff worker when asked-or-told about "[chocolate]":
	follow the about chocolate rule.
Response for an order-convnode when asked-or-told about "[chocolate]":
	follow the about chocolate rule.
This is the about chocolate rule:
	say "[/ss]Ha, ha, you are so gluttonous!' [/cie][/ss1]A velvety-smooth concoction that envelopes you in warmth and indulgence, setting the perfect tone for a cozy morning. The traditional hot chocolate made with cocoa, milk and brown sugar that enhances the taste. It is thickened over the fire and served hot.' [/r][/n]".	

Section 2.6.6.4 - Tea

Response of a waitstaff worker when asked-or-told about "tea":
	follow the about tea rule.
Response for an order-convnode when asked-or-told about "tea":
	follow the about tea rule.
This is the about tea rule:
	say "[/ss]A perfect way to start your day.' [/cie][/ss1]A cup of tea not only wakes you up but also tantalizes your taste buds. Our tea blend combines select black teas to deliver a harmonious balance of strength and flavor.' [/r][/n]";
	say "[/cia]If you like, I can bring lemon or milk for you to add.' [/r][/n]".	

Section 2.6.6.5 - Barley

Response of a waitstaff worker when asked-or-told about "[barley]":
	follow the about barley rule.
Response for an order-convnode when asked-or-told about "[barley]":
	follow the about barley rule.
This is the about barley rule:
	say "[/ss]It's a wonderful alternative to traditional coffee.' [/cie][/ss1]Unlike traditional coffee, barley coffee is naturally caffeine-free, making it an ideal choice for those looking to reduce their caffeine intake or seeking a milder option. Its roasted notes provide a delightful depth of flavor without the bitterness often associated with coffee.' [/r][/n]".	
	
Section 2.6.6.3 - Soy

Response of a waitstaff worker when asked-or-told about "[soy]":
	follow the about soy rule.
Response for an order-convnode when asked-or-told about "[soy]":
	follow the about soy rule.
This is the about soy rule:
	say "[/ss]It's a fantastic option for accommodating dietary preferences or allergies.' [/cie][/ss1]It's naturally rich in protein, making it a satisfying option to start your day. Plus, it's low in saturated fat and cholesterol-free, contributing to a heart-healthy diet. It's a delicious and nutritious alternative that's sure to enhance your morning routine.' [/r][/n]".	
	
Chapter 2.6.7 - The written paper
			
The written paper is a paper-item on the table.
The written paper front is a paper-side.
The written paper back is a paper-side.
The front of the written paper is the written paper front.
The back of the written paper is the written paper back.
The arguments of the written paper back are the Table of Bulletin topics.

The description of the written paper front is "[/b]Today Dinner Menu[/p][/i]Starter[/f][/n]Toasted rustic bread with fresh tomatoes, red onions, basil, and garlic topped with cheese[/p][/i]First course[/f][/n]Traditional Italian bean and pasta soup[/p][/i]Main course[/f][/n]Sautéed chicken breast with wild mushrooms and scallions in a Marsala reduction wine sauce served with potato and vegetables[/p][/i]Dessert[/f][/n]Raspberry mousse[/r]".

Table of Bulletin topics
topic	title	text
"[weather]"	"Weather report"	"Today will be mostly sunny, except for some low clouds in the morning, which will dissipate quickly. In the late afternoon/evening, cloud formation and local rain showers are possible. [/n]Minimum temperatures between 8°C and 10°C, maximum temperatures between 20°C and 28°C."
"tip of/-- the/-- day/--"	"Tip of the day"	"Look carefully along the paths: you may find small fossils, witnesses to a time when what are now mountain peaks were at the bottom of a vast tropical sea. [/n]These 280 million year old cliffs are particularly impressive at sunrise and sunset, when they glow a fiery red: this is the phenomenon we call 'enrosadira'."

The description of the written paper back is "[/b]The daily newsletter[/r][/p]There are several boxes whose titles are: [list of topics of the noun]. ".

Understand "examine [text]" as examining as a paper when the written paper is visible and the written paper is turned.
Understand "read [text]" as examining as a paper when the written paper is visible and the written paper is turned.

Instead of examining as a paper a topic listed in the Table of Bulletin topics:
	say "[/b][title entry][/b][/p][/f][text entry][/r][/n]".


Book 2.7 - The buffet

The description of the buffet is "The buffet is a feast for the senses, featuring a variety of locally sourced and homemade delights. Guests can savor freshly baked artisanal breads, jams, and a selection of cheeses and cured meats, showcasing the flavors of the Dolomites.".

The HACCP ingredients book is in the buffet.
The HACCP ingredients book is familiar.
Instead of examining the HACCP ingredients book, say "If you need information about food, it is best to ask the staff.".
Instead of taking the HACCP ingredients book, say "Even if no one ever reads it, it must remain here.".
Instead of opening the HACCP ingredients book, try examining the noun.

Response of a not waitstaff worker when asked about the HACCP ingredients book:
	say "[/ss]You can find it in the buffet,' [/se][the naming of the noun] [say] [/ss1]but if you need information about food, it is best to ask my colleagues in the dining room.' [/r][/n]".
Response of a waitstaff worker when asked about the HACCP ingredients book:
	say "[/ss]You can find it next to the buffet,' [/se][the naming of the noun] [say] [/ss1]but if you need information about food, it is best to ask me or my colleagues.' [/r][/n]".

Chapter 2.7.1 - Drinks

Section 2.7.1.1 - Containers

A jug is a kind of fluid container. The fluid capacity of a jug is 1.5 litres. 
A bottle is a kind of fluid container. The fluid capacity of the bottle is 1 litre.
A glass is a kind of fluid container. The fluid capacity of a glass is 200 ml.
A glass is preferred for drinking.

A cup is a kind of fluid container. The fluid capacity of a cup is 200 ml.
A coffeecup is a kind of fluid container. The fluid capacity of a coffeecup is 50 ml.
A mug is a kind of fluid container. The fluid capacity of a mug is 300 ml.
A pot is a kind of fluid container. The fluid capacity of a pot is 100 ml.

2 cups are in the kitchen.
2 coffeecups are in the kitchen.
2 mugs are in the kitchen.
2 pots are in the kitchen.

A dish is a kind of portable supporter.
The carrying capacity of a dish is 10.

Section 2.7.1.2 - Liquids

Table of Liquids (continued)
liquid	potable	flavor
milk	true	"A smooth, sweet taste; thirst-quenching and nourishing."
orange juice	true	"A pungent, slightly acidic flavour; very refreshing."
apple juice	true	"Clear and crystalline, with an inviting straw-yellow colour, it offers a sweet, natural and fresh flavour."
lemon juice	true	""
pear nectar	true	"A sweet nectar with the delicate flavour of freshly picked pears."
espresso	true	"The unmistakable aroma of espresso coffee, black, bitter with a soft cream."
moka coffee	true	"The intense aroma of coffee, as at home."
barley coffee	true	""
cappuccino	true	"Characterised by the unmistakable aromas of coffee, its bitter taste and the roundness of whipped milk that sticks around the mouth."
soy cappuccino	true	""
barley cappuccino	true	""
hot chocolate	true	"Delicious hot chocolate with all the taste of cocoa and mountain milk."
tea	true	"A herbaceous flavour with a tendency to be bitter and slightly astringent."


Section 2.7.1.3 - The cupboard

The cupboard is a scenery supporter in the buffet.
The description is "A cupboard in light fir wood. Under the top are two drawers, one on the left and one on the right.".
Understand "sideboard" as the cupboard.
The left drawer is a closed, openable container. It is part of the cupboard.
The right drawer is a closed, openable container. It is part of the cupboard.
Ten glasses are in the left drawer.
A bib is a kind of wearable thing.
Three bibs are in the right drawer.

Rule for printing a locale paragraph about the cupboard:
	say "To the right is a wooden cupboard. On it are some empty dishes and containers with cold drinks.".
	
Ten dishes are on the cupboard.
Three jugs are on the cupboard.
Two bottles are on the cupboard.

Table of the bottles
liquid-type	quantity
water	1000 cc
milk	600 cc

Table of the jugs
liquid-type	quantity
orange juice	1200 cc
apple juice	800 cc
pear nectar	1400 cc

When play begins:
	let tablerow be 1;
	repeat with current jug running through list of jugs which are on the cupboard:
		choose row tablerow in the Table of the jugs;
		now the liquid of the current jug is liquid-type entry;
		now the fluid content of the current jug is quantity entry;
		increment tablerow;
	let tablerow be 1;
	repeat with current bottle running through list of bottles which are on the cupboard:
		choose row tablerow in the Table of the bottles;
		now the liquid of the current bottle is liquid-type entry;
		now the fluid content of the current bottle is quantity entry;
		increment tablerow.

Chapter 2.7.2 - The juicer

The juicer table is a scenery service table in the buffet. 
The description is "A little table without tablecloth."
Rule for printing a locale paragraph about the juicer table:
	say "Next to the sideboard is a small table with a juicer on it and two small wooden crates of celery ribs and carrots.".

A vegetable is a kind of food-item.
A celery rib is a kind of vegetable.
A carrot is a kind of vegetable.

A crate is a kind of service container. The description is "A little wooden crate for vegetables."
The first crate is a scenery crate on the juicer table.
3 carrots are in the first crate.
The second crate is a scenery crate on the juicer table.
3 celery ribs are in the second crate.

Chapter 2.7.3 - Food

A food-item is familiar.

Section 2.7.3.1 - Meats

A slice of speck is a kind of food-item. 
The description is "A slice of typical Tyrolean smoked ham. Dark red in color with thin white streaks of fat." 
The plural of slice of speck is slices of speck.
The scent-description of a slice of speck is "a slight smell of smoke".
The flavor-description of the slice of speck is "An intense and spicy flavor of the pork leg enhanced by the expert smoking".
Understand "smoked/-- ham" or "speck" as "[speck]".
Understand "slice of [speck]" or "[speck]" as a slice of speck.

To say (P - a person) talks about speck:
	say "[/ss]Speck is a typical product of our valleys.' [/se][the naming of P] [say] ";
	say "[/ss1]It is a raw ham that is lightly smoked and cured in the open air, making it famous among gourmets all over the world. Behind it all is a jealously guarded secret, a recipe passed down from generation to generation.' [/r][/n]".
Response of a waitstaff worker when asked about a slice of speck:
	say the noun talks about speck.
	
A slice of salami is a kind of food-item. 
The description is "A slice of seasoned sausage. Dark red in color with little dots of fat." 
The plural of slice of salami is slices of salami.
The scent-description of a slice of salami is "light scent of spices".
The flavor-description of the slice of salami is "Lightly smoked over beech wood and cured in the pure mountain air, it develops an extraordinary aroma".
Understand "kaminwurzen/sausage/salami" as "[salami]".
Understand "slice of [salami]" or "[salami]" as a slice of salami.

To say (P - a person) talks about salami:
	say "[/ss]Kaminwurzen are our favourite sausages.' [/se][the naming of P] [state] ";
	say "[/ss1]Home-made according to an original recipe from the South Tyrolean countryside, they are lightly smoked and contain 20 per cent beef and 80 per cent pork.' [/r][/n]".
Response of a waitstaff worker when asked about a slice of salami:
	say the noun talks about salami.
	
A slice of Ahrntal grey cheese is a kind of food-item. 
The description is "A slice of the typical 'grey cheese' from Sudtyrol."
The plural of slice of Ahrntal grey cheese is slices of Ahrntal grey cheese.
The scent-description of a slice of Ahrntal grey cheese is "good seasoned cheese".
The flavor-description of a slice of Ahrntal grey cheese is "In the cheese, milky and toasted notes reminiscent of milk, cream and heated butter prevail, while there are also agre notes reminding us of fermented milk and yoghurt".

Response of a waitstaff worker when asked about a slice of Ahrntal grey cheese:
	say "[/ss]The cheese in the buffet is the traditional Ahrntal grey cheese.' [/se][the naming of the noun] [explain] ";
	say "[/ss1]Its unattractive appearance is due to the presence of a precious mould; it is the leanest of the cheeses, so much so that the fat content in the dry residue does not exceed two per cent: it is actually a product made from the milk left over from butter production, without the use of rennet.' [/r][/n]".

Understand "charcuterie" or "cold cuts/cut" or "cured/-- meats/meat" as "[meats]".
Meat-type-node is a closed not auto-suggesting convnode.
Node-introduction for meat-type-node:
	say "[/ss]We have salami and speck:' [/se][the naming of current interlocutor] [say] ";
	say "[/ss1]which one are you interested in?' [/r][/n]".
Response of a waitstaff worker when asked about "[meats]":
	setnode meat-type-node;
	say "[/ss]What nice cold cuts in the buffet!' [/se]you say. ".
Response for meat-type-node when answered that "[speck]":	
	say leavenode;
	say the current interlocutor talks about speck.
Response for meat-type-node when answered that "[salami]":	
	say leavenode;
	say the current interlocutor talks about salami.
After reading a command when the current node is meat-type-node:
	if the player's command matches "[speck]":
		replace the player's command with "answer speck to [printed name of current interlocutor]";
	otherwise if the player's command matches "[salami]": 
		replace the player's command with "answer salami to [printed name of current interlocutor]".

	
Section 2.7.3.2 - Butter and jams

A knob of butter is a kind of butter-item. 
The description is "A little light-yellow cube of butter."
The plural of knob of butter is knobs of butter.

Section 2.7.2.3 - Bread

A slice of white bread is a kind of bread slice. The description is "Soft slices of bread."
The plural of slice of white bread is slices of white bread.
The scent-description of a slice of white bread is "fragrance of wheat".
The flavor-description of a slice of white bread is "This bread has a soft texture and a delicate taste.".
To say (P - a person) talks about white bread:
	say "[leavenode][/ss]The loaf of bread from which these slices were made was baked this morning.' [/se][the naming of P] [say] proudly. [/n]".
Response of a waitstaff worker when asked about a slice of white bread:
	say the noun talks about white bread.
	
A slice of pumpernickel bread is a kind of bread slice.
The plural of slice of pumpernickel bread is slices of pumpernickel bread.
The scent-description of a slice of pumpernickel bread is "burnt caramel smell".
The flavor-description of a slice of pumpernickel bread is "This bread has a firm texture, an earthy flavour and a distinctly sour taste.".
Understand "rye/black/dark/brown bread/--" as slice of pumpernickel bread.
To say (P - a person) talks about pumpernickel bread:
	say "[leavenode][/ss]The black bread is made from wholemeal rye flour.' [/se][the naming of P] [explain] ";
	say "[/ss1]It is a bread of German origin, with a characteristic dark colour and a burnt caramel smell. It tastes very good and is unmistakable among other breads. It is great for breakfast!' [/r][/n]".
Response of a waitstaff worker when asked about a slice of pumpernickel bread:
	say the noun talks about pumpernickel bread.

Definition: a bread slice is matched if it fits the parse list. 
Rule for asking which do you mean when everything matched is a bread slice: 
	if the number of person in the location is greater than 1:
		say "[/ss]We have white wheat and black rye bread: which one are you interested in?' [/r][/n]";
	otherwise:
		say "Who are you asking? [/n]";
		stop the action.

		
Section 2.7.3.4 - The buffet table

The buffet table is a scenery service table in the buffet. 
The description is "A large table with a white tablecloth."
Rule for printing a locale paragraph about the buffet table:
	say "To the left is a table on which are bread, butter, jams, meats and cheese.".
		
The white basket is a service container.
The description of the white basket is "A small wicker basket dyed white. The inside is lined with a white canvas.".
8 slices of white bread are in the white basket.
The brown basket is a service container.
The description of the brown basket is "A small natural wicker basket. The inside is lined with a red canvas.".
10 slices of pumpernickel bread are in the brown basket.

The white basket and the brown basket are on the buffet table.

A chopping board is a kind of service supporter.
The description is "A wooden chopping board."

The first chopping board is a scenery chopping board.
5 slices of speck are on the first chopping board.
The second chopping board is a scenery chopping board.
3 slices of salami are on the second chopping board.
The third chopping board is a scenery chopping board.
2 slices of Ahrntal grey cheese are on the third chopping board.

The first chopping board, the second chopping board and the third chopping board are on the buffet table.

Chapter 2.7.4 - The cook

The cooking table is a scenery service table in the buffet.
Rule for printing a locale paragraph about the cooking table:
	say "Next to the buffet table there is another table, behind which a cook is on hand to cook the eggs that are in a basket.".

Chapter 2.7.5 - Movements

Before going to the buffet:
	if the number of things carried by the player is greater than zero:
		say "[/ss]Why are you carrying [the list of things carried by the player]?' [/se][Monica] [ask]. [/n]" instead.
		
Chapter 2.7.6 - Generic answers

Understand "buffet" or "self/free service" or "free flow" as "[buffet]".
Understand "food/cooking/cuisine/edible/edibles/foodstuff/foodstuffs" as "[food]".
Understand "drink/drinks/liquid/liquids/beverage" as "[drinks]".
Understand "[food]" or "[drinks]" as "[edibles]".

Response of a not waitstaff worker when asked about a food-item or asked about "[meats]" or asked about "[edibles]":
	say "[/ss]For such things, it is best to ask my dining room colleagues.' [/se][the naming of the noun] [admit]. [/n]".

Response of Monica when asked about a food-item or asked about "[meats]" or asked about "[buffet]" or asked about "[edibles]" or asked about the buffet table:
	say "[/ss][one of]I think you'd better ask a waiter[or]In my opinion, you'd better have a word with a waiter[at random].' [/se][Monica] [suggest]. [/n]".

Response of a waitstaff worker when asked about "[edibles]":
	say "[/ss]The question is a little too general,' [/se][the naming of the noun] [reply] ";
	say "[/ss1]if you have a more specific question, I will be more than happy to help you.' [/r][/n]".		
	
Response of a not waitstaff worker when asked about "[buffet]" or asked about the buffet table:
	say "[/ss]Ask my colleagues in the dining room.' [/se][the naming of the noun] [explain] ";
	say "[/ss1]They will be pleased to give you all the information you need.' [/r][/n]".

Response of a waiter when asked about "[buffet]" or asked about the buffet table:
	say "[/ss]The buffet is over there.' [/se][the naming of the noun] [say], pointing north ";
	say "[/ss1]Bread, jam, butter, cheese and cold meats are provided, as well as cold drinks. You can also use a juicer and a colleague can cook eggs for you.' [/r][/n]".

Response of Emma when asked about the buffet table:
	say "[/ss]You can take anything you want, but you have to consume it here: you are not allowed to take it out for a pocket launch.' [/se][the naming of the noun] [explain], then [continue] ";
	say "[/ss1]If you want, I can cook you an egg the way you like it.' [/r][/n]".
		


Volume 3 - Peoples

A person can be leading. A person is usually not leading.
To decide whether leading actors are alone: 
	if the number of not leading people in the location is zero, decide yes;
	decide no.

Book 3.1 - The player

The description of the player is "A young man, about 30 years old, ".
Hair of the player are "blond".
Notes of the player are "You work as a software engineer, enjoy photography and love hiking in the mountains. [/n]In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it".
The player is male.
The player is leading.
The printed name of the player is "Francesco".
A person can be registered. The player is not registered.
The carrying capacity of the player is 3.

Chapter 3.1.1 - Initial player dressing

The black t-shirt is a cloth. The description is "A black T-shirt with a surfer design on the front.".
The white t-shirt is a cloth.
The checkered flannel shirt is a cloth. The description is "It was a gift from your father many years ago, it seemed a strange object at the time, but over time you appreciated its comfort and now you no longer leave it."

The pair of beige shorts is a cloth. The description is "A pair of beige shorts with lots of pockets: two on the back, two on the front and two on the legs.".
Understand "pants" as the pair of beige shorts.
A pocket is a kind of container.
A pocket is always open. A pocket is always not openable.
Instead of searching a pocket: try examining the noun.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are pockets.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are parts of the pair of beige shorts.

The pair of blue sneakers is a cloth.
The pair of brown trekking boots is a cloth. The description is "Your old leather hiking boots; they still show the marks of the stones you have walked over."

The player wears the black t-shirt, the pair of beige shorts and the pair of blue sneakers.

Chapter 3.1.2 - The wallet

The wallet is a closed openable container.
The description is "A grey canvas wallet. It's a gift from [Monica].".
Check the player opening the wallet:
	if the player is not carrying the noun:
		carry out the implicitly taking activity with the noun;
		if the player is not carrying the noun, stop the action. 
Before examining the right back pocket:
	now the wallet is in the noun.
	
An unuseful card is a kind of thing.	
The driving license, the credit card, the debit card and  the supermarket fidelity card are unuseful cards.
Instead of examining the driving license, say "You pink driving license.".
Instead of taking an unuseful card, say "Right now [the noun] is of no use to you.".
Instead of examining an unuseful card, say "Examining [the noun] now is a waste of time.".

The driving license, the credit card, the debit card, the identity card, the supermarket fidelity card, the photo are in the wallet.
The description of the photo is "A photo of [Monica] you took last year at Lake Misurina with the Three Peaks of Lavaredo in the background.".		

Some money are in the wallet. The description of money is "It's only banknotes, coins annoy you.".
Instead of taking money, say "There is nothing to pay.".

The identity card is in the wallet.
The description is "A card folded into a booklet with your photo (slightly old) and your personal information.".

Book 3.2 - The girlfriend

Monica is a woman in the car.
The description is "Tall, slim ".
Hair are "lots of slightly reddish, frizzy".
Eyes are "sparkling green".
Notes are "Could you not fall in love with her? [/n]A peppy girl, she won't forgive you anything you do that she doesn't like, but deep down she has her heart beating for you.".
Understand "Mo" or "my/-- love/girl/girlfriend" as Monica.
Monica is proper-named.
Monica is leading.

Alerts and hearts are numbers that vary.
To say alert: 
	say "[unicode 9828] ";
	increase alerts by 1.
To say heart: 
	say "[special-style-1][unicode 9829] [/r]";
	increase hearts by 1.

Rule for printing a locale paragraph about Monica (this is the Monica next to you rule):
	say "[Monica] [are] next to you."
 
Chapter 3.2.1 - Monica initial dressing

The pair of jeans is a cloth. The description is "A pair of slightly frayed skinny jeans."
The striped camisole is a cloth. The description is "A camisole with red and white stripes."
The pair of shimmering gold sneakers is a cloth. 
The pair of pink trekking shoes is a cloth. The description is "A pair of jaunty pink ankle boots."
The black sweatshirt is a cloth. The description is "A black sweatshirt with a tiger's face drawn on it." 
The pair of black leggings is a cloth. The description is "A pair of black skinny 3/4 leggings."

A monica-bag is a kind of container. It is closed, openable and wearable.
The shiny black handbag is a monica-bag. The description is "A shiny black handbag with a long golden chain strap. [if open]It's open. [end if]".
The small pink backpack is a monica-bag. The description is "A trendy small pink backpack with sparkling silver zips.".
Understand "bag" as a monica-bag.

Monica wears the pair of jeans, the striped camisole,  the pair of shimmering gold sneakers and the shiny black handbag.

Chapter 3.2.2 - Monica dressing rules

To say do-not-touch: say "[alert][Monica] [slap] your hand and [scold] you: [/ss]Don't touch!'[/r]".
Instead of opening a monica-bag, say "[do-not-touch]".
Instead of taking a monica-bag, say "[do-not-touch]".
Instead of searching a monica-bag, say "[do-not-touch]".

Persuasion rule for asking Monica to try dropping a monica-bag:
	say "[alert][regarding the actor][They] [look] at you angrily and [clutch] [their] [noun].";
	persuasion fails.
Persuasion rule for asking Monica to try opening a monica-bag:
	say "[alert][/ss]This is mine and I do what I want with it.' [/se][regarding the actor][they] [shut] you up.";
	persuasion fails.
Persuasion rule for asking Monica to try getting off a cloth:
	say "[alert][/ss]Aren't you ashamed to ask me this?' [/se][regarding the actor][they] [ask] you angrily.";
	persuasion fails.
Instead of taking a cloth which is worn by Monica, say "[alert][/ss]Hey, what are you trying to do?' [/se][Monica] [shriek].".
Persuasion rule for asking Monica to try giving a cloth to someone: 
	say "[alert][/ss]No way!' [/se][regarding the actor][they] [reply]."; 
	persuasion fails.

Chapter 3.2.3 - Kisses

Understand the command "kiss" as something new.
Understand "kiss [something]" as kissing.
Kisses-count is a number that varies. Kisses-count is 0.
Kisses-limit is always six.
Instead of kissing something:
	if the noun is Monica:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit, say no more kisses instead;
		say "[heart][/ss][one of]On dear[or]I love you[at random]!' [/se][regarding the noun][they] [whisper] sweetly in your ear.";
		if kisses-count is three, say narrator love kissing;
		stop the action;
	if the noun is a female person, say "[alert][/ss]I'm here to be kissed!' [/se][Monica] [scold] you." instead;
	if the noun is a male person, say "[/ss]Do you like men now?' [/se]amazed [Monica] [ask] you." instead;
	say "[/ss]Hold the kisses for me!' [/se][Monica] [scold] you.".

Persuasion rule for asking Monica to try kissing something:
	if the noun is the player:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit:
			say no more kisses;
			persuasion fails;
		say "[heart][/ss][one of]Oh dear[or]I love you[or]Here, my love[at random]!' [/se][regarding the actor][they] [say] and [place] her lips on yours. [/n][We] greatly [appreciate] this kiss.";
		if kisses-count is three, say narrator love kissing;
		persuasion fails;
	if the noun is a person:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit, persuasion fails;
		say "[heart][/ss]My lips are only for you!' [/se][regarding the actor][they] [say] and [kiss] you instead. [/n][We] greatly [appreciate] this.";
		if kisses-count is three, say narrator love kissing;
		persuasion fails;
	if the noun is the narrator:
		say "Unfortunately, the rules of the game do not allow it, but I have to admit that I would have loved to do it.";
		persuasion fails;
	say "[/ss]I don't think so.' [/se][Monica] [answer].";
	persuasion fails;

To say narrator love kissing:
	say "This kissing scene is starting to feel pretty enjoyable...";
	say "[/ss]Don't get your hopes up!' [/se]the actress who plays [Monica] [say] to the narrator [/ss1]They are just stage kisses.' [/r][/n]";
	say "Ok, Ok, I'll try to remain professional.".
	
To say no more kisses:
	say "[/ss]We have already kissed so many times.' [/se][Monica] [remind] [/ss1]I love kissing you, but now we have to get on with the game.' [/r][/n]".
	
Chapter 3.2.4 - Singing and dancing

Persuasion rule for asking Monica to try singing: 
	unless leading actors are alone:
		say "[alert][/ss]No, I don't sing, I'm ashamed.' [/se][regarding the actor][they] [answer].";
	otherwise:
		say "[alert][/ss]Why do you want me to sing if you know I'm out of tune?' [/se][regarding the actor][they] [ask].";
	persuasion fails.

To clap is a verb.
Persuasion rule for asking Monica to try dancing: persuasion succeeds.
Report Monica dancing:
	say "[heart][The actor]  [do] a twirl. [/n]";
	unless the number of not leading people in the location is zero, say "[The list of not leading people in the location] [clap]. [/n]";
	say "[We] [kiss] [regarding the actor][them].".
			
Book 3.3 - The receptionist

The receptionist is a scenery male worker in the reception.
The description is "A tall man ".
Hair are "short black". Eyes are "dark". 
Notes are "He also has a light, well-groomed beard".
Proper name of the receptionist is "Nathan". The receptionist is improper-named.
Understand "Nathan" as the receptionist.

The dark grey jacket and dotted grey tie are cloth.
The receptionist wears the white shirt, dark grey jacket and dotted grey tie.

Book 3.4 - The waiters

Chapter 3.4.1 - The male waiter

Hans is a male-waiter in the dining room.
Hair are "blond". Eyes are "blue".
Proper name is "Hans".
Printed name is "waiter".
Hans is improper-named.

Chapter 3.4.2 - The waitress

Mila is a waitress in the dining room.
Hair are "auburn". Eyes are "green".
Proper name is "Mila".
Printed name is "waitress".
Mila is improper-named. 

Chapter 3.4.3 - The cook

Emma is a scenery female waitstaff worker in the buffet.
Hair are "a bonnet covering her". Eyes are "brown".
Proper name is "Emma".
Printed name is "cook".
Emma is improper-named. 
Understand "cook/waitress" as Emma.

Book 3.5 - The narrator

The narrator is a backdrop.
The narrator is everywhere.
Understand "storyteller/teller" as the narrator.
	
Chapter 3.5.1 - Interaction

Instead of saying hello to the narrator, say "[first time][/i]Welcome to this game! [/r][/n][only]Remember[first time], however,[only] that I, as the narrator, cannot be involved in the play: interact with [Monica] and the other characters."

Understand "narrator/storyteller/teller/master" as "[narrator]".
Asking narrator for is an action applying to one thing.
Understand "ask the/-- [narrator] for [anything]" as asking narrator for.
Carry out asking narrator for:
	try saying hello to the narrator.
	
Asking narrator about is an action applying to one thing.
Understand "ask the/-- [narrator] about [anything]" as asking narrator about.
Carry out asking narrator about:
	try saying hello to the narrator.

Quizzing narrator about is an action applying to one topic.
Understand "ask the/-- [narrator] about [text]" as quizzing narrator about.
Carry out quizzing narrator about:
	try saying hello to the narrator.
	
Chapter 3.5.2 - Minimal help system

Asking help is an action applying to nothing.
Understand "help me/-- please/--" as asking help.
Understand the command "hint" as "help".
Understand the command "info" as "help".
Understand the command "advise" as "help".
Understand the command "suggest" as "help".
Understand the command "tip" as "help".

To say help1: say "It is not my job to help the player, but I can give you some advice".
To say help2: say "First of all look carefully at anything around".
To say help3: say "Next, pay attention to everything [Monica] [say] and [do]".
Understand "help/hint/hints/suggestion/suggestions/info/tip/advise/game" or "this game/story" as "[help]".
Response of a worker when asked about "[help]":
	try the noun asking help.
Carry out an actor asking help:
	if the actor is the player:
		say "[first time]I am sorry to hear you are stuck. [/n][only][help1]. [/n][help2]. [/n][help3]. [/n]";
		unless the number of not leading people in the location is zero, say "[The list of not leading people in the location] [can] tell you something of interest.";
	otherwise:
		say "[/ss][help1].' [/se][the actor] [say]. [/n]";
		say "[/ss][help2].' [/r][/n]";
		if the actor is Monica, say "[heart][/ss]And as I always tell you, pay attention to what I say and do: you know I am always right!' [/r][/n]";
		otherwise:
			say "[/ss][help3].' [/r][/n]";
			say "[/ss]'But,' [/se][regarding the actor][they] [go] on [/ss1]if you want to ask me more specific questions, I will be more than happy to help you.' [/r][/n]".

Persuasion rule for asking a person to try asking help: persuasion succeeds.
			
Volume 4 - Scenes

Book 4.1 - Intro

To say story-beginning: 
	say "[/i]A summery Friday evening. [/r][/p][We] [are] driving your car to a small town in the Dolomites. [/n]Next to you is [Monica], your girlfriend; [we] [have] set off for a relaxing weekend after a hard day at work. [/n][/ss]Still a long way to go?' [/se][Monica] [ask].[/ss]We will be at the hotel shortly.' [/se][we] [reply]. [/n][regarding Monica][They] [rest] [their] head on your shoulder and [caress] your neck."
	
Book 4.2 - Arrival

The Arrival is a scene. 
The Arrival begins when arrival-trigger is true.
When Arrival begins: now alerts is zero.
The Arrival ends when arrival-trigger is false.
 	
To say arrive to hotel:
	say "[/p][/i]A few minutes later. [/r][/p][We] [arrive] at the hotel and [park] your car in the private car parking area next to the garden. [/p]".
	
When Arrival ends:
	if alerts is greater than zero, say "Let's start well: [we] [have] just arrived and [Monica] [have] already rebuked you [alerts in words] time[s].";
	now alerts is 0.
	
Book 4.3 - Check-in

The Check-in is a scene. "It's time to check in: [we] [have] just arrived at the hotel.".
The check-in-trigger is a truth state that varies.
The Check-in begins when check-in-trigger is true.
The Check-in ends when check-in-trigger is false.
When Check-in ends:
	say "[We] and [Monica] bid farewell to the receptionist and set off up the stairs. [/n][/ss]Have a good night!' [/se][the naming of the receptionist] [wish] you. [/n]";
	say "[heart][Monica] [wrap] [their] arm around your waist and [give] you a kiss on the neck.";
	pause the game.
	
Book 4.4 - Breakfast

The Breakfast is a scene.
The Breakfast begins when the Check-in ends.

To unwear (t - a thing): now t is in the sleeping room.

When the Breakfast begins:
	[dressing change]
	unwear the red backpack;
	unwear the pink trolley;
	unwear the black t-shirt;
	unwear the pair of blue sneakers;
	unwear the pair of jeans;
	unwear the striped camisole;
	unwear the pair of shimmering gold sneakers;
	unwear the shiny black handbag;
	now Monica wears the black sweatshirt;
	now Monica wears the pair of black leggings;
	now Monica wears the pair of pink trekking shoes;
	now Monica wears the small pink backpack;
	now the player wears the white t-shirt;
	now the player wears the checkered flannel shirt;
	now the player wears the pair of brown trekking boots;
	[description]
	now the current interlocutor is nothing;
	say "[note style]The morning after. [/r][/p]";
	say "After a good night's sleep, [we] [are] ready to enjoy the first day of your holiday. [/n][We] and [Monica] go down the stairs and back to reception. [/n][We] [wear] [a list of cloth worn by the player]; [Monica] [wear] [a list of cloth worn by Monica]. [/n]";
	say "[The naming of the receptionist] [are] working behind the counter. [/p]";
	say "[/ss]Miss [Monica] and Mr. [printed name of the player] good morning!' [/se][the naming of the receptionist] [wish], [/ss]You're looking good today!' [/r][/n]";
	now morgen-trigger is true.
	
Chapter 4.4.1 - Greeting the receptionist

Morgen receptionist is a scene.
The morgen-trigger is a truth state that varies.
Morgen receptionist begins when morgen-trigger is true.
Morgen receptionist ends when morgen-trigger is false.

When Morgen receptionist begins:
	Monica morgen the receptionist in 0 turns from now;
	Monica remember to morgen in 1 turn from now.
	
When Morgen receptionist ends:
	Monica urges breakfast in 2 turns from now.
	
Chapter 4.4.2 - Searching for the table

Search for the table is a scene.
The search-table-trigger is a truth state that varies.
Search for the table begins when search-table-trigger is true.
Search for the table ends when search-table-trigger is false.

When Search for the table begins:
	say "[heart][/ss]Very nice, isn't it?' [/se][Monica] [ask], [/ss1]I wonder where we can sit.' [/r][/n]";
	the waiter welcomes in 3 turns from now.
	
Chapter 4.4.3 - First buffet access

First buffet access is a scene.
The buffet-trigger is a truth state that varies.
First buffet access begins when buffet-trigger is true.
First buffet access ends when buffet-trigger is false.

After going to the buffet:
	unless visit buffet completed:
		mark visit buffet as done;
		now buffet-trigger is true;
	continue the action.
	
When First buffet access begins:
	say "[Monica] [if Monica is enclosed by the bench][stand] up and [end if][follow] [us] at the buffet. [/n]";
	now Monica is in the buffet.
	
When First buffet access ends:
	say "[Monica] [return] with [us] in the dining room and [sit] on the bench. [/n]";
	now Monica is on the bench.
	
Instead of going somewhere from the buffet during First buffet access:
	if the number of things carried by the player is zero:
		say "[/ss]I don't understand why you didn't take anything.' [/se][Monica] [ask]. [/n]";
		mark visit buffet as not done;
		now buffet-trigger is false; 
		continue the action;
	[insert here che checks]
	now buffet-trigger is false;
	continue the action.
	
Chapter 4.4.4 - Ordering

Ordering is a scene.
The ordering-trigger is a truth state that varies.
Ordering begins when ordering-trigger is true.
Ordering ends when ordering-trigger is false.

Instead of getting off the bench during ordering:
	say "[alert][/ss]Have you no respect for [the naming of order handler]? ' [/se][Monica] [rebuke] [us]. [/n]".

Volume 5 - Internal db

Book 5.1 - Table of tasks

A task is a kind of value.
Some tasks are defined by the Table of tasks.

To mark (T - a task) as done:
	choose a row with a task of T in the Table of tasks;
	now done entry is true.

To mark (T - a task) as not done:
	choose a row with a task of T in the Table of tasks;
	now done entry is false.

To decide if (T - a task) completed:
	let X be the done corresponding to a task of T in the Table of tasks;
	if X is true, decide yes;
	otherwise:
		decide no.
		
Table of tasks
task	done
Order hot drinks	false
Visit buffet	false
Drunk hot drinks	false
Eat buffet	false
Drunk cold drinks	false
Got cooked egg	false

	