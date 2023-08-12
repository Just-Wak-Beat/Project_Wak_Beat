global.savepoint_text_t_alpha = 1

if (!instance_exists(obj_stage_clear))
{
	global.checkpoint_text = "리듬에 맞춰 등장하는 탄막을 피하기"
}

global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.artifact_type = 0
global.tutorial_now = 1


if (!instance_exists(obj_stage_clear))
{
	obj_player.x = room_width*0.3
	global.t_w_alpha = 0;
	global.w_alpha = 1
	global.cannot_control = 0;
}