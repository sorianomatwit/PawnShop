/// @description Insert description here
// You can write your code in this editor
DrawSetText(c_black,fText,fa_center,fa_top);

var _print = string_copy(msg,1,textProgress);


//main text
//8 is the buffer(offeset)78

draw_text((x1+wid)/2,y1+8,_print);
draw_set_color(c_white);
draw_text((x1+wid)/2,y1+8-1,_print);