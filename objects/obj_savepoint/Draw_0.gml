/// @description Insert description here
// You can write your code in this editor

if image_angle = 0
{
	for(var i = -5; i < 16; i++)
	{
		draw_sprite_ext(spr_end,0,x,i*227*global.n_camera_zoom*0.8,global.n_camera_zoom*0.8,global.n_camera_zoom*0.8,0,merge_color(global.player_color,c_white,0.5),1)
	}
}
else
{
	for(var i = -5; i < 21; i++)
	{
		draw_sprite_ext(spr_end,0,i*227*global.n_camera_zoom*0.8,y,global.n_camera_zoom*0.8,global.n_camera_zoom*0.8,90,merge_color(global.player_color,c_white,0.5),1)
	}
}