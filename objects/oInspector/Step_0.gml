if(collision_point(mouse_x,mouse_y,id,false,false) and mouse_check_button_pressed(mb_left) and !instance_exists(oPopUp)){
	global.openPopUp = true;
	instance_create_layer(x,y,layer,oPopUp).item = item;
	show_debug_message("instance create");
} else if(collision_point(mouse_x,mouse_y,id,false,false) and mouse_check_button_pressed(mb_left) and instance_exists(oPopUp) and !global.openPopUp){
	global.openPopUp = true;
	oPopUp.lerpProgress = 0;
}