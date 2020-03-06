///@description options_draw
///@arg TextColour
///@arg SelectedTextColour
///@arg Font
///@arg x
///@arg y
///@arg option1
///@arg option2
///@arg option3
///Draws the options

//If there are options
if argument_count >= 6 {


#region Check how many options there are

//Count options
if argument_count = 8 {
	option_count = 3;
}else
if argument_count = 7 {
	var option_count = 2;
}else
if argument_count = 6 {
	var option_count = 1;
}else{
	var option_count = 0;
}

#endregion



#region Draw the options - NOT DONE YET

//Draw option 1
//Font
draw_set_font(argument[2]);
//Colour
if selected = "option1" {
	draw_set_colour(argument[1]);
}else{
	draw_set_colour(argument[0]);
}
//Halign
draw_set_halign(fa_center);
//Text
if option_count = 3 {
	draw_text(argument[3],argument[4]-separation*3,argument[5]);
}else
if option_count = 2 {
	draw_text(argument[3],argument[4]-separation*2,argument[5]);
}else
if option_count = 1 {
	draw_text(argument[3],argument[4]-separation,argument[5]);
}


//Draw option 2
if option_count >= 2 {
	//Font
	draw_set_font(argument[2]);
	//Colour
	if selected = "option2" {
		draw_set_colour(argument[1]);
	}else{
		draw_set_colour(argument[0]);
	}
	//Halign
	draw_set_halign(fa_center);
	//Text
	if option_count = 3 {
		draw_text(argument[3],argument[4]-separation*2,argument[6]);
	}else
	if option_count = 2 {
		draw_text(argument[3],argument[4]-separation,argument[6]);
	}
}


//Draw option 3
if option_count >= 3 {
	//Font
	draw_set_font(argument[2]);
	//Colour
	if selected = "option3" {
		draw_set_colour(argument[1]);
	}else{
		draw_set_colour(argument[0]);
	}
	//Halign
	draw_set_halign(fa_center);
	//Text
	if option_count = 3 {
		draw_text(argument[3],argument[4]-separation,argument[7]);
	}
}

#endregion



#region Enable action (changing option)

//If up
if keyboard_check_pressed(vk_up) {
	//If 2 options
	if option_count = 2 {
		switch(selected) {

			case "option1":
			selected = "option2";
			break;

			case "option2":
			selected = "option1";
			break;
		}
	}
	//If 3 options
	if option_count = 3 {
		switch(selected) {

			case "option1":
			selected = "option3";
			break;

			case "option2":
			selected = "option1";
			break;

			case "option3":
			selected = "option2";
			break;
		}
	}
}

//If down
if keyboard_check_pressed(vk_down) {
	//If 2 options
	if option_count = 2 {
		switch(selected) {

				case "option1":
				selected = "option2";
				break;

				case "option2":
				selected = "option1";
				break;
				}
			}
	//If 3 options
	if option_count = 3 {
		switch(selected) {

			case "option1":
			selected = "option2";
			break;

			case "option2":
			selected = "option3";
			break;

			case "option3":
			selected = "option1";
			break;
		}
	}
}



#endregion

}

draw_set_halign(fa_left);