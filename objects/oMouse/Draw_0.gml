/// @description Variables & Beginning
//Variables
draw_set_color(c_white);
draw_set_font(fnBasic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(mouse_x+20,mouse_y,"x: " + string(xMouselocation));
draw_text(mouse_x,mouse_y+20,"y: " + string(yMouselocation));
draw_sprite(sCursor,0,mouse_x,mouse_y);




