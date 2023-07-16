#define LootLockerSetPlayerName
ini_open("LootLockerConfiguration.ini");
sessionToken = ini_read_string("sessionToken","token","");
ini_close();

var url = "https://api.lootlocker.io/game/player/name";
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");
ds_map_add(map,"x-session-token",sessionToken);
var data = "{\"name\": \""+argument0+"\"}";
global.LootLockerPlayerName = argument0;
playerNameMapID = http_request(url, "PATCH", map, data);
if(global.LLdevelopmentMode == true)
{
    show_debug_message("Sending player name change request");
}
ini_open("LootLockerConfiguration.ini");
ini_write_string("playerNameMapID","id",playerNameMapID);
ini_close();