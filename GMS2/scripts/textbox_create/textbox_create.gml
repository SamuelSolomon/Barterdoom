///@description textbox_create
///@arg message1
///@arg message2
///@arg message3
///@arg message4
///@arg message5
///@arg message6
///@arg message7
///@arg message8
///@arg message9
///@arg message10
//Creates the textbox and initializes the variables needed
//You just need to set up to 10 messages in the arguments

//Create the textbox (You'll probably need to change the layer to suit your project. But make sure it's above everything.)
instance_create_layer(x,y,"Dialogue",textbox);


with(textbox) {


///Messages
//If you use options, this is the first option path. Other option paths are in the step event.
for (var i = 0; i < 10; i ++;) {
   if argument_count > i {
	   message[i] = argument[i];
   }
}

//Current message
message_current = 0;
//Last message
message_end = argument_count-1;
//How fast the characters appear
increase = 7;
//How much characters are shown
characters = 0;
//What has to be drawn currently
message_draw = "";
//Current message length
message_length = string_length(message[message_current]);

//Set additional variables
name = noone;
general_colour = c_black;
text_colour = c_white;
outline_colour = c_white;
alpha = 1;
font = noone;
sprite = noone;
separation = 25;
bubble_width = 300;
object_talking = noone;

//Keys
speak_key = vk_space;
skip_key = ord("X");

///Options
//Variable to know if options has been set
options_set = false;
options_set2 = false;
options_set3 = false;
//Variable to know if options has to be shown
options_show = false;
options_show2 = false;
options_show3 = false;
//Option variable - Takes track of the selected option
selected = "option1";
//Variable to check how many options there are
optioncount = 0;
optioncount2 = 0;
optioncount3 = 0;

//Set additional option variables
s_text_colour = c_black;
show_options_when = 0;
option1 = noone;
option2 = noone;
option3 = noone;

message_to_change = 0;
message_to_change2 = 0;
message_to_change3 = 0;
ifoption1 = "";
ifoption2 = "";
ifoption3 = "";
ifoptionsecond1 = "";
ifoptionsecond2 = "";
ifoptionsecond3 = "";
ifoptionthird1 = "";
ifoptionthird2 = "";
ifoptionthird3 = "";


///Speed of text
//Variable to know if speed has been set
speed_set = false;

//Text sound
//if should make sound
text_sound = false;
//what sound
textsound = noone;
}


//Mode
mode = "box";


//Example:
//textbox_create("Hi","My name is Bob.","How are you?");