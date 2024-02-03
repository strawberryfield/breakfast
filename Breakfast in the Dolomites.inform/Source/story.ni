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
Include Assorted Text Generation by Emily Short.
Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects (for Glulx only) by Emily Short.
Include Scopability by Brady Garvin.
Include Customized Trinity Inventory by The Strawberry Field.
Include Workers by The Strawberry Field.
Include Bathroom kit by The Strawberry Field.

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
	
Volume 1 - Common 

Book 1.1 - Typography

Chapter 1.1.1 - Styles

Table of User Styles (continued)
style name	color	italic	font weight
special-style-1	"#FF0000"	false	regular-weight
note-style	"#0000A0"	true	bold-weight

Chapter 1.1.2 - Shortenings

To say /n: say line break.
To say /nn: say no line break.
To say /p: say paragraph break.
To say /run: say run paragraph on.
To say /b: say bold type.
To say /i: say italic type.
To say /r: say roman type.

To say /s (t - text): say "[/i]'[t]'[/r]".
To say /ss: say "[/i]'".
To say /se: say "[/r][unicode 8212] ".

Book 1.2 - Rules

Chapter 1.2.1 - Aliases

Understand "look around" as looking.  
Understand "climb on [something]" as climbing.
Understand "go [down]stairs" as going.  Understand "go [down] stairs" as going.  
Understand "go [up]stairs" as going.  Understand "go [up] stairs" as going.  
Understand "downstairs" as down.  Understand "upstairs" as up.
Understand "check out [something]" as examining.
Understand "sit down on/-- [something]" as entering.

Chapter 1.2.2 - Blocking take all

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Don't be a hoarder, just take what you plan to use.”.
	
Chapter 1.2.3  - Special actions

Dancing is an action applying to nothing.
Understand "Dance" as dancing.
Report dancing: say "[We] [aren't] a dancer.".
Check an actor dancing:
	if the actor is enclosed by something (called the seat):
		say "(first leaving [the seat])";
		silently try getting off the seat.
 
Singing is an action applying to nothing.
Understand "Sing" as singing.
Report singing: say "[We] [are] not particularly in tune.".
Check singing:
	If the location of the player contains people which are not the player, say "Someone could not like it." instead.
	
Chapter 1.2.4 - Special says

To say times of (N - a number): say " for the [ordinal of N] time".
To say other times of (N - a number):
	if N is greater than 1, say times of N.
	
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
	say "[alert]Monica looks at you with a fierce gaze." instead.

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
	say "Monica jumps out of the car, then closes the car door.";
	now Monica is in the parking;
	Monica takes trolley in 2 turn from now.

At the time when Monica takes trolley:
	if the boot is locked:
		say "[alert][/ss]Unlock the car!' [/se]Monica cries."; 
		Monica takes trolley in 1 turn from now;
	otherwise:
		unless the boot is open:
			now the boot is open;
			say "Monica opens the car boot revealing [a list of things in the boot], then she takes her pink trolley.";
		otherwise:
			say "Monica takes her pink trolley from the boot.";
		now Monica carries the pink trolley;
	Monica knocks in 1 turns from now.

Mknock-count is a number that varies. Mknock-count is 0.	
At the time when Monica knocks:
	if the location of the player is the car:
		Increase Mknock-count by 1;
		say "[alert]Monica is knocking on the door of the car[other times of Mknock-count].[/ss]What are you still doing in there?' [/se]she asks.";
		Monica knocks in 1 turns from now.	
	
Book 2.2 - The parking

The description of the parking is "The hotel's reserved car park. [/n]Your white car is perhaps the smallest of all. [/n]To the east is the garden.".

Chapter 2.2.1 - Rules

Before going to the garden from the parking:
	unless the red backpack is enclosed by the player:
		say "[alert][/ss]You forgot to take your luggage.' [/se]Monica remebers you." instead;
	unless the car door is closed:
		say "[alert][/ss]How distracted you are tonight: you left the car door open!' [/se]Monica exclaims." instead;
	unless the boot is closed:
		say "[alert][/ss]It's better to close the car boot.' [/se]Monica suggests." instead;
	unless the car door  is locked:
		say "[alert][/ss]There are a lot of thieves in this world, did you check to make sure that you've locked the car?' [/se] Monica asks." instead;
	unless the pink trolley is enclosed by a people:
		say "[alert][/ss]I'd better carry the trolley myself!' [/se]Monica says annoyed and takes her trolley again.";
		now Monica carries the pink trolley.
		
