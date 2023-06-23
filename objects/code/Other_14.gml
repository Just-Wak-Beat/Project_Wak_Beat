/// @description 스킨 획득
// You can write your code in this editor


if (global.t_selected_difficulty == 0)
{
	global.can_show = 0;
	if (global.n_music_title == "왁트모르즈비")
	{
		global.acquired_skin = 0
	}
	else if (global.n_music_title == "왁굳향100% 첨가")
	{
		global.acquired_skin = 2
	}
	else if (global.n_music_title == "부엉이 (Cover by 아이네 INE)")
	{
		global.acquired_skin = 3
	}
	else if (global.n_music_title == "RE:WIND")
	{
		global.acquired_skin = choose(7,13,15,16,19)
	}
	else if (global.n_music_title == "아이패드")
	{
		global.acquired_skin = 10
	}
	else if (global.n_music_title == "Phony (Cover by 비챤 VIichan)")
	{
		global.acquired_skin = 6
	}
	else if (global.n_music_title == "이세돌향 100% 첨가")
	{
		global.acquired_skin = 1
	}
	else if (global.n_music_title == "겨울봄 (Winter Spring)")
	{
		global.acquired_skin = global.player_skin*3+2
	}
	else if (global.n_music_title == "궁시렁 리믹스")
	{
		global.acquired_skin = 18
	}
	else if (global.n_music_title == "Promise (Cover by 릴파 Lilpa)")
	{
		global.acquired_skin = 12
	}
	else if (global.n_music_title == "고멤가요제 MASHUP (아이네 INE)")
	{
		global.acquired_skin = 4
	}
	else if (global.n_music_title == "유하")
	{
		global.acquired_skin = 9
	}
}