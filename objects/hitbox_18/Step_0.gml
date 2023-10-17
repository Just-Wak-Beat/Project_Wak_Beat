/// @description Insert description here
// You can write your code in this editor
timer ++;
if (timer == t_timer)
{
	image_alpha = 1
	speed = t_speed
	
	if (audio_is_playing(lockdown))
	{
		alarm[1] = 1
	}
	
	if (attack_effect == true)
	{
		repeat(irandom_range(7,10))
		{
			var random_x = irandom_range(-24,24);
			var random_y = irandom_range(-24,24);
			var effect_ = instance_create_depth(x+random_x,y+random_y,obj_player.depth-15,movement_effect);
			effect_.image_xscale = 0.07;
			effect_.image_yscale = 0.07;
			effect_.direction = direction;
			effect_.speed = 24;
			effect_.image_blend = global.map_color;
			effect_.sprite_index = spr_circle;
			effect_.image_alpha = 2;
		}
	}
}

if (timer >= t_timer)
{
	
	image_angle = direction-135;
	speed += (0 - speed)*0.05;

	if (speed < 15)
	{
		speed += (0 - speed)*0.1;
		image_alpha += (-0.01 - image_alpha)*0.2
		if (image_alpha <= 0)
		{
			instance_destroy();
		}
	}

	dis += speed;
	if (dis >= image_xscale*170 && speed > 15)
	{
		var dis_cre = image_xscale*170;
		var tmp_xx = xstart+lengthdir_x(dis_cre*create_arrow_effect,direction);
		var tmp_yy = ystart+lengthdir_y(dis_cre*create_arrow_effect,direction);
		var ins_temp = instance_create_depth(tmp_xx,tmp_yy,depth+1,hitbox_7);
		ins_temp.sprite_index = sprite_index;
		ins_temp.image_angle = image_angle;
		ins_temp.image_xscale = image_xscale;
		ins_temp.image_yscale = image_yscale;
		ins_temp.scale_down = -speed;
		ins_temp.t_x = tmp_xx;
		ins_temp.t_y = tmp_yy;
		ins_temp.alarm[1] = 1;
	
		dis -= image_xscale*170;
		create_arrow_effect++;
	}
}



