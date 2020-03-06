/// @description Insert description here
// You can write your code in this editor

switch currentState {
	case gameState.mapMenu:
		if keyboard_check_pressed(vk_escape){
			game_restart()
		}
	break
	
	case gameState.villageMenu:
		if !instance_exists(ob_VillageView) {
			currentState = gameState.mapMenu	
		}
	break
		
	case gameState.dialogue:
		if !instance_exists(textbox) {
			if !instance_exists(ob_VillageView) {
				currentState = gameState.mapMenu	
			} else {
				currentState = gameState.villageMenu
			}
		}
	break
	
	case gameState.start:
	
	break
	
	case gameState.cutscene:
	
	break
}