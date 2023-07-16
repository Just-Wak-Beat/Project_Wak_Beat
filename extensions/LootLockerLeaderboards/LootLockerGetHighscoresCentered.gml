#define LootLockerGetHighscoresCentered
ini_open("LootLockerConfiguration.ini");
sessionToken = ini_read_string("sessionToken","token","");
ini_close();

var url = "https://api.lootlocker.io/game/leaderboards/"+string(argument0)+"/member/"+string(global.LootLockerPlayerID);
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");
ds_map_add(map,"x-session-token", session_token);
show_debug_message("LootLocker getting centered highscores for leaderboard:"+string(argument0));
getHighscoresCenteredMapID1 = http_request(url, "GET", map, "");

ini_open("LootLockerConfiguration.ini");
ini_write_string("getHighscoresCenteredMapID1","id",string(getHighscoresCenteredMapID1));
ini_write_string("leaderboardID","id",argument0);
ini_write_string("getHighscoresCenteredCount","count",string(argument1));
ini_close();