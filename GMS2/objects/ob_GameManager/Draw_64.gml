/// @description Insert description here
// You can write your code in this editor

if global.gameManager.currentState == gameState.mapMenu 
	|| global.gameManager.currentState == gameState.villageMenu{
	//draw rectangle
	draw_set_color(c_black)
	draw_rectangle(45,230,206,475,false)
	//draw text
	draw_set_font(fo_OldEnglishMapMenu)
	draw_set_color(c_white)
	draw_set_halign(fa_right)
	draw_text(194,242,
		"Days Left  : " + string(sc_re_getResourceQuantity(resource.actions)) +
		"\nReputation : " + string(sc_re_getResourceQuantity(resource.reputation)) + 
		"\nArmy       : " + string(sc_re_getResourceQuantity(resource.army)) + 
		"\nGold       : " + string(sc_re_getResourceQuantity(resource.gold)) + 
		"\nFood       : " + string(sc_re_getResourceQuantity(resource.food)) + 
		"\nLumber     : " + string(sc_re_getResourceQuantity(resource.lumber)) + 
		"\nLabor      : " + string(sc_re_getResourceQuantity(resource.labor)) + 
		"\nMedicine   : " + string(sc_re_getResourceQuantity(resource.medicine)) + 
		"\nBoat       : " + string(sc_re_getResourceQuantity(resource.boat)))
}
