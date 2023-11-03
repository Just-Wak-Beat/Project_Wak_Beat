/// @description Insert description here
// You can write your code in this editor
if (global.timeline_stop != 1)
{
	if (variable_instance_exists(id,"ed_arg2"))
	{
		image_angle += ed_arg3
		if time%(1+ed_arg4) == 0
		{
			create_projectile(x,y,image_xscale,ed_arg3,lengthdir_x(ed_arg2,image_angle),lengthdir_y(ed_arg2,image_angle),0,0,sprite_index)
		}

		time ++
		if time >= ed_arg5 || image_xscale <= 0
		{
			instance_destroy()
		}
	}
	else
	{
		image_angle += spin_angle
		if time%(create_delay) == 0
		{
			create_projectile(x,y,image_xscale,spin_angle,lengthdir_x(_speed,image_angle),lengthdir_y(_speed,image_angle),0,0,sprite_index)
		}

		time ++
		image_xscale -= scale_down
		if time >= target_time || image_xscale <= 0
		{
			instance_destroy()
		}
	}
}