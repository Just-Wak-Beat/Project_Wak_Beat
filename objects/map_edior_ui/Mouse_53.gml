/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);

if (global.timeline_stop == 1)
{
	if ((activated == 1 && mouse_y > yy+500 && mouse_y < yy+yy_h-200) || activated == -1)
	{
		if (global.editor_hitbox == 1)
		{
			if (instance_exists(n_selected))
			{
				n_selected.editor_selected = 0;
				n_selected = -4;
			}
			var ins_ = instance_nearest(mouse_x,mouse_y,hitbox_parents);
			if (instance_exists(ins_) && point_distance(mouse_x,mouse_y,ins_.x,ins_.y) < 48)
			{
				global.selected_animation = 0;
				ins_.editor_selected = 1;
				n_selected = ins_;
				show_message_log("선택된 탄막은 좌측 상단의 'X'버튼을 눌러 삭제 가능");
			}
		}
		else
		{
			//탄막 타입 기준으로 탄막 생성
			editor_mode_create_projectile(global.editor_selected_type,mouse_x,mouse_y,global.ed_arg[0],global.ed_arg[1],global.ed_arg[2],global.ed_arg[3],global.ed_arg[4],global.ed_arg[5],global.ed_arg[6]);
			with(code)
			{
				event_user(10);
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