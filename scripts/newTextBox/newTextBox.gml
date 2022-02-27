


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
	
	with(instance_create_layer(0,0,"items",_obj)) {
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

function sayLine(_itemIndex){
	switch(_itemIndex){
		case 0:
			newTextBox("I found this diggin' in my backyard! Ignore the beepin...",0);
		break;
		case 1:
			newTextBox("I snagged this on my last vacation...",0);
		break;
		case 2:
			newTextBox("IIIIIIII've moved on from this darling. I'm entering my blue period.",0);
		break;
		case 3:
			newTextBox("My grandson used to love these!",0);
		break;
		case 4:
			newTextBox("I'm gonna buy sooooo many ice creams with this money!",0);
		break;
		case 5:
			newTextBox("This ain't no ordinary pop! This is the classic, quality stuff.",0);
		break;
		case 6:
			newTextBox("Oh, just an old keepsake from the war. Ohoho!",0);
		break;
		case 7:
			newTextBox("I suppose nature just... found a way?",0);
		break;
		case 8:
			newTextBox("Da toof faiwy didn't come!",0);
		break;
		case 9:
			newTextBox("Guh... gooold...",0);
		break;
		case 10:
			newTextBox("It was my wife's. I caught her with another man. Please just take it.",0);
		break;
		case 11:
			newTextBox("I saw this picture the day it came out! Yessir! Came out right around that 'Star Ward!'",0);
		break;
		case 12:
			newTextBox("IIIIIIII've already worn it twice, I'm done with it.",0);
		break;
		case 13:
			newTextBox("Oooobviously I have the class to wear it, but the style is so tragically outdated!",0);
		break;
		case 14:
			newTextBox("Check it, new shades! I don't need this cheap-o pair anymore.",0);
		break;
		case 15:
			newTextBox("I knew it! I knew these little buggers would make me rich!",0);
		break;
	}
}