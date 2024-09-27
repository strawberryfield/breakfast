Version 1 of Commons by The Strawberry Field begins here.

Book 1.1 - Typoghraphy

Chapter 1.1.1 - Shortenings

To say /n: say line break.
To say /nn: say no line break.
To say /p: say paragraph break.
To say /run: say run paragraph on.
To say /b: say bold type.
To say /i: say italic type.
To say /r: say roman type.
To say /f: say fixed letter spacing.
To say --: say unicode 8212.

To say /s (t - text): say "[/i]'[t]'[/r]".
To say /ss: say "[/i]'".
To say /ss1: say "[unicode 8212] [/i]'".
To say /se: say "[/r][unicode 8212] ".

Book 1.2 - Rules

Rule for clarifying the parser's choice of something:
	do nothing instead.
	
After reading a command:
	if the player's command includes "sex" or the player's command includes "fuck":
		say "The game does not include references to sex.";
		reject the player's command. 
	

Chapter 1.2.1 - Aliases

Understand "look around" as looking.  
Understand "climb on [something]" as climbing.
Understand "go [down]stairs" as going.  Understand "go [down] stairs" as going.  
Understand "go [up]stairs" as going.  Understand "go [up] stairs" as going.  
Understand "downstairs" as down.  Understand "upstairs" as up.
Understand "check out [something]" as examining.
Understand "sit down on/-- [something]" as entering.

Understand "use [an edible thing]" as eating.
Understand "use [a wearable thing]" as wearing.

Understand "use [a closed openable container]" as opening. 
Understand "use [an open openable container]" as closing.

Understand "use [something preferably held] on [a locked lockable thing]" as unlocking it with (with nouns reversed). Understand "use [something preferably held] on [an unlocked lockable thing]" as locking it with (with nouns reversed).

Understand "use [a switched off device]" as switching on.

Understand "use [something]" as using. 
Using is an action applying to one thing. 
Carry out using: say "[We] will have to be more specific about your intentions."

Understand "use [a door]" as opening. 
Understand "use [an open door]" as entering.
Understand "approach [a door]" as entering.

Understand "vomit" or "throw up" or "puke" or "barf" as a mistake ("[We] may feel a bit ill, but I don't think that's necessary.").

Understand "man" or "gentleman" or "guy" or "dude" or "boy" as a man. 
Understand "girl" or "gal" or "woman" or "lady" as a woman.

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
	
Chapter 1.2.5 - Sanity check

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
	abide by the sanity-check rules.

The sanity-check stage rule is listed before the before stage rule  in the action-processing rules.

Section 1.2.5.1 - Basic sanity-check rules

Sanity-check inserting something (called the holder) into something which is enclosed by the holder:
	say "[We] can't put [the holder] into [themselves]." instead.

Sanity-check putting something (called the holder) on something which is enclosed by the holder:
	say "[We] can't put [the holder] on [themselves]." instead.

Sanity-check inserting something (called the target) into the target:
	say "[We] can't put [the target] into [themselves]." instead.

Sanity-check inserting something in a container (called the target) into the target:
	say "[The noun] [are] in [the target] already." instead.

Sanity-check putting something (called the source) on a supporter (called the target) when the source is on the target:
	say "[The source] [are] on [the target] already." instead.

Sanity-check searching a person:
	say "That might well be resented." instead.

Sanity-check opening a person:
	say "I'm not sure what you're imagining, but I at least am no surgeon." instead.

Sanity-check eating a person:
	say "Are you a cannibal?" instead.
	
Sanity-check closing a person:
	say "I don't understand how that could be a meaningful action." instead.

Sanity-check searching the player:
	try taking inventory instead.

Chapter 1.2.6 - Go back

Understand "go back" as retreating. 
Understand "back" or "return" or "retreat" as retreating.

The former direction is a direction that varies.

Carry out going:
	if the noun is a direction:
		now the former direction is the noun.

Retreating is an action applying to nothing.

Carry out retreating:
	let new direction be the opposite of the former direction;
	say "(heading [new direction])[line break]";
	try going the new direction.

Chapter 1.2.7 - Concreteness

A thing can be r-concrete or r-abstract. A thing is usually r-concrete.

Sanity-check rubbing or squeezing or touching or waving or pulling or pushing or turning or climbing an r-abstract thing:
	say "[The noun] [are] not really solid enough to treat that way. Might as well be [one of]dandelion fluff[or]pipe smoke[or]a hologram[or]a 3D image[or]mist[or]a cloud of vapor[at random]." instead.

Sanity-check eating or drinking or tasting an r-abstract thing:
	say "[The noun] [are] too abstract to offer sustenance." instead.
