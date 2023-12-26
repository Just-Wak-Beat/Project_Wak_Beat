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
}