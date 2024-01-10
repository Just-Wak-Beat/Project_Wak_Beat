/// @description Insert description here
// You can write your code in this editor
var i = 1;
var ii = 1;

var _placed_obj = instance_place(x+i*sign(global.hmove_speed),y+ii*sign(global.vmove_speed),hitbox_22);
global.in_safe_zone = (instance_exists(_placed_obj)) ? _placed_obj : -4;

if (global.map_editor != 1)
{
	if (global.hp > 0 && (global.w_alpha <= 0.8) && (!instance_exists(obj_stage_clear) || (instance_exists(obj_stage_clear) && obj_stage_clear.touched <= 0)))
	{
		var _placed_obj = instance_place(x+i*sign(global.hmove_speed),y+ii*sign(global.vmove_speed),hitbox_parents);
		if (instance_exists(_placed_obj) && _placed_obj.image_alpha >= 0.95 && _placed_obj.object_index != hitbox_22)
		{
			if (invincibility_cooltime <= 0)
			{
				hurt = _placed_obj;
				hurt_hspeed = global.hmove_speed;
				hurt_vspeed = global.vmove_speed;
			
				with(obj_player_left_hp_effect)
				{
					image_alpha = 10;
				}
			
			
				if (!percentage_k(global.ignore_damage))
				{
					if (global.additional_hp <= 0)
					{
						global.total_damaged ++;
						global.hp -= 1;
					}
					else
					{
						global.additional_hp --;
					}
				}
				
				
				kirakira_effect = 1;
				w_alpha = 2;
				global.blackout_alpha = 1;
				invincibility_cooltime = 150+global.addition_invinc_time;
				show_invincibility = 1;
				audio_play_sound(hit_sfx,0,false,global.master_volume*global.sfx_volume*6);
			
				repeat(irandom_range(4,5))
				{
					var random_x = irandom_range(-24,24)
					var random_y = irandom_range(-24,24)
					var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
					effect_.image_xscale = 0.6
					effect_.image_yscale = 0.6
					effect_.direction = point_direction(x,y,x+random_x,y+random_y)
					effect_.speed = 24
					effect_.image_angle = image_angle
					effect_.image_blend = global.player_color
					effect_.image_alpha = 0.5;
				}
			}
			else
			{
				if (global.dashing > 0 && crossed_obstacle_cooldown = 0)
				{
					global.crossed_obstacle_num ++;
					global.rank_display_b_alpha = 1;
					crossed_obstacle_cooldown = 1;
					alarm[1] = 11
				}
			}
		}
	}
}


if hurt != -4
{
	if hurt_hspeed = 0 && hurt_vspeed = 0
	{
		hurt_hspeed = sign_nonzero(hurt.x - x);
		hurt_vspeed = sign_nonzero(hurt.y - y);
	}
	
	if (hurt_hspeed != 0 || hurt_vspeed != 0)
	{
		global.hmove_speed = -sign(hurt_hspeed)*8
		global.vmove_speed = -sign(hurt_vspeed)*8
	}

	global.cannot_control = 1

	hurt_coolitme ++

	if hurt_coolitme >= 10
	{
		hurt = -4
		global.cannot_control = 0
		hurt_coolitme = 0
	}
}

if (kirakira_effect > 0)
{
	if (kirakira_effect%15)
	{
		kirakira_alpha *= -1;
	}
	
	kirakira_effect ++
	if (kirakira_effect > 120)
	{
		kirakira_effect = 0;
		kirakira_alpha = -1;
	}
}