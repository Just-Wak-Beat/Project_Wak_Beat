#define LootLockerReset
// Reset all data to default values and start a new session
ini_open("LootLockerConfiguration.ini");
ini_write_string("playerIdentifier","id","");
sessionToken = ini_read_string("sessionToken","token","");
ini_write_string("loginMapID","id","0");
ini_write_string("playerNameMapID","id","-1");
ini_write_string("submitScoreMapID","id","-1");
ini_write_string("getHighscoresTopMapID","id","-1");
ini_write_string("getHighscoresCenteredMapID1","id","-1");
ini_write_string("getHighscoresCenteredMapID2","id","-1");
ini_write_string("autoRefreshLeaderboardAmount","count","10");
// Cached player info
ini_write_string("playerID","id","");
ini_write_string("playerName","name","");
ini_write_string("LootLockerPlayerRank","id","");
ini_write_string("LootLockerPlayerScore","id","");
ini_write_string("LootLockerPlayerMetadata","id","");
ini_close();

// End current session
var url = "https://api.lootlocker.io/game/v1/session";
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");
ds_map_add(map,"x-session-token", sessionToken);
resetMapID = http_request(url, "DELETE", map, "");

// Remove session token, write restart session response
ini_open("LootLockerConfiguration.ini");
ini_write_string("sessionToken","token","");
ini_write_string("resetMapID","id",string(resetMapID));
ini_close();
