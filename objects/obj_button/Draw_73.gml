/// @description Insert description here
// You can write your code in this editor

if sprite_index = spr_circle
{
draw_sprite_ext(spr_circle_outline,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(spr_circle,0,x,y,image_xscale*0.35,image_yscale*0.35,0,global.player_color,image_alpha)
}

if sprite_index = spr_square
{
draw_sprite_ext(spr_square,0,x,y,image_xscale*80,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(spr_square,0,x+image_xscale*64*((scroll_value/100)*80-40),y,0.2*1.6,image_yscale*5,0,global.player_color,image_alpha)
}

//if global.n_setting_button = button_id
//{
//draw_text(mouse_x,mouse_y,image_alpha)
//}