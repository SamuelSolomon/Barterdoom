///@description options_draw
///@arg TextColour
///@arg SelectedTextColour
///@arg Font
///@arg option1
///@arg option2
///@arg option3
///Draws the options

//If view height is lower than 300 make things smaller
if camera_get_view_width(view_camera[view_current]) <= 300 {
	var smaller = 50;
}else{
	var smaller = 0;
}

//If there are options
if argument_count >= 4 {


#region Check how many options there are

//Count options
if argument_count = 6 {
	var option_count = 3;
}else
if argument_count = 5 {
	var option_count = 2;
}else
if argument_count = 4 {
	var option_count = 1;
}else{
	var option_count = 0;
}

#endregion



#region Draw the options

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
draw_set_halign(fa_right);
//Text
if option_count = 3 {
	draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current]))-240+smaller,argument[3]);
}else
if option_count = 2 {
	draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current]))-210+smaller,argument[3]);
}else
if option_count = 1 {
	draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current])/2)-180+smaller,argument[3]);
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
	draw_set_halign(fa_right);
	//Text
	if option_count = 3 {
		draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current]))-210+smaller,argument[4]);
	}else
	if option_count = 2 {
		draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current]))-180+smaller,argument[4]);
	}
}


//Draw option 3
if option_count = 3 {
	//Font
	draw_set_font(argument[2]);
	//Colour
	if selected = "option3" {
		draw_set_colour(argument[1]);
	}else{
		draw_set_colour(argument[0]);
	}
	//Halign
	draw_set_halign(fa_right);
	//Text
	draw_text(camera_get_view_x(view_camera[view_current])+(camera_get_view_width(view_camera[view_current])-20),camera_get_view_y(view_camera[view_current])+(camera_get_view_height(view_camera[view_current]))-180+smaller,argument[5]);
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
