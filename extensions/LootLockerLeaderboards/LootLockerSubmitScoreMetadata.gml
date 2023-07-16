#define LootLockerSubmitScoreMetaData
ini_open("LootLockerConfiguration.ini");
sessionToken = ini_read_string("sessionToken","token","");
ini_close();

var url = "https://api.lootlocker.io/game/leaderboards/"+argument0+"/submit";
show_debug_message(string(url));
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");
ds_map_add(map,"x-session-token", sessionToken);
var data = "{\"score\": "+string(argument1)+", \"metadata\": "+"\""+argument2+"\""+"}";
global.LootLockerPlayerScore = argument1;   
submitScoreMapID = http_request(url, "POST", map, data);
if(global.LLdevelopmentMode == true)
{
    show_debug_message("Sending score:"+string(data));
}
ini_open("LootLockerConfiguration.ini");
ini_write_string("submitScoreMapID","id",string(submitScoreMapID));
ini_write_string("leaderboardID","id",argument0);
ini_close();