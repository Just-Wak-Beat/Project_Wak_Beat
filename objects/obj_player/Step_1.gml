/// @description Insert description here
// You can write your code in this editor

if global.b_hp != global.hp
{
	if global.hp != 0
	{
		global.rank_display_r_alpha = 1;
		if global.total_died_here = 0
		{
			if global.hp = 5
			{
				global.n_rank_display = "S+"
			}
			else if global.hp = 4
			{
				global.n_rank_display = "S"
			}
			else if (global.hp = 3 || global.hp = 2)
			{
				if (global.t_selected_difficulty == 0)
				{
					if (global.hp = 3)
					{
						global.n_rank_display = "A+"
					}
					else
					{
						global.n_rank_display = "A"
					}
				}
				else
				{
					global.n_rank_display = "A+"
				}
			}
			else
			{
				if (global.t_selected_difficulty == 0)
				{
					global.n_rank_display = "A"
				}
				else
				{
					global.n_rank_display = "B+"
				}
			}
		}
		else if global.total_died_here = 1
		{
			if global.hp >= 3 && global.hp <= 5
			{
				global.n_rank_display = "B+"
			}
			else
			{
				global.n_rank_display = "B"
			}
		}
		else if global.total_died_here = 2
		{
			global.n_rank_display = "C+"
		}
		else if global.total_died_here = 3
		{
			global.n_rank_display = "C"
		}
		else if global.total_died_here = 4
		{
			global.n_rank_display = "C-"
		}
		else if global.total_died_here = 5
		{
			global.n_rank_display = "D"
		}
		else if global.total_died_here = 6
		{
			global.n_rank_display = "D-"
		}
		else
		{
			global.n_rank_display = "F"
		}
	}
	global.b_hp = global.hp;
}