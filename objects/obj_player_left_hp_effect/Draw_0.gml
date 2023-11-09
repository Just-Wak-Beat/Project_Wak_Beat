/// @description Insert description here
// You can write your code in this editor


if (image_alpha > 0)
{
	shader_set(shFlash)
	draw_sprite_ext(spr_player,(global.player_skin*7),x,y,image_xscale*0.3,image_yscale*0.3,image_angle,merge_color(image_blend,c_white,0.9),image_alpha)
	shader_reset()
}