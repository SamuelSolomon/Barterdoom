if global.gameManager.currentState = gameState.mapMenu {
	if !isVisited && global.gameManager.currentVillage == id {
		sc_re_addToResourceValue(resource.army, 1)
	}

	event_inherited()
}