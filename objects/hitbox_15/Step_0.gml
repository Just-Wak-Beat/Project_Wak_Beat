/// @description Insert description here
// You can write your code in this editor
w_alpha += (0 - w_alpha)*0.1

if my_id != 0
{
	var target = parent_id.id_num[my_id-1];
	var xx = target.x;
	var yy = target.y;
	
	speed = point_distance(x,y,xx,yy)-sprite_width*0.89
	speed = (speed < 0) ? 0 : speed;

	image_angle = point_direction(x,y,xx,yy)+35
	direction = point_direction(x,y,xx,yy)
}
else
{
	direction = dir
	image_angle = dir+35
	
	if auto_shake != 0
	{
	timer ++;
	dir += auto_shake;
		if timer > image_xscale*240
		{
			auto_shake *= -1
			timer = 0;
		}
	}
	
	if global.dev_mode == 1
	{
		if keyboard_check(ord("C"))
		{
			dir = point_direction(x,y,mouse_x,mouse_y)
		}
	}
}