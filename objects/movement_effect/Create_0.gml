/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_stage_clear))
{
	image_index = global.artifact_type*7
}
else
{
	image_index = global.player_skin*7
}
image_alpha = 0.8
w_alpha = 1.3+instance_number(obj_album_ui)

image_speed = 0
