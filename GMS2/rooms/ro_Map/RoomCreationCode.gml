

with global.gameManager {
	currentState = gameState.mapMenu
	sc_ma_InitGame()
	var tempText = "Duomos (king): Our world is in shambles; Our village must come together to conquer this great evil. Knight Stark, you will head to each village and get their help to defend against the dragon.\nKnight Stark: Yes, your majesty. I will repair your Kingdom."
	currentState = gameState.dialogue
	CreateTextbox("A Kingdom in Shambles",tempText)
}