// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param n_window_width
///@param n_window_height
///@param n_full_size
///@param apply_type
function set_window_size(argument0,argument1,argument2,argument3)
{
	if (argument3 == 0)
	{
		if (argument0 == 1920)
		{
			if (argument2 == false)
			{
				window_set_fullscreen(true)
			}
			else
			{
				window_set_fullscreen(false);
				window_set_size(1280,720);
				window_center();
				gpu_set_tex_filter(true);
			}
		}
		else if (argument0 == 1280)
		{
			window_set_size(1600,900);
			window_center();
			gpu_set_tex_filter(true);
		}
		else if (argument0 == 1600)
		{
			window_set_size(1760,1020);
			window_center();
			gpu_set_tex_filter(true);
		}
		else
		{
			window_set_size(1920,1080);
			gpu_set_tex_filter(false);
			window_center();
		}
	}
	else
	{
		window_set_size(argument0,argument1)
		window_set_fullscreen(argument2)
		window_center();
		gpu_set_tex_filter((argument0 < 1920) ? true : false);
	}
	
	surface_resize(application_surface, display_get_width(), display_get_height());
}