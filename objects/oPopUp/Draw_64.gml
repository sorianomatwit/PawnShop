//if(global.openPopUp){
	//background
	draw_sprite_stretched(sPopUp,0,x1,y1,wid,len);
	
	DrawSetText(c_white,fText,fa_center,fa_middle);
	show_debug_message("wid"+string(wid));
	
	if(popUpDone){
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
		draw_text(x1+truthX,y1+truthY,print);
	}
	}
	
	
//}