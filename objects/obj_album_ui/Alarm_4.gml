/// @description Insert description here
// You can write your code in this editor
if (code.gamestart != 1 && code.gamestart != 2)
{
	code.gamestart = 0
	global.scroll_n_m_xx = -4
	global.joystick_xx = -4
	global.scroll_n_m_yy = -4
	global.joystick_yy = -4


	if (global.show_new_songs > 0)
	{
		global.notice_title = ""
		global.t_b_alpha = -0.01
		global.show_new_songs = 0
		global.unlocked_music_name_new_list_rightside[0] = "";
		code.gamestart = 0
		code.automatic_reload_leaderboard = 0
	}
}