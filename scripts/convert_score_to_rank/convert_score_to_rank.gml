// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param score
///@param onlyone/average
function convert_score_to_rank(argument0,argument1)
{
	var tmp_rank = "--";
	if (argument0 != "--")
	{
		var tmp_score = real(argument0)/10000;
		if (argument1 == 1)
		{
			tmp_score /= (global.both_difficulty_num*2+global.hardcore_only_num);
		}
		
		if (tmp_score >= 15)
		{
			tmp_rank = "Perfect!";
		}
		else if (tmp_score < 15 && tmp_score >= 14)
		{
			tmp_rank = "S+";
		}
		else if (tmp_score < 14 && tmp_score >= 13)
		{
			tmp_rank = "S";
		}
		else if (tmp_score < 13 && tmp_score >= 12)
		{
			tmp_rank = "A+";
		}
		else if (tmp_score < 12 && tmp_score >= 11)
		{
			tmp_rank = "A";
		}
		else if (tmp_score < 11 && tmp_score >= 10)
		{
			tmp_rank = "B+";
		}
		else if (tmp_score < 10 && tmp_score >= 9)
		{
			tmp_rank = "B";
		}
		else if (tmp_score < 9 && tmp_score >= 8)
		{
			tmp_rank = "C+";
		}
		else if (tmp_score < 8 && tmp_score >= 7)
		{
			tmp_rank = "C";
		}
		else if (tmp_score < 7 && tmp_score >= 6)
		{
			tmp_rank = "C-";
		}
		else if (tmp_score < 6 && tmp_score >= 5)
		{
			tmp_rank = "D";
		}
		else if (tmp_score < 5 && tmp_score >= 4)
		{
			tmp_rank = "D-";
		}
		else if (tmp_score < 4 && tmp_score != 0)
		{
			tmp_rank = "F";
		}
		else if (tmp_score == 0)
		{
			tmp_rank = "--";	
		}
		//show_debug_message(string(argument0)+" / "+string(tmp_score))
	}
	else
	{
		tmp_rank = "--";
	}

	return tmp_rank;
}