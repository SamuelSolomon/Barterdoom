///@description textbox_sound_on
///@arg trueORfalse
//This script sets the text sound false or true
with(textbox) {
	if argument[0] = true {
		text_sound = true;
	}else{
		text_sound = false;
	}
}


//Example:
//textbox_sound_on(false);
//This sets the text sound off.