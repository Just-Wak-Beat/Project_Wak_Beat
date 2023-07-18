/// @description Insert description here
// You can write your code in this editor




if instance_exists(obj_album_ui) && depth < obj_album_ui.depth+10
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*0.5*global.font_ratio_resolution_xx,image_yscale*0.5,image_angle,image_blend,image_alpha)
}