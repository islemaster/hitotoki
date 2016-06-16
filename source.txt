"Hitotoki" by Bradley Buchanan.

The story headline is "A riddle-poem".
The release number is 3.

["Hitotoki" is a Japanese noun commonly translated as "a moment."  This game attempts to describe a moment in time.  The moment in question is the exact moment that winter changes to spring.  The game's responses are written entirely in English haiku (as well as I can manage) and seasons (or the change in seasons) is a common theme in traditional Japanese haiku.  I tried to respect the form as well as I know how with my limited poetic skill.

The goal of the game is to figure out what is going on.  The game takes place in a frozen moment in time, and the player is not allowed any actions beyond examining their surroundings.  Eventually they should notice that time itself is an observable object, and the solution of the game is to "start time" and so usher in the spring.  No explicit comment is made on why the player has this power; it just fits the conceit of the piece.]

Release along with an interpreter and the source text.
Release along with cover art ("The Kanji for hour").
Include Assorted Text Generation by Emily Short.
Include Response Assistant by Aaron Reed.
Use no scoring.

Section - Credits

Displaying about-text is an action out of world.  Understand "about" or "credits" as displaying about-text.
Report displaying about-text:
	say "'Hitotoki' is a Japanese noun commonly translated as 'a moment.' This game attempts to describe a moment in time.  It is inspired by haiku, and includes themes common in traditional haiku, in addition to always responding in haiku-like 5-7-5 phrases.  I'm no poet, but I've done my best to respect the form.";
	say "[line break]";
	say "The object of the game is to fully experience the moment.  There is an ending, but bringing it about is a bit of a riddle.  If you'd like to know more, read the spoilerful [bold type]postscript[roman type].";
	say "[line break]";
	say "Many thanks to my alpha-tester E whose early insight into the nature of the work brought much into focus and made it exciting to work on this project again."

Section - Postscript

Printing the author's note is an activity.
Rule for printing the author's note:
	say "[italic type][story title][roman type] describes a frozen moment in time - the moment when winter ends and spring begins.";
	say "[line break]";
	say "I think the earliest version of this work was a few poems in a notebook back in 2013, but the first proper release didn't occur until June 2016. I set out to create an IF work in poetry instead of prose, wanting to play with generated text.  Haiku was a good fit both because it's brief (working nicely into the call-and-response format) and because it eliminated the need to manage rhymes.  At that point I started reading up on themes in traditional Japanese haiku: Nature, the seasons, contrast of two ideas, capturing a fleeting moment or a particular impression.  Taking the 'moment' idea a step further (and not wanting to implement too much) led to the frozen time conceit, which I think locks down the inevitable goofiness of player agency and helps the piece feel more poetic.";
	say "[line break]";
	say "The goal of the game is to figure out what is going on.  Within the frozen moment the player is not allowed any action beyond examining their surroundings, but eventually I hope that they realize that time itself is an observable object, and the 'solution' of the game is to [bold type]start time[roman type] and usher in the spring.  No explicit comment is made on why the player has this power; it just felt right that the ultimate interaction with a moment is to move on to the next one.";
	say "[line break]";
	say "The game begins with this room description:";
	say "[line break]";
	say "[line break][bold type]Glade[roman type][line break][the description of Glade][line break]";
	say "[line break]";
	say "The initial description hints three directions for observation:  First, the dirt path (the most obvious course of action) leads to rocks and snow on the ground, and represents the end of winter.  Second, the wood (implying trees) which will lead the player to explore aspects of spring.    Finally, the dew subtly points to the waterfall, where frozen time is more conspicuous and should hint the player toward the ending - starting time again and ushering in the spring.";
	say "[line break]";
	say "Thank you for playing! I hope you enjoyed [italic type][story title][roman type].";
	say "[line break]";
	say "Bradley Buchanan <bradley.c.buchanan@gmail.com>, June 2016."

