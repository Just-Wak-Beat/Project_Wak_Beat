/// @description Insert description here
// You can write your code in this editor




if (instance_number(obj_button) <= 1)
{
	for(var i = 0; i < 7; i++)
	{
		if (global.ed_arg_name[i] != "")
		{
			var buttom_ui = instance_create_depth(0,0,depth,obj_button);
			buttom_ui.button_id = 100+i;
			buttom_ui.sprite_index = (i == 6) ? spr_spuare_outline_full_mask : spr_square;
		}
	}
}


if (keyboard_check_pressed(ord("W")))
{
	event_user(0);
	activated = global.timeline_stop;
}

if (global.timeline_stop == 1)
{
	if (global.b_n_progress != floor(global.n_progress))
	{
		instance_destroy(hitbox_parents);
		global.b_n_progress = floor(global.n_progress);
		with(code)
		{
			event_user(11);
		}
	}
	
	if (keyboard_check(ord("A")))
	{
		if (keep_pressing == 0 || (keep_pressing > 40 && keep_pressing%3 == 0))
		{
			global.n_progress -= 1;
		}
		keep_pressing ++;
	}
	else if (keyboard_check(ord("D")))
	{
		if (keep_pressing == 0 || (keep_pressing > 40 && keep_pressing%3 == 0))
		{
			global.n_progress += 1;
		}
		keep_pressing ++;
	}
	else if (keyboard_check(ord("Q")))
	{
		if (keep_pressing == 0 || (keep_pressing > 40 && keep_pressing%3 == 0))
		{
			global.n_progress -= 60;
		}
		keep_pressing ++;
	}
	else if (keyboard_check(ord("E")))
	{
		if (keep_pressing == 0 || (keep_pressing > 40 && keep_pressing%3 == 0))
		{
			global.n_progress += 60;
		}
		keep_pressing ++;
	}
	else if (keyboard_check_pressed(ord("S")))
	{
		var plus_ind = 1;
		var minus_ind = 1;
		while(true)
		{
			var tmp_ind_m = fix_to_zero(global.n_progress+minus_ind);
			var tmp_ind_p = global.n_progress+plus_ind;
			if (tmp_ind_p > global.music_duration)
			{
				tmp_ind_p = global.music_duration;
			}
			
			
			if (global.n_progress != tmp_ind_m && global.n_progress != tmp_ind_p)
			{
				if (global.c_map_param[tmp_ind_m] != "")
				{
					global.n_progress = tmp_ind_m;
					break;
				}
				else if (global.c_map_param[tmp_ind_p] != "")
				{
					global.n_progress = tmp_ind_p;
					break;
				}
			}
			
			if (tmp_ind_m == 0 && tmp_ind_p == global.music_duration)
			{
				show_message_log("(가장 가까운 타임라인을 찾을 수 없습니다)");
				break;
			}
			plus_ind ++;
			minus_ind --;
		}
	}
	else
	{
		keep_pressing = 0;
	}
	
	if (global.n_progress > global.music_duration)
	{
		global.n_progress = global.music_duration;
	}
	else if (global.n_progress < 0)
	{
		global.n_progress = 0;
	}	
}