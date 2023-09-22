/// @description 스킨 선택 완료
// You can write your code in this editor


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