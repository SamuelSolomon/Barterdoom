///@description textbox_exists
///Checks if textbox exists - instead of using this script you could just use the instance_exists function
if instance_exists(textbox) {
	return true;
}else{
	return false;
}


//Example:
/*if !textbox_exists() {
	textbox_create(...);
}