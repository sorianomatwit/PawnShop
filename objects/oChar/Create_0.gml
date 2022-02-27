sprite_index = choose(
Business_men,
con_man,
Granny,
lil_boi,
shady_character_1)
allCharacters = ds_list_create();
ds_list_add(allCharacters,Business_men,
		con_man,
		Granny,
		lil_boi,
		shady_character_1);
myChar = new Character(sprite_index);

inCenter = true;
lerpProgressOut = 0;
lerpProgress = 0;
percentage = 100;

xxStart = room_width + 100;
xTarget = room_width/2;

isBuying = false
charItem = noone;
function newCharacter(){
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