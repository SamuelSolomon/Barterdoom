/*READ THIS

to get started with Dialogue engine - Text boxes.

First of all, just ignore the object textbox. It manages itself.
If you want to know how to use a script, look at the example npc objects or go to the script,
where its use is explained.

The scripts you essentially need are:

textbox_create()

and

textbox_set()

With these functions you can get fully working text boxes. But maybe that is not enough for you!

Then you can use these scripts:

textbox_set_speed()

With that you can set the speed of the text in every message.

and

textbox_set_key()

With that you can set the keyboard keys you want to use for speaking and skipping dialogue.

and

textbox_set_sound()
and
textbox_sound_on()

With these you can add sound when speaking, for example, a typewriter sound.

But you want options? Then use these functions:

textbox_add_options()

and

textbox_change_message_according_option()

and

chooses_option()

With the first one you can add the options
and with the others you can choose what gets changed when the player selects an option.


NEW! Speech bubbles!

To make a speech bubble instead of textbox, instead of textbox_set() use the script:

textbox_set_bubble()



-----------------------------------

You can get more information about how to use them in the scripts and the example objects. At the end of every
script there is an example of how to use it.


If you want to ask anything, send an email to me.
My email: aapo1mattila@gmail.com