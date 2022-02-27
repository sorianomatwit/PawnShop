#region item sprites
//name of all items
global.items = [
"Mortar Shell",
"Diamond",
"Mona Lisa",
"Baseball Card",
"Guitar",
"Vintage Cola",
"Flintlock Pistol",
"Dinosaur Egg",
"Tooth",
"Gold Bar",
"Ring",
"Movie Poster",
"Designer Bag",
"Top Hat",
"Sunglasses",
"Beanie Baby"
]
//index for all big Sprites
global.bigImg = [
	B01,
	B02,
	B03,
	B04,
	B05,
	B06,
	B07,
	B08,
	B09,
	B10,
	B11,
	B12,
	B13,
	B14,
	B15,
	B16
]
//index for all small sprites
global.smallImg = [
	S01,
	S02,
	S03,
	S04,
	S05,
	S06,
	S07,
	S08,
	S09,
	S10,
	S11,
	S12,
	S13,
	S14,
	S15,
	S16
]
#endregion

global.openPopUp = false;//check if there is a popUp or not
marginx = 16;
marginy = 8;
sections = [0,89,357,446,490,516,569];//y pixel of section that change color on sprite
global.playerInventory = ds_list_create();//where to hold bought items
global.playerMoney = 3000;//start budget
global.playerDecision = -1;// what the player decides

levelsound = audio_play_sound(lofi_type_beat_01,100,false);//game music
//introLen = 12.895;
loopLen = 51.030;//len of main song