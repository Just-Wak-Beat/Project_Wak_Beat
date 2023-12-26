/// @description 탄막 수정 이벤트
// You can write your code in this editor

with(obj_button)
{
	if (button_id >= 100)
	{
		instance_destroy();
	}
}





tmp_arr_ind_ins_list = 0;
for (var i = 0; i < instance_count; i++;)
{
	var target_ins = instance_id[i];
	

	if (instance_exists(target_ins))
	{
		//예외 탄막 (지렁이 탄막처럼 본체 id가 따로 있는 경우)
		var exception_ins = 0;
		if (target_ins.object_index == hitbox_15)
		{
			exception_ins = target_ins.my_id;
		}
	
	    if (exception_ins == 0 && object_get_parent(target_ins.object_index) == hitbox_parents)
	    {
			target_ins.editor_selected = 0;
			if (point_distance(mouse_x,mouse_y,target_ins.x,target_ins.y) < 128)
			{  
				ins_list[tmp_arr_ind_ins_list] = target_ins;
				tmp_arr_ind_ins_list ++;
				show_debug_message("queue added!");
			}
		}
	}
}


if (tmp_arr_ind_ins_list == 0)
{
	var tmp_ins_near = instance_nearest(mouse_x,mouse_y,hitbox_parents);
	if (instance_exists(tmp_ins_near))
	{
		n_selected = tmp_ins_near;
		global.editor_hitbox = 1;
	}
	else
	{
		global.editor_hitbox = -1;
		n_selected = -4;
	}
}
else
{
	n_selected = ins_list[irandom_range(0,tmp_arr_ind_ins_list-1)];
	show_debug_message("n_selected"+string(instance_exists(n_selected))+" / "+string(ins_list));
	global.editor_hitbox = 1;
}


if (instance_exists(n_selected))
{
	global.selected_animation = 0;
	n_selected.editor_selected = 1;
	if (variable_instance_exists(n_selected,"projectile_type"))
	{
		audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume);
		global.editor_selected_type = n_selected.projectile_type;
		global.ed_arg[0] = n_selected.m_data_arg0;
		global.ed_arg[1] = n_selected.m_data_arg1;
		global.ed_arg[2] = n_selected.m_data_arg2;
		global.ed_arg[3] = n_selected.m_data_arg3;
		global.ed_arg[4] = n_selected.m_data_arg4;
		global.ed_arg[5] = n_selected.m_data_arg5;
		global.ed_arg[6] = n_selected.m_data_arg6;
		global.ed_arg[7] = n_selected.m_data_arg7;
		global.editor_hitbox = -1;
		alarm[2] = 5;
	}
	
	selected_projectile_type = 1;
	global.ed_arg_name[0] = "";
	global.ed_arg_name[1] = "";
	global.ed_arg_name[2] = "";
	global.ed_arg_name[3] = "";
	global.ed_arg_name[4] = "";
	global.ed_arg_name[5] = "";
	global.ed_arg_name[6] = "";
	clean_message_log();
	show_message_log("선택된 탄막은 [Delete]키를 눌러 삭제 가능하며,");
	show_message_log("우측의 스크롤 바를 통해 기존 값을 수정할 수 있습니다");
}

