/// @description retreive score data from gmscoreboard.com (global.tagid must be set to your scoreboard secret tagid)
/// @param number of scores to get.

function get_scores(_num, target_id)
{
	global.gmscoreboard_response[target_id] = http_get("https://gmscoreboard.com/api/get-scores/?tagid="+string(global.tagid[target_id])+"&num="+string(_num));
}