/// @description Insert description here
// You can write your code in this editor

if (del_current_timeline > 0)
{
	del_current_timeline -= 0.01;
}

if (del_all_timeline > 0)
{
	del_all_timeline -= 0.01;
}


/*if (global.dev_mode == 1)
{
	if (mouse_wheel_up())
	{
		global.n_camera_zoom += 0.1;
	}
	else if (mouse_wheel_down())
	{
		global.n_camera_zoom -= 0.1;
	}
}*/




if (global.revalued_projectile_save == 2)
{
	saved_hitbox_xx = n_selected.x;
	saved_hitbox_yy = n_selected.y;
	saved_obj_num = n_selected.object_index;
	for(var i = 0; i <= 8; i++)
	{
		saved_param[i] = variable_instance_get(n_selected,"m_data_arg"+string(i));
	}
	
	
	with(code)
	{
		event_user(10);
	}
	
	//모든 탄막 삭제 후 재로드
	instance_destroy(hitbox_parents);
	with(code)
	{
		event_user(11);
	}
	
	alarm[3] = 5;
	global.revalued_projectile_save = 0;
}


if (instance_exists(n_selected))
{
	if (variable_instance_exists(n_selected,"projectile_type"))
	{
		n_selected.editor_selected = 1;
		global.editor_selected_type = n_selected.projectile_type;
		global.ed_arg[0] = n_selected.m_data_arg0;
		global.ed_arg[1] = n_selected.m_data_arg1;
		global.ed_arg[2] = n_selected.m_data_arg2;
		global.ed_arg[3] = n_selected.m_data_arg3;
		global.ed_arg[4] = n_selected.m_data_arg4;
		global.ed_arg[5] = n_selected.m_data_arg5;
		global.ed_arg[6] = n_selected.m_data_arg6;
		global.ed_arg[7] = n_selected.m_data_arg7;
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("C")))
	{
		clean_message_log();
		show_message_log("탄막 정보가 복사되었습니다!");
		global.editor_selected_type = n_selected.projectile_type;
		global.ed_arg[0] = n_selected.m_data_arg0;
		global.ed_arg[1] = n_selected.m_data_arg1;
		global.ed_arg[2] = n_selected.m_data_arg2;
		global.ed_arg[3] = n_selected.m_data_arg3;
		global.ed_arg[4] = n_selected.m_data_arg4;
		global.ed_arg[5] = n_selected.m_data_arg5;
		global.ed_arg[6] = n_selected.m_data_arg6;
		global.ed_arg[7] = n_selected.m_data_arg7;
		global.copied_img = n_selected.sprite_index;
		
		//global.ed_arg값이 obj_button에도 적용될려면 global.value_set_arg = 1 선언 해줘야 함
		global.value_set_arg = 1;
		
		global.editor_hitbox = -1;
		n_selected.editor_selected = -1;
		custom_image_type = 3;
		n_selected = -4;
	}
}





if (global.value_set_arg == 1)
{
	with(obj_button)
	{
		if (object_index == map_edior_ui)
		{
			var tmp_arr_ind = other.button_id-100;
			var tmp_val_cal2 = ((global.ed_arg[tmp_arr_ind]/(global.ed_arg_max_val[tmp_arr_ind])*50)+50)*global.ed_arg_divide[tmp_arr_ind];
			other.scroll_value = tmp_val_cal2;
		}
	}

	global.value_set_arg = 0;
}



