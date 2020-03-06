if sc_re_getResourceQuantity(resource.labor) >= 2 {
	sc_re_addToResourceValue(resource.labor, -2)
	if sc_re_getResourceQuantity(resource.boat) >= 1 {
		sc_re_addToResourceValue(resource.lumber, 5)
	} else {
		sc_re_addToResourceValue(resource.boat, 1)
	}
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}
