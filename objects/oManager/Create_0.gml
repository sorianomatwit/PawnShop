#region item sprites
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
global.openPopUp = false;
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

marginx = 16;
marginy = 8;
sections = [0,89,357,446,490,516,569];
global.playerInventory = ds_list_create();
global.playerMoney = 1000;
global.playerDecision = -1;