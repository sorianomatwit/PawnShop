if(item != noone and !hasBeenSet){
	sprite_index = item.sm_index;
	hasBeenSet = true;
}
//click on item to open up popUp
if(collision_point(mouse_x,mouse_y,id,false,false) and mouse_check_button_pressed(mb_left)){
	image_index = 1;
	if(!instance_exists(oPopUp)){
		global.openPopUp = true;
		instance_create_layer(x,y,layer,oPopUp).item = item;
		show_debug_message("instance create");
	} else if(!global.openPopUp){
		global.openPopUp = true;
		oPopUp.lerpProgress = 0;
	}
} else image_index = 0;
