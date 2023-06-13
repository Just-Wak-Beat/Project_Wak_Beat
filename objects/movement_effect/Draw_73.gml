/// @description Insert description here
// You can write your code in this editor







if instance_exists(obj_album_ui) && depth < obj_album_ui.depth+10
{
	shader_set(shFlash)
	draw_self()
	shader_reset()
}