Sanity-check pushing an r-abstract thing to a direction:
	say "[The noun] [aren't] solid enough for that kind of treatment." instead.
Sanity-check switching on or switching off an r-abstract thing:
	if the noun is a device:
		make no decision;
	say "[The noun] [aren't] literally a projection; [they] [are] more of a concept created by the group mind of this language community. Sort of. [We] think. At any rate, [they] [don't] switch on and off." instead.

Chapter 1.2.8 - Verbs

To add is a verb.
To admit is a verb.
To answer is a verb.
To appreciate is a verb.
To approach is a verb.
To ask is a verb.
To beat is a verb.
To become is a verb. 
To belong is a verb.
To blink is a verb. 
To bounce is a verb. 
To break is a verb.
To caress is a verb.
To cease is a verb. 
To challenge is a verb.
To claim is a verb.
To clutch is a verb.
To cock is a verb. 
To collect is a verb.
To come is a verb.
To comment is a verb.
To confirm is a verb.
To continue is a verb.
To cook is a verb.
To copy is a verb.
To cry is a verb.
To draw is a verb.
To drink is a verb.
To decide is a verb. 
To exclaim is a verb. 
To explain is a verb.
To feature is a verb. 
To flee is a verb. 
To flicker is a verb. 
To flutter is a verb. 
To fold is a verb. 
To follow is a verb.
To frown is a verb. 
To gag is a verb. 
To greet is a verb.
To hand is a verb.
To hop is a verb. 
To keep is a verb. 
To kiss is a verb.
To land is a verb. 
To leak is a verb. 
To leap is a verb. 
To leave is a verb.
To love is a verb.
To make is a verb. 
To meet is a verb. 
To mix is a verb.
To move is a verb.
To nod is a verb. 
To observe is a verb.
To park is a verb.
To peer is a verb. 
To ping is a verb. 
To place is a verb.
To point is a verb.
To pull is a verb.
To rebuke is a verb.
To recite is a verb. 
To recoalesce is a verb. 
To recoil is a verb. 
To reform is a verb. 
To regard is a verb. 
To remark is a verb. 
To remember is a verb.
To remind is a verb.
To reply is a verb.
To report is a verb.
To rest is a verb. 
To return is a verb.
To revolve is a verb. 
To scold is a verb.
To scrabble is a verb. 
To scramble is a verb. 
To send is a verb.
To shake is a verb. 
To shatter is a verb. 
To shift is a verb. 
To show is a verb.
To shriek is a verb.
To shut is a verb.
To shy is a verb. 
To sit is a verb.
To slap is a verb.
To slip is a verb. 
To smile is a verb.
To spread is a verb.
To stand is a verb.
To stare is a verb. 
To state is a verb.
To stir is a verb.
To strike is a verb. 
To suggest is a verb.
To throw is a verb.
To type is a verb.
To urge is a verb.
To walk is a verb.
To wear is a verb.
To whisper is a verb.
To wish is a verb. 
To withdraw is a verb.
To wrap is a verb.

Book 1.3 - Disambiguation

To decide whether (N - an object) fits the parse list:
	(- (FindInParseList({N})) -)

Include (-
[ FindInParseList obj i k marker;
	marker = 0;
	for (i=1 : i<=number_of_classes : i++) {
	while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++;
	k = match_list-->marker;
	if (k==obj) rtrue;
	}
	rfalse;
];
-)

Book 1.4 - Owner

A thing has an object called owner. The owner is usually nothing.

Definition: a thing is owned unless the owner of it is nothing.

Instead of doing anything other than examining to something while the noun is owned:
	say "[The noun] [belong] to [the owner of the noun]."
	
Does the player mean taking an owned thing: it is unlikely.
Does the player mean inserting an owned thing into: it is unlikely.
Does the player mean putting an owned thing on: it is unlikely.
Does the player mean eating an owned thing: it is unlikely.
Does the player mean drinking an owned thing: it is unlikely.

Book 1.5 - go to named room

Understand "[any room]" as going by name. 
Understand "go to/into/-- [any room]" as going by name.

Going by name is an action applying to one thing.
Check going by name:
    if the noun is the location, say "You're already in [the location]." instead;
    if the noun is not adjacent and the noun is unvisited, say "There isn't any [noun] nearby." instead. 

Carry out going by name:
    let aim be the best route from the location to the noun, using doors;
    if aim is not a direction, say "You can't think how to get there from here." instead;
    say "(heading [aim])[command clarification break]";
    try going aim;
    if the location is not the noun, say "You'll have to stop here."

Book 2.1 - Administrivia

Figure cover is the file "Cover.jpg".

