/// @description Rank System
// You can write your code in this editor
var n_rank_real = 0
var n_rank = global.n_rank[global.n_map_id]

if n_rank = "S+"
{
n_rank_real = 12
}
if n_rank = "S"
{
n_rank_real = 11
}
if n_rank = "A+"
{
n_rank_real = 10
}
if n_rank = "A"
{
n_rank_real = 9
}
if n_rank = "B+"
{
n_rank_real = 8
}
if n_rank = "B"
{
n_rank_real = 7
}
if n_rank = "C+"
{
n_rank_real = 6
}
if n_rank = "C"
{
n_rank_real = 5
}
if n_rank = "D+"
{
n_rank_real = 4
}
if n_rank = "D"
{
n_rank_real = 3
}
if n_rank = "E" || n_rank = "F+"
{
n_rank_real = 2
}
if n_rank = "F"
{
n_rank_real = 1
}


if global.total_died_here = 0
{
	if global.hp = 5
	{
		if n_rank_real < 12
		{
		global.n_rank[global.n_map_id] = "S+"
		}
	}
	else if global.hp = 4
	{
		if n_rank_real < 11
		{
		global.n_rank[global.n_map_id] = "S"
		}
	}
	else if (global.hp = 3 || global.hp = 2)
	{
		if n_rank_real < 10
		{
		global.n_rank[global.n_map_id] = "A+"
		}
	}
	else
	{
		if n_rank_real < 9
		{
		global.n_rank[global.n_map_id] = "A"
		}
	}
}
else if global.total_died_here = 1
{
	if global.hp >= 3 && global.hp <= 5
	{
		if n_rank_real < 8
		{
		global.n_rank[global.n_map_id] = "B+"
		}
	}
	else
	{
		if n_rank_real < 7
		{
		global.n_rank[global.n_map_id] = "B"
		}
	}
}
else if global.total_died_here = 2
{
	if n_rank_real < 6
	{
	global.n_rank[global.n_map_id] = "C+"
	}
}
else if global.total_died_here = 3
{
	if n_rank_real < 5
	{
	global.n_rank[global.n_map_id] = "C"
	}
}
else if global.total_died_here = 4
{
	if n_rank_real < 4
	{
	global.n_rank[global.n_map_id] = "D+"
	}
}
else if global.total_died_here = 5
{
	if n_rank_real < 3
	{
	global.n_rank[global.n_map_id] = "D"
	}
}
else if global.total_died_here = 6
{
	if n_rank_real < 2
	{
	global.n_rank[global.n_map_id] = "E"
	}
}
else
{
	if n_rank_real < 1
	{
	global.n_rank[global.n_map_id] = "F"
	}
}




if global.n_map_list != 2
{
global.real_n_rank[global.n_map_id] = global.n_rank[global.n_map_id]
	if global.real_n_artifact[global.n_map_id] != "완료"
	{
	global.artifact_owned[global.artifact_type]++
	global.n_artifact[global.n_map_id] = "완료"
	global.real_n_artifact[global.n_map_id] = "완료"
	}
	else
	{
		if global.selected_difficulty = 0
		{
		global.artifact_owned[global.artifact_type]++
		}
	}
}
else
{
//커스텀 맵 클리어 내역 저장
ini_open("custom_map_file_"+string(global.n_map_id+1)+".JWABMAP")
ini_write_string("custom_n_rank","value",global.n_rank[global.n_map_id])
	if global.custom_n_artifact[global.n_map_id] != "완료"
	{
	global.artifact_owned[global.artifact_type]++
	ini_write_string("custom_n_artifact","value","완료")
	}
	else
	{
		if global.selected_difficulty = 0
		{
		global.artifact_owned[global.artifact_type]++
		}
	}
ini_close()
}
global.total_died_here = 0

save_and_load_data(0,false)
alarm[6] = 20