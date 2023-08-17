/// @description Insert description here
// You can write your code in this editor


if (audio_is_playing(lockdown) && global.map_speed_y <= 1 && instance_exists(hitbox_8))
{
	draw_set_color(global.map_color)
	draw_set_alpha(0.3)
	draw_line_width(x,y,hitbox_8.x,hitbox_8.y,4)
}

draw_self()
if w_alpha > 0
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}


