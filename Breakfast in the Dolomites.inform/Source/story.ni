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

After printing the banner text:
	say "[/p][arrive-at-hotel]".
	
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

Section  2.1.1.1 - The Dashboard

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

Chapter 2.2 - The car door

The car door is a closed openable lockable scenery door.
It is outside of the car and inside from the parking.
your-car-key unlocks the car door.

Chapter 2.3 - The car boot

The boot is a closed openable scenery container.

	
Volume 3 - Peoples

Book 3.1 - The girlfriend

Monica is a woman in the car.
Understand "Mo" or "Love" as Monica.

Book 3.2 - The receptionist

The receptionist is a man in the reception.

Book 3.3 - The waiters

Chapter 3.3.1 - The male waiter

Chapter 3.3.2 - The waitress

Volume 4 - Texts

Book 4.1 - Intro

To say story-beginning: 
	say "A summery Friday evening. [/n]You are driving your car to a small town in the Dolomites. [/n]Next to you is Monica, your girlfriend; you have set off for a relaxing weekend after a hard day at work. [/n][/ss]Still a long way to go?' [/se]Monica asks.[/ss]We will be at the hotel shortly.' [/se]you reply."
	
To say arrive-at-hotel:
	say "A few minutes later you arrive at the hotel and you park your car in a corner of the garden.".