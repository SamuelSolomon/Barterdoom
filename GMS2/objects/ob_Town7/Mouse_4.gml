/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if sc_ma_isConnectedtoCurrentVillage(id) {
	if sc_re_getResourceQuantity(resource.boat) < 1 {
		sc_vi_initTextbox(cantReachDialogue)
	} else {
		event_inherited();
	}
} else if global.gameManager.currentVillage == id {
	event_inherited();
}