After going to the garden from the parking:
	say "Monica follows you. [/n]";
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

After opening the sliding door, say "You come closer to [the noun] and it automatically opens.".
After closing the sliding door, say "You move away from [the noun] and it automatically closes.".
Instead of going through the sliding door:
	try opening the noun;
	the sliding door closes in 0 turns from now;
	continue the action.
After going through the sliding door:
	say "Monica also walks through the door.";
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
	say "' [/se]Monica says. [/n]It would be completely useless to go out, you have everything you need with you.".

Instead of going up during the check-in:
	unless check-in is completed, say "You have not yet completed your check-in." instead;
	unless a room key is enclosed by the player:
		if a room key is on the wooden desk, say "[/ss]Mr. Francesco, you forgot your key.' [/se][determinate-naming of the receptionist] reminds you." instead;
		say "[alert][/ss]Are you sure you took the room key?' [/se] asks Monica." instead;
	unless a room key is enclosed by Monica, say "Monica has not yet taken her key." instead;
	unless the red backpack is enclosed by a people, say "[/ss]Mr. Francesco, you forgot your backpack.' [/se][determinate-naming of the receptionist] reminds you." instead;
	unless the pink trolley is enclosed by a people, say "[/ss]You forgot your trolley.' [/se][determinate-naming of the receptionist] reminds you." instead;
	Monica gets tired never;
	now the check-in-trigger is false.
		
Section 2.4.1.2 - Wallet items

Instead of taking the driving license during the check-in, say "You have driven for hours to get here, now it is time to rest.".
Instead of giving the identity card to the receptionist during the check-in:
	try showing the identity card to the receptionist.
Instead of showing the identity card to the receptionist during the check-in:
	say "You show your identity card to [determinate-naming of receptionist].";
	say "[/ss]Thank you Mr. Francesco.' [/se]he says, then he copies your data into the computer.";
	now the player is registered;
	Monica urges your document never;
	if Monica is registered, receptionist closes check-in in 0 turns from now.

Section 2.4.1.3 - Room keys

Instead of giving a room key to Monica during the check-in:
	if a room key is enclosed by Monica:
		say "[heart][/ss]It is better if we keep one each.' [/ss]Monica suggests." instead;
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
	if the location of Monica is the reception,	say "[alert][/ss]Where are you going?' [/se]Monica says, [/ss]now it's breakfast time!' [/r][/n]";
	otherwise:
		say "Monica is waiting for you at the table. [/n]".	
Instead of going outside during the breakfast:
	say "[breakfast time]".
Instead of going up during the breakfast:
	say "[breakfast time]".

Section 2.4.1.5 - Movements during morgen receptionist

Instead of going east during the Morgen receptionist:
	say "[alert][/ss]Why don't you listen to what I'm suggesting?' [/se]Monica rebukes you.".
Instead of going through the bathroom door during the Morgen receptionist, say "There are more important things to do now.".
Instead of opening the bathroom door during the Morgen receptionist, say "There are more important things to do now.".

Chapter 2.4.2 - Timed events

Section 2.4.2.1 - Check-in

At the time when the receptionist greets:
	say "[/ss]Good evening, welcome to our hotel!' [/se][determinate-naming of receptionist] greets you.[/ss]How can I help you?' [/r][/n]";
	Monica greets the receptionist in 0 turns from now;
	Monica remember to greet in 1 turn from now;

Mrtg-count is a number that varies. Mrtg-count is 0.
At the time when Monica remember to greet:
	increase Mrtg-count by 1;
	say "[alert][/ss]Don't be rude, say hello to [determinate-naming of receptionist].' [/se]Monica suggests in your ear[other times of Mrtg-count].";
	Monica remember to greet in 1 turn from now;		

At the time when Monica greets the receptionist:
	say "[greet receptionist].' [/se]says Monica[if the receptionist is improper-named] to [determinate-naming of receptionist][end if].". 	

At the time when the receptionist confirms reservation:
	say "[/ss]Here it is.' [/se][determinate-naming of receptionist] reports. [/n][/ss]We have reserved the 'edelweiss' room for you: our rooms do not have a number, but the name of a flower.' [/r][/n]";
	say "[/ss]Oh nice!' [/se]Monica says and opens her handbag. [/n]";
	say "[determinate-naming of receptionist] smiles. [/n]" in sentence case;
	now the shiny black handbag is open;
	the receptionist asks for documents in 1 turn from now.

