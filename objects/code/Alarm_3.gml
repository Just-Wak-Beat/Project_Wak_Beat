/// @description automaticLoadPlayerRanking
// You can write your code in this editor
if (global.cannot_connect < 20)
{
	if (automatic_reload_player_leaderboard == 0)
	{
		global.player_leaderboard_difficulty = 1;
		automatic_reload_player_leaderboard = 2;
	}
	else
	{
		alarm[3] = 1;
	}
}