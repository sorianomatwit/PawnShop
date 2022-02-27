lerpProgress += (1 - lerpProgress) / 100;
if(lerpProgress > .2) {
	textProgress += textSpd;
}
len = lerp(len,lenTarget,lerpProgress);
wid = lerp(wid,widTarget,lerpProgress);


//select response/skip text/ remove text
if(mouse_check_button_pressed(mb_left)){
	
	var _messageLen = string_length(msg);
	
	if(textProgress >= _messageLen){
		//removing text
		instance_destroy();
		// bring next text box
		if(instance_exists(oTextQueue)){
			with(oTextQueue) ticket--;
		} else {
			show_debug_message("done");
		}
	} else {
		if(textProgress > 2){
			//skip
			textProgress = _messageLen;
		}
	}
}