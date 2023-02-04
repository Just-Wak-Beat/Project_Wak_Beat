/// @description Rank System
// You can write your code in this editor
var n_rank_real = 0
var n_rank = global.n_rank[global.select_map-2]

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
		global.n_rank[global.select_map-2] = "S+"
		}
	}
	else if global.hp = 4
	{
		if n_rank_real < 11
		{
		global.n_rank[global.select_map-2] = "S"
		}
	}
	else if (global.hp = 3 || global.hp = 2)
	{
		if n_rank_real < 10
		{
		global.n_rank[global.select_map-2] = "A+"
		}
	}
	else
	{
		if n_rank_real < 9
		{
		global.n_rank[global.select_map-2] = "A"
		}
	}
}
else if global.total_died_here = 1
{
	if global.hp >= 3 && global.hp <= 5
	{
		if n_rank_real < 8
		{
		global.n_rank[global.select_map-2] = "B+"
		}
	}
	else
	{
		if n_rank_real < 7
		{
		global.n_rank[global.select_map-2] = "B"
		}
	}
}
else if global.total_died_here = 2
{
	if n_rank_real < 6
	{
	global.n_rank[global.select_map-2] = "C+"
	}
}
else if global.total_died_here = 3
{
	if n_rank_real < 5
	{
	global.n_rank[global.select_map-2] = "C"
	}
}
else if global.total_died_here = 4
{
	if n_rank_real < 4
	{
	global.n_rank[global.select_map-2] = "D+"
	}
}
else if global.total_died_here = 5
{
	if n_rank_real < 3
	{
	global.n_rank[global.select_map-2] = "D"
	}
}
else if global.total_died_here = 6
{
	if n_rank_real < 2
	{
	global.n_rank[global.select_map-2] = "E"
	}
}
else
{
	if n_rank_real < 1
	{
	global.n_rank[global.select_map-2] = "F"
	}
}


if global.n_artifact[global.select_map-2] != "완료"
{
global.artifact_owned[global.artifact_type]++
global.n_artifact[global.select_map-2] = "완료"
}
global.total_died_here = 0

save_and_load_data(0,false)