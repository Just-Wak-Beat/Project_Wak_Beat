/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_pressed(vk_delete) || keyboard_check_pressed(vk_insert))
{
	clean_message_log();
	del_current_timeline += 1;
	
	if (del_current_timeline > 1)
	{
		show_message_log("('현재 타임라인'이 삭제되었습니다)");
		instance_destroy(hitbox_parents);
		with(code)
		{
			event_user(10);
		}
		
		del_current_timeline = 0;
	}
	else
	{
		show_message_log("('현재 타임라인'을 지우시려면 한 번 더 눌러주세요)");
	}
}
