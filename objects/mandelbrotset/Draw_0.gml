/// @description Insert description here
// You can write your code in this editor
//Variables
draw_set_color(c_white);
draw_set_font(fnBasic12);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(mouse_x+20,mouse_y,"x: " + string(mouselocation[0]));
draw_text(mouse_x,mouse_y+20,"y: " + string(mouselocation[1]));
draw_set_color(c_red);
draw_circle(mouse_x,mouse_y,2,0);






