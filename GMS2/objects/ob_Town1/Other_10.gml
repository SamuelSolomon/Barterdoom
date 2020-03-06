if sc_re_getResourceQuantity(resource.army) >= 3 {
	sc_re_addToResourceValue(resource.army, -3)
	sc_re_addToResourceValue(resource.food, 1)
	isComplete = true
	event_inherited();
	show_debug_message("Town1 event 0")
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}

