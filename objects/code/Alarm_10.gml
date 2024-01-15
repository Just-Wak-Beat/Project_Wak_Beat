/// @description Set display ratio
// You can write your code in this editor
if (global.mobile_mode == 1)
{
	//자동 해상도 설정 (16:9) = [1920 : 1080]
	var display_width = display_get_width();
	var display_height = display_get_height();


	var display_ratio = ((display_height/display_width) > 1) ? display_height/display_width : display_width/display_height;



	show_message_log("ratio : "+string(display_height/display_width))
	room_set_viewport(Main,0,true,0,0,display_width*1920,display_height*(1920/display_ratio));
	global.font_ratio_resolution_xx = (16/9)/display_ratio;

	
	//if (global.font_ratio_resolution_xx < 0.4)
	//{
	//	alarm[10] = 120;
	//	global.font_ratio_resolution_xx = 1;
	//}
	
	
	if global.dev_mode = 1
	{
		for(var i = 0; i <= 7; i++)
		{
			global.artifact_owned[i] = 99;
		}
	}
}

