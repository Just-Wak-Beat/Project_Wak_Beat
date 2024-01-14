/// @description Insert description here
// You can write your code in this editor
if (global.play_custom_map != 1 && global.n_map_list != 2)
{
	image_index = (sprite_index == spr_player) ? global.artifact_type*7 : global.artifact_type;
}



spin_rad += 10


for(var i = 6; i < 32; i++)
{
	xx[i] += (lengthdir_x(60+image_xscale*32,spin_rad*0.5) - xx[i])*0.02*i
	yy[i] += (lengthdir_y(60+image_xscale*32,spin_rad*0.5) - yy[i])*0.02*i

	xx[i] = floor(xx[i])
	yy[i] = floor(yy[i])


	xx2[i] += (lengthdir_x(76+image_xscale*32,-spin_rad) - xx2[i])*0.02*i
	yy2[i] += (lengthdir_y(76+image_xscale*32,-spin_rad) - yy2[i])*0.02*i

	xx2[i] = floor(xx2[i])
	yy2[i] = floor(yy2[i])



	xx3[i] += (lengthdir_x(60+image_xscale*32,spin_rad*0.5+180) - xx3[i])*0.02*i
	yy3[i] += (lengthdir_y(60+image_xscale*32,spin_rad*0.5+180) - yy3[i])*0.02*i

	xx3[i] = floor(xx3[i])
	yy3[i] = floor(yy3[i])
}



timer ++

if (touched == 0 && timer > (global.bpm/3600)*2000)
{
	t_speed -= 0.001
}




if (touched == 0)
{
	if (timer > (3600/global.bpm))
	{
		timer -= (3600/global.bpm)
		if t_speed != 10
		{
			image_angle = 360*choose(-1,1)
			t_speed = 10
			w_alpha = 1
				
			if (point_distance(x,y,room_width*0.5,room_height*0.5) > 200)
			{
				var tmp = point_direction(x,y,room_width*0.5,room_height*0.5);
				t_angle = tmp
				timer -= (3600/global.bpm)
			}
			else
			{
				t_angle = irandom_range(0,359)
			}
		}
		image_xscale = 0.25
		image_yscale = 0.25
	}

	if (global.tutorial_now > 0)
	{
		timer_del += (instance_exists(hitbox_parents)) ? 1 : 0;
		y += (room_height*0.5 - y)*0.05
		x += (global.c_w-200 - x)*0.05
	}
	else
	{
		speed += (t_speed - speed)*0.01
		direction += (t_angle - direction)*0.01
	}
	image_xscale += (0.2 - image_xscale)*0.1
	image_yscale += (0.2 - image_yscale)*0.1
	image_angle += (0 - image_angle)*0.03
}
w_alpha += (0 - w_alpha)*0.01
	



if (touched == 0 && global.hp > 0 && place_meeting(x,y,obj_player))
{
	global.savepoint_text_t_alpha = -0.01
	var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
	_ef.image_xscale = 1
	_ef.image_yscale = 1
	_ef.t_scale = 2
	_ef.image_blend = global.player_color
	speed = 0
	t_speed = 0
	if (play_unlock_animation == 0)
	{
		gravity = 0.6
		vspeed = -32
	}
	image_angle = 0

	obj_camera.x += room_width*0.5-obj_player.x;
	obj_camera.y += room_height*0.5-obj_player.y;
	obj_player.x = room_width*0.5;
	obj_player.y = room_height*0.5;
	x = room_width*0.5;
	y = room_height*0.5;
	can_play_animation = -1

	repeat(irandom_range(8,10))
	{
		var random_x = irandom_range(-16,16)
		var random_y = irandom_range(-16,16)
		var effect_ = instance_create_depth(room_width*0.5+random_x,room_height*0.5+random_y,depth+1,movement_effect)
		effect_.image_xscale = 0.3
		effect_.image_yscale = 0.3
		effect_.direction = point_direction(room_width*0.5,room_height*0.5,room_width*0.5+random_x,room_height*0.5+random_y)
		effect_.speed = 16
		effect_.image_blend = color_sec
	}
	
	event_user(0)
}
