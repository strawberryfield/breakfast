# Breakfast in the Dolomites

Breakfast in the Dolomites is my first piece of interactive fiction.

That is not quite true: in the eighties I wrote some little 'adventures' with a BASIC interpreter, 
but they were very limited: not a real game.

Why did I come back after 40 years to write such a game? 
I tell the whole story in the introductory booklet that comes with the game, 
but I will briefly rewrite it here.

## An adventure behind the adventure

### A brief story

#### March 2020

During the pandemic lockdown, I wrote a [BBS system](https://github.com/strawberryfield/BBS) 
that looks like the ones I used in the early '90s but using more conteporary systems: 
C#, Entity Framework, Maria DB and a Rapberry Pi 2 as host.

I thought that a game should be great in it, why not an adventure game? 
They were very popular in those years.

Fortunately, the lockdown was over and the project has been shelved.

#### August 2023

In a small town in the Ahrntal, the northernmost valley in Italy, with my family.

It was raining.

The kind reception girl points us to our room, in another building across the street:
“If you don't want to get wet, you can go through here” and points us to a staircase.

We descend the staircase, which is covered with green carpet with rocking horses drawn on it.  
Unbelievably, there was a whole world to discover down there: 
a reading room with a small library, 
a well-equipped gym, game stations, billiards, table tennis...

The walls were lined with showcases containing toy horses of various origins, 
from the smallest to those too big for a child to ride.

I take out my smartphone and start taking pictures; there are also mirrors to "play" with.

"Playing", I think, what a great setting for an adventure game!

In the evening, I begin to explore the Internet to see if there are any examples I can take inspiration from, 
and to my amazement, I discover that entire development systems for such programs still exist, recently updated.

I also find a very strange language, Inform7, download it and greedily read the manual.

[I carried out various tests, which I report on my site](https://strawberryfield.altervista.org/interactive-fiction/index.php) (in Italian only), 
and finally came up with a little story that I wanted to present at the IFComp to collect opinions and suggestions.

I was ready for any kind of feedback.

### About me

I got my first camera at the age of 8 and have never stopped taking pictures since.

I have been interested in programming since 1981, when I was given a Texas TI-58C calculator. 
Then I moved on to the glorious Commodore 64 and finally to the PCs.  
I have used all kinds of operating systems, hardware architectures and programming languages.

Often my artistic work is a mockery of the environment in which it is developed: 
the [photographic exhibition "The Quantum Photographer"](https://strawberryfield.altervista.org/fq/mostrafotografica-robertoceccarelli-semplicementefotografare-novafeltria.php), where photographers are photographed; 
the ["Taufererbahn" railway simulator](https://taufererbahn.altervista.org/brunico_campotures/taufererbahn_download.php), where a serious simulation environment 
becomes a children's game, and this story, 
where the protagonist's girlfriend reminds him that he is not playing an adventure game.

### How the game was built

I approached the writing of the game from my experience as a programmer, 
translating the expressions ‘is a kind of’ as inheriting a class, 
‘the xyz is a’ as creating an instance of an object, and so on.

I was quite puzzled by the idea of putting the whole program in one source file: 
I am used to putting each class (or even a single part of it) in a separate file.

Everything that was possible I put into extensions (and I used a large number already made by others):
so I could try it out separately and get a more solid final structure.

I concentrated more on building the structure than creating an actual story, 
maybe next time I can create a more interesting story from the structure I have already built.

In addition to the actual game, I also prepared illustrated manuals 
with the many images I created to see how the texts could be imagined by the reader; 
I cleaned up the site template created by the compiler 
and set up an automated build system for the distribution package.   
All stuff that probably won't interest anyone, but which gave me the idea of a more professional job.

### A long list of things that could not be appreciated

#### English language

English is not my mother tongue, I know it well enough to understand and produce texts, 
but without the richness of vocabulary that I could have in Italian.  
Syntax and grammatical errors are always lurking, and that is certainly not a good thing.

#### The plot of the story

The aim of Breakfast in the Dolomites is to have breakfast in a hotel in the Dolomites.  
Nothing more, no treasure to find, no mystery to solve, 
you just have to spend time solving some simple (I think) puzzles with the help of a beautiful girl.

A pastime similar to completing a crossword puzzle.

#### The help system

This game doesn't have a help system, 
but your girlfriend or other people will tell or show you what to do.

In any case, the walkthrough is included in the package.

#### Testing

I sent my game to some friends of mine, they played it and pointed out a few problems.

I wasn't interested in someone stressing the game with absurd situations, I was looking for someone who would get into the story and complete it as a pastime.

That's why I was hoping to collect some transcripts.

#### IA generated cover image

To see if the text generated by the program could make the scene look the way I wanted, 
[I used a lot of text sequences as prompts for text2image generators](https://strawberryfield.altervista.org/storie_foto/interactive-fiction-text2image.php) 
(mainly Bing Image Creator, but also Stable Diffusion in Adobe Firefly).

One of these, with a specially edited prompt, was used as the cover; 
I have read some rather negative comments about creating covers with AI, 
but a real photograph (I have lots of them) would not have had the same effect. 

Other images produced in this way are used to illustrate the accompanying booklets.

#### The new AI-generated art rules

Two weeks before the deadline for submitting games, 
I received an email asking me to state whether AI was used for the cover, other images or sounds, or for the text.

Ticking that box resulted in this statement appearing prominently in the game's entry: 
_Generative artificial intelligence was used to make the cover art. See in-game credits for more information._

I pointed out on the forum that this seems discriminatory to me within the answers i found also this:

_If you feel good about your art and how it came to be, fly the flag and let the community decide how they feel about it. 
Frankly, with the current community feeling about it, 
I’m not sure why anyone wants to test the waters there when there are so many other avenues for cover art._

The icing on the cake, not exactly encouraging.

Someone suggested I send an email to the organisers explaining the problem. 
I did, and the note was reduced in size and placed near the cover art: a good solution.

## Why I wanted to join this competition

I spent a lot of time writing this story, mainly because I was unfamiliar with the instrument, 
but also because I had a lot of fun trying out the many situations that could be created.

But one question remained. Does it only appeal to me, or can it appeal to others?

My friends were not very interested, partly because it was all in English, 
but how would an audience of enthusiasts receive it?

Entering a well-known competition could have been a good way to get some answers.

### My goals

- Find someone who wanted to play the story and maybe even leave me the transcript

- Get some reviews, no matter if negative or positive, to understand which elements to focus on or which to avoid in the future. 

## The results

### The transcripts

As soon as I uploaded the game to IFComp, I discovered that it could be played online 
and in this case I was getting transcripts back: how nice!

The transcripts that immediately started arriving (so someone interested in the game was there), 
surprised and amused me with the situations that were being created.

Someone who had just arrived wanted to leave immediately,
another takes his clothes off in the car and gets out completely naked.
~~~
>mremove shorts

You take off the pair of beige shorts.

> remove shirt

You take off the black t-shirt.

> remove sneakers

You take off the pair of blue sneakers.

Monica opens the car boot revealing a pink trolley and a red backpack, then she takes her pink trolley.

>x me

A young man, about 30 years old, with blond hair.
You work as a software engineer, enjoy photography and love hiking in the mountains.
In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it.
Monica sometimes calls you Ciccio.

>i

You're holding a black t-shirt, a pair of beige shorts and a pair of blue sneakers.

Monica is knocking on the door of the car.
"What are you still doing in there?" — she asks.

>eat shorts

I am sure that Monica would scold you if she could see you now.

>kiss shorts

"Hold the kisses for me!" — Monica scolds you.
~~~

Then there's the guy who first gets angry because he's already kissed his girlfriend twice,
~~~
!damn girl, I already kissed you twice in this game
~~~
and then starts trying to kiss everything around him:
~~~
> kiss receptionist

"Do you like men now?" — amazed Monica asks you.

"Good evening, welcome to our hotel!" — the receptionist greet you — "How can I help you?"

> kiss me

"Do you like men now?" — amazed Monica asks you.

"Good evening." — Monica says to the receptionist.

>l

Reception
The receptionist stands behind a tastefully crafted wooden desk, ready to assist guests with a genuine smile.
Stairs lead to the upper floors. To the east is the dining room, along the wall is a door.

Monica is next to you.

♤ "Ciccio, don't be rude, say hello to the receptionist." — Monica suggests in your ear.

> kiss door

Which do you mean, the sliding door or the wooden door?

> sliding

"Hold the kisses for me!" — Monica scolds you.

> kiss desk

"Hold the kisses for me!" — Monica scolds you.

♤ "Ciccio, don't be rude, say hello to the receptionist." — Monica suggests in your ear for the second time.
~~~

There is also someone no woman wants to meet.
~~~
Car
A city car; the interior space is not much, but more than enough for a young couple.
The dashboard is powered off.

Monica is next to you.

>fuck monica

Next time, I suggest you write the command as: monica
That noun did not make sense in this context.

>kiss monica

♥ "I love you!" — she whispers sweetly in your ear.

>kill monica

Violence isn't the answer to this one.

Monica jumps out of the car, then closes the car door.

>get out

(first opening the car door)

Parking
The hotel's reserved car park.
Your white car is perhaps the smallest of all.
To the east is the garden.

Monica is next to you.

>screw monica

Monica might not like that.

>have sex with monica

(You don't always need to specify what you're doing something with.)
Next time, I suggest you write the command as: have sex
That noun did not make sense in this context.

>have sex

That noun did not make sense in this context.

>ask monica about sex

Monica does not respond.
~~~

Strange people around...

### The reviews

A few days after the judging period opened I saw the first review: 
Mike Russo took the time to play and review my game.  
He does not hide the fact that he was a little disappointed:
~~~
though: look, in my IF career I’ve stared down mad scientists 
thousands of meters deep beneath alien seas, 
used the last of my strength to perform rituals of 
banishment abjuring abhorrent gods, 
and endured painfully-immersive narratives of abuse, 
but rarely have I felt as stressed as 
I did juggling a bread plate 
and a scrambled egg while trying to work a juicer.
~~~
But it was exactly what I had planned!  
A parody of traditional adventures.


