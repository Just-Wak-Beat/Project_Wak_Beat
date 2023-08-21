// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param n_window_width
///@param n_window_height
///@param n_full_size
///@param apply_type
function set_window_size(argument0,argument1,argument2,argument3)
{
	if (argument3 == false)
	{
		if (argument0 == 1920)
		{
			if (argument2 == false)
			{
				window_set_size(display_get_width(),display_get_height());
				window_set_fullscreen(true);
			}
			else
			{
				window_set_fullscreen(false);
				window_set_size(1280,720);
				gpu_set_tex_filter(true);
			}
		}
		else if (argument0 == 1280)
		{
			window_set_size(1600,900);
			gpu_set_tex_filter(true);
		}
		else if (argument0 == 1600)
		{
			window_set_size(1760,1020);
			gpu_set_tex_filter(true);
		}
		else
		{
			window_set_size(1920,1080);
			gpu_set_tex_filter(false);
		}
	}
	else
	{
		if (argument2 == true)
		{
			window_set_position(0,0)
			window_set_size(display_get_width(),display_get_height());
		}
		window_set_fullscreen(argument2)
		gpu_set_tex_filter((argument0 < 1920) ? true : false);
	}
	
	surface_resize(application_surface, display_get_width(), display_get_height());
	window_center();
}