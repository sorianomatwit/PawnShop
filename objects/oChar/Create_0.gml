sprite_index = choose(
Business_men,
con_man,
Granny,
lil_boi,
shady_character_1)//pick inital sprite


allCharacters = ds_list_create(); // make list of all sprites
ds_list_add(allCharacters,Business_men,
		con_man,
		Granny,
		lil_boi,
		shady_character_1);//add all sprites
myChar = new Character(sprite_index);//initialize character struct

inCenter = true;//start characer wiuth moving into frame
lerpProgressOut = 0;//control for the lerpProgress out
lerpProgress = 0;//contrl for the lerpProgress in
percentage = 100;// how quick the char moves

xxStart = room_width + 100;//beginnign x position
xTarget = room_width/2;// final x position

isBuying = false//whther the character should be buying or not
charItem = noone;//place holder for the char item
function newCharacter(){//local function made to  pick a new character and to make sure the same character doesn't come up twice in a row
	var _index = irandom_range(0,ds_list_size(allCharacters) - 1);
	if(_index == ds_list_find_index(allCharacters,sprite_index)){
		_index++;
	}
	if(_index >= ds_list_size(allCharacters)){
		_index = 0;
	}
	return ds_list_find_value(allCharacters,_index);
}
saidLine = false;