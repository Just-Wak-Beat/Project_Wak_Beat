/// @description Insert description here
// You can write your code in this editor

if (global.b_hp != global.hp || global.crossed_obstacle_num != global.b_crossed_obstacle_num)
{
	if (global.hp != 0)
	{
		global.rank_display_r_alpha = 1;
		if (global.total_damaged == 0)
		{
			if (global.crossed_obstacle_num <= 10)
			{
				global.n_rank_display = "Perfect!";
			}
			else
			{
				global.n_rank_display = "S+";
			}
		}
		else if (global.total_damaged == 1)
		{
			global.n_rank_display = "S";
		}
		else if (global.total_damaged == 2 || global.total_damaged == 3) //2
		{
			global.n_rank_display = "A+";
		}
		else if (global.total_damaged >= 4 || global.total_damaged <= 6) //3
		{
			global.n_rank_display = "A";
		}
		else if (global.total_damaged >= 7 || global.total_damaged <= 10) //4
		{
			global.n_rank_display = "B+";
		}
		else if (global.total_damaged >= 11 || global.total_damaged <= 15) //5
		{
			global.n_rank_display = "B";
		}
		else if (global.total_damaged >= 16 || global.total_damaged <= 21) //6
		{
			global.n_rank_display = "C+";
		}
		else if (global.total_damaged >= 22 || global.total_damaged <= 28) //7
		{
			global.n_rank_display = "C";
		}
		else if (global.total_damaged >= 29 || global.total_damaged <= 36) //8
		{
			global.n_rank_display = "D";
		}
		else
		{
			global.n_rank_display = "F";
		}
	}
	global.b_hp = global.hp;
}