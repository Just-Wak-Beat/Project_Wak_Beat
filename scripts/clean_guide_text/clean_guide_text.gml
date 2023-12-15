// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clean_guide_text()
{
	for(var i = 0; i < 99; i++)
	{
		//새로운 곡 표시에 포함될 곡 (커스텀 곡은 제외)
		global.unlocked_music_name_new_list[i] = "";
		global.unlocked_music_name_new_list_rightside[i] = "";
		global.unlocked_music_name_new_list_color[i] = c_white;
		global.unlocked_music_name_new_list_color_rightside[i] = c_white;
	}
}