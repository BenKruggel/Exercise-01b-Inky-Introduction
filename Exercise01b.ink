/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> main_room

== main_room == 
You wake up groggy and light-headed. You are standing in a square, plain, cement room, with nothing for forniture but the cot you just rose from. {not keys_pickup:There is set of keys hanging on the wall.} There are no lights, but you somehow have no trouble seeing. The only other features are two doors on opposite sides of the room. 
 + [Go through the left door] -> left_stair
 + [Go through the right door] -> right_stair
 * [Take the keys] -> keys_pickup

== left_stair ==
You stand at the bottom of a long stairwell. One that spirals upwards in a square pattern with landings and a door every several steps. 

+ [Climb stairs] -> 1st_left_landing
+ [Return to room] -> main_room
-> END

=== 1st_left_landing ===
A basic landing with a door. 
+ [Open the door] -> locked_message
+ [Ascend further] -> final_landing
+ [Return to room] -> main_room
-> END

=== locked_message ===
{not keys_pickup:The door is locked, and you have nothing to unlock it with.}
{keys_pickup:You try all of the keys, but none seem to work.}
+ [Go back] -> 1st_left_landing
-> END

=== final_landing ===
A basic landing with a door. 
+ [Open the door] -> door_unlocked
+ [Ascend further] -> namenotimportantgottafinish
+ [Return to room] -> main_room
-> END

=== namenotimportantgottafinish ===
The staircase abruptly ends in a solid cement wall.
+ [Go back] -> final_landing
-> END


== right_stair ==
You stand at the top of a long stairwell. One that spirals downwards in a square pattern with landings and a door every several steps. 
+ [Descend stairs] -> 1st_right_landing
+ [Return to room] -> main_room
-> END

=== 1st_right_landing ===
A basic landing with a door. 
+ [Open the door] -> locked_message_2
+ [Descend further] -> cliff_area
+ [Return to room] -> main_room
-> END

=== locked_message_2 ===
{not keys_pickup:The door is locked, and you have nothing to unlock it with.}
{keys_pickup:You try all of the keys, but none seem to work.}
+ [Go back] -> 1st_right_landing
-> END

=== cliff_area ===
As you round the corner of the staircase, expecting another basic landing and door, the stairs abruptly end, leaving nothing but an empty chute going as far down as you can see, before being consumed by darkness.
+ [Jump] -> yeet_ending
+ [Go back] -> 1st_right_landing
-> END

=== yeet_ending ===
You fall for several minutes, or at least you guess. You don't feel anything and there is no noise, but all of a sudden all your thoughts and senses cease to exist. 
-> END


=== keys_pickup ===
You take the set of keys. Hopefully they prove useful. 
* [Return to room] -> main_room
-> END

== door_unlocked
{not keys_pickup:The door is locked, and you have nothing to unlock it with.}
{keys_pickup:You try unlocking the door, but none of the keys seem to be working. Suddenly, as you are turning the final key, you hear a hard clicking sound, turn the knob and it opens forward, revealing... your room. In your house. The door shuts swiftly behind you, and your memories come rushing back. You quickly open it back up to reveal what closed it, but find nothing inside but the disorganized mess of your closet.}
-> END