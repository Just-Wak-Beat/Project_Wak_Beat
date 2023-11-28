/// @description Insert description here
// You can write your code in this editor

if (timeline_running == false)
{
	image_alpha += (10 - image_alpha)*0.03;
}

if (obj_player.image_xscale <= 0 || global.hp <= 0 || global.hp <= my_id)
{
	x = obj_player.x;
	y = obj_player.y;
	image_alpha = 0;
}
else
{
	image_blend = global.player_color;
	if (obj_player.invincibility_cooltime <= 0)
	{
		image_alpha += (-0.01 - image_alpha)*0.1;
	}

	if (my_id != 0)
	{
		var target = parent_id.id_num[my_id-1];
		var xx = target.x;
		var yy = target.y;
	
		speed = fix_to_zero(point_distance(x,y,xx,yy)-80);
		image_angle = point_direction(x,y,xx,yy);
		direction = point_direction(x,y,xx,yy);
	}
	else
	{
		var tmp_dir = point_direction(x,y,obj_player.x,obj_player.y);
		direction = tmp_dir;
		image_angle = tmp_dir;
		speed = fix_to_zero(point_distance(x,y,obj_player.x,obj_player.y)-80);
	}
}