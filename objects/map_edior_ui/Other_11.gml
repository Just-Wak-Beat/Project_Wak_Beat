/// @description 탄막 수정 이벤트
// You can write your code in this editor

with(obj_button)
{
	if (button_id >= 100)
	{
		instance_destroy();
	}
}

if (instance_exists(n_selected))
{
	n_selected.editor_selected = 0;
	n_selected = -4;
}

var ins_ = instance_nearest(mouse_x,mouse_y,hitbox_parents);
if (instance_exists(ins_) && point_distance(mouse_x,mouse_y,ins_.x,ins_.y) < 48)
{
	global.editor_hitbox = 1;
	global.selected_animation = 0;
	ins_.editor_selected = 1;
	n_selected = ins_;
	show_message_log("선택된 탄막은 좌측 상단의 'X'버튼을 눌러 삭제 가능");
}
else
{
	global.editor_hitbox = -1;
}