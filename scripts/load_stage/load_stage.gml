// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param n_music_title
///@param n_music_artist
///@param n_music_name
///@param map_color
///@param music_duration
///@param bpm
function load_stage(argument0,argument1,argument2,argument3,argument4,argument5)
{
	global.n_music_title = argument0
	global.n_music_artist = argument1
	global.n_music_name = argument2
	if (global.n_map_list == 2)
	{
		global.map_color_tmp = hex_to_color(argument3,1)

		show_debug_message(string(#F77E9A)+" / "+string(hex_to_color(argument3,1)))
	}
	else
	{
		global.map_color_tmp = (argument3)
	}


	global.music_duration = argument4 //x60된 값(프레임 값 보정) > origin = 115 sec
	global.bpm = argument5 //x60된 값(프레임 값 보정) > origin = 115 sec
	
	
	//hardcore 태그가 붙은 곡은 자동 난이도 설정
	if instance_exists(code)
	{
		if (string_pos("(Hardcore)", global.stage_map_difficulty[code.n_stage]) != 0)
		{
			global.t_selected_difficulty = 0;
		}
		else if (string_pos("(Boss)", global.stage_map_difficulty[code.n_stage]) != 0)
		{
			global.t_selected_difficulty = 1;
		}
	}
}
