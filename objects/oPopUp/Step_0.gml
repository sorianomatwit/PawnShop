
if(global.openPopUp){
	lerpProgress += (1 - lerpProgress) / 500;
	x1 = lerp(x1,xTarget/2,lerpProgress);
	wid = lerp(wid,widTarget*1.5,lerpProgress);
	y1 = lerp(y1,yTarget/2,lerpProgress);
	len = lerp(len,lenTarget*1.5,lerpProgress);
	if(len >= lenTarget*1.5 - 1 and wid >= widTarget*1.5 - 1){ 
		popUpDone = true;
	}
	butX = x1+580;
	butY = y1+620;
} else {
	lerpProgress -= lerpProgress/ 500;
	x1 = lerp(room_width/2,x1,lerpProgress);
	wid = lerp(0,wid,lerpProgress);
	y1 = lerp(room_height/2,y1,lerpProgress);
	len = lerp(0,len,lerpProgress);
	if(wid <= 100){
		instance_destroy();	
	}
}


#region exit out button
	var _x1 = x1 + 929;
	var _y1 = y1 + 29;
	var _x2 = x1 + 994;
	var _y2 = y1 + 99;
	if(point_in_rectangle(mouse_x,mouse_y,_x1,_y1,_x2,_y2) and mouse_check_button_pressed(mb_left)){
		lerpProgress = .99;
		global.openPopUp = false;
		popUpDone = false;
	}
#endregion

#region hover over buttons
	if(point_in_rectangle(mouse_x,mouse_y,butX- 131,butY-74,butX-21 ,butY-10)){
		index = 4;
	} else if(point_in_rectangle(mouse_x,mouse_y,butX- 254,butY-63,butX-141 ,butY-10)){
		index = 3;
	} else if(point_in_rectangle(mouse_x,mouse_y,butX- 354,butY-51,butX-264 ,butY-10)){
		index = 2;
	} else if (point_in_rectangle(mouse_x,mouse_y,butX- 492,butY-43,butX-366 ,butY-8)){
		index = 1;
	} else index = 0;
	if(point_in_rectangle(mouse_x,mouse_y,butX- 131,butY-74,butX-21 ,butY-10)){
		index = 4;
	} else if(point_in_rectangle(mouse_x,mouse_y,butX- 254,butY-63,butX-141 ,butY-10)){
		index = 3;
	}
#endregion

#region click button
if(mouse_check_button_pressed(mb_left)){
	switch(index){
		case 1://look
			item.Poked();
		break;
		case 2://tap
			item.Poked();
		break;
		case 3://light
			item.Poked();
		break;
		case 4://check
			if(global.playerMoney - 100 > 0){
				showTruth = true;
				global.playerMoney -= 100;
			}
		break;
	}
}
#endregion 
