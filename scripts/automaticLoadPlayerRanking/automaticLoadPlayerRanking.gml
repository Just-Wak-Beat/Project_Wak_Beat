// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param loadOnly/withText
function automaticLoadPlayerRanking(argument0)
{
	global.automatic_load_ranking = 1-argument0;
	global.player_leaderboard_difficulty = 0;
	automatic_reload_player_leaderboard = 2;
	alarm[3] = 150
}