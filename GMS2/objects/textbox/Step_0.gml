/// @description Manage everything

//Increase characters
if (characters < message_length) {
	characters += increase;
	
	//Make sound
	if text_sound = true {
		if itstime = true {
			audio_play_sound(textsound,1,false);
			itstime = false;
			alarm[0] = 5;
		}
	}
	
	//Press x to skip dialogue
	if keyboard_check_pressed(skip_key) {
		characters = message_length;
	}
	//What has to be drawn right now
	message_draw = string_copy(message[message_current],0,characters);
}else{
	//Press mouse to continue in the dialogue
	if mouse_check_button_pressed(mb_left) {
		if message_current<message_end {
			message_current += 1;
			characters = 0;
			message_draw = "";
			message_length = string_length(message[message_current]);
		}
		//End dialogue if it is the last message
		else {
			message_current = 0;
			characters = 0;
			message_draw = 0;
			message_length = string_length(message[message_current]);
			instance_destroy();
		}
	}
}


///Options
if options_set = true {
	
//When to show options
if message_current = show_options_when {
	options_show = true;
}else{
	options_show = false;
}


//Change a message according to selected option
if message_to_change != 0 {
	if selected = "option1" {
	    message[message_to_change] = ifoption1;
	}else{
	    if selected = "option2" {
	        message[message_to_change] = ifoption2;
	    }else{
	        if selected = "option3" {
	            message[message_to_change] = ifoption3;
	        }
	    }
	}
}



/*/If used options second time
if options_set2 = true {

//When to show options
if message_current = show_options_when2 {
	optioncount = optioncount2;
	
	options_show2 = true;
}else{
	options_show2 = false;
}
	
//Change a message according to selected option
if message_current = show_options_when2 {
	if selected = "option1" {
		message[message_to_change2] = ifoptionsecond1;
	}else{
		if selected = "option2" {
			message[message_to_change2] = ifoptionsecond2;
		}else{
			if selected = "option3" {
				message[message_to_change2] = ifoptionsecond3;
			}
		}
	}
}
	
}



//If used options third time
if options_set3 = true {
	
//When to show options
if message_current = show_options_when3 {
	optioncount = optioncount3;
	
	options_show3 = true;
}else{
	options_show3 = false;
}

//Change a message according to selected option
if message_current = show_options_when3 {
	if selected = "option1" {
		message[message_to_change3] = ifoptionthird1;
	}else{
		if selected = "option2" {
			message[message_to_change3] = ifoptionthird2;
		}else{
			if selected = "option3" {
				message[message_to_change3] = ifoptionthird3;
			}
		}
	}
}


}*/



}


///Manage speed of text
//This is only necessary if you want to change the speed of the text.
if speed_set = true {
	increase = message_speed[message_current];
}



//If some of the option_show variables is true, make the first true
if options_show2 = true || options_show3 = true {
	options_show = true;
}