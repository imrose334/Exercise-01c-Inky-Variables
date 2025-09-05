/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/


VAR hunger = 10
VAR pokemon = ""
VAR torches = 0 

-> start

== start ==

You find yourself at the entrance to a massive ravine. As you ready your belaying equipment, you realize you've forgotten to pick your starter Pokemon. 
Which will you choose? 
* [Pikachu]
    ~ pokemon = "Pikachu"
    -> cave_mouth
* [Charizard]  
    ~ pokemon = "Charizard"
    -> cave_mouth
* [Butterfree]
    ~ pokemon = "Butterfree"
    -> cave_mouth
    

== cave_mouth ==

You lower yourself down the massive ravine, and slowly near the surface below. You finally make it to the bottom, where the ravine opens up into a massive cavern. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
Your newfound familiar {pokemon} follows at your side, eager to battle if the need arises. 
You currently hold {torches} torches. 

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything. A torch would help. 
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. You see suddenly placed before you a chest. {pokemon} seems to gesture towards it and then back at you, hinting you should follow it. But something tells you it might not be what it may seem...
{pokemon == "Pikachu": Pikachu grows skittish at your slow pace. So you throw him a block of cheese and he yelps with joy. He really likes cheese. }
Now you find yourself faced with two choices; shall you continue down the path, or open the chest ??? 
* [continue west] -> continue_west
* [open the chest] -> open_chest

==continue_west==
You decide to continue down the path. However.... it's very dark. a torch would be very useful here. 
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go back and look for a torch] -> cave_mouth



==open_chest==

You open the chest and find a massive BLASTOISE waiting for you!!! He blasts you away back to the start !!!! 
* [Oblige him] -> cave_mouth


+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1 
You now have a torch. May it light the way!
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off thousands of shiny skulls and skeletal remains that reside within the eastern tunnel. OH NO!! Where will you go next? {pokemon} seems to take a liking to the bones, though something tells you you should stay far away.

* [continue down the tunnel] -> continue_tunnel
* [approach the bones] -> approach_bones

== continue_tunnel ==
You continue down the tunnel and decide to play it safe. {pokemon} groans with disdain, but you soon find yourself at the end of the tunnel, with a HEAPING OF GOLD COINS !!! YAYYY!! 
-> END

== approach_bones ==
You approach the massive pile of bones and skulls. SUDDENLY, an animated skeleton lashes out and grabs {pokemon}, and begins thrashing it around. 
{pokemon == "Pikachu": However, Pikachu zaps the living DAYLIGHTS out of the skeleton and jumps back over to you, safe and sound !!!}
{pokemon == "Charizard": Charizard rips the skeleton apart limb from limb and snarls. What a beast.}
{pokemon == "Butterfree": Butterfree casts its sleep spores and puts the skeleton to sleep. How does that even work??}

Congrats!!! You've reached the end. 

-> END
