Version 1 of Written papers by The Strawberry Field begins here.

[
Written papers © 2024 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

Written papers is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

Written papers is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

A paper-item is a kind of thing.
A paper-side is a kind of thing.
A paper-side has a table name called arguments.
A paper-item has a paper-side called front.
A paper-item has a paper-side called back.

A paper-item can be upside or turned. A paper-item is usually upside.
Instead of turning a paper-item:
	say "[We] [turn] [the noun]: now [we] [see] the ";
	if the noun is upside:
		now the noun is turned;
		say "back";
	otherwise:
		now the noun is upside;
		say "front";
	say " side.".
Understand the command "flip" as "turn".
Understand the command "revert" as "turn".

Instead of looking under a paper-item:
	try turning the noun.
	
Instead of examining a paper-item:
	if the noun is upside, try examining the front of the noun instead;
	try examining the back of the noun.

To say list of topics of (S - a paper-side):
	let named options count be the number of rows in arguments of S;
	repeat through arguments of S:
		say "[/ss][title entry]'[/r]";
		decrease named options count by 1;
		if the named options count is 1:
			if the serial comma option is active, say ",";
			say " and ";
		otherwise unless the named options count is 0:
			say ", ".
	
Examining as a paper is an action applying to one topic.

Carry out examining as a paper:
	say "[We] [can't] find any such text."

Written papers ends here.