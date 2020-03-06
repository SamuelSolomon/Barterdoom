///@description textbox_draw
///@arg Text
///@arg CharacterName
///@arg Colour
///@arg TextColour
///@arg OutlineColour
///@arg Alpha
///@arg Font
///@arg Sprite
///@arg SelectedTextColour
///@arg Option1
///@arg Option2
///@arg Option3
///Draw a box with text - Supports different camera and view sizes

//If view height is lower than 300 make things smaller
var vh = view_get_hport(0)
var vw = view_get_wport(0)
if camera_get_view_height(view_camera[view_current]) <= 300 {
	var smaller = 100;
}else{
	var smaller = 50;
}

//If there is a sprite, scale things to fit it
if argument[7] != noone {
var sprite_w = 128;
}else{
var sprite_w = 0;
}

if argument[0] != "" {
	//Rectangle
	draw_set_colour(argument[2]);
	draw_set_alpha(argument[5]);
	draw_rectangle(10,
					vh-187+smaller,
					vw-10,
					vh-10,
					false);

	//Outline
	if argument[4] != noone {
	draw_set_colour(argument[4]);
	draw_rectangle(10,
					vh-187+smaller,
					vw-10,
					vh-10,
					true);
	}
}

//Draw sprite
if argument[7] != noone {
draw_sprite(argument[7],
			0,
			10+2+(sprite_get_xoffset(argument[7])),
			+vh-187+smaller+2+(sprite_get_yoffset(argument[7])));
}

//Text
draw_set_colour(argument[3]);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(argument[6]);
draw_text_ext(20+sprite_w,vh-177+smaller,argument[0],36,vw-(40+sprite_w));

if argument[1] != "" {
	//Characters name rectangle
	if argument[1] != noone {
	draw_set_colour(argument[2]);
	draw_set_alpha(argument[5]);
	draw_rectangle(10,vh-257+smaller*1.3,vw-10,vh-180+smaller-10,false);
	}

	//Characters name rectangle outline
	if argument[1] != noone {
		if argument[4] != noone {
		draw_set_colour(argument[4]);
		draw_rectangle(10,vh-257+smaller*1.3,vw-10,vh-180+smaller-10,true);
		}
	}
}

//Characters name
if argument[1] != noone {
draw_set_colour(argument[3]);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text(vw/2,vh-240+smaller*1.2,argument[1]);
}

//Show options
if options_show = true {
	if argument_count >= 12 {
		options_draw(argument[3],argument[8],argument[6],argument[9],argument[10],argument[11]);
	}else
	if argument_count >= 11 {
		options_draw(argument[3],argument[8],argument[6],argument[9],argument[10]);
	}else
	if argument_count >= 10 {
		options_draw(argument[3],argument[8],argument[6],argument[9]);
	}
}




draw_set_halign(fa_left);