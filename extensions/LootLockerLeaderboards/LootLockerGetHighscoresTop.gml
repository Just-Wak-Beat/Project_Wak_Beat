#define LootLockerGetHighscoresTop
ini_open("LootLockerConfiguration.ini");
sessionToken = ini_read_string("sessionToken","token","");
ini_close();

var url = "https://api.lootlocker.io/game/leaderboards/"+argument0+"/list?count="+argument1;
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");
ds_map_add(map,"x-session-token", session_token);
show_debug_message("LootLocker getting highscores for leaderboard:"+string(argument0));
getHighscoresTopMapID = http_request(url, "GET", map, "");

ini_open("LootLockerConfiguration.ini");
ini_write_string("getHighscoresTopMapID","id",string(getHighscoresTopMapID));
ini_write_string("leaderboardID","id",argument0);
ini_close();