/// @description Rank System
// You can write your code in this editor

if global.total_died_here = 0
{
	if global.hp = 5
	{
	global.n_rank[global.select_map-2] = "S+"
	}
	else if global.hp = 4
	{
	global.n_rank[global.select_map-2] = "S"
	}
	else if global.hp = 3
	{
	global.n_rank[global.select_map-2] = "A+"
	}
	else if global.hp = 2
	{
	global.n_rank[global.select_map-2] = "A"
	}
	else
	{
	global.n_rank[global.select_map-2] = "B+"
	}
}
else if global.total_died_here = 1
{
global.n_rank[global.select_map-2] = "B"
}
else if global.total_died_here = 2
{
global.n_rank[global.select_map-2] = "C+"
}
else if global.total_died_here = 3
{
global.n_rank[global.select_map-2] = "C"
}
else if global.total_died_here = 4
{
global.n_rank[global.select_map-2] = "D+"
}
else if global.total_died_here = 5
{
global.n_rank[global.select_map-2] = "D"
}
else if global.total_died_here = 6
{
global.n_rank[global.select_map-2] = "F+"
}
else
{
global.n_rank[global.select_map-2] = "F"
}

global.n_artifact[global.select_map-2] = "O"
global.total_died_here = 0