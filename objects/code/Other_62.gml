/// @description Insert description here
// You can write your code in this editor



for(var i = 0; i < 3; i++)
{
	if (ds_map_find_value(async_load, "id") == global.gmscoreboard_response[i])
	{
		if (ds_map_find_value(async_load, "status") == 0)
		{
			result = json_decode(ds_map_find_value(async_load, "result"));

			status = result[? "status"];
			type = result[? "type"];
			error = result[? "message"];
		
			//on set-score request
			if (type == "set-score")
			{
				if (status == "success")
				{
					get_scores(5,i); //update score data.
				}
			}
		
			//on get-score request
			if (type == "get-scores")
			{
				if (status == "success")
				{
					global.gmscoreboard_scores[i] = result[? "scores"];
					

					if (i != 2 && !ds_list_empty(global.gmscoreboard_scores[i])) //업데이트 체크용 리더보드 제외
					{
						var tmp_list = ds_list_find_value(global.gmscoreboard_scores[i], ds_list_size(global.gmscoreboard_scores[i])-1);
						var temp_score = tmp_list[? "score"];
						if (temp_score == "" || temp_score == " " || temp_score == "0" || temp_score == "1" || temp_score == 1 || temp_score == 0)
						{
							temp_score = 0;
						}
						else
						{
							temp_score = real(temp_score);
						}
						
						if (i == 0)
						{
							global.top_ten_score_normal = temp_score;
						}
						else
						{
							global.top_ten_score_hardcore = temp_score;
						}
					}
				}
			}
		}
	}
}



