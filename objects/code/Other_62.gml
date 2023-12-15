/// @description Insert description here
// You can write your code in this editor



for(var i = 0; i < 2; i++)
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
				}
			}
		}
	}
}



