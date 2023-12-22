/// @description 스킨 선택 완료
// You can write your code in this editor

if (global.streamer == 1)
{
	clean_message_log();
	show_message_log("연말공모전 규정에 따라, 스트리머는 사용할 수 없는 기능입니다!");
}
else
{
	if (!global.unlocked_player_skin[global.t_n_select_skin] == 0)
	{
		global.n_player_skin = global.t_n_select_skin;
		global.player_skin = floor(global.t_n_select_skin/4)
	}

	with(code)
	{
		if object_index = code
		{
			event_user(3)
		}
	}
}