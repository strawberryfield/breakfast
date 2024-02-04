Workers by The Strawberry Field begins here.

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
	unless the number of cloth worn by p is zero, say "[if p is the player]You wear[otherwise][regarding p][They] [wear][end if] [a list of cloth worn by p]. [/n]".
	
To say other dressing of (p - a person):
	unless the number of things which are not cloth worn by p is 0, say "[if p is the player]You also wear[otherwise][regarding p][They] also [wear][end if] [a list of things which are not cloth worn by p]. [/n]".
	
To say carrying of (p - a person):
	unless the number of things carried by p is zero, say "[if p is the player]You are carrying[otherwise][regarding p][They] [carry][end if] [a list of things carried by p]. [/n]".

A cloth is a kind of thing. 
A cloth is always wearable.
A cloth is usually unlisted when worn.

Volume 2 - generic worker

A worker is a kind of person.
A worker is improper-named.
A worker has some text called proper name.

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
	
Volume 3 - waiters

A waiter is a kind of worker.

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

Workers ends here.
