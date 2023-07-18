/// @description Insert description here
// You can write your code in this editor
if gamestart >= 2 && global.sync_setting_alpha >= 0.01 && global.n_progress > 1
{
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])

	if (global.n_setting_button = 9999 || global.n_setting_button = -4) && (mouse_y < yy+yy_h-520)
	{
		global.back_to_game++
		global.n_setting_button = 9999
	}
}

if (instance_exists(obj_album_ui) && obj_album_ui.holding_now != -1 && global.can_show == 1 && global.notice_title == "잠시만요!")
{
	if (global.show_new_songs > 0 && (gamestart == 0 || gamestart >= 4))
	{
		obj_album_ui.holding_now++;
	}
}