At the time when the receptionist asks for documents:
	say "[/ss]May I have your documents so that I can register?' [/se]asks [determinate-naming of receptionist].";
	Monica shows document in 1 turn from now.
	
At the time when Monica shows document:
	say "Monica takes her identity card and shows it to [determinate-naming of receptionist]. [/n]";
	say "He copies some data into the computer and says [/ss]Thank you Miss Monica.' [/r][/n]";
	say "Monica puts her identity card back in her handbag and closes it.";
	now the shiny black handbag is closed;
	now Monica is registered;
	unless the player is registered, Monica urges your document in 2 turns from now;
	otherwise:
		receptionist closes check-in in 0 turns from now.

Muyd-count is a number that varies. Muyd-count is 0.
At the time when Monica urges your document:
	unless the player is registered:
		increase Muyd-count by 1;
		say "[alert][/ss]What are you waiting for? Show the document to [determinate-naming of receptionist].' [/se]Monica urges you[other times of Muyd-count].";
		Monica urges your document in 1 turn from now.

At the time when receptionist closes check-in:
	say "[determinate-naming of receptionist] takes two keys and puts them on the desk. [/n]"  in sentence case;
	repeat with K running through room keys in sleeping room: 
		now K is on the wooden desk;
	say "[/ss]These are the keys of your room.' [/se][determinate-naming of receptionist] explains.";
	say "[/ss]In the room you will find a brochure with all the useful information about the hotel, but if you have any questions I am at your disposal.' [/r][/n]";
	Monica takes key in 1 turn from now.

At the time when Monica takes key:
	if number of room keys on the wooden desk is zero:
		say "[alert]Monica would have liked to take a key, but you took them all. She looks at you with a stern stare, maybe it's best if you give her one of the keys.";
		Monica asks for key in 1 turn from now;
	otherwise:	
		say "Monica takes a key from the desk and puts it in her handbag.";
		now a random room key on the wooden desk is in the handbag;
		Monica gets tired in 2 turns from now.

Mtired-count is a number that varies. Mtired-count is 0.	
At the time when Monica gets tired:
	increase Mtired-count by 1;
	say "[/ss]I'm tired, let[']s go to sleep.' [/se]asks Monica in a whisper[other times of Mtired-count].";
	Monica gets tired in 2 turns from now.

Maskkey-count is a number that varies.	
At the time when Monica asks for key:
	increase Maskkey-count by 1;
	say "[alert][/ss]Why did you take both keys? It's better if we each keep one!' [/se]Monica challenges you rather annoyed[other times of Maskkey-count].";
	Monica asks for key in 1 turn from now.
	
Section 2.4.2.2 - Morgen receptionist
	
Mrtm-count is a number that varies. Mrtm-count is 0.
At the time when Monica remember to morgen:
	unless the current interlocutor is the receptionist:
		increase Mrtm-count by 1;
		say "[alert][/ss]Don't be rude, greet [determinate-naming of receptionist].' [/se]Monica suggests in your ear[other times of Mrtm-count].";
		Monica remember to morgen in 1 turn from now;		

At the time when Monica morgen the receptionist:
	say "[morgen-receptionist].' [/se]says Monica[if the receptionist is improper-named] to [determinate-naming of receptionist][end if].". 	

Mub-count is a number that varies. Mub-count is 0.
At the time when Monica urges breakfast:
	increase Mub-count by 1;
	say "[alert][/ss]Shall we go for breakfast?' [/se]urges Monica[other times of Mub-count], [/ss]I'm quite hungry.' [/r][/n]";
	Monica urges breakfast in 1 turn from now.
	
Chapter 2.4.3 - Conversation

Section 2.4.3.1 - Check-in

To say greet receptionist: 
	say "[/ss]Good evening[if the receptionist is proper-named] [printed name of the receptionist][end if]".

Instead of hailing during the check-in:
	try saying hello to the receptionist.
Instead of saying hello to someone (called the other) during the check-in:
	unless the other is Monica:
		now the current interlocutor is the receptionist;
		say "[greet receptionist], we are Francesco and Monica and we have a reservation.' [/r][/n][/ss]Just a moment, I look for it.' [/se][determinate-naming of receptionist] states and types something on the computer.";
		the receptionist confirms reservation in 1 turn from now;
		Monica remember to greet never;
	otherwise:
		continue the action.

Section 2.4.3.2 - Morgen receptionist

To say morgen-receptionist: 
	say "[/ss]Good morning[if the receptionist is proper-named] [printed name of the receptionist][end if]".	

