/// @description send a score to gmscoreboard.com (global.tagid must be set to your scoreboard secret tagid)
/// @param player name
/// @param score

function set_score(_player, _score, target_id)
{
	global.gmscoreboard_response[target_id] = http_get("https://gmscoreboard.com/api/set-score/?tagid="+string(global.tagid[target_id])+"&player="+_player+"&score="+string(_score));
}