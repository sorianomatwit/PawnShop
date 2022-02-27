function ShoppingItem(_cost, _spr, _desc, _audioSound,_isReal, _isSelling = true) constructor{
	//creates a new item that holds these vars
	cost = _cost;
	index = _spr
	sm_index = global.smallImg[_spr];
	bg_index = global.bigImg[_spr];
	description = _desc;
	isSelling = _isSelling;
	isReal = _isReal
	itemName = global.items[_spr];
	sound = _audioSound;
	static Poked = function(){
		audio_play_sound(sound,50,false);
	}
}
function Character(_spr) constructor{
	// creates a new char that sets up the char vars
	mySprite = _spr;
	
	switch(_spr){//setup name and description
			case lil_boi:
				myName = "Little Billy";
				description = "Mischevious child.";
			break;
			case Granny:
				myName = "Granny Sweetnums";
				description = "Sweet old lady.";
			break;
			case con_man:
				myName = "Cleatus Snipes";
				description = "A businessman-- it's just risky business.";
			break;
			case Business_men:
				myName = "Reginald D. Bugle";
				description = "Snooty man in a pompus outfit";
			break;
			case shady_character_1:
				myName = "B.C. Dooper";
				description = "A suspicious, nervous man.";
			break;
		}
	
	static SelecticItem = function(){//have the char select and item at random to try to sell
		switch(mySprite){
			case lil_boi:
				return choose(
					new ShoppingItem(100, 9,"A gold bar. It's very slippery and smells delicious.",slime_splat_08,false),
					new ShoppingItem(1,8,"A tooth. It's still kinda wet. Gross.",teeth_SFX,true),
					new ShoppingItem(irandom_range(50,300),4,"A guitar. There are colored buttons on the neck.",guitar_sfx,false)
				);
			break;
			case Granny:
				return choose(
					new ShoppingItem(irandom_range(5,1000),3,"You think it's supposed to be a baseball card.",base_ball_card_SFX,false),
					new ShoppingItem(irandom_range(1000,3000),6,"An old pistol. It's definitely been used. ",flintlock_sfx,true),
					new ShoppingItem(irandom_range(50,300),11,"An iconic movie poster. The title reads ScaredFace.",Paper_Rip_01,false),
					new ShoppingItem(irandom_range(1200,3000),15,"An iconic 90s plushie. This one is super special, apparently.",Toy_Squeak,true)
				);
			break;
			case con_man:
				return choose(
					new ShoppingItem(irandom_range(300,400),0,"A dirty, unexploded mortar shell.",Bomb_Timer,true),
					new ShoppingItem(irandom_range(5,200),5,"A dusty bottle of soda. Probably wouldn't taste good.",Bottle_Full,true),
					new ShoppingItem(irandom_range(40,150),14,"A pair of sunglasses identical to the ones he has on.",Bottle_Clink,true)
				);
			break;
			case Business_men:
				return choose(
					new ShoppingItem(irandom_range(300,450),12,"A designer brand bag. It looks brand new.",Bottle_Clink,false),
					new ShoppingItem(irandom_range(5,150),13,"A top hat. Equip for +5 class.",top_hat_SFX,true),
					new ShoppingItem(irandom_range(500,3000),2,"A painting of a kinda unhappy woman.",mona_lisa_sfx,true)
				);
			break;
			case shady_character_1:
				return choose(
					new ShoppingItem(irandom_range(300,1000),1,"A comically large, cut diamond.",Diamond_sfx,true),
					new ShoppingItem(irandom_range(150,450),7,"A small dinosaur egg. You have no clue what dinosaur, or when it'll hatch.",Chcken_Clucking,false),
					new ShoppingItem(irandom_range(500,800),10,"A wedding ring that any bride would envy.",Bottle_Clink,true)
				);
			break;
			
		}
	}
}

