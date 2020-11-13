"Tutorial" by Joshua McLean

[Include Books by Joshua McLean.]
Include General by Joshua McLean.
Include Household Items by Joshua McLean.
Include Keypad by Joshua McLean.
Include Memory by Joshua McLean.
Include People by Joshua McLean.
[Include Shopping by Joshua McLean.]
Include Time Management by Joshua McLean.
Include Violence by Joshua McLean.
Include Vorple Interface by Joshua McLean.

Release along with the "Vorple" interpreter and the file "dreams.ogg".

[
TODO
- tutorialize books: READ etc.
- tutorialize furniture: SIT ON, LAY ON, etc.
- tutorialize sleep: but it does nothing?
- tutorialize memory: REMEMBER text, REMEMBER object, RECALL, FORGET
- tutorialize keypad: dongle is locked by keypad?
]

Use memory economy.

Book 1 Helper Functions

To tutsay (str - text):
	if yourself is desiring hints:
		say "[i]([str])[/i][br]".

Book 2 The Beginning

When play begins:
	play music file "dreams.ogg", looping.

The maximum score is 3.

Yourself can be desiring hints. Yourself is desiring hints.
Disabling hints is an action applying to nothing. Understand "hints off" as disabling hints.
Check disabling hints:
	if yourself is not desiring hints, say "Hints are already disabled."
Carry out disabling hints:
	now yourself is not desiring hints.
Report disabling hints:
	say "Hints are now disabled. You cannot re-enable them later! If you want to turn back, UNDO now."

When play begins:
	now the time of day is 5:48 PM;
	tutsay "Welcome! This is a tutorial adventure where hints will appear in parentheses like this. If you would rather just play the adventure normally, use the command HINTS OFF.";
	say "[br]";
	tutsay "Commands will be in ALL CAPS. You can enter commands by typing them in and pressing the enter/return key. Leave the tutorial at any time with the GAME command.";
	say "[br]";
	say "Now you've done it. It's late Friday night, and the building is all locked up. You left the flash drive with your prototype in the office. You need it for your presentation tomorrow!";
	now the auto memory is "The conference is tomorrow, and you need to present your new prototype. Unfortunately, you left it in your office which is now locked up. You must find a way into the building!".

To decide if the player can tutorial: yes.

Book 3 Locations

The Tutorial is a region. The Parking Lot, the Bottom of the Tree, Tree Branch, and Office are in the Tutorial.

Chapter 1 The Parking Lot

The Parking Lot is a room. "You're in a large parking lot behind the office building, with grass surrounding the empty blacktop island in all directions. To the north, a large tree blocks any clear view of your office window."
The player is here.

After looking in the parking lot, tutsay "You can move in any cardinal direction: NORTH SOUTH EAST WEST NORTHEAST NORTHWEST SOUTHEAST SOUTHWEST. You may also abbreviate these commands as N S E W NE NW SE SW. Try moving toward the tree."

Before going a direction (called dir) when the player is in the parking lot:
	if dir is not north, say "You need to head north, to the office. Don't go [dir]." instead.

Chapter 2 The Tree

The Bottom of the Tree is north from the parking lot. The description is "A tree rises high into the sky here. Even craning your neck, you can't see the top. The trunk almost presses against the building and it looks like a branch could get you inside through the window."

After looking in the bottom of the tree when an old gentleman is nowhere, tutsay "You can also move UP or DOWN by typing those commands, abbreviated U or D. Try going UP now to climb the tree."

A man called an old gentleman is nowhere. The real name is "John". Understand "old man" and "John" as the old gentleman. "[if an old gentleman is introduced]John [otherwise]An old gentleman with tousled gray hair [end if]stands here." The description is "An old gentleman." He carries a thing called a crowbar.
After looking in the bottom of the tree when an old gentleman is not introduced:
	tutsay "Look, a person! Try saying hello. You can TALK TO MAN or SAY HELLO TO MAN or even simply HELLO MAN."

After saying hello to an old gentleman:
	sayn "'Good evening.' The man mimes a tip of the hat, despite not wearing one.";
	tutsay "You are now in a conversation with the man. Try to ASK ABOUT something. Maybe his name?"

After quizzing an old gentleman about their name:
	sayn "'My name is John. Nice to meet you.' You shake hands and introduce yourself.";
	tutsay "Good work! Now you know who the man is. Try examining him to find out more.";
	introduce an old gentleman.

After examining an old gentleman for the first time, tutsay "He took the apple! Well, that's okay. You didn't need it anyway. But that crowbar might be helpful for getting the window open. Maybe ask him for it?"

Instead of requesting an old gentleman for the apple:
	say "'Fell out of that tree right before you. If you really want it, you can have it.' He smiles and hands you the apple.";
	now the player carries the apple.
	
Instead of requesting an old gentleman for the crowbar:
	if the current interlocutor is not an old gentleman, try saying hello to an old gentleman;
	sayn "He looks genuinely concerned. 'What do you need that for?'";
	tutsay "He's not being very cooperative. What to do next? Try to PONDER and maybe your in-game character will have an idea.";
	now the auto memory is "Maybe John will understand the situation if you tell him about the office window. [i](You can TELL a person ABOUT a topic or thing to inform characters about the world or ASK a person ABOUT a topic or thing to find out what they know.)[/i]".
	
