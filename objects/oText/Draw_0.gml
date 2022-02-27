/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(Speech_Bubble,background,x1,y1,wid,len);

DrawSetText(c_black,fText,fa_center,fa_top);

var _print = string_copy(msg,1,textProgress);


//main text
//8 is the buffer(offeset)78

draw_text_ext(x1+wid/2 + 5,y1+124,_print,25,wid - 100);
//draw_set_color(c_white);
//draw_text((x1+wid)/2,y1+8-1,_print);