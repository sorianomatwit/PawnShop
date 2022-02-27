

x1 = room_width/2;
y1 = room_height/2;
wid = 0;
len = 0;

yTarget = room_height * .10;
lenTarget = room_height*.6;
xTarget = room_width*.3;
widTarget = room_width/2;

lerpProgress = 0;// 0-1 the percetnage of how much we are done with the animation

popUpDone = false;//check whether the popUp fills the screen
index = 0;//index of the button sprite
butX = x1+580;//button sprite starting x
butY = y1+620;//button sprite starting y

itemX = 286;
itemY = 280;
textX = 715;
textY = 359;
truthX = 705;
truthY = 144;
showTruth = false;

decide = 0;//decision button index
clickX = x1 + 579;//descision button x
clickY = y1 + 491;//descision button y
