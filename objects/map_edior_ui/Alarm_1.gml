/// @description 탄막 설치 이벤트
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);


if (global.n_setting_button == -4 && global.timeline_stop == 1)
{
	if ((activated == 1 && mouse_y > yy+170 && mouse_y < yy+yy_h-250 && mouse_x < xx+xx_w-1280) || activated == -1)
	{
		if (global.editor_hitbox == 1)
		{
			event_user(1);
		}
		else
		{
			if (is_real(global.editor_selected_type) && global.editor_selected_type >= 0)
			{
				//탄막 타입 기준으로 탄막 생성
				editor_mode_create_projectile(global.editor_selected_type,t_m_x,t_m_y,global.ed_arg[0],(global.editor_selected_type == 11) ? 1 : global.ed_arg[1],global.ed_arg[2],global.ed_arg[3],global.ed_arg[4],global.ed_arg[5],global.ed_arg[6],custom_image_type,custom_image_ind);
				with(code)
				{
					event_user(10);
				}
			}
		}
	}
	else
	{
		if (!audio_is_playing(setting_scroll_sfx))
		{
			show_message_log("(창 뒷부분을 선택하려면 Enter키를 눌러 에디터 창을 닫아주세요)");
		}
	}
}
else
{
	show_message_log("(탄막 배치전, Enter키를 눌러 일시정지 상태로 만들어주세요)");
}