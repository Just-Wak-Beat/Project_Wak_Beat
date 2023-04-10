/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed
y += global.map_speed_y


direction += (image_angle - direction)*0.005



if stop_create > 0
{
stop_create++
}
else
{
	var _image_scale = 512
	if x+_image_scale < global.c_x || x-_image_scale > global.c_w || y+_image_scale < global.c_y || y-_image_scale > global.c_h
	{
		stop_create = 1
	}
}


if stop_create < 60
{
	if timer%floor(target_time) = 0
	{
		var t_ins__ = (sprite_index != spr_circle) ? hitbox_9 : hitbox_4;
		var laser__ = instance_create_depth(x,y,player.depth-1,t_ins__)
		laser__.target_time = target_time
		laser__.des_time = des_time
		laser__.shake_scale = shake_scale
		laser__.shake_dir = shake_dir
		laser__.image_xscale = image_xscale
		laser__.image_yscale = image_yscale
		laser__.t_scale = t_scale;
		laser__.image_angle = direction
		if (sprite_index = spr_circle)
		{
			laser__.falling_vspeed = 0;
			laser__.falling_hspeed = 0;
			laser__.shake_speed = 0;
			laser__.shake_movement = 0;
		}
	}
}


timer++
