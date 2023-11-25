/// @description Insert description here
// You can write your code in this editor
var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])



if global.n_map_list != 2
{
	if (sprite_index != spr_album)
	{
		sprite_index = spr_album
		image_scale = 1;
		sprite_set_offset(sprite_index,256,256)
	}
	image_index = global.n_map_id+2
}
else
{
	if (global.n_map_id != global.b_n_map_id)
	{
		var tmp_spr = global.custom_stage_album[global.n_map_id];
		var spr_width = sprite_get_width(global.custom_stage_album[global.n_map_id]);
		var spr_height = sprite_get_height(global.custom_stage_album[global.n_map_id]);
		var max_sprite_size = (spr_width > spr_height) ? spr_width : spr_height;
		var cal_val = 512/max_sprite_size;
		image_scale = cal_val;
		if (image_scale <= 1 && image_scale > 0)
		{
			sprite_index = tmp_spr;
			global.b_n_map_id = global.n_map_id;
			sprite_set_offset(tmp_spr,spr_width*0.5,spr_height*0.5)
		}	
	}
	
	if (image_scale < 0 || image_scale > 1)
	{
		global.b_n_map_id = -4;
		image_scale = 0;
	}
}




x = global.c_x+916-global.mobile_mode*64
depth = code.depth-100
image_alpha = global.ui_alpha
if (global.title_menu_animation2 == 1 && global.total_map > 0)
{
	if instance_exists(code) && code.gamestart = 1
	{
		y += (yy+yy_h*2 - y)*0.1
		timer ++

		if timer > 120
		{
			instance_destroy()
		}
	}
	y += (yy+yy_h*0.485-sin(yy_shake_effect)*50 - y)*0.1
	if (abs(image_yscale - 1.5+global.mobile_mode*0.3) < 0.1)
	{
		yy_shake_effect += 0.05;
	}
	else
	{
		yy_shake_effect = 0;
	}

	image_xscale += (1.5+global.mobile_mode*0.3 - image_xscale)*0.16
	image_yscale += (1.5+global.mobile_mode*0.3 - image_yscale)*0.16
	image_angle += (5+angle_moving - image_angle)*0.1
	w_alpha += (0 - w_alpha)*0.1
	w_alpha_bg += (0 - w_alpha_bg)*0.1
	heart_alpha += (-0.01 - heart_alpha)*0.1

	if angle_moving_timer%2 = 0
	{
		angle_moving += (3 - angle_moving)*0.03
	}
	else
	{
		angle_moving += (-3 - angle_moving)*0.03
	}
}
else
{
	y = room_height
	image_xscale = 0
	image_yscale = 0
	image_angle = 0
}


if ((global.highlight_time <= 1240 && global.highlight_time > 30 && global.show_title_menu == 0) || (global.show_title_menu > 0 && beating_animation == 1) || global.overtime_highlight_song == 1) && code.gamestart != 1 && code.gamestart != 2 && code.gamestart != 2 && code.gamestart != 3
{
	bpm_timer ++

	
	if bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
	{
		if (global.title_menu_animation2 == 1)
		{
			audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume*power(global.show_title_menu,10)*loading_now,0.13)
		}
		
		angle_moving_timer++
		global.background_w_alpha = 0.05
		
		if angle_moving_timer%2 == 0
		{
			w_alpha_bg = 0.6
			
			if (global.n_map_id >= 0 && (global.n_rank[global.n_map_id] == "S+" || global.n_rank[global.n_map_id] == "Perfect!"))
			{
				var _ef = instance_create_depth(x,y,depth+2,explosion_effect)
				_ef.image_index = 6
				_ef.image_xscale = 2
				_ef.image_yscale = 2
				_ef.t_scale = 5
				_ef.image_blend = c_white
			}
			
			for(var i = 0; i < 360; i += 25)
			{
				var random_dir = i+image_angle
				var effect_ = instance_create_depth(x+lengthdir_x(image_xscale*250,random_dir),y+lengthdir_y(image_xscale*250,random_dir),depth+1,movement_effect)
				effect_.image_xscale = 0.3
				effect_.image_yscale = 0.3
				effect_.direction = random_dir
				effect_.speed = 16
				effect_.image_blend = global.map_color
			}
			
			repeat(irandom_range(8,10)*5)
			{
				var random_dir = irandom_range(0,359)
				var effect_ = instance_create_depth(x+lengthdir_x(image_xscale*250,random_dir),y+lengthdir_y(image_xscale*250,random_dir),depth+1,movement_effect)
				effect_.image_xscale = 0.3
				effect_.image_yscale = 0.3
				effect_.direction = random_dir
				effect_.speed = 16
				effect_.image_blend = global.map_color
			}
		}
		
		instance_create_depth(global.c_w-640,global.c_y+yy_h*0.47,code.depth-50,circle_effect)
	
		
		if global.select_difficulty > 0.1
		{
			var xx = camera_get_view_x(view_camera[0])
			var xx_w = camera_get_view_width(view_camera[0])
		
			repeat(irandom_range(40,50))
			{
				var random_dir = irandom_range(0,359);
				var middle_yy = yy+yy_h*0.5+lengthdir_y(image_xscale*340,random_dir);
				if global.t_selected_difficulty == 1
				{
					var xx__ = xx+xx_w*0.32+lengthdir_x(image_xscale*340,random_dir);
				}
				else
				{
					var xx__ = xx+xx_w*0.68+lengthdir_x(image_xscale*340,random_dir);
				}
			

				var effect_ = instance_create_depth(xx__,middle_yy,depth-10,movement_effect)
				effect_.image_xscale = 0.3
				effect_.image_yscale = 0.3
				effect_.direction = random_dir
				effect_.speed = 16
				effect_.image_blend = c_white
			}
		}
		image_xscale *= 0.8
		image_yscale *= 0.8
		w_alpha = 1
		bpm_timer -= (3600/global.bpm)+global.music_sync_offset*3*60
	}
}

if (global.highlight_time > 1240)
{
	angle_moving_timer = 0
}
