/// @description 메인 매뉴 처음 노래 선택 알고리즘
// You can write your code in this editor


var most_played_index = 0;
var most_played_playtime = 0;
var total_playtime = 0;


var probablity = 0;
for(var i = 1; i < global.origin_total_map; i++)
{
	total_playtime += global.real_stage_playtime[i];
	show_debug_message(global.real_stage_playtime[i]);
	if (most_played_playtime < global.real_stage_playtime[i])
	{
		most_played_index = i;
		most_played_playtime = global.real_stage_playtime[i];
	}
}

show_debug_message("모든 곡 총 플레이 횟수 : "+string(total_playtime));

for(var i = 0; i <= global.origin_total_map+total_playtime*2; i++)
{
	probablity[i] = 1;
}

var index = 0;
for(var i = 1; i < global.origin_total_map; i++)
{
	for(var ii = 0; ii <= global.real_stage_playtime[i]*2; ii++)
	{
		probablity[index] = i;
		show_debug_message(i);
		index++;
	}
}
	

var index2 = irandom_range(0,global.origin_total_map+total_playtime*2-1)
show_debug_message("n = "+string(index2)+" / "+string(probablity[index2]));
var return_value = probablity[index2];
code.n_stage = return_value;


if (global.nickname != "")
{
	var temp_nickname = string_replace_all(global.nickname," ","")
	if (global.dev_mode == 1)
	{
		temp_nickname = temp_nickname+"[*_ABER]0";
	}
	else if (global.beta_tester == 1)
	{
		temp_nickname = temp_nickname+"[*_ABER]1";
	}
	rank_temp_val1 = temp_nickname
	rank_temp_val2 = most_played_index
	alarm[1] = 1200
}


global.background_color = merge_color(global.map_color,c_black,0.9)
if (global.background_color == c_black)
{
	global.background_color = merge_color(c_white,c_black,0.95)
}