Instead of hailing for the first time during the morgen receptionist:
	if the location of the player is the reception, try saying hello to the receptionist.
Instead of saying hello to someone (called the other) during the breakfast:
	unless the other is Monica:
		if the location of the player is the reception:
			now the current interlocutor is the receptionist;
			say "[morgen-receptionist]' [/se]you say[if the receptionist is improper-named] to [determinate-naming of receptionist][end if].";
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
	if the men-toilet lamp is lit and the men's toilet is not busy, say "You forgot the toilet light on." instead;
	if the antechamber-lamp is lit and the men's toilet is not busy and the women's toilet is not busy and leading actors are alone:
		try opening the bathroom door;
		say "You forgot the light on." instead.

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
After getting off the bench, say "You stand up.".
Rule for supplying a missing noun while entering when the location is the dining room (this is the seat at the tabe rule): now the noun is the bench.

Section 2.6.1.3 - The table
	
The table is a scenery supporter in the dining room.

Chapter 2.6.2 - Rules

After going to the dining room from the reception:
	if the location of Monica is the reception:
		say "Monica follows you.";
		now Monica is in the dining room;
		Monica urges breakfast never;
		continue the action.
		
Book 2.7 - The buffet

The description of the buffet is "The buffet is a feast for the senses, featuring a variety of locally sourced and homemade delights. Guests can savor freshly baked pastries, artisanal bread, jams, and a selection of cheeses and cured meats, showcasing the flavors of the Dolomites.".

Volume 3 - Peoples

A cloth is a kind of thing. 
A cloth is always wearable.
A cloth is usually unlisted when worn.

To say dressing of (p - a person):
	say "[if p is the player]You wear[otherwise][regarding p][They] [wear][end if] [a list of cloth worn by p].".

To say carrying of (p - a person):
	say "[if p is the player]You are carrying[otherwise][regarding p][They] [carry][end if] [a list of things carried by p].".
		
Instead of examining a person (called the character):
	say "[description of the character][/n][dressing of the character]";
	unless the character is the player: 
		if the character is a worker, say "[character namesign]";
		let N be the number of things which are not cloth worn by the character;
		if N is greater than 0:
			say "[/n][regarding the noun][They] also [wear] [a list of things which are not cloth worn by the character].";
		let N be the number of things which are carried by the character;
		if N is greater than 0:
			say "[carrying of the noun]".

A person can be leading. A person is usually not leading.
To decide whether leading actors are alone: 
	if the number of not leading people in the location is zero, decide yes;
	decide no.

Book 3.1 - The player

The description of the player is "A young man, about 30 years old, blond hair. [/n]You work as a software engineer, enjoy photography and love hiking in the mountains. [/n]In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it.".
The player is male.
The player is leading.
A person can be registered. The player is not registered.

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
The description is "A grey canvas wallet. It's a gift from Monica.".
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
The description of the photo is "A photo of Monica you took last year at Lake Misurina with the Three Peaks of Lavaredo in the background.".		

Some money are in the wallet. The description of money is "It's only banknotes, coins annoy you.".
Instead of taking money, say "There is nothing to pay.".

The identity card is in the wallet.
The description is "A card folded into a booklet with your photo (slightly old) and your personal information.".

Book 3.2 - The girlfriend

Monica is a woman in the car.
The description is "Tall, slim, with lots of slightly reddish, frizzy hair and sparkling green eyes: could you not fall in love with her? [/n]A peppy girl, she won't forgive you anything you do that she doesn't like, but deep down she has her heart beating for you.".
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

To say do-not-touch: say "[alert]Monica slaps your hand and scolds you: [/ss]Don't touch!'[/r]".
Instead of opening a monica-bag, say "[do-not-touch]".
Instead of taking a monica-bag, say "[do-not-touch]".
Instead of searching a monica-bag, say "[do-not-touch]".

Persuasion rule for asking Monica to try dropping a monica-bag:
	say "[alert]She looks at you angrily and clutches her [noun].";
	persuasion fails.
Persuasion rule for asking Monica to try opening a monica-bag:
	say "[alert][/ss]This is mine and I do what I want with it. [/se]she shuts you up.";
	persuasion fails.
Persuasion rule for asking Monica to try getting off a cloth:
	say "[alert][/ss]Aren't you ashamed to ask me this?' [/se]she asks you angrily.";
	persuasion fails.
