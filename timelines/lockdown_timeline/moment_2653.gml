for(var i = -2; i <= 20; i++)
{
	var _shaking_circle = create_explo_circle(global.c_x,global.c_y+i*256,1+abs(i)*5,356,0,0,7,6,0,0)
	_shaking_circle.direction = 0
	_shaking_circle.sprite_index = spr_square
		
	var _shaking_circle = create_explo_circle(global.c_w,global.c_y+i*256,1+abs(i)*5,356,0,0,7,6,0,0)
	_shaking_circle.direction = 180
	_shaking_circle.sprite_index = spr_square
}

global.w_alpha = 1
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
global.lockdown_effect5 = 1
global.lockdown_effect6 = 0
lockdown_pattern_s_timer = 0;
lockdown_pattern_d_timer = 0;
lockdown_pattern_timer = 0

with(hitbox_3)
{
	if (object_index == hitbox_3 && target_time == 9999)
	{
		instance_destroy()
	}
}

lockdown_effect4_1 = 0
lockdown_effect5_1 = 0
lockdown_effect5_2 = 0
lockdown_effect5_3 = 0
master_bpm_timer = 0
global.map_speed_y = 0
global.t_map_speed_y = 15

if (global.total_died_here > 0)
{
	spike_ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-10,hitbox_8)
	spike_ef.t_x = room_width*0.5;
	spike_ef.t_y = room_height*0.5;
	spike_ef.image_xscale = 0;
	spike_ef.image_yscale = 0;
	spike_ef.sprite_index = spr_circle_spike
	
	pipe_ef = instance_create_depth(room_width*0.5,room_height*0.5,spike_ef.depth+1,hitbox_8)
	pipe_ef.t_x = -4;
	pipe_ef.t_y = spike_ef;
	pipe_ef.image_xscale = 0;
	pipe_ef.image_yscale = 0;
	pipe_ef.sprite_index = spr_pipe;
}

pipe_ef.direction = 360;
pipe_ef.image_angle = pipe_ef.direction;
spike_ef.direction = 360;
spike_ef.image_angle = spike_ef.direction;