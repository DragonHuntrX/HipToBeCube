VAR times_notted = 0
VAR button_presses = 0

This is a story. 
-> story

=== story ===
A story about Bob.
+  No it's not
-> its_not
* Press the button...
-> button
* Okay...
-> bob_story

= its_not
~ times_notted += 1
{~Yes, it is.|It definetly is.|It 100% is.|It is.| Liar, you know it is!|You know it is in your soul.|You're lying to yourself}
+ {times_notted <= 3} [{!No, it's not!|No!|You're wrong!}]
-> its_not
* -> okay_fine

= okay_fine
Okay, fine, you're right, it's not
-> END

=== bob_story
Bob, Bob, oh glorious Bob. He was a builder, you know.
He built many a great structure.
* ... 
- He was also a nice guy, always there to help whenever someone needed it.
I'm not sure he ever even got paid.

-> loop 

= loop
+ [...]
-> loop
+ And?
{&I think he never got paid...|Do I ever get paid...|Is that even legal?|Did Bob ever get paid?}
-> loop
* Okay[?], what does this mean for me?
How so?
-> meaning

= meaning
* Does this affect me at all?
Perhaps...
-> meaning
* Have you ever met Bob?
Yes, very recently.
-> meaning
* Where is Bob now?
Very close by.
-> meaning
* -> big_reveal

= big_reveal
See, I have something to tell you...
You...
* Yes[?]...
You are Bob.
-> END


=== button
~button_presses += 1
{It turns blue.|It turns red.|It turns yellow.|It turns green.|It turns purple.|You hear a popint noise, and the button turns black.|Nothing changes.}
+ Press the button.
-> button
* Leave.
You walk away from the button, leaving it behind.
-> leave
= leave
* North
-> north
* South
-> south
* East
-> east
* West
-> west

= north
You find yourself in the northern stitch.
-> END

= south
You find yourself in the southern stitch.
-> END

= east
You find yourself in the eastern stitch.
-> END

= west
You find yourself in the western stitch.
-> END






