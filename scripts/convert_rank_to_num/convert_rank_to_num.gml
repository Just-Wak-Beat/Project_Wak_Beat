// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function convert_rank_to_num(argument0)
{
var n_rank = argument0;
var n_rank_real = 0;
	if n_rank = "S+"
	{
	n_rank_real = 12
	}
	else if n_rank = "S"
	{
	n_rank_real = 11
	}
	else if n_rank = "A+"
	{
	n_rank_real = 10
	}
	else if n_rank = "A"
	{
	n_rank_real = 9
	}
	else if n_rank = "B+"
	{
	n_rank_real = 8
	}
	else if n_rank = "B"
	{
	n_rank_real = 7
	}
	else if n_rank = "C+"
	{
	n_rank_real = 6
	}
	else if n_rank = "C"
	{
	n_rank_real = 5
	}
	else if n_rank = "D+"
	{
	n_rank_real = 4
	}
	else if n_rank = "D"
	{
	n_rank_real = 3
	}
	else if n_rank = "E" || n_rank = "F+" || n_rank = "D-"
	{
	n_rank_real = 2
	}
	else if n_rank = "F"
	{
	n_rank_real = 1
	}
	else
	{
	n_rank_real = 0
	}
return n_rank_real;
}