After informing an old gentleman about the office window:
	sayn "'Oh, well in that case, here you go.' He hands you the crowbar.";
	now the crowbar is carried by the player;
	increase the score by 1;
	tutsay "Excellent! Since getting the crowbar was an important task, notice your score has gone up by a point. You should SAVE so you don't lose your progress. Notice that the gmae will also inform you when your score increases, as seen below.";
	now the auto memory is "Well, you've got the crowbar. Time to use it! (On the window, of course.)".
	
Carry out saving the game in the bottom of the tree when the player is carrying the crowbar:
	tutsay "Very good! Now you can RESTORE your game at any time. Let's go open the window, but this time using the crowbar. OPEN WINDOW WITH CROWBAR should do the trick, but you'll have to get back to the window first."; 
	continue the action.

Chapter 3 The Tree Branch

The Tree Branch is up from the bottom of the tree. "You dangle from a high branch, surrounded by green leaves. The branch extends close enough to the building to reach a window."

A locked door called the office window is north of the tree branch and south of the office. The description is "A[if the window is open]n open[otherwise] closed[end if] window."
Instead of unlocking keylessly the window:
	sayn "The window is locked from the inside. You'll have to find another way to open it.";
	tutsay "Well, can't go that way. Let's try going back DOWN to see if there's anything new in the open field.".
Instead of unlocking the window with the crowbar:
	sayn "You pry the crowbar into the side of the window and push, breaking it open. That'll be difficult to explain when you come back.";
	tutsay "Excellent! Now you can get into the office to the north.";
	now the office window is open.

The apple is here. "A single apple dangles just within arm's reach. (You can collect items during your adventure. Try GET APPLE now. You can also TAKE APPLE.)" The description is "A shiny red apple. Looks delicious."

Report taking the apple (this is the take apple help rule): tutsay "Now that you have the apple, try INVENTORY or I for short to view your inventory."
The take apple help rule is listed last in the report taking rules.

After taking inventory when the apple is carried by the player, tutsay "Now, try to OPEN WINDOW to get into the office."

Instead of dropping a thing (called the target) in the tree branch:
	now the target is in the bottom of the tree;
	say "You drop [the target] to the grass below.";
	if the target is the apple: 
		say "[br]"; 
		tutsay "Go DOWN to return to the ground."

Instead of going down when the apple is carried:
	sayn "You can't get a good grip while carrying the apple, and it's too big for your pockets.";
	tutsay "This is a pretty narrow branch, so if you DROP APPLE it will probably tumble down to the ground. In a text adventure, there is often 'real world' modeling of this kind - what you expect to happen will usually happen if the game allows it."

After going down from the tree branch when the apple is in the bottom of the tree:
	now an old gentleman is in the bottom of the tree;
	now an old gentleman carries the apple;
	continue the action.

Chapter 4 The Office

The Office is a room. "Your office is tidy and organized, as you like it, with a desk against the east wall. A tall[if the cabinet is open], open[end if] cabinet stands opposite it. The door to the north leads into the main hall, and a window to the south is open to the outside."
After looking in the office, tutsay "Take a moment to look around the office. Where did you leave that dongle?"

A scenery closed locked container called the cabinet is here.
The dongle is in the cabinet. Understand "flash drive" and "drive" as the dongle. "A small flash drive contianing the latest build of your most recent prototype."
Before taking the dongle when the dongle is not handled:
	sayn "You grab the dongle. Your presentation is saved! Now to get back to the car...";
	increase the score by 2.

A scenery chair called the office chair is here. The description is "A rather heavy chair on wheels with a ncie cushioned seat and back - one of the perks of having your own office."
A scenery supporter called the office desk is here. The description is "A boring wooden desk with a single [if the office drawer is closed]closed [end if]drawer[if the office drawer is open] which lies open.[otherwise][/p](You can sometimes open an object to see what's inside. Try OPEN DESK.)[end if]".
An openable closed container called the office drawer is part of the desk. Instead of opening the office desk: try opening the office drawer.
The office key is in the office drawer. It unlocks the cabinet. The printed name is "office key[if the office key is in the office drawer] (Well, it's no dongle, but maybe this key will help?)[end if]".
Report taking the office key: tutsay "You now have the key to the cabinet. You can UNLOCK CABINET WITH KEY, then OPEN CABINET. Or you can simply OPEN CABINET and the game will automatically unlock it, since you have the matching key.".

A closed locked door called the office door is north of the office. "A door leading out of your office into the main hallway. No reason to go there - the dongle is here somewhere."
Instead of unlocking keylessly the office door, say "No need to go out there."

Before going south from the office, say "You brace yourself against the window and leap back to the tree branch. Somehow, it doesn't break beneath your weight."

Before going south from the bottom of the tree when the player carries the dongle:
	sayn "You jump into your car and speed away, ready for a world-changing presentation - though you aren't looking forward to explaining the window incident on Monday morning.";
	tutsay "Tutorial complete! You scored [score] points.";
	tutsay "Keep in mind there are many more commands you can use. Just try anything with the form ACTION OBJECT and see what happens.";
	end the story finally.
	
Test me with "n / u / get apple / i / open window / d / drop apple / d / hi man / ask about name / x man / ask for apple / drop apple / ask for crowbar / ponder / tell him about window / u / open window with crowbar / n / x desk / open desk / get key / open cabinet / get dongle / s / d / d / s".