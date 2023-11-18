/// @description Insert description here
// You can write your code in this editor
w_alpha += (0 - w_alpha)*0.3

if (global.timeline_stop != 1)
{
	if (my_id != 0)
	{
		var target = parent_id.id_num[my_id-1];
		var xx = target.x;
		var yy = target.y;
	
		speed = point_distance(x,y,xx,yy)-sprite_width*0.89
		speed = fix_to_zero(speed);

		image_angle = point_direction(x,y,xx,yy)+35
		direction = point_direction(x,y,xx,yy)
	}
	else
	{
		direction = dir
		image_angle = dir+35
		speed = speed_;

		if (auto_shake != 0)
		{
			timer ++;
			dir += auto_shake;
			if timer >= 60
			{
				auto_shake *= -1
				timer -= 60;
			}
		}
	}


	if des_time > 0
	{
		des_time += (image_xscale/sprite_width)/5
	}
}


