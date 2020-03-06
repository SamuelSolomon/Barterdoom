///@description textbox_draw_bubble
///@arg Text
///@arg CharacterName
///@arg Colour
///@arg TextColour
///@arg Alpha
///@arg Font
///@arg separation
///@arg bubblewidth
///@arg ObjectTalking
///@arg SelectedTextColour*
///@arg Option1*
///@arg Option2*
///@arg Option3*
//Draw a bubble with text


#region Get the variables

var vtext = argument[0];
var vcharactername = argument[1];
var vcolour = argument[2];
var vtextcolour = argument[3];
//var voutlinecolour = argument[4]; COMING SOON MAYBE
var valpha = argument[4];
var vfont = argument[5];
var vseparation = argument[6];
var vbubblewidth = argument[7];
var vobject = argument[8];
if argument_count >= 10 {
	var vselectedtextcolour = argument[9]; 
}
if argument_count >= 11 {
	var voption1 = argument[10];
}
if argument_count >= 12 {
	var voption2 = argument[11];
}
if argument_count >= 13 {
	var voption3 = argument[12];
}

var text_width = string_width_ext(vtext,vseparation,vbubblewidth);
var text_height = string_height_ext(vtext,vseparation,vbubblewidth-6);


var DistFromObj = sprite_get_height(vobject.sprite_index);

#endregion


#region Draw things

//Rectangle
draw_set_colour(vcolour);
draw_set_alpha(valpha);
if vcharactername != noone {
	draw_roundrect(vobject.x-vbubblewidth/2,vobject.y-DistFromObj-2-vseparation-text_height,vobject.x+vbubblewidth/2,vobject.y-DistFromObj,false);
}else{
	draw_roundrect(vobject.x-vbubblewidth/2,vobject.y-DistFromObj-2-text_height,vobject.x+vbubblewidth/2,vobject.y-DistFromObj,false);
}

//Pointer
draw_triangle(vobject.x-8,vobject.y-DistFromObj,vobject.x+8,vobject.y-DistFromObj,vobject.x,vobject.y-DistFromObj/1.3,false);


//Text
draw_set_colour(vtextcolour);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(vfont);
draw_text_ext(vobject.x,vobject.y-DistFromObj-text_height,vtext,vseparation,vbubblewidth-6);
	
	

//Characters name
if vcharactername != noone {
draw_set_colour(vtextcolour);
draw_set_alpha(0.7);
draw_set_halign(fa_center);
draw_text(vobject.x,vobject.y-DistFromObj-vseparation-text_height,vcharactername);
}

#endregion


#region Show options

var posx = vobject.x;
var posy = vobject.y-DistFromObj-2-vseparation-text_height;


if options_show = true {
	if argument_count >= 13 {
		options_draw_bubble(vtextcolour,vselectedtextcolour,vfont,posx,posy,voption1,voption2,voption3);
	}else
	if argument_count >= 12 {
		options_draw_bubble(vtextcolour,vselectedtextcolour,vfont,posx,posy,voption1,voption2);
	}else
	if argument_count >= 11 {
		options_draw(vtextcolour,vselectedtextcolour,vfont,posx,posy,voption1);
	}
}

#endregion


//Reset settings
draw_set_halign(fa_left);
draw_set_alpha(1);