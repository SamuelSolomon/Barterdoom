if sc_re_getResourceQuantity(resource.food) >= 2 {
	sc_re_addToResourceValue(resource.food, -2)
	sc_re_addToResourceValue(resource.labor, 1)
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}