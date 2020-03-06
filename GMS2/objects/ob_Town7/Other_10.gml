if sc_re_getResourceQuantity(resource.lumber) >= 5 && sc_re_getResourceQuantity(resource.medicine) >= 1 && sc_re_getResourceQuantity(resource.gold) >= 10{
	sc_re_addToResourceValue(resource.lumber, -5)
	sc_re_addToResourceValue(resource.medicine, -1)
	sc_re_addToResourceValue(resource.gold, -10)
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}