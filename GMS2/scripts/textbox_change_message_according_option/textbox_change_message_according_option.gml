///@description textbox_change_message_according_option
///@arg Put1Here
///@arg MessageToChange
///@arg IfOption1
///@arg IfOption2* - Optional
///@arg IfOption3* - Optional
///Change a message depending on what option the player chooses.
//(This script has currently some useless stuff because I was working on adding many options to one dialogue,
//so, ignore some things).

with(textbox) {
	
	if argument[0] = 1 {
		message_to_change = argument[1];
		ifoption1 = argument[2];
		if argument_count >= 4 {
			ifoption2 = argument[3];
		}
		if argument_count >= 5 {
			ifoption3 = argument[4];
		}
		
	}else if argument[0] = 2 {
		message_to_change2 = argument[1];
		ifoptionsecond1 = argument[2];
		if argument_count >= 4 {
			ifoptionsecond2 = argument[3];
		}
		if argument_count >= 5 {
			ifoptionsecond3 = argument[4];
		}
		
	}else if argument[0] = 3 {
		message_to_change3 = argument[1];
		ifoptionthird1 = argument[2];
		if argument_count >= 4 {
			ifoptionthird2 = argument[3];
		}
		if argument_count >= 5 {
			ifoptionthird3 = argument[4];
		}
	}
}


//Example:
//textbox_chenge_message_according_option(1,6,"The cave is in the town.","The shop is on your left.");
//This makes that when the player chooses option 1 it shows a different message than if he chooses option 2.