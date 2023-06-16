/// @description 메인 매뉴 처음 노래 선택 알고리즘
// You can write your code in this editor



var total_playtime = 0;


var probablity = 0;
for(var i = 1; i < global.origin_total_map; i++)
{
	total_playtime += global.real_stage_playtime[i];
	show_debug_message(global.real_stage_playtime[i]);
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