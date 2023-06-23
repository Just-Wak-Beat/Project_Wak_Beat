global.yuha_effect1 = 0
global.yuha_effect2 = 0
global.yuha_effect3 = 0


global.background_color = c_black
global.map_color = c_white
with(hitbox_parents)
{
	image_blend = c_white
}

var ins_tmp = -4;
while(true)
{
	var ins_tmp = instance_find(hitbox_9,irandom(instance_number(hitbox_9)-1));
	if (instance_exists(ins_tmp) && ins_tmp.des_time != 120)
	{
		break;
	}
}

if (instance_exists(ins_tmp))
{
	var dir = point_direction(ins_tmp.x,ins_tmp.y,room_width*0.5,room_height*0.5)
	if (abs(dir-270) <= 45)
	{
		dir = 270;
	}
	else if (abs(dir-90) < 45)
	{
		dir = 90;
	}
	else if (abs(dir-180) <= 45)
	{
		dir = 180;
	}
	else
	{
		dir = 0;
	}
				
	ins_tmp.t_speed = 48
	ins_tmp.direction = dir;
	ins_tmp.w_alpha = 2;
	ins_tmp.des_time = 120;
	ins_tmp.warning_timer = 120;
	ins_tmp.image_blend = #5595ff
	ins_tmp.depth -= 52
	create_laser(ins_tmp.x,ins_tmp.y,60,20,1,2,2,dir-90)
	global.w_alpha = 1
}