[The postscript is available at any time by typing POSTSCRIPT or AUTHOR'S NOTE]
Displaying the author's note is an action out of world. Understand "postscript" or "author's note" as displaying the author's note.
Report displaying the author's note: Carry out the printing the author's note activity.

[The postscript is also an endgame option]
Table of Final Question Options (continued)
final question wording		only if victorious		topic			final response rule	final response activity
"read the POSTSCRIPT"	false			"postscript"		--				printing the author's note

Part - Mechanics

Chapter - Poetic Mechanics

A thing has a number called syllables.  The syllables of a thing is usually 1.
Definition: A thing is monosyllabic if its syllables is 1.

Chapter - Frozen Time

Instead of doing anything except looking, examining or activating, say "Unfortunately,[line break]You are unable to move.[line break]Try EXAMINE-ing."

[TODO: Handle the senses separately here]

Instead of examining the player, say "This moment, [we] seek[line break]Enlightenment, free of self.[line break]Answers lie without."

Instead of taking inventory, say "Possessions distract[line break]From the wealth of [nature]'s gifts[line break]All around you now."

[TODO: Check the full list of parser errors]

[command not understood]
The parser error internal rule response (A) is "Your mind is troubled[line break]Trying to make sense of the[line break]Last thing that you typed."

[command not completely understood]
The parser error internal rule response (B) is "Your mind is troubled[line break]Trying to make sense of the[line break]Last thing that you typed."

[unknown object]
The parser error internal rule response (E) is "Though you search the glade[line break]You can't see any such thing.[line break]Look for something else." [TODO: Could do hinting here - use adaptive prose to push toward important unexamined things.]

[unknown verb]
The parser error internal rule response (N) is "It's becoming clear[line break]Action is not the answer.[line break]Try EXAMINIE-ing."

[empty line]
The parser error internal rule response (X) is "You empty your mind[line break]Resting in the peaceful [wood].[line break]No need to hurry."

[What do you want to verb?]
The parser clarification internal rule response (E) is "You will have to be[line break]A little more specific.[line break]Try EXAMINE [one of]WOOD[or]MOTES[or]DEW[at random]." [TODO: This should also do stronger hinting.]

[confirm Quit]
The quit the game rule response (A) is "Really?"

Part - Setting

Chapter - Scenery

Glade is a room.  The description is "You stand in a [wood],[line break]Shimmering with [motes] and [dew].[line break]A [dirt path] leads [east]." [The initial description hints three directions for observation:  First, the wood (implying trees) which will lead the player to explore aspects of spring.  Second, the dirt path which will show rocks and snow on the ground, and explore the end of winter.  Finally, the dew subtly points to the waterfall, where talk of frozen time should hint the player toward the ending - starting time again and ushering in the Spring.]

A thing called nature is scenery in the glade. Instead of examining nature, try looking.

Instead of going east, say "Drawn to [the sunrise][line break]You will legs and feet to move[line break]But they will not go."

Some motes are scenery in Glade. The description of some motes is "Bits of green and gold[line break]Hang like stars in morning light:[line break]A frozen ballet."  Understand "mote/motes/bit/bits/green/gold" as some motes.

The dew is scenery in Glade.  It has indefinite article "some". The description of the dew is "Choir of shining eyes;[line break]Cloud-drops or [waterfall] spray?[line break]They examine you."  Understand "dew/drop/drops/cloud-drops/spray/eyes/shining/choir" or "waterfall spray" as some dew.

Section - The Trees and Spring

A wood is scenery in Glade.  [The trees represent spring and will mention sunlight and warmth and new life.]  The description of wood is "Tall and papery[line break]Branches reaching up, adorned[line break]By new [leaves] of Spring."  Understand "woods/tree/trees/forest/glade" as the wood.

Some branches are scenery in Glade with syllables 2.  The description is "Nestled in a tree,[line break]Hidden behind tender [leaves],[line break]Sits a [robin's nest]."  Understand "branch" as some branches.

Some leaves are scenery in Glade. The description is "Sunlight filters through[line break]New growth in the trees above.[line break]All is still - no breeze." Understand "tender/new/leaf" as some leaves.

A robin's nest is scenery in Glade with syllables 3.  The description is "Safe within the nest[line break]Three eggs sit waiting to hatch[line break]In the warm sunlight." Understand "robin/egg/eggs/three" as the robin's nest.

Section - The Path and Winter

A dirt path is scenery in Glade with syllables 2. [The dirt path symbolizes winter, and will have a snowy description and describe other wintery things]  The description of the dirt path is "The sodden [dirt path][line break]Lined with [stones] and bits of [snow][line break]Meets the rising sun."  Understand "sodden/road/mud" as the dirt path.

Some stones are scenery in Glade.  The description is "Quietly the [stones][line break]Sit enduring Winter's chill.[line break]How patient they are!" Understand "stone/rocks/rock" as some stones.

The snow is scenery in Glade.  It has indefinite article "some".  The description of the snow is "Remnants of the cold[line break]Glistening in the warm sun[line break]Firmly hold their ground." Understand "ice" as the snow.

The sunrise is scenery in Glade with syllables 2. The description is "Champion of Spring![line break]Shines one-thousandfold in spray[line break]From the [waterfall]." Understand "rising/rise/sun/warm/light/sunlight" as the sunrise.

Section - The Waterfall and Time

A waterfall is scenery in Glade with syllables 3.  The description of a waterfall is "Crystalline torrent[line break]Waits to meet its peaceful friend[line break]Silver pool below."

A silver pool is scenery in Glade with syllables 3. The description of a silver pool is "Surface always new[line break]Undulates and ripples [']neath[line break]Pale [lily-pads]."

Some lily-pads are scenery in Glade with syllables 3. The description of some lily-pads is "Regal floating rug[line break]All dignified, save for one:[line break]A [frog] leaps away." Understand "lilypad/lilypads/rug/dignified/undignified" as the lily-pads.

A frog is a scenery animal in Glade.  The description of a frog is "Suspended in flight,[line break]Caught fast in the web of [time-itself],[line break]Legs outstretched behind." Understand "legs" as the frog.


Chapter - Time

Time-itself is privately-named scenery in Glade.  The printed name is "Time".  The description of time-itself is "High above the world[line break]Angels stop the very Spheres[line break][']Til [time-itself] marches on."  Understand "time" as time-itself.

[Since time is stopped, it doesn't make sense to WAIT]
Understand "wait" as a mistake ("Meaningless for now.[line break]An eternity has passed[line break]Yet no time at all.").

Section - Activating Time

[We probably need more synonyms for activate, and we definitely need more hinting that this is possible.]

[This is the action by which the player will start time and win the game.]
Activating is an action applying to one thing.  Understand "start [something]" or "activate [something]" or "begin [something]" or "resume [something]" as activating.

Check activating something (this is the one-syllable bad activation rule): If the noun is not time-itself and syllables of the noun is 1, say "[one of]Your will does not stir[or]Your mind cannot cause[or]You do not perceive[at random][line break]Any motion in [the noun].[line break]Time's grip holds [them] fast." instead.
Check activating something (this is the two-syllable bad activation rule): If the noun is not time-itself and syllables of the noun is 2, say "[one of]Your will does not budge[or]Your mind cannot move[at random][line break][The noun] a single inch.[line break]Time's grip holds [them] fast." instead.
Check activating something (this is the three-syllable bad activation rule): If the noun is not time-itself and syllables of the noun is 3, say "[one of]As if locked in ice,[or]Despite your attempt[at random][line break][The noun] [do not] move.[line break]Time's grip holds [them] fast." instead.

[Can I express this with less metaphor?]
Carry out activating: Say "You will [time-itself] to move.[line break]Winter slumbers; Spring-bird sings,[line break]Thanks to you, my friend."; End the story saying "Spring has arrived".
