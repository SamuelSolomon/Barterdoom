if sc_re_getResourceQuantity(resource.gold) >= 3 {
	sc_re_addToResourceValue(resource.gold, -3)
	sc_re_addToResourceValue(resource.labor, 1)
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}