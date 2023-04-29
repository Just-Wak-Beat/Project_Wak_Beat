// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function convert_rank_to_num(argument0)
{
var _n_rank = argument0;
var _n_rank_real = 0;
	if _n_rank = "S+"
	{
	_n_rank_real = 12
	}
	else if _n_rank = "S"
	{
	_n_rank_real = 11
	}
	else if _n_rank = "A+"
	{
	_n_rank_real = 10
	}
	else if _n_rank = "A"
	{
	_n_rank_real = 9
	}
	else if _n_rank = "B+"
	{
	_n_rank_real = 8
	}
	else if _n_rank = "B"
	{
	_n_rank_real = 7
	}
	else if _n_rank = "C+"
	{
	_n_rank_real = 6
	}
	else if _n_rank = "C"
	{
	_n_rank_real = 5
	}
	else if _n_rank = "C-" || _n_rank = "D+"
	{
	_n_rank_real = 4
	}
	else if _n_rank = "D"
	{
	_n_rank_real = 3
	}
	else if _n_rank = "E" || _n_rank = "F+" || _n_rank = "D-"
	{
	_n_rank_real = 2
	}
	else if _n_rank = "F"
	{
	_n_rank_real = 1
	}
	else
	{
	_n_rank_real = 0
	}
return _n_rank_real;
}