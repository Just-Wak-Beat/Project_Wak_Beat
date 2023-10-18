/// @description Insert description here
// You can write your code in this editor

if (global.rewind >= 162)
{
	speed += (0 - speed)*0.02
	image_alpha += (1 - image_alpha)*0.1
	image_xscale += (1 - image_xscale)*0.05
	image_yscale += (1 - image_yscale)*0.05
	if (global.rewind <= 200)
	{
		x += (obj_player.died_xx - x)*0.08;
		y += (obj_player.died_yy - y)*0.08;
	}
	else
	{
		if global.respawn_point_xx != -4
		{
			x += (global.respawn_point_xx - x)*0.08;
			y += (global.respawn_point_yy - y)*0.08;
		}
		else
		{
			x += (room_width*0.5 - x)*0.08;
			y += (room_height*0.5 - y)*0.08;
		}
	}
	
	
	if (abs(x-obj_player.died_xx) < 0.1 || (global.rewind > 220 && place_meeting(x,y,dead_explosion) && can_des_me > 4))
	{
		instance_destroy()
	}
}
else
{
	speed += (0 - speed)*0.02
	image_alpha += (-0.01 - image_alpha)*0.1
	image_xscale += (-0.01 - image_xscale)*0.05
	image_yscale += (1 - image_yscale)*0.05
	if (image_xscale <= 0.01 || image_alpha <= 0.01)
	{
		instance_destroy()
	}
}