Instead of taking a cloth which is worn by Monica, say "[alert][/ss]Hey, what are you trying to do? '[/se]shrieks Monica.".
Persuasion rule for asking Monica to try giving a cloth to someone: 
	say "[alert][/ss]No way!' [/se]she replies."; 
	persuasion fails.

Chapter 3.2.3 - Kisses

Instead of kissing something:
	if the noun is Monica, say "[heart][/ss][one of]On dear[or]I love you[at random]!' [/se]she whispers sweetly in your ear." instead;
	if the noun is a woman, say "[alert]I'm here to be kissed!' [/se]Monica scolds you." instead;
	if the noun is a man, say "[/ss]Do you like men now?' [/se]amazed Monica asks you." instead;
	say "[/ss]Hold the kisses for me!' [/se]Monica scolds you.".

Persuasion rule for asking Monica to try kissing someone:
	if the noun is the player:
		say "[heart][/ss][one of]Oh dear[or]I love you[or]Here, my love[at random]!' [/se]she says and places her lips on yours. [/n]You greatly appreciate this kiss.";
		persuasion fails;
	otherwise:
		say "[heart][/ss]My lips are only for you!' [/se]she says and kisses you instead. [/n]You greatly appreciate it.";
		persuasion fails.

Chapter 3.2.4 - Singing and dancing

Persuasion rule for asking Monica to try singing: 
	unless leading actors are alone:
		say "[alert][/ss]No, I don't sing, I'm ashamed.' [/se]she answers.";
	otherwise:
		say "[alert][/ss]Why do you want me to sing if you know I'm out of tune?' [/se]she asks.";
	persuasion fails.

To clap is a verb.
Persuasion rule for asking Monica to try dancing: persuasion succeeds.
Report Monica dancing:
	say "[heart][The actor]  does a twirl. [/n]";
	unless the number of not leading people in the location is zero, say "[The list of not leading people in the location] [clap]. [/n]";
	say "You kiss her.".
			
Book 3.3 - The receptionist

The receptionist is a scenery male worker in the reception.
The description is "A tall man with short black hair, dark eyes and a light, well-groomed beard.".
Proper name of the receptionist is "Nathan".
Understand "Nathan" as the receptionist.

The white shirt, dark grey jacket and dotted grey tie are cloth.
The receptionist wears the white shirt, dark grey jacket and dotted grey tie.

Book 3.4 - The waiters

Chapter 3.4.1 - The male waiter

Chapter 3.4.2 - The waitress

Volume 4 - Scenes

Book 4.1 - Intro

To say story-beginning: 
	say "[/i]A summery Friday evening. [/r][/p]You are driving your car to a small town in the Dolomites. [/n]Next to you is Monica, your girlfriend; you have set off for a relaxing weekend after a hard day at work. [/n][/ss]Still a long way to go?' [/se]Monica asks.[/ss]We will be at the hotel shortly.' [/se]you reply. [/n]She rests her head on your shoulder and caresses your neck."
	
Book 4.2 - Arrival

The Arrival is a scene. 
The Arrival begins when arrival-trigger is true.
When Arrival begins: now alerts is zero.
The Arrival ends when arrival-trigger is false.
 	
To say arrive to hotel:
	say "[/p][/i]A few minutes later. [/r][/p]You arrive at the hotel and you park your car in the private car parking area next to the garden. [/p]".
	
When Arrival ends:
	if alerts is greater than zero, say "Let's start well: you have just arrived and Monica has already rebuked you [alerts in words] time[s].";
	now alerts is 0.
	
Book 4.3 - Check-in

The Check-in is a scene. "It's time to check in: you have just arrived at the hotel.".
The check-in-trigger is a truth state that varies.
The Check-in begins when check-in-trigger is true.
The Check-in ends when check-in-trigger is false.
When Check-in ends:
	say "You and Monica bid farewell to the receptionist and set off up the stairs. [/n][/ss]Have a good night!' [/se][determinate-naming of the receptionist] wishes you. [/n]";
	say "[heart]Monica wraps her arm around your waist and gives you a kiss on the neck.";
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
	say "[note style]The morning after. [/r][/p]";
	say "After a good night's sleep, you are ready to enjoy the first day of your holiday. [/n]You and Monica go down the stairs and back to reception, [determinate-naming of the receptionist] is working behind the counter. [/n][/ss]Miss Monica and Mr. Francesco good morning!' [/se]wishes [determinate-naming of the receptionist], [/ss]You're looking good today!' [/r][/n]";
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
	