To waiting space key:
	say "[paragraph break]Please press SPACE to continue.";
	wait for the SPACE key;
	say /n.
	
Chapter 2.1.1 - about

Asking-about is an action applying to nothing.
Understand "about the/this/-- story/game/program/adventure/--" as asking-about.
Understand the command "info" as "about".

Carry out asking-about:
	say "[banner text]";
	display the Figure cover;
	say "[/i](AI generated image)[/r]";
	waiting space key;
	say "[story description]";
	say "[/p]Type [/b]credits[/r] or [/b]license[/r] for more info.";
	waiting space key.

Chapter 2.1.2 - license

Asking-license is an action applying to nothing.
Understand "license note/--" as asking-license.
Understand the command "copyright" as "license".
Understand the command "legal" as "license".
Understand the command "licence" as "license".

Carry out asking-license:
	say "[story title] is copyright (c) [story creation year] [story author].";
	say "Released under Creative Commons BY-NC-SA 4.0 license. [/p]";
	say "[/i]Limitation of Liability[/r][/n]";
	say "To the extent possible, in no event will the Licensor be liable to You on
any legal theory (including, without limitation, negligence) or otherwise
for any direct, special, indirect, incidental, consequential, punitive,
exemplary, or other losses, costs, expenses, or damages arising out of this
Public License or use of the Licensed Material, even if the Licensor has
been advised of the possibility of such losses, costs, expenses, or
damages.";
	waiting space key;
	say "[/i]Disclaimer for the Fiction[/r][/n]";
	say "This is a work of fiction. Unless otherwise indicated, all the names,
characters, businesses, places, events and incidents in this book are
either the product of the author’s imagination or used in a fictitious
manner. Any resemblance to actual persons, living or dead, or actual
events is purely coincidental.";
	say "[/p]Type [/b]credits[/r] or [/b]about[/r] for more info.";
	waiting space key.

Chapter 2.1.3 - credits	

Asking-credits is an action applying to nothing.
Understand "credits list/--" as asking-credits.
Understand the command "acknowledgment/acknowledgments/acknowledgement/acknowledgements" as "credits".
Understand the command "thanksgiving" as "credits".

Table of credited peoples
Name (text)	Reason (text)
""	""

Carry out asking-credits:
	say "This program make use of the following extensions: [/n][the complete list of extension credits][/n]";
	say "Thanks are also due to the following people: [/n]";
	repeat through the Table of credited peoples:
		unless name entry is empty, say "[name entry] [reason entry][/n]";
	say "[/p]Type [/b]license[/r] or [/b]about[/r] for more info.";
	waiting space key.
		
Chapter 2.1.4 - Minimal help

Section 2.1.4.1 - Actions

Asking help is an action applying to nothing.
Understand "help me/-- please/--" as asking help.
Understand the command "hint" as "help".
Understand the command "advise" as "help".
Understand the command "suggest" as "help".
Understand the command "tip" as "help".
Understand "help/hint/hints/suggestion/suggestions/info/tip/advise/game" or "this game/story" as "[help]".
Understand "ask for help/hint/hints/suggestion/suggestions/advise" as asking help.
Understand "get help/hint/hints/suggestion/suggestions/advise" as asking help.
Understand "request help/hint/hints/suggestion/suggestions/advise" as asking help.

Asking help from is an action applying to one thing.
Understand "ask for help/hint/hints/suggestion/suggestions/advise from [something]" as asking help from.
Understand "get help/hint/hints/suggestion/suggestions/advise from [something]" as asking help from.
Understand "request help/hint/hints/suggestion/suggestions/advise from [something]" as asking help from.
Understand "ask [something] for help/hint/hints/suggestion/suggestions/advise" as asking help from.

Check asking help from:
	unless the noun is a person, say "I don't think it can help you." instead.
Carry out asking help from:
	try the noun asking help.

Response of someone when asked about "[help]":
	try the noun asking help.

Section 2.1.4.2 - Texts
	
Table of help hints
Tip (text)
"First of all look carefully at anything around"

To say help intro: say "It is not my job to help the player, but I can give you some advice".

To say combined help hints:
	let last row be the number of rows in the Table of help hints;
	repeat with N running from 1 to the number of rows in the Table of help hints:
		say tip in row N of the Table of help hints;
		if N is less than last row, say "; ".
		
Carry out an actor asking help:
	if the actor is the player:
		say "[first time]I am sorry to hear you are stuck. [/n][only][help intro].";
	otherwise:
		say "[/ss][help intro].' [/se][the actor] [say]. [/n]";

Persuasion rule for asking a person to try asking help: persuasion succeeds.
	
Commons ends here.