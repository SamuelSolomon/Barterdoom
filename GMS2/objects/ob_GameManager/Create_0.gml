/// @description Insert description here
// You can write your code in this editor

enum gameState {
	start, mapMenu, dialogue, villageMenu, cutscene
}

currentState = gameState.start

audio_play_sound(background_Music,100,true)