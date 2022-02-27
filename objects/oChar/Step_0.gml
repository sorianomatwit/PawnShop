if(inCenter) {
	lerpProgressOut = 0;
	lerpProgress += (1 - lerpProgress) / percentage;

	x = lerp(x,xTarget,lerpProgress);
	
	if(!instance_exists(oItem) and !isBuying){
		charItem = myChar.SelecticItem();	
		instance_create_layer(x,y,"items",oItem).item = charItem;
	}
} else {
	instance_destroy(oItem);
	lerpProgressOut += (1 - lerpProgress) / percentage;
	lerpProgress = 0;
	x = lerp(x, xxStart,lerpProgressOut);
}

if(global.playerDecision != -1){
	inCenter = false;
}

if (x <= xTarget + 20 and !saidLine){
	sayLine(charItem.index);
	saidLine = true;
}
if(x >= room_width + 80){
	sprite_index = newCharacter();
	myChar = new Character(sprite_index);
	global.playerDecision = -1;
	inCenter = true;
	if(ds_list_size(global.playerInventory) > 0){
		isBuying = choose(false, false, false, true, true);	
	}
}

if(keyboard_check_pressed(vk_space) and saidLine){
	saidLine = false
}