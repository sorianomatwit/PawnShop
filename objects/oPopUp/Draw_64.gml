//if(global.openPopUp){
	//background
	draw_sprite_stretched(sPopUp,0,x1,y1,wid,len);//draw the popUp
	
	DrawSetText(c_white,fText,fa_center,fa_middle);
	show_debug_message("wid"+string(wid));
	
	if(popUpDone){//only show item and info when the popUp is fully loaded
		//draws button over the popUp button for smoother transition
			draw_sprite(sButtons,index,butX,butY);
			draw_sprite(yesorno,decide,clickX,clickY)
			#region show item
				var _scale = 1;
				draw_sprite_ext(item.bg_index,0,x1 + itemX,y1+ itemY,_scale,_scale,0,c_white,1);
				draw_text_ext_transformed(x1+textX,y1+textY,item.description,25,248,.8,.8,8);
			#endregion
			if(showTruth){
			var print = "FAKE";
			if(item.isReal){
				print = "REAL";
			}
			draw_text_transformed(x1+truthX,y1+truthY,print,5,5,0);
		}
	}
	
	
//}