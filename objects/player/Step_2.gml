/// @description Insert description here
// You can write your code in this editor

if invincibility_cooltime > 0
{
	invincibility_cooltime -= (2-global.t_selected_difficulty)
}
else
{
	show_invincibility = 0
}


if invincibility_cooltime <= 0 && global.hp > 0 && (global.t_w_alpha < 1 || global.w_alpha < 0.9)
{
	//for(var i = 1; i <= abs(global.hmove_speed)+1; i++)
	//{
		//for(var ii = 1; ii <= abs(global.vmove_speed)+1; ii++)
		//{
			var i = 1
			var ii = 1
			var _placed_obj = instance_place(x+i*sign(global.hmove_speed),y+ii*sign(global.vmove_speed),hitbox_parents)
			if instance_exists(_placed_obj) && _placed_obj.image_alpha >= 0.95
			{
				hurt = _placed_obj
				hurt_hspeed = global.hmove_speed
				hurt_vspeed = global.vmove_speed
			
			
				if invincibility_cooltime != 90
				{
				w_alpha = 2
				global.hp -= sign(global.show_progress_bar)
				invincibility_cooltime = 90
				show_invincibility = 1
				audio_play_sound(hit_sfx,0,false,global.master_volume*global.sfx_volume*6)
			
					repeat(irandom_range(8,10))
					{
					var random_x = irandom_range(-24,24)
					var random_y = irandom_range(-24,24)
					var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
					effect_.image_xscale = 0.3
					effect_.image_yscale = 0.3
					effect_.direction = point_direction(x,y,x+random_x,y+random_y)
					effect_.speed = 24
					effect_.image_blend = global.player_color
					}
				}
				//break;
				//break;
			//}
		//}
	}
}


if hurt != -4
{
	if hurt_hspeed = 0 && hurt_vspeed = 0
	{
		hurt_hspeed = choose(0,1)
		hurt_vspeed = choose(0,1)
	}
	
	if hurt_hspeed != 0 || hurt_vspeed != 0
	{
		global.hmove_speed = -sign(hurt_hspeed)*32
		global.vmove_speed = -sign(hurt_vspeed)*32
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