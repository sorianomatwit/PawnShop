draw_self();
DrawSetText(c_black,fText,fa_left,fa_top);
var _xx = x+marginx;
var _yy = y+marginy;
draw_text(_xx,_yy,"Current Budget\n$"+string(global.playerMoney));
draw_set_color(c_white);
var _charObj = oChar.myChar;

draw_text_ext(_xx,_yy + sections[1],string(_charObj.myName) + "\n"+string(_charObj.description) +"\nOffering:\n"+ 
string(oChar.charItem.itemName),30,sprite_width);

draw_set_color(make_color_rgb(255,246,0));
draw_text(_xx,_yy+sections[2],"Current Offer:\n$"+string(oChar.charItem.cost));
draw_set_color(c_black);
draw_text(_xx,_yy+sections[3],"Pressumed Value: $ I dont know?");
draw_set_color(c_white);
draw_text_transformed(_xx,_yy+sections[4] - marginy,"Free Shipping and handling",.8,.8,0);
draw_set_color(make_color_rgb(0,60,255))
draw_text_transformed(_xx,_yy+sections[5] ,"swindle.com",1.2,1,0);
draw_set_color(c_white);
draw_text(_xx,_yy+sections[6],"1-(800) - 794 - 6352");
