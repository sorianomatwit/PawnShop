


function DrawSetText(color,font,halign,valign){
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_color(color);
}

function newTextBox(_message,_background = 1,_responses = []){
	///@arg Message
	///@arg Background (index)
	///@arg [Responses] array of strings

	var _obj;
	if(instance_exists(oText)) _obj = oTextQueue; else _obj = oText;
	
	with(instance_create_layer(0,0,"Instances",_obj)) {
		msg = _message;
		
		if(instance_exists(other)) originInstance = other.id else originInstance = noone;
		
		background = _background;
		
		if(array_length(_responses) > 0) {
			responses = _responses;
			//trim markers from responses
			for(var i = 0; i < array_length_1d(responses);i++){
				var _markerPos = string_pos(":",responses[i]);
				responseScripts[i] = string_copy(responses[i],1,_markerPos-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i],1,_markerPos);
				
			}
		} else {
			responses = [-1];
			responseScripts = [-1];
		}
	}
}