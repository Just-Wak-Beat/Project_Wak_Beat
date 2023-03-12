/// @description Insert description here
// You can write your code in this editor
image_alpha = global.sync_setting_alpha
depth = obj_album_ui.depth-100
if global.sync_setting = 0 && global.sync_setting_alpha < 0.01
{
instance_destroy()
}

if sprite_index = spr_circle
{
image_xscale += (0.2 - image_xscale)*0.1
image_yscale += (0.2 - image_yscale)*0.1
}