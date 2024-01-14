global.savepoint_text_t_alpha = 1

if (!instance_exists(obj_stage_clear))
{
	global.checkpoint_text = "리듬에 맞춰 등장하는 탄막을 피하기"
}

global.hp = 5;
global.t_w_alpha = 0;
global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.artifact_type = 0
global.tutorial_now = 1
camera_focus_on(-4,-4,1)


if (!instance_exists(obj_stage_clear))
{
	obj_player.x = room_width*0.3
	global.t_w_alpha = 0;
	global.w_alpha = 10;
	global.cannot_control = 0;
	
	with(obj_player_left_hp_effect)
	{
		x = obj_player.x
		y = obj_player.y
	}
}