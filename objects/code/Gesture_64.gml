/// @description Insert description here
// You can write your code in this editor

if (global.paused != 1 && progress_icon_alpha > 0 && global.mobile_mode == 1)
{
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);

	var xx_w = camera_get_view_width(view_camera[0]);
	var yy_h = camera_get_view_height(view_camera[0]);
	if (point_distance(mouse_x,mouse_y,xx+xx_w*0.966,yy+yy_h*0.063) < 48)
	{
		event_user(2);
	}
}










