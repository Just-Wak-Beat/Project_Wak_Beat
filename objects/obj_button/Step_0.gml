/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_album_ui)
{
	depth = obj_album_ui.depth-100
}
else
{
	depth = code.depth-100
}



if (global.sync_setting = 0 && global.sync_setting_alpha < 0.01)
{
	instance_destroy()
}

if sprite_index = spr_circle
{
	image_xscale += (0.2 - image_xscale)*0.1
	image_yscale += (0.2 - image_yscale)*0.1
}


if (global.n_setting_button != -4 && global.n_setting_button != button_id)
{
	image_alpha += (0.2*global.sync_setting_alpha - image_alpha)*0.2
}
else
{
	image_alpha += (global.sync_setting_alpha - image_alpha)*0.2
}

