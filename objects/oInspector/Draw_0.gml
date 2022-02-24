draw_self();
draw_sprite_ext(item.sp_index,0,x - sprite_width/3,y - sprite_height/2,5,5,0,c_white,1);
DrawSetText(c_yellow,fText,fa_center,fa_middle);
draw_text_transformed(x + sprite_height/3,y - sprite_height/2,string(item.cost),3,3,0);