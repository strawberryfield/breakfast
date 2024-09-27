Version 1 of Workers by The Strawberry Field begins here.

Volume 1 - Generic people

To say man:
	let the item be the prior named object;
	say "[if the item is a female person]wo[end if]m[if the prior naming context is plural]e[otherwise]a[end if]n".

To say Man:
	let the item be the prior named object;
	say "[if the item is a female person]Wom[otherwise]M[end if][if the prior naming context is plural]e[otherwise]a[end if]n".
	
Book 1.1 - Somatic properties

A person has some text called hair.
A person has some text called eyes.
A person has some text called notes.

To say base character description of (p - a person):
	unless hair of p is "" and eyes of p is "":
		say "with ";
		unless hair of p is "":
			say "[hair of p] hair";
			unless eyes of p is "", say " and ";
		unless eyes of p is "", say "[eyes of p] eyes";
	say ". [/n]";
	unless notes of p is "", say "[notes of p]. [/n]";
	say dressing of p;
	say other dressing of p;
	say p namesign;
	unless p is the player, say carrying of p.

Instead of examining a person: 
	if the description of the noun is "", say "A young [regarding the noun][man] ";
	otherwise:
		say description of the noun;
	say base character description of the noun.
	
Book 1.2 - Dressing

To say dressing of (p - a person):
	unless the number of cloth worn by p is zero, say "[if p is the player][We] [wear][otherwise][regarding p][They] [wear][end if] [a list of cloth worn by p]. [/n]".
	
To say other dressing of (p - a person):
	unless the number of things which are not cloth worn by p is 0, say "[if p is the player][We] also [wear][otherwise][regarding p][They] also [wear][end if] [a list of things which are not cloth worn by p]. [/n]".
	
To say carrying of (p - a person):
	unless the number of things carried by p is zero, say "[if p is the player][We] [are] carrying[otherwise][regarding p][They] [carry][end if] [a list of things carried by p]. [/n]".

A cloth is a kind of thing. 
A cloth is always wearable.
A cloth is usually unlisted when worn.

Instead of taking off a cloth:
	say "This is not the time to undress."
	
Persuasion rule for asking someone to try getting off a cloth:
	say "[/ss]Does this seem like something to ask?' [/se][regarding the actor][they] [ask] you angrily.";
	persuasion fails.

Volume 2 - generic worker

A worker is a kind of person.
A worker is improper-named.
A worker has some text called proper name.
A worker can be waitstaff. A worker is usually not waitstaff.

Chapter 2.1 - Say phrases

Section 2.1.1 - naming

To say a naming of ( w - a worker):
	say "[if w is improper-named]a [end if][printed name of w]".
To say A naming of ( w - a worker):
	say "[if w is improper-named]A [end if][printed name of w]".
To say the naming of ( w - a worker):
	say "[if w is improper-named]the [end if][printed name of w]".
To say The naming of ( w - a worker):
	say "[if w is improper-named]The [end if][printed name of w]".

To say (w - a person) namesign:
	if w is a worker:
		if w is improper-named:
			unless proper name of w is "":
				say "[regarding w][Their] namesign reports [/i]'[proper name of w]'[/r].";
				now the printed name of w is the proper name of w;
				now w is proper-named.

Section 2.1.2 - Greetings

To say good morning (w - a worker):
		say "Good morning[if w is proper-named] [printed name of w][end if]".
To say good evening (w - a worker):
		say "Good evening[if w is proper-named] [printed name of w][end if]".
To say thanks (w - a worker):
	say "Thank you[if w is proper-named] [printed name of w][end if]".

To say greet-to (w - a worker):
	if w is improper-named, say " to [the naming of w]".

To say you are welcome:
	say "[one of]You're welcome[or]Not at all[or]Don't mention it[or]Duty[in random order]![run paragraph on]".
	
Section 2.1.3 - thank

Understand the command "thank" as something new.
Understand "thank you/--" or "say thanks" or "say thank you" or "thanks" or "thanks again" or "thanks a lot"  or "bless you" or "ta" or "cheers" or "much obliged" as implicitly thanking.
Understand "thank you/-- [something]" or "say thank/thanks you/-- [something]" as thanking.

Implicitly thanking is an action applying to nothing.
Thanking is an action applying to one visible thing.

Carry out implicitly thanking (this is the standard implicitly thanking rule):
  try thanking the current interlocutor.
  
Instead of thanking something (this is the standard thanking worker rule):
	say "[/ss][thanks the noun].' [/se][we] [say][greet-to the noun]. [/n]";
	say "[/ss][you are welcome]' [/se][regarding the noun][they] [reply]";
	if the noun is a waiter, say " and then [regarding the noun][leave]";
	say ". [/n]";
	reset the interlocutor.
	
Volume 3 - waiters

A waiter is a kind of worker.
A waiter is waitstaff.

A male-waiter is a kind of waiter. It is male.
The printed name is "waiter".
A waitress is a kind of waiter. It is female.

A white shirt, a pair of black pants and a black skirt are kind of cloth.
A white shirt is worn by every waiter.
A pair of black pants is worn by every male-waiter.
A black skirt is worn by every waitress.

A waiter is improper-named.
A waiter has some text called proper name.
Understand "waiter" as a male waiter.
Understand "waitress" as a female waiter.

A waiter has a thing called attended table. 
Definition: a waiter is free if attended table of it is nothing.

Chapter 3.1 - Calling the waiter

Calling a waiter is an action applying to nothing.
Understand "Call for/-- a/-- waiter/waitress" as calling a waiter.
Understand "Rise your/a/the/-- hand" as calling a waiter.

To say can I help you:
	say "[/ss]Can I help you?' [/se][regarding current interlocutor][they] [ask]. [/n]".

Check calling a waiter:
	unless the current interlocutor is nothing:
		if the current interlocutor is a waiter, say "Someone is already at your service." instead;
	if the number of waiters in the location is 0, say "There are no waiters here." instead.
Carry out calling a waiter:
	now the current interlocutor is a random waiter in the location.
Report calling a waiter:
	say "[A naming of current interlocutor] approached. [/n]";
	waiter tries to go away in two turns from now;
	say can I help you.

Section 3.1.1 - Close waiter dialog

Before speaking (this is the waiter conversation rule):
	if the current interlocutor is a waiter:
		waiter tries to go away in two turns from now.

Before giving something to a waiter (this is the waiter giving rule):
	waiter tries to go away in two turns from now.

Before showing something to a waiter (this is the waiter showing rule):
	waiter tries to go away in two turns from now.

At the time when waiter tries to go away:
	unless the current interlocutor is nothing:
		if the current interlocutor is a waiter:
			say "[The naming of current interlocutor] [leave].";
			reset the interlocutor.
	
Volume 4 - Answers

Default response for a worker (this is the worker default response rule):
	say "[/ss][one of]Sorry,[or]I'm sorry, but[at random] [one of]I can't help you[or]I can't be of any assistance to you[at random] [one of]now[or]at the moment[or]at this time[at random].' [/se][regarding the noun][they] [admit].".

Understand "me/you/us/myself/yourself/ourself" as "[myself]".
Response for a worker when told about "[myself]":
	say "[/ss]Oh, interesting.' [/se][regarding the noun][they] [reply].".
 
Understand "he/him/himself/she/her/herself" as "[himself]".
Response for a worker when asked-or-told about the noun:
	say "[/ss]I'm [proper name of the noun]. [one of]At your service.' [or]How can I help you?' [at random][/r][/n]";
	now the printed name of the noun is the proper name of the noun;
	now the noun is proper-named.
	
Workers ends here.
