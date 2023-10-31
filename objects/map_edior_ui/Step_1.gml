/// @description Insert description here
// You can write your code in this editor




if (global.dev_mode == 1)
{
	if (mouse_wheel_up())
	{
		global.n_camera_zoom += 0.1;
	}
	else if (mouse_wheel_down())
	{
		global.n_camera_zoom -= 0.1;
	}
}