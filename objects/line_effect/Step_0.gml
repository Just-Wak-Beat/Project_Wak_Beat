/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop != 1)
{
	x -= global.map_speed
	y += global.map_speed_y


	image_xscale += (-0.1 - image_xscale)*0.1;
	if (image_xscale <= 0)
	{
		instance_destroy()
	}
}