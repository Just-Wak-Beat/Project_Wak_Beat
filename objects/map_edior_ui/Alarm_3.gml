/// @description 탄막 값 수정후 재선택 해주기
// You can write your code in this editor



with(hitbox_parents)
{
	if (other.object_index != map_edior_ui.saved_obj_num && other.x == map_edior_ui.saved_hitbox_xx && other.y == saved_hitbox_yy && other.projectile_type == global.editor_selected_type)
	{
		if (other.m_data_arg0 == map_edior_ui.saved_param[0] && other.m_data_arg1 == map_edior_ui.saved_param[1] && other.m_data_arg2 == map_edior_ui.saved_param[2] && other.m_data_arg3 == map_edior_ui.saved_param[3] && other.m_data_arg4 == map_edior_ui.saved_param[4] && other.m_data_arg5 == map_edior_ui.saved_param[5] && other.m_data_arg6 == map_edior_ui.saved_param[6] && other.m_data_arg7 == map_edior_ui.saved_param[7] && other.m_data_arg8 == map_edior_ui.saved_param[8])
		{
			map_edior_ui.n_selected = other.id;
			map_edior_ui.n_selected.editor_selected = 1;
			global.editor_hitbox = 1;
		}
	}
}