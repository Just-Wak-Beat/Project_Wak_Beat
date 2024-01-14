/// @description Set display ratio
// You can write your code in this editor
if global.mobile_mode = 1
{
	//자동 해상도 설정 (16:9) = [1920 : 1080]
	var display_width = display_get_width();
	var display_height = display_get_height();


	var display_ratio;
	for(var i = 0; i <= 1; i++)
	{
		display_ratio[i] = 0
	}
	display_ratio[0] = floor((display_height/display_width))
	display_ratio[1] = floor((display_width/display_height))

	for(var i = 0; i <= 1; i++)
	{
		if (display_ratio[i] == floor(16/10))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1920,display_height*1200)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(18.5/9))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1480,display_height*720)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(19/9))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1520,display_height*720)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(20/9))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1520,display_height*720)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(21/10))
		{
			room_set_viewport(Main,0,true,0,0,display_width88,display_height*540)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(2176/1080))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1407,display_height*700)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(2258/1080) || display_ratio[i] = floor(2259/1080))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1920,display_height*918.6)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(2358/1080) || display_ratio[i] = floor(2359/1080))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1920,display_height*880.7)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else if (display_ratio[i] == floor(3358/1080) || display_ratio[i] = floor(3359/1080))
		{
			room_set_viewport(Main,0,true,0,0,display_width*1920,display_height*880.7)
			global.font_ratio_resolution_xx = (16/9)/display_ratio[i]
			break;
		}
		else
		{
			room_set_viewport(Main,0,true,0,0,display_width*1280,display_height*720)
			global.font_ratio_resolution_xx = 1
		}
	}
	
	if (global.font_ratio_resolution_xx < 0.4)
	{
		alarm[10] = 120;
		global.font_ratio_resolution_xx = 1;
	}
	
	
	if global.dev_mode = 1
	{
		for(var i = 0; i <= 7; i++)
		{
			global.artifact_owned[i] = 99;
		}
	}
}

