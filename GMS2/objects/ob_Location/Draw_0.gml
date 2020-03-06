/// @description Insert description here
// You can write your code in this editor

draw_self()

if global.gameManager.currentState = gameState.mapMenu {
	if displayName {
	
		draw_set_halign(fa_center)
	
		if isComplete {
			draw_set_color(c_green)
		
		} else {
			draw_set_color(c_red)
		}
	
		draw_set_font(fo_OldEnglishMapMenu)
		draw_text(x,bbox_top-32,name)
	}
}
