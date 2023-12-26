/// @description Insert description here
// You can write your code in this editor


if (audio_is_playing(lockdown) && global.map_speed_y <= 1 && instance_exists(hitbox_8) && !variable_instance_exists(id,"none_color_change"))
{
	draw_set_color(global.map_color)
	draw_set_alpha(0.3)
	draw_line_width(x,y,hitbox_8.x,hitbox_8.y,4)
}

if (sprite_index == spr_circle_spike2)
{
	draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,merge_color_new(image_blend,c_black,0.5),image_alpha)
}


if (image_alpha >= 1)
{
	if (!variable_instance_exists(id,"none_color_change") && circle_w_alpha > 0 && sprite_index != spr_rain)
	{
		draw_sprite_ext(spr_circle,image_index,x,y,(image_xscale*circle_ef_xscale)/16,(image_yscale*circle_ef_xscale)/16,image_angle,merge_color_new(image_blend,(get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white,fix_num(circle_w_alpha)),1)
	}

	draw_self()
	if w_alpha > 0
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	}
}




