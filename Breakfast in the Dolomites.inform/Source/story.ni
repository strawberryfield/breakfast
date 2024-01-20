"Breakfast in the Dolomites" by Roberto Ceccarelli

Volume 0 - Introduction

The release number is 1.
The story creation year is 2024.
The story genre is "Screwball comedy".
The story headline is "A [/i]play just for fun[/r] comedy".
The story description is "What a strange thing love is".
Release along with  the library card.

Chapter 0.1 - Includes

Include Cleared Events by Daniel Stelzer.
Include Large Game Speedup by Nathanael Nerode.
Include Customized Trinity Inventory by The Strawberry Field.

Chapter 0.2 - Game start

When play begins:
	say "[story-beginning]";
	say "[/p][/b]«The Strawberry Field»[/r] [/i]presents[/r][/p]".

Arrival-trigger is a truth state that varies. 
After printing the banner text:
	now arrival-trigger is true;
	say "[arrive to hotel][/n]";
	Monica leaves the car in 1 turn from now.
	
Volume 1 - Common 

Book 1 - Abbreviations

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

Volume 2 - Rooms definitions

The Car is a room. 
The Parking is a room.
The Garden is east of the parking.
The Reception is inside of the garden.
The Stairs is above the reception.
The Bathroom is north of the reception.
The Dining room is east of the reception.
The Buffet is north of the dining room.
The Kitchen is a room.
The Sleeping room is a room.

Book 2.1 - The car

The description of the car is "A city car; the interior space is not much, but more than enough for a young couple. [/n]Next to the dashboard, under the radio, is a small drawer."

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
	
At the time when Monica knocks:
	if the location of the player is the car:
		say "[alert]Monica is knocking on the door of the car.[/ss]What are you still doing in there?' [/se]she asks.";
		Monica knocks in 2 turns from now.	
	
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
		say "[alert][/ss]There are a lot of thieves in this world, did you check to make sure that you've locked the car?' [/se] Monica asks." instead.
		
After going to the garden from the parking:
	say "Monica follows you. [/n]";
	now Monica is in the garden;
	now arrival-trigger is false;
	continue the action.
	
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
		let N be the number of things which are not cloth worn by the character;
		if N is greater than 0:
			say "[/n][regarding the noun][They] also [wear] [a list of things which are not cloth worn by the character].";
		let N be the number of things which are carried by the character;
		if N is greater than 0:
			say "[carrying of the noun]".

Book 3.1 - The player

The description of the player is "A young man, about 30 years old, blond hair. [/n]You work as a software engineer, enjoy photography and love walking in the mountains. [/n]In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it.".

Chapter 3.1.1 - Initial player dressing

The black t-shirt is a cloth. The description is "A black T-shirt with a surfer design on the front.".
Understand "shirt" as the t-shirt.

The pair of beige shorts is a cloth. The description is "A pair of beige shorts with lots of pockets: two on the back, two on the front and two on the legs.".
Understand "pants" as the pair of beige shorts.
A pocket is a kind of container.
A pocket is always open. A pocket is always not openable.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are pockets.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are parts of the pair of beige shorts.

The pair of blue sneakers is a cloth.

The player wears the black t-shirt, the pair of beige shorts and the pair of blue sneakers.

Chapter 3.1.2 - The wallet

The wallet is a closed openable container in the right back pocket.
The description is "A grey canvas wallet. It's a gift from Monica.".
Check the player opening the wallet:
	if the player is not carrying the noun:
		carry out the implicitly taking activity with the noun;
		if the player is not carrying the noun, stop the action. 

An unuseful card is a kind of thing.	
The credit card, the debit card and  the supermarket fidelity card are unuseful cards.
Instead of taking an unuseful card, say "Right now [the noun] is of no use to you.".
Instead of examining an unuseful card, say "Examining [the noun] now is a waste of time.".

The credit card, the debit card, the identity card, the supermarket fidelity card, the photo are in the wallet.
The description of the photo is "A photo you took of Monica last year at Lake Misurina with the Three Peaks of Lavaredo in the background.".		

Some money are in the wallet. The description of money is "It's only banknotes, coins annoy you.".
Instead of taking money, say "There is nothing to pay.".

Book 3.2 - The girlfriend

Monica is a woman in the car.
The description is "Tall, slim, with lots of slightly reddish, frizzy hair and sparkling green eyes: could you not fall in love with her? [/n]A peppy girl, she won't forgive you anything you do that she doesn't like, but deep down she has her heart beating for you.".
Understand "Mo" or "my/-- love/girl/girlfriend" as Monica.

Alerts is a number that varies.
To say alert: increase alerts by 1.

Chapter 3.2.1 - Monica initial dressing

The pair of jeans is a cloth. The description is "A pair of slightly frayed skinny jeans."
The striped camisole is a cloth. The description is "A camisole with red and white stripes."
The pair of shimmering gold sneakers is a cloth. 

The shiny black handbag is a closed openable wearable container. The description is "A shiny black handbag with a long golden chain strap.".
Understand "bag" as shiny black handbag.
Instead of opening the shiny black handbag, say "[alert]Monica slaps your hand and scolds you: [/ss]Don't touch!' [/r]".

Monica wears the pair of jeans, the striped camisole,  the pair of shimmering gold sneakers and the shiny black handbag.

Book 3.3 - The receptionist

The receptionist is a man in the reception.

Book 3.4 - The waiters

Chapter 3.4.1 - The male waiter

Chapter 3.4.2 - The waitress

Volume 4 - Scenes

Book 4.1 - Intro

To say story-beginning: 
	say "A summery Friday evening. [/n]You are driving your car to a small town in the Dolomites. [/n]Next to you is Monica, your girlfriend; you have set off for a relaxing weekend after a hard day at work. [/n][/ss]Still a long way to go?' [/se]Monica asks.[/ss]We will be at the hotel shortly.' [/se]you reply. [/n]She rests her head on your shoulder and caresses your neck